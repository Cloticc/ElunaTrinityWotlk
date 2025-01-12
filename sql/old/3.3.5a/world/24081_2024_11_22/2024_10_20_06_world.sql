-- Add missing spawns and pooling for Tattered Chest ID: 2845 in Eversong Woods
SET @POOLID := 856; -- 9 required
SET @OGUID := 24967; -- 28 required

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+27;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 2845, 530, 3430, 3460, 1, 1, 8846.802734375, -5709.845703125, 0.462978005409240722, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738, 360, 255, 1, 40892), -- Golden Strand
(@OGUID+1, 2845, 530, 3430, 3460, 1, 1, 8782.2021484375, -5750.22265625, 0.406792014837265014, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279, 360, 255, 1, 40892), -- Golden Strand
(@OGUID+2, 2845, 530, 3430, 3460, 1, 1, 8878.2138671875, -5732.53857421875, 0.232910007238388061, 3.543023586273193359, 0, 0, -0.97992420196533203, 0.199370384216308593, 360, 255, 1, 45854), -- Golden Strand
(@OGUID+3, 2845, 530, 3430, 3460, 1, 1, 8676.185546875, -5694.66162109375, 0.725703001022338867, 4.572763919830322265, 0, 0, -0.75470924377441406, 0.656059443950653076, 360, 255, 1, 45854), -- Golden Strand
(@OGUID+4, 2845, 530, 3430, 3460, 1, 1, 8771.9091796875, -5683.58349609375, 0.120685003697872161, 3.124123096466064453, 0, 0, 0.99996185302734375, 0.008734640665352344, 360, 255, 1, 45854), -- Golden Strand
(@OGUID+5, 2845, 530, 3430, 3911, 1, 1, 9090.8916015625, -5863.84619140625, 0.349002987146377563, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986, 360, 255, 1, 40892), -- Tranquil Shore
(@OGUID+6, 2845, 530, 3430, 3911, 1, 1, 9034.2119140625, -5864.50634765625, 0.089702002704143524, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294, 360, 255, 1, 40892), -- Tranquil Shore
(@OGUID+7, 2845, 530, 3430, 3911, 1, 1, 8977.1787109375, -5736.40478515625, 0.367024004459381103, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279, 360, 255, 1, 40892), -- Tranquil Shore
(@OGUID+8, 2845, 530, 3430, 3911, 1, 1, 8940.3037109375, -5747.05224609375, 0.162974998354911804, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679, 360, 255, 1, 42328), -- Tranquil Shore
(@OGUID+9, 2845, 530, 3430, 3911, 1, 1, 9110.3271484375, -5790.36962890625, 0.029617000371217727, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224, 360, 255, 1, 42328), -- Tranquil Shore
(@OGUID+10, 2845, 530, 3430, 3911, 1, 1, 9161.2958984375, -5813.65478515625, 0.225214004516601562, 1.064649581909179687, 0, 0, 0.507537841796875, 0.861629426479339599, 360, 255, 1, 45854), -- Tranquil Shore
(@OGUID+11, 2845, 530, 3430, 3482, 1, 1, 8405.232421875, -7001.72998046875, 93.72124481201171875, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775, 360, 255, 1, 40892), -- The Dead Scar
(@OGUID+12, 2845, 530, 3430, 3482, 1, 1, 8545.6357421875, -7025.015625, 83.48480987548828125, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.96363067626953125, 360, 255, 1, 40892), -- The Dead Scar
(@OGUID+13, 2845, 530, 3430, 3482, 1, 1, 8815.2236328125, -6988.04248046875, 33.64208602905273437, 3.52557229995727539, 0, 0, -0.98162651062011718, 0.190812408924102783, 360, 255, 1, 45942), -- The Dead Scar
(@OGUID+14, 2845, 530, 3430, 3482, 1, 1, 9167.796875, -6961.861328125, 6.301101207733154296, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 360, 255, 1, 45942), -- The Dead Scar
(@OGUID+15, 2845, 530, 3430, 3461, 1, 1, 8805.4208984375, -5899.8759765625, 11.03487968444824218, 3.420850038528442382, 0, 0, -0.99026775360107421, 0.139175355434417724, 360, 255, 1, 42328), -- Sunsail Anchorage
(@OGUID+16, 2845, 530, 3430, 3461, 1, 1, 8709.9775390625, -6027.74853515625, 7.889542102813720703, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 360, 255, 1, 45942), -- Sunsail Anchorage
(@OGUID+17, 2845, 530, 3430, 3461, 1, 1, 8805.6533203125, -6096.244140625, 20.43907546997070312, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.55193793773651123, 360, 255, 1, 56713), -- Sunsail Anchorage
(@OGUID+18, 2845, 530, 3430, 3476, 1, 1, 8342.580078125, -7951.3046875, 183.5680999755859375, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072, 360, 255, 1, 40892), -- Tor'Watha
(@OGUID+19, 2845, 530, 3430, 3476, 1, 1, 8486.5302734375, -7989.3125, 156.599639892578125, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 360, 255, 1, 45942), -- Tor'Watha
(@OGUID+20, 2845, 530, 3430, 3475, 1, 1, 8433.9404296875, -7555.21875, 161.53948974609375, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305, 360, 255, 1, 40892), -- Zeb'Watha
(@OGUID+21, 2845, 530, 3430, 3914, 1, 1, 8287.14453125, -7262.19970703125, 139.7483673095703125, 1.815141916275024414, 0, 0, 0.788010597229003906, 0.615661680698394775, 360, 255, 1, 40892), -- Runestone Shan'dor
(@OGUID+22, 2845, 530, 3430, 3913, 1, 1, 8253.8916015625, -6693.859375, 86.01686859130859375, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565, 360, 255, 1, 42328), -- Runestone Falithas
(@OGUID+23, 2845, 530, 3430, 3472, 1, 1, 9292.0048828125, -7974.42529296875, -37.7078971862792968, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003, 360, 255, 1, 45942), -- Azurebreeze Coast
(@OGUID+24, 2845, 530, 3430, 3467, 1, 1, 8733.6015625, -7111.90625, 37.34553909301757812, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738, 360, 255, 1, 45942), -- East Sanctum
(@OGUID+25, 2845, 530, 3430, 3480, 1, 1, 9342.2568359375, -7898.17724609375, 142.246368408203125, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652, 360, 255, 1, 45942), -- Duskwither Spire
(@OGUID+26, 2845, 530, 3430, 3480, 1, 1, 9348.390625, -7887.3994140625, 158.4431610107421875, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708, 360, 255, 1, 56713), -- Duskwither Spire
(@OGUID+27, 2845, 530, 3430, 3466, 1, 1, 9099.138671875, -6236.265625, 28.45432281494140625, 2.024578809738159179, 0, 0, 0.848047256469726562, 0.529920578002929687, 360, 255, 1, 56713); -- West Sanctum

