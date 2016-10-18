SET @GUID := 110224;
SET @DIRT := 28362;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID+0 AND @GUID+33;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@GUID+0 ,@DIRT,571,1,1,0,5652.974,4494.586,-136.6679,2.600541,300,0,0),
(@GUID+1 ,@DIRT,571,1,1,0,5682.897,4479.211,-135.6831,4.817109,300,0,0),
(@GUID+2 ,@DIRT,571,1,1,0,5616.783,4507.514,-136.2347,2.792527,300,0,0),
(@GUID+3 ,@DIRT,571,1,1,0,5566.848,4608.069,-140.0046,0.08726646,300,0,0),
(@GUID+4 ,@DIRT,571,1,1,0,5726.52,4535.192,-138.999,1.256637,300,0,0),
(@GUID+5 ,@DIRT,571,1,1,0,5693.346,4629.685,-138.3224,4.921828,300,0,0),
(@GUID+6 ,@DIRT,571,1,1,0,5733.776,4598.793,-134.9071,0.8028514,300,0,0),
(@GUID+7 ,@DIRT,571,1,1,0,5752.648,4496.542,-132.4478,4.886922,300,0,0),
(@GUID+8 ,@DIRT,571,1,1,0,5705.064,4435.867,-141.0292,5.986479,300,0,0),
(@GUID+9 ,@DIRT,571,1,1,0,5736.984,4459.437,-134.9569,1.291544,300,0,0),
(@GUID+10,@DIRT,571,1,1,0,5579.51,4442.721,-139.8728,5.5676,300,0,0),
(@GUID+11,@DIRT,571,1,1,0,5726.514,4370.49,-138.5187,3.106686,300,0,0),
(@GUID+12,@DIRT,571,1,1,0,5801.268,4529.366,-134.282,3.228859,300,0,0),
(@GUID+13,@DIRT,571,1,1,0,5806.822,4481.874,-131.8635,4.607669,300,0,0),
(@GUID+14,@DIRT,571,1,1,0,5868.016,4498.958,-133.2091,3.525565,300,0,0),
(@GUID+15,@DIRT,571,1,1,0,5865.933,4563.596,-133.3011,3.525565,300,0,0),
(@GUID+16,@DIRT,571,1,1,0,5847.393,4599.288,-136.0588,5.532694,300,0,0),
(@GUID+17,@DIRT,571,1,1,0,5768.064,4605.938,-137.6851,3.874631,300,0,0),
(@GUID+18,@DIRT,571,1,1,0,5743.717,4645.34,-135.1314,3.071779,300,0,0),
(@GUID+19,@DIRT,571,1,1,0,5789.393,4640.829,-135.5909,5.532694,300,0,0),
(@GUID+20,@DIRT,571,1,1,0,5906.656,4612.754,-132.0416,2.600541,300,0,0),
(@GUID+21,@DIRT,571,1,1,0,5842.542,4682.008,-134.9288,4.677482,300,0,0),
(@GUID+22,@DIRT,571,1,1,0,5822.073,4726.694,-132.8639,6.195919,300,0,0),
(@GUID+23,@DIRT,571,1,1,0,5917.018,4735.479,-137.8103,1.43117,300,0,0),
(@GUID+24,@DIRT,571,1,1,0,5863.843,4759.619,-131.9068,5.166174,300,0,0),
(@GUID+25,@DIRT,571,1,1,0,5656.485,4679.363,-132.4746,0.8552113,300,0,0),
(@GUID+26,@DIRT,571,1,1,0,5699.089,4671.949,-135.4732,5.986479,300,0,0),
(@GUID+27,@DIRT,571,1,1,0,5731.342,4688.484,-134.2571,3.438299,300,0,0),
(@GUID+28,@DIRT,571,1,1,0,5760.655,4690.131,-134.4649,5.585053,300,0,0),
(@GUID+29,@DIRT,571,1,1,0,5677.118,4725.341,-135.5663,3.577925,300,0,0),
(@GUID+30,@DIRT,571,1,1,0,5704.706,4763.644,-137.0218,5.009095,300,0,0),
(@GUID+31,@DIRT,571,1,1,0,5751.76,4767.774,-134.9354,3.979351,300,0,0),
(@GUID+32,@DIRT,571,1,1,0,5786.583,4751.955,-133.6232,0.7679449,300,0,0),
(@GUID+33,@DIRT,571,1,1,0,5807.025,4767.91,-134.8856,3.560472,300,0,0);
