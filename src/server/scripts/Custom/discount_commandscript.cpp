#include "ScriptMgr.h"
#include "Player.h"
#include <ChatCommand.h>
#include <Chat.h>

// This is the discount percentage that will be applied to the player's vendor purchases
// if they have the required buff. You can set this using the ".discount set X" command.
float DiscountPercent = 0.0f;

// This is the spell ID of the buff that the player must have to receive the discount.
uint32 DiscountBuffSpellID = 80917;

class discount_commandscript : public CommandScript
{
public:
    discount_commandscript() : CommandScript("discount_commandscript") {}

    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> discountCommandTable =
            {
                {"set", rbac::RBAC_PERM_COMMAND_DISCOUNT_SET, false, &HandleDiscountSetCommand, ""}};
        static std::vector<ChatCommand> commandTable =
            {
                {"discount", rbac::RBAC_PERM_COMMAND_DISCOUNT, false, NULL, "", discountCommandTable}};
        return commandTable;
    }

    static bool HandleDiscountSetCommand(ChatHandler *handler, const char *args)
    {
        if (!*args)
            return false;

        float discount = (float)atof(args);

        // Check if the discount is in the valid range (0% to 100%)
        if (discount < 0.0f || discount > 100.0f)
        {
            handler->SendSysMessage("Discount must be between 0% and 100%.");
            handler->SetSentErrorMessage(true);
            return false;
        }

        // Set the global discount percentage to the specified value
        DiscountPercent = discount / 100.0f;

        // Confirm the discount has been set
        handler->PSendSysMessage( "Discount set to %.1f%%.", discount);
        return true;
    }
};

class discount_player_scripts : public PlayerScript
{
public:
    discount_player_scripts() : PlayerScript("discount_player_scripts") {}

    void OnBeforeBuyItemFromVendor(Player *player, Creature *vendor, uint32 &item, uint8 &count, uint8 &bag, uint8 &slot) 
    {
        // Check if the player has the required buff and apply the discount if they do
        if (player->HasAura(DiscountBuffSpellID))
        {
            // Calculate the final price of the item after the discount has been applied
            uint32 finalPrice = item * count * (1.0f - DiscountPercent);

            // Confirm the discount has been applied to the player
            ChatHandler(player->GetSession()).PSendSysMessage("You have received a %.1f%% discount on this item.", DiscountPercent * 100.0f);

            // Set the final price of the item
            item = finalPrice;
        }
    }
};

void AddSC_discount_scripts()
{
    new discount_commandscript();
    new discount_player_scripts();
}