UPDATE `gameobject` SET `spawntimesecs`=360, `animprogress`=225, `state`=1 WHERE `guid` IN (33932,12101,12102,12099,12100,12105,12103,12106,12107,33899,12104,12108,33953);

DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOLID AND @POOLID+8;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@POOLID,1,'Tattered Chest (2845), Eversong Woods, Chest Pool Golden Strand'),
(@POOLID+1,1,'Tattered Chest (2845), Eversong Woods, Chest Pool Tranquil Shore'),
(@POOLID+2,1,'Tattered Chest (2845), Eversong Woods, Chest Pool The Dead Scar North'),
(@POOLID+3,1,'Tattered Chest (2845), Eversong Woods, Chest Pool The Dead Scar South'),
(@POOLID+4,1,'Tattered Chest (2845), Eversong Woods, Chest Pool Sunsail Anchorage'),
(@POOLID+5,1,'Tattered Chest (2845), Eversong Woods, Chest Pool Tor''Watha and Zeb''Watha'),
(@POOLID+6,1,'Tattered Chest (2845), Eversong Woods, Chest Pool East and west Sactums'),
(@POOLID+7,1,'Tattered Chest (2845), Eversong Woods, Chest Pool Duskweather Spire'),
(@POOLID+8,1,'Tattered Chest (2845), Eversong Woods, Chest Pool Scorched Grove and Runestones');

