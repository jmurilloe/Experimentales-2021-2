clear all; close all;
theta = [2	2.1	2.2	2.3	2.4	2.5	2.6	2.7	2.8	2.9	3	3.1	3.2	3.3	3.4	3.5	3.6	3.7	3.8	3.9	4	4.1	4.2	4.3	4.4	4.5	4.6	4.7	4.8	4.9	5	5.1	5.2	5.3	5.4	5.5	5.6	5.7	5.8	5.9	6	6.1	6.2	6.3	6.4	6.5	6.6	6.7	6.8	6.9	7	7.1	7.2	7.3	7.4	7.5	7.6	7.7	7.8	7.9	8	8.1	8.2	8.3	8.4	8.5	8.6	8.7	8.8	8.9	9	9.1	9.2	9.3	9.4	9.5	9.6	9.7	9.8	9.9	10	10.1	10.2	10.3	10.4	10.5	10.6	10.7	10.8	10.9	11	11.1	11.2	11.3	11.4	11.5	11.6	11.7	11.8	11.9	12	12.1	12.2	12.3	12.4	12.5	12.6	12.7	12.8	12.9	13	13.1	13.2	13.3	13.4	13.5	13.6	13.7	13.8	13.9	14	14.1	14.2	14.3	14.4	14.5	14.6	14.7	14.8	14.9	15	15.1	15.2	15.3	15.4	15.5	15.6	15.7	15.8	15.9	16	16.1	16.2	16.3	16.4	16.5	16.6	16.7	16.8	16.9	17	17.1	17.2	17.3	17.4	17.5	17.6	17.7	17.8	17.9	18	18.1	18.2	18.3	18.4	18.5	18.6	18.7	18.8	18.9	19	19.1	19.2	19.3	19.4	19.5	19.6	19.7	19.8	19.9	20	20.1	20.2	20.3	20.4	20.5	20.6	20.7	20.8	20.9	21	21.1	21.2	21.3	21.4	21.5	21.6	21.7	21.8	21.9	22	22.1	22.2	22.3	22.4	22.5	22.6	22.7	22.8	22.9	23	23.1	23.2	23.3	23.4	23.5	23.6	23.7	23.8	23.9	24	24.1	24.2	24.3	24.4	24.5	24.6	24.7	24.8	24.9	25];
I = [19.8	16.9	16.2	17.2	18.9	16.5	18.2	19.4	18.1	14.2	19.6	23.6	31.2	58.5	146.9	277.1	466.2	663.5	826.6	943	1059.7	1131	1193	1250.6	1312.5	1332.3	1357.9	1381.4	1390.1	1402.5	1378.3	1389.1	1363.6	1367.1	1353.1	1324.2	1304.2	1271.7	1270.5	1216	1189	1212.8	1481.2	2006.5	2205.5	2075.1	1722.7	1292.7	1084	1142.9	1839.6	3413.9	4017	3845.4	2967.6	1691.9	990.2	838.9	793.3	773.8	742.5	702.2	680.3	659.3	617.5	623.5	583.1	561.3	551.7	526.1	512.1	482.4	476.6	452.5	444.7	414.5	395.4	372.1	365.4	346.2	345.7	327.9	318.7	312.6	306.8	298.6	295.4	286.1	273.1	273.4	270.8	256.5	266.1	251.2	257	248.7	250	236.9	230.2	229.5	228	226.6	213	219.2	217.9	219.2	267.1	317.4	463.5	570.3	559.8	493	299.7	225.8	218.4	215.7	199.8	202.5	200.3	197.5	206.6	184.2	205.5	255.3	625	1144.8	1364.3	1244.6	737.3	338.7	190.4	168.9	163.4	156.4	155.5	148.5	143	153.6	144.8	141.1	129.4	128.1	137.1	131.8	122.3	123.6	128.1	113.7	114.4	114.7	105.8	120.2	105.4	95.4	98.6	93.4	94.3	94.6	97.9	94.7	92.3	86.6	90.7	86.6	84.8	81.8	80.6	78.2	80.3	77	83.4	73.5	85.2	89.9	93.2	118	149.4	161.3	133.2	95.9	72	68	63.5	63.2	62.1	62.2	61	57.7	56.5	58.4	59	59.7	59.1	56	55	50.7	55.8	54.5	58	67.6	139.4	274.8	357.6	358.2	246.8	128.2	64.9	52.1	45	47.2	45.3	42	41.9	39.7	41.7	41.9	35.8	35.7	38.5	38.5	37.9	34.9	36.5	33.4	35.9	33.4	33.7	31.6	32.9	28.4	30.9];
plot (theta,I,'k*-')