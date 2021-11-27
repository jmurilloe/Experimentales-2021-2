clear all; close all;
Vr1 = [0	0	-0.01	-0.04	-0.05	-0.07	-0.08	-0.1	-0.11	-0.12	-0.14	-0.16	-0.18	-0.18	-0.2	-0.22	-0.24	-0.26	-0.27	-0.29	-0.31	-0.33	-0.36	-0.36	-0.39	-0.4	-0.43	-0.44	-0.46	-0.48	-0.49	-0.52	-0.53	-0.55	-0.58	-0.6	-0.62	-0.65	-0.67	-0.69	-0.71	-0.72	-0.74	-0.76	-0.79	-0.79	-0.8	-0.82	-0.84	-0.86	-0.88	-0.9	-0.91	-0.93	-0.96	-0.98	-1	-1.02	-1.03	-1.05	-1.08	-1.1	-1.12	-1.14	-1.17	-1.18	-1.19	-1.21	-1.23	-1.25	-1.27	-1.29	-1.31	-1.33	-1.36	-1.38	-1.4	-1.42	-1.44	-1.47	-1.5	-1.52	-1.54	-1.56	-1.58	-1.6	-1.62	-1.64	-1.66	-1.69	-1.72	-1.75	-1.78	-1.8	-1.83	-1.85	-1.88	-1.9	-1.93	-1.96	-1.99	-2	-2.02	-2.05	-2.08	-2.11	-2.14	-2.16	-2.19	-2.22	-2.24	-2.27	-2.29	-2.32	-2.34	-2.37	-2.39	-2.41	-2.45	-2.48	-2.5	-2.53	-2.57	-2.59	-2.62	-2.64	-2.67	-2.69	-2.72	-2.75	-2.77	-2.79	-2.81	-2.84	-2.86	-2.89	-2.91	-2.93	-2.96	-2.98	-3.01	-3.03	-3.06	-3.08	-3.11	-3.13	-3.16	-3.18	-3.21	-3.23	-3.25	-3.28	-3.31	-3.33	-3.37	-3.4	-3.43	-3.46	-3.49	-3.51	-3.54	-3.56	-3.58	-3.6	-3.62	-3.64	-3.66	-3.68	-3.72	-3.74	-3.77	-3.8	-3.83	-3.86	-3.88	-3.9	-3.94	-3.96	-3.98	-3.98	-3.98	-3.98];
I1 = [94	93.9	93.7	90.6	89.4	88	86.7	84.4	83.3	81.3	80	78.7	76.8	76.1	74.4	72.3	71.5	70	68.2	66.1	63.8	62.8	60.6	59.8	58	56.7	55.1	54.6	52.7	50.3	48.6	48.5	46.8	46.2	45.3	43.2	41.5	39.3	37.7	36.2	34.2	33.3	32.2	31.1	29.2	28.7	28.5	27.5	26.8	25.6	24.4	23.6	22.5	21.5	20	19.5	18.3	17.5	16.6	15.5	14.5	13.5	12.9	11.9	11	10.4	9.8	9	8.5	8	7.4	6.9	6.3	5.8	5.2	4.5	3.9	3.4	2.9	2.4	2.1	1.8	1.5	1.3	1	0.8	0.6	0.4	0.2	-0.1	-0.3	-0.4	-0.5	-0.6	-0.5	-0.6	-0.6	-0.7	-0.7	-0.7	-0.7	-0.8	-0.8	-0.8	-0.7	-0.7	-0.7	-0.8	-0.9	-1	-0.9	-1	-0.9	-0.9	-0.9	-0.9	-0.9	-0.8	-0.9	-0.8	-0.8	-0.8	-0.9	-0.9	-0.9	-1	-1	-1	-0.9	-1	-0.9	-0.8	-0.8	-0.8	-0.8	-1	-0.9	-1	-1.1	-1	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-1	-1	-1	-1	-1.1	-1	-1.1	-1	-1	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-1	-1	-1	-1	-1	-1	-0.9	-0.9	-0.9	-1	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.8	-0.8];
Vr2=[0	-0.02	-0.04	-0.05	-0.07	-0.1	-0.11	-0.13	-0.16	-0.17	-0.2	-0.21	-0.23	-0.25	-0.27	-0.29	-0.31	-0.33	-0.35	-0.38	-0.4	-0.43	-0.45	-0.47	-0.5	-0.52	-0.55	-0.58	-0.62	-0.63	-0.67	-0.69	-0.71	-0.74	-0.77	-0.8	-0.83	-0.86	-0.89	-0.91	-0.96	-0.99	-1.01	-1.06	-1.09	-1.12	-1.15	-1.18	-1.2	-1.23	-1.26	-1.28	-1.32	-1.35	-1.39	-1.41	-1.45	-1.47	-1.5	-1.53	-1.55	-1.58	-1.61	-1.64	-1.67	-1.7	-1.74	-1.78	-1.81	-1.85	-1.89	-1.93	-1.95	-1.99	-2.02	-2.05	-2.09	-2.12	-2.16	-2.2	-2.24	-2.28	-2.32	-2.36	-2.4	-2.44	-2.48	-2.53	-2.56	-2.6	-2.64	-2.68	-2.7	-2.74	-2.77	-2.79	-2.83	-2.86	-2.9	-2.92	-2.96	-2.99	-3.03	-3.06	-3.11	-3.14	-3.18	-3.21	-3.25	-3.28	-3.32	-3.36	-3.39	-3.44	-3.47	-3.5	-3.53	-3.58	-3.62	-3.65	-3.7	-3.74	-3.77	-3.8	-3.82	-3.85	-3.89	-3.93	-3.96	-3.98	-3.98];
I2=[69.1	68.3	65.9	66.2	63.7	62	61	59.8	57.6	56.9	55	55.2	52.8	51.3	50.1	49.5	47.1	44.8	44	41.6	41.2	39.6	38.1	37.3	35.9	34.9	33.1	32.2	30.1	31	29.6	28.2	27	25.6	23.9	22.4	21.1	20.1	18.8	17.5	17.1	15.6	14.1	12.8	11.7	10.4	9.1	8.3	7.5	6.8	6.1	5.5	5	4.4	3.7	3	2.5	1.8	1.5	0.9	0.8	0.4	0.3	0.1	-0.1	-0.2	-0.4	-0.4	-0.6	-0.7	-0.8	-0.8	-0.8	-0.9	-1	-1	-1	-1	-1.1	-1.1	-1	-1	-1	-1	-1	-1	-0.8	-0.9	-1	-1.1	-1.1	-1.2	-1.1	-1.1	-1.1	-1	-1	-0.9	-1	-1	-1.1	-1	-1.2	-1	-1.1	-1	-1	-1	-1	-1	-0.9	-1	-0.9	-1	-1	-1	-1.2	-1.2	-1.2	-1	-1.1	-0.9	-1	-0.9	-1	-1	-1	-0.9	-1	-1	-0.8];
Vr3= [-0.02	-0.04	-0.06	-0.08	-0.09	-0.11	-0.12	-0.14	-0.17	-0.2	-0.23	-0.26	-0.27	-0.3	-0.31	-0.34	-0.38	-0.4	-0.43	-0.45	-0.48	-0.49	-0.53	-0.54	-0.58	-0.6	-0.63	-0.65	-0.68	-0.7	-0.72	-0.74	-0.77	-0.79	-0.79	-0.83	-0.83	-0.85	-0.87	-0.89	-0.91	-0.94	-0.96	-0.98	-1	-1.03	-1.05	-1.08	-1.1	-1.12	-1.14	-1.17	-1.19	-1.22	-1.25	-1.27	-1.29	-1.32	-1.34	-1.36	-1.38	-1.4	-1.42	-1.44	-1.47	-1.49	-1.52	-1.53	-1.57	-1.58	-1.61	-1.63	-1.65	-1.68	-1.7	-1.73	-1.76	-1.79	-1.82	-1.85	-1.87	-1.9	-1.92	-1.94	-1.96	-1.98	-1.99	-2.01	-2.03	-2.05	-2.08	-2.1	-2.13	-2.16	-2.19	-2.23	-2.25	-2.29	-2.31	-2.34	-2.36	-2.38	-2.39	-2.41	-2.44	-2.46	-2.49	-2.52	-2.55	-2.57	-2.59	-2.62	-2.64	-2.68	-2.71	-2.74	-2.77	-2.79	-2.81	-2.84	-2.86	-2.89	-2.92	-2.94	-2.99	-3.01	-3.06	-3.08	-3.11	-3.14	-3.17	-3.18	-3.21	-3.23	-3.26	-3.3	-3.32	-3.36	-3.38	-3.4	-3.43	-3.46	-3.49	-3.51	-3.54	-3.56	-3.58	-3.61	-3.63	-3.66	-3.69	-3.73];
I3= [49.7	48.9	48	47.2	46	45.6	44.6	43.6	42.6	41.1	39.2	38.5	36.8	36.4	35.2	34.6	33.2	32.1	30.9	30	28.5	27.7	26.6	25.6	24.6	23.6	22.6	21.7	20.7	19.9	18.8	18.5	17.3	16.4	15.8	15.3	14.6	14.2	13.5	12.9	12.1	11.5	10.7	10.3	9.6	9.2	8.2	7.8	7.2	6.7	6	5.6	5	4.7	4.1	3.9	3.4	3.1	2.8	2.5	2.2	2	1.7	1.4	1.2	0.9	0.6	0.5	0.3	0.1	0.1	-0.2	-0.3	-0.5	-0.5	-0.6	-0.6	-0.9	-0.7	-0.8	-0.7	-0.8	-0.7	-0.8	-0.8	-0.9	-0.8	-0.8	-0.8	-0.7	-0.9	-1	-0.9	-1	-1	-1	-0.8	-0.9	-0.8	-0.9	-0.9	-0.9	-0.9	-1	-0.9	-0.8	-0.9	-0.9	-0.9	-1	-1	-1.1	-1	-1.1	-0.9	-1	-0.9	-0.9	-0.9	-0.9	-1	-1	-1.1	-1	-1.2	-1	-1	-0.9	-0.9	-1	-0.9	-0.9	-0.9	-1.1	-1	-1	-0.9	-1	-0.9	-1	-1.1	-1	-1	-0.9	-1	-0.9	-0.9	-1	-1	-1.1	-1.1	-1.1];
plot (Vr1,I1,'b',Vr2,I2,'r',Vr3,I3,'y'); grid on; xlabel('Diferencia de potencial aplicado, V[V]'); ylabel('Corriente de electrones, I [pA]'); legend('Intensidad mayor','Intensidad intermedia','Intensidad menor','Location','northwest');
text(-2.25,60,strcat ('\fontsize{14}\lambda = 365nm'))
print -djpeg -r100 graficaintensidad1.jpg