DELETE FROM `pool_members` WHERE `poolSpawnId` BETWEEN @POOLID AND @POOLID+8;
INSERT INTO `pool_members` (`type`,`spawnId`,`poolSpawnId`,`chance`,`description`) VALUES
(1,12105,@POOLID,0,'Tattered Chest (2845), Golden Strand'),
(1,@OGUID,@POOLID,0,'Tattered Chest (2845), Golden Strand'),
(1,@OGUID+1,@POOLID,0,'Tattered Chest (2845), Golden Strand'),
(1,@OGUID+2,@POOLID,0,'Tattered Chest (2845), Golden Strand'),
(1,@OGUID+3,@POOLID,0,'Tattered Chest (2845), Golden Strand'),
(1,@OGUID+4,@POOLID,0,'Tattered Chest (2845), Golden Strand'),
(1,12099,@POOLID+1,0,'Tattered Chest (2845), Tranquil Shore'),
(1,12100,@POOLID+1,0,'Tattered Chest (2845), Tranquil Shore'),
(1,@OGUID+5,@POOLID+1,0,'Tattered Chest (2845), Tranquil Shore'),
(1,@OGUID+6,@POOLID+1,0,'Tattered Chest (2845), Tranquil Shore'),
(1,@OGUID+7,@POOLID+1,0,'Tattered Chest (2845), Tranquil Shore'),
(1,@OGUID+8,@POOLID+1,0,'Tattered Chest (2845), Tranquil Shore'),
(1,@OGUID+9,@POOLID+1,0,'Tattered Chest (2845), Tranquil Shore'),
(1,@OGUID+10,@POOLID+1,0,'Tattered Chest (2845), Tranquil Shore'),
(1,12104,@POOLID+2,0,'Tattered Chest (2845), The Dead Scar North'),
(1,33953,@POOLID+2,0,'Tattered Chest (2845), The Dead Scar North'),
(1,@OGUID+13,@POOLID+2,0,'Tattered Chest (2845), The Dead Scar North'),
(1,@OGUID+14,@POOLID+2,0,'Tattered Chest (2845), The Dead Scar North'),
(1,12108,@POOLID+3,0,'Tattered Chest (2845), The Dead Scar South'),
(1,33899,@POOLID+3,0,'Tattered Chest (2845), The Dead Scar South'),
(1,@OGUID+11,@POOLID+3,0,'Tattered Chest (2845), The Dead Scar South'),
(1,@OGUID+12,@POOLID+3,0,'Tattered Chest (2845), The Dead Scar South'),
(1,12106,@POOLID+4,0,'Tattered Chest (2845), Sunsail Anchorage'),
(1,@OGUID+15,@POOLID+4,0,'Tattered Chest (2845), Sunsail Anchorage'),
(1,@OGUID+16,@POOLID+4,0,'Tattered Chest (2845), Sunsail Anchorage'),
(1,@OGUID+17,@POOLID+4,0,'Tattered Chest (2845), Sunsail Anchorage'),
(1,12103,@POOLID+5,0,'Tattered Chest (2845), Tor''Watha'),
(1,@OGUID+18,@POOLID+5,0,'Tattered Chest (2845), Tor''Watha'),
(1,@OGUID+19,@POOLID+5,0,'Tattered Chest (2845), Tor''Watha'),
(1,@OGUID+20,@POOLID+5,0,'Tattered Chest (2845), Zeb''Watha'),
(1,33932,@POOLID+6,0,'Tattered Chest (2845), West Sactums'),
(1,12101,@POOLID+6,0,'Tattered Chest (2845), West Sactums'),
(1,@OGUID+27,@POOLID+6,0,'Tattered Chest (2845), West Sactums'),
(1,@OGUID+24,@POOLID+6,0,'Tattered Chest (2845), East Sactums'),
(1,12102,@POOLID+7,0,'Tattered Chest (2845), Duskwither Spire'),
(1,@OGUID+25,@POOLID+7,0,'Tattered Chest (2845), Duskwither Spire'),
(1,@OGUID+26,@POOLID+7,0,'Tattered Chest (2845), Duskwither Spire'),
(1,@OGUID+23,@POOLID+7,0,'Tattered Chest (2845), Azurebreeze Coast'),
(1,12107,@POOLID+8,0,'Tattered Chest (2845), Scorched Grove'),
(1,@OGUID+21,@POOLID+8,0,'Tattered Chest (2845), Runestone Shan''dor'),
(1,@OGUID+22,@POOLID+8,0,'Tattered Chest (2845), Runestone Falithas');
