clear all; close all;
Vr = [0	0	-0.01	-0.04	-0.05	-0.07	-0.08	-0.1	-0.11	-0.12	-0.14	-0.16	-0.18	-0.18	-0.2	-0.22	-0.24	-0.26	-0.27	-0.29	-0.31	-0.33	-0.36	-0.36	-0.39	-0.4	-0.43	-0.44	-0.46	-0.48	-0.49	-0.52	-0.53	-0.55	-0.58	-0.6	-0.62	-0.65	-0.67	-0.69	-0.71	-0.72	-0.74	-0.76	-0.79	-0.79	-0.8	-0.82	-0.84	-0.86	-0.88	-0.9	-0.91	-0.93	-0.96	-0.98	-1	-1.02	-1.03	-1.05	-1.08	-1.1	-1.12	-1.14	-1.17	-1.18	-1.19	-1.21	-1.23	-1.25	-1.27	-1.29	-1.31	-1.33	-1.36	-1.38	-1.4	-1.42	-1.44	-1.47	-1.5	-1.52	-1.54	-1.56	-1.58	-1.6	-1.62	-1.64	-1.66	-1.69	-1.72	-1.75	-1.78	-1.8	-1.83	-1.85	-1.88	-1.9	-1.93	-1.96	-1.99	-2	-2.02	-2.05	-2.08	-2.11	-2.14	-2.16	-2.19	-2.22	-2.24	-2.27	-2.29	-2.32	-2.34	-2.37	-2.39	-2.41	-2.45	-2.48	-2.5	-2.53	-2.57	-2.59	-2.62	-2.64	-2.67	-2.69	-2.72	-2.75	-2.77	-2.79	-2.81	-2.84	-2.86	-2.89	-2.91	-2.93	-2.96	-2.98	-3.01	-3.03	-3.06	-3.08	-3.11	-3.13	-3.16	-3.18	-3.21	-3.23	-3.25	-3.28	-3.31	-3.33	-3.37	-3.4	-3.43	-3.46	-3.49	-3.51	-3.54	-3.56	-3.58	-3.6	-3.62	-3.64	-3.66	-3.68	-3.72	-3.74	-3.77	-3.8	-3.83	-3.86	-3.88	-3.9	-3.94	-3.96	-3.98	-3.98	-3.98	-3.98];
I = [94	93.9	93.7	90.6	89.4	88	86.7	84.4	83.3	81.3	80	78.7	76.8	76.1	74.4	72.3	71.5	70	68.2	66.1	63.8	62.8	60.6	59.8	58	56.7	55.1	54.6	52.7	50.3	48.6	48.5	46.8	46.2	45.3	43.2	41.5	39.3	37.7	36.2	34.2	33.3	32.2	31.1	29.2	28.7	28.5	27.5	26.8	25.6	24.4	23.6	22.5	21.5	20	19.5	18.3	17.5	16.6	15.5	14.5	13.5	12.9	11.9	11	10.4	9.8	9	8.5	8	7.4	6.9	6.3	5.8	5.2	4.5	3.9	3.4	2.9	2.4	2.1	1.8	1.5	1.3	1	0.8	0.6	0.4	0.2	-0.1	-0.3	-0.4	-0.5	-0.6	-0.5	-0.6	-0.6	-0.7	-0.7	-0.7	-0.7	-0.8	-0.8	-0.8	-0.7	-0.7	-0.7	-0.8	-0.9	-1	-0.9	-1	-0.9	-0.9	-0.9	-0.9	-0.9	-0.8	-0.9	-0.8	-0.8	-0.8	-0.9	-0.9	-0.9	-1	-1	-1	-0.9	-1	-0.9	-0.8	-0.8	-0.8	-0.8	-1	-0.9	-1	-1.1	-1	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-1	-1	-1	-1	-1.1	-1	-1.1	-1	-1	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-1	-1	-1	-1	-1	-1	-0.9	-0.9	-0.9	-1	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.8	-0.8];