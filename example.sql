﻿
/*
**********************
	USAGE
**********************
*/

--DROP TABLE buoy_obs;
CREATE TABLE buoy_obs(
  id              SERIAL PRIMARY KEY,
  buoy_id         INTEGER,
  time            TIMESTAMP,
  geom            GEOMETRY(POINT, 4326),
  zonal_vel       REAL,
  merid_vel       REAL
);
CREATE INDEX idx_buoy_obs_buoy_id
ON buoy_obs(buoy_id);
CREATE INDEX idx_buoy_obs_geom
ON buoy_obs USING GIST(geom);
CREATE INDEX idx_buoy_obs_time
ON buoy_obs(time);


--DELETE FROM buoy_obs;
INSERT INTO buoy_obs(buoy_id, time, geom, zonal_vel, merid_vel)
VALUES
(1, '2015-05-18 14:00:00', 'SRID=4326;POINT(-25.53002 234.90398)', -0.0557, -0.0613),
(1, '2015-05-18 15:00:00', 'SRID=4326;POINT(-25.53201 234.90127)', -0.0850, -0.0628),
(1, '2015-05-18 16:00:00', 'SRID=4326;POINT(-25.53403 234.89823)', -0.0830, -0.0613),
(1, '2015-05-18 17:00:00', 'SRID=4326;POINT(-25.53603 234.89525)', -0.0844, -0.0633),
(1, '2015-05-18 18:00:00', 'SRID=4326;POINT(-25.53873 234.89299)', -0.0540, -0.0894),
(1, '2015-05-18 19:00:00', 'SRID=4326;POINT(-25.54127 234.89102)', -0.0553, -0.0911),
(1, '2015-05-18 20:00:00', 'SRID=4326;POINT(-25.54503 234.89000)', -0.0005, -0.1286),
(1, '2015-05-18 21:00:00', 'SRID=4326;POINT(-25.54876 234.88927)', -0.0278, -0.0921),
(1, '2015-05-18 22:00:00', 'SRID=4326;POINT(-25.55238 234.88828)', -0.0262, -0.1548),
(1, '2015-05-18 23:00:00', 'SRID=4326;POINT(-25.55805 234.88831)', 0.0283, -0.1839),
(1, '2015-05-19 00:00:00', 'SRID=4326;POINT(-25.56404 234.89103)', 0.1133, -0.1884),
(1, '2015-05-19 01:00:00', 'SRID=4326;POINT(-25.57010 234.89538)', 0.1391, -0.1839),
(1, '2015-05-19 02:00:00', 'SRID=4326;POINT(-25.57605 234.90105)', 0.1663, -0.1839),
(1, '2015-05-19 03:00:00', 'SRID=4326;POINT(-25.58175 234.90776)', 0.1984, -0.1572),
(1, '2015-05-19 04:00:00', 'SRID=4326;POINT(-25.58503 234.91513)', 0.2211, -0.0613),
(1, '2015-05-19 05:00:00', 'SRID=4326;POINT(-25.58702 234.92337)', 0.2492, -0.0613),
(1, '2015-05-19 06:00:00', 'SRID=4326;POINT(-25.58835 234.93275)', 0.2551, -0.0007),
(1, '2015-05-19 07:00:00', 'SRID=4326;POINT(-25.58735 234.94215)', 0.2755, 0.0622),
(1, '2015-05-19 08:00:00', 'SRID=4326;POINT(-25.58429 234.95078)', 0.1976, 0.1262),
(1, '2015-05-19 09:00:00', 'SRID=4326;POINT(-25.57964 234.95678)', 0.1380, 0.1535),
(1, '2015-05-19 10:00:00', 'SRID=4326;POINT(-25.57463 234.96075)', 0.0820, 0.1533),
(1, '2015-05-19 11:00:00', 'SRID=4326;POINT(-25.56969 234.96301)', 0.0544, 0.1515),
(1, '2015-05-19 12:00:00', 'SRID=4326;POINT(-25.56497 234.96326)', -0.0266, 0.1257),
(1, '2015-05-19 13:00:00', 'SRID=4326;POINT(-25.56125 234.96197)', -0.0553, 0.0907),
(1, '2015-05-19 14:00:00', 'SRID=4326;POINT(-25.55899 234.95969)', -0.0823, 0.0608),
(1, '2015-05-19 15:00:00', 'SRID=4326;POINT(-25.55830 234.95669)', -0.0850, -0.0314),
(1, '2015-05-19 16:00:00', 'SRID=4326;POINT(-25.55933 234.95331)', -0.1121, -0.0320),
(1, '2015-05-19 17:00:00', 'SRID=4326;POINT(-25.56140 234.94933)', -0.0924, -0.0904),
(1, '2015-05-19 18:00:00', 'SRID=4326;POINT(-25.56429 234.94748)', -0.0468, -0.0723),
(1, '2015-05-19 19:00:00', 'SRID=4326;POINT(-25.56636 234.94634)', -0.0231, -0.0369),
(1, '2015-05-19 20:00:00', 'SRID=4326;POINT(-25.56788 234.94586)', -0.0109, -0.0494),
(2, '2015-05-19 21:00:00', 'SRID=4326;POINT(-25.56914 234.94486)', -0.0376, -0.0510),
(2, '2015-05-19 22:00:00', 'SRID=4326;POINT(-25.57134 234.94400)', -0.0000, -0.0933),
(2, '2015-05-19 23:00:00', 'SRID=4326;POINT(-25.57537 234.94400)', 0.0000, -0.1563),
(2, '2015-05-20 00:00:00', 'SRID=4326;POINT(-25.58005 234.94400)', 0.0000, -0.1226),
(2, '2015-05-20 01:00:00', 'SRID=4326;POINT(-25.58509 234.94532)', 0.0828, -0.1829),
(2, '2015-05-20 02:00:00', 'SRID=4326;POINT(-25.59006 234.94803)', 0.0571, -0.1260),
(2, '2015-05-20 03:00:00', 'SRID=4326;POINT(-25.59479 234.95105)', 0.1106, -0.1529),
(2, '2015-05-20 04:00:00', 'SRID=4326;POINT(-25.59905 234.95609)', 0.1658, -0.1216),
(2, '2015-05-20 05:00:00', 'SRID=4326;POINT(-25.60203 234.96179)', 0.1413, -0.0628),
(2, '2015-05-20 06:00:00', 'SRID=4326;POINT(-25.60403 234.96708)', 0.1658, -0.0613),
(2, '2015-05-20 07:00:00', 'SRID=4326;POINT(-25.60603 234.97413)', 0.2211, -0.0613),
(2, '2015-05-20 08:00:00', 'SRID=4326;POINT(-25.60737 234.98207)', 0.2215, -0.0007),
(2, '2015-05-20 09:00:00', 'SRID=4326;POINT(-25.60672 234.99100)', 0.2763, 0.0307),
(2, '2015-05-20 10:00:00', 'SRID=4326;POINT(-25.60397 234.99977)', 0.1969, 0.1245),
(2, '2015-05-20 11:00:00', 'SRID=4326;POINT(-25.60097 235.00608)', 0.1693, 0.0632),
(2, '2015-05-20 12:00:00', 'SRID=4326;POINT(-25.59795 235.01105)', 0.1107, 0.1228),
(2, '2015-05-20 13:00:00', 'SRID=4326;POINT(-25.59363 235.01475)', 0.0823, 0.1529),
(2, '2015-05-20 14:00:00', 'SRID=4326;POINT(-25.58868 235.01701)', 0.0548, 0.1528),
(2, '2015-05-20 15:00:00', 'SRID=4326;POINT(-25.58397 235.01800)', -0.0000, 0.1256),
(2, '2015-05-20 16:00:00', 'SRID=4326;POINT(-25.58068 235.01727)', -0.0268, 0.0911),
(2, '2015-05-20 17:00:00', 'SRID=4326;POINT(-25.57700 235.01600)', -0.0566, 0.1255),
(2, '2015-05-20 18:00:00', 'SRID=4326;POINT(-25.57327 235.01399)', -0.0566, 0.0943),
(2, '2015-05-20 19:00:00', 'SRID=4326;POINT(-25.57097 235.01125)', -0.0812, 0.0613),
(2, '2015-05-20 20:00:00', 'SRID=4326;POINT(-25.56897 235.01008)', -0.0176, 0.0621),
(2, '2015-05-20 21:00:00', 'SRID=4326;POINT(-25.56818 235.00961)', -0.0153, 0.0368),
(2, '2015-05-20 22:00:00', 'SRID=4326;POINT(-25.56817 235.00917)', -0.0163, 0.0034),
(2, '2015-05-20 23:00:00', 'SRID=4326;POINT(-25.56837 235.00860)', -0.0178, -0.0130),
(2, '2015-05-21 00:00:00', 'SRID=4326;POINT(-25.56877 235.00791)', -0.0199, -0.0133),
(2, '2015-05-21 01:00:00', 'SRID=4326;POINT(-25.56924 235.00734)', -0.0111, -0.0129),
(2, '2015-05-21 02:00:00', 'SRID=4326;POINT(-25.56986 235.00728)', 0.0022, -0.0380),
(2, '2015-05-21 03:00:00', 'SRID=4326;POINT(-25.57102 235.00740)', 0.0088, -0.0609),
(2, '2015-05-21 04:00:00', 'SRID=4326;POINT(-25.57303 235.00773)', 0.0265, -0.0636),
(2, '2015-05-21 05:00:00', 'SRID=4326;POINT(-25.57575 235.00832)', 0.0289, -0.0940),
(2, '2015-05-21 06:00:00', 'SRID=4326;POINT(-25.57877 235.01003)', 0.0552, -0.0930),
(2, '2015-05-21 07:00:00', 'SRID=4326;POINT(-25.58145 235.01380)', 0.1394, -0.0608),
(2, '2015-05-21 08:00:00', 'SRID=4326;POINT(-25.58301 235.02006)', 0.2211, -0.0608),
(2, '2015-05-21 09:00:00', 'SRID=4326;POINT(-25.58369 235.02837)', 0.2553, 0.0318),
(2, '2015-05-21 10:00:00', 'SRID=4326;POINT(-25.58196 235.03815)', 0.2755, 0.0622),
(2, '2015-05-21 11:00:00', 'SRID=4326;POINT(-25.57896 235.04733)', 0.2470, 0.1231),
(2, '2015-05-21 12:00:00', 'SRID=4326;POINT(-25.57396 235.05504)', 0.1701, 0.1886),
(2, '2015-05-21 13:00:00', 'SRID=4326;POINT(-25.56790 235.06034)', 0.1363, 0.1839),
(2, '2015-05-21 14:00:00', 'SRID=4326;POINT(-25.56192 235.06403)', 0.0567, 0.1879),
(2, '2015-05-21 15:00:00', 'SRID=4326;POINT(-25.55695 235.06603)', 0.0554, 0.1227),
(2, '2015-05-21 16:00:00', 'SRID=4326;POINT(-25.55294 235.06736)', -0.0018, 0.1226),
(2, '2015-05-21 17:00:00', 'SRID=4326;POINT(-25.54867 235.06598)', -0.0553, 0.1528),
(2, '2015-05-21 18:00:00', 'SRID=4326;POINT(-25.54400 235.06400)', -0.0553, 0.1226),
(2, '2015-05-21 19:00:00', 'SRID=4326;POINT(-25.54095 235.06198)', -0.0571, 0.0654),
(2, '2015-05-21 20:00:00', 'SRID=4326;POINT(-25.53777 235.06098)', -0.0039, 0.1267),
(2, '2015-05-21 21:00:00', 'SRID=4326;POINT(-25.53390 235.06026)', -0.0263, 0.1169),
(2, '2015-05-21 22:00:00', 'SRID=4326;POINT(-25.53098 235.06031)', 0.0292, 0.0603),
(2, '2015-05-21 23:00:00', 'SRID=4326;POINT(-25.53000 235.06303)', 0.1106, 0.0000),
(2, '2015-05-22 00:00:00', 'SRID=4326;POINT(-25.52965 235.06668)', 0.0888, 0.0267),
(2, '2015-05-22 01:00:00', 'SRID=4326;POINT(-25.52848 235.07004)', 0.0813, 0.0455),
(2, '2015-05-22 02:00:00', 'SRID=4326;POINT(-25.52695 235.07302)', 0.0553, 0.0679),
(2, '2015-05-22 03:00:00', 'SRID=4326;POINT(-25.52428 235.07467)', 0.0328, 0.0921),
(2, '2015-05-22 04:00:00', 'SRID=4326;POINT(-25.52264 235.07443)', -0.0087, 0.0440),
(2, '2015-05-22 05:00:00', 'SRID=4326;POINT(-25.52139 235.07409)', -0.0078, 0.0354),
(2, '2015-05-22 06:00:00', 'SRID=4326;POINT(-25.52018 235.07381)', -0.0179, 0.0424),
(2, '2015-05-22 07:00:00', 'SRID=4326;POINT(-25.51884 235.07343)', 0.0142, 0.0480),
(2, '2015-05-22 08:00:00', 'SRID=4326;POINT(-25.51730 235.07431)', 0.0291, 0.0309),
(2, '2015-05-22 09:00:00', 'SRID=4326;POINT(-25.51669 235.07638)', 0.0559, 0.0303),
(2, '2015-05-22 10:00:00', 'SRID=4326;POINT(-25.51539 235.07804)', 0.0585, 0.0614),
(2, '2015-05-22 11:00:00', 'SRID=4326;POINT(-25.51267 235.08179)', 0.1397, 0.0966),
(2, '2015-05-22 12:00:00', 'SRID=4326;POINT(-25.50925 235.08575)', 0.0833, 0.0923),
(2, '2015-05-22 13:00:00', 'SRID=4326;POINT(-25.50594 235.08905)', 0.1097, 0.1226),
(2, '2015-05-22 14:00:00', 'SRID=4326;POINT(-25.50194 235.09203)', 0.0562, 0.1255),
(2, '2015-05-22 15:00:00', 'SRID=4326;POINT(-25.49795 235.09328)', 0.0267, 0.1224),
(3, '2015-05-22 16:00:00', 'SRID=4326;POINT(-25.49395 235.09325)', -0.0269, 0.1216),
(3, '2015-05-22 17:00:00', 'SRID=4326;POINT(-25.49098 235.09228)', -0.0266, 0.0613),
(3, '2015-05-22 18:00:00', 'SRID=4326;POINT(-25.48898 235.09165)', -0.0244, 0.0626),
(3, '2015-05-22 19:00:00', 'SRID=4326;POINT(-25.48711 235.08997)', -0.0517, 0.0427),
(3, '2015-05-22 20:00:00', 'SRID=4326;POINT(-25.48596 235.08798)', -0.0553, 0.0069),
(3, '2015-05-22 21:00:00', 'SRID=4326;POINT(-25.48529 235.08598)', -0.0564, 0.0297),
(3, '2015-05-22 22:00:00', 'SRID=4326;POINT(-25.48441 235.08532)', -0.0071, 0.0286),
(3, '2015-05-22 23:00:00', 'SRID=4326;POINT(-25.48356 235.08598)', 0.0422, 0.0281),
(3, '2015-05-23 00:00:00', 'SRID=4326;POINT(-25.48270 235.08806)', 0.1111, 0.0295),
(3, '2015-05-23 01:00:00', 'SRID=4326;POINT(-25.48168 235.09206)', 0.1106, 0.0326),
(3, '2015-05-23 02:00:00', 'SRID=4326;POINT(-25.47928 235.09572)', 0.0822, 0.0911),
(3, '2015-05-23 03:00:00', 'SRID=4326;POINT(-25.47699 235.09772)', 0.0285, 0.0628),
(3, '2015-05-23 04:00:00', 'SRID=4326;POINT(-25.47469 235.09901)', 0.0536, 0.0901),
(3, '2015-05-23 05:00:00', 'SRID=4326;POINT(-25.47198 235.09926)', -0.0264, 0.0618),
(3, '2015-05-23 06:00:00', 'SRID=4326;POINT(-25.46926 235.09799)', -0.0567, 0.0937),
(3, '2015-05-23 07:00:00', 'SRID=4326;POINT(-25.46625 235.09629)', -0.0265, 0.0907),
(3, '2015-05-23 08:00:00', 'SRID=4326;POINT(-25.46397 235.09638)', 0.0205, 0.0622),
(3, '2015-05-23 09:00:00', 'SRID=4326;POINT(-25.46273 235.09681)', 0.0145, 0.0435),
(3, '2015-05-23 10:00:00', 'SRID=4326;POINT(-25.46191 235.09701)', 0.0003, 0.0255),
(3, '2015-05-23 11:00:00', 'SRID=4326;POINT(-25.46133 235.09737)', 0.0181, 0.0131),
(3, '2015-05-23 12:00:00', 'SRID=4326;POINT(-25.46100 235.09821)', 0.0430, -0.0000),
(3, '2015-05-23 13:00:00', 'SRID=4326;POINT(-25.46100 235.10032)', 0.0847, -0.0000),
(3, '2015-05-23 14:00:00', 'SRID=4326;POINT(-25.46070 235.10302)', 0.0553, 0.0314),
(3, '2015-05-23 15:00:00', 'SRID=4326;POINT(-25.45929 235.10532)', 0.0843, 0.0321),
(4, '2015-05-18 14:00:00', 'SRID=4326;POINT(-25.53002 234.90398)', 1, 1),
(4, '2015-05-18 16:00:00', 'SRID=4326;POINT(-25.53403 234.89823)', 3, 3);

--DROP TABLE buoy_obs_tj;
CREATE TABLE buoy_obs_tj(
  buoy_id        INTEGER PRIMARY KEY,
  trajectory     TRAJECTORY
);
CREATE INDEX idx_buoy_obs_tj_trajectory_hull
ON buoy_obs_tj USING GIST(((trajectory).hull));
CREATE INDEX idx_buoy_obs_tj_trajectory_period
ON buoy_obs_tj USING GIST(((trajectory).period));


--DROP TABLE buoy_obs_ts;
CREATE TABLE buoy_obs_ts(
  buoy_id        INTEGER PRIMARY KEY,
  timeseries     TIMESERIES
);
CREATE INDEX idx_buoy_obs_ts_trajectory_hull
ON buoy_obs_ts USING GIST(((timeseries).hull));
CREATE INDEX idx_buoy_obs_ts_trajectory_period
ON buoy_obs_ts USING GIST(((timeseries).period));
CREATE INDEX idx_buoy_obs_ts_trajectory_range
ON buoy_obs_ts USING GIST(((timeseries).range));

--DELETE FROM buoy_obs_tj
INSERT INTO buoy_obs_tj
SELECT buoy_id, tst_trajectory(geom, time)
FROM buoy_obs
GROUP BY buoy_id;

--DELETE FROM buoy_obs_ts;
INSERT INTO buoy_obs_ts
SELECT buoy_id, tst_timeseries((|/(zonal_vel ^ 2 + merid_vel ^ 2))::NUMERIC, time, geom)
FROM buoy_obs
GROUP BY buoy_id;

SELECT unnest(tst_data(b1.trajectory))
FROM buoy_obs_tj b1, buoy_obs_tj b2
WHERE _tst_intersects(b1.trajectory, b2.trajectory);

SELECT tst_data(TST_LINEAR_RESAMPLING(timeseries, 4))
FROM buoy_obs_ts;

SELECT unnest(tst_data(timeseries))
FROM buoy_obs_ts;

SELECT unnest(tst_data(tst_linear_resampling(trajectory, 2)))
FROM buoy_obs_tj;

SELECT unnest(tst_data(trajectory))
FROM buoy_obs_tj;

CREATE OR REPLACE VIEW buoy_obs_tj_view AS(
SELECT (UNNEST(TST_DATA(TST_LINEAR_RESAMPLING(trajectory, 40)))).geom
FROM buoy_obs_tj);

SELECT * FROM buoy_obs_tj_view;