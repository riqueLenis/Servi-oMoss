--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-07 13:52:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16596)
-- Name: documentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documentos (
    id integer NOT NULL,
    cliente character varying(255) NOT NULL,
    arquivo character varying(255) NOT NULL,
    vencimento date,
    informacoes text,
    data_upload timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.documentos OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16595)
-- Name: documentos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.documentos_id_seq OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 219
-- Name: documentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.documentos_id_seq OWNED BY public.documentos.id;


--
-- TOC entry 218 (class 1259 OID 16579)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    email character varying(255),
    senha character varying(255) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16578)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 217
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 4748 (class 2604 OID 16599)
-- Name: documentos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos ALTER COLUMN id SET DEFAULT nextval('public.documentos_id_seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 16582)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4904 (class 0 OID 16596)
-- Dependencies: 220
-- Data for Name: documentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.documentos (id, cliente, arquivo, vencimento, informacoes, data_upload) FROM stdin;
1	henrique lenis	1743454067092.docx	2025-03-05	nao houve alteração	2025-03-31 16:47:47.295091
2	henrique lenis teste	1743454126184.docx	2029-02-05	sim alterei o wifi	2025-03-31 16:48:46.235845
3	testando3	1743624740682.docx	2025-04-16	sim houve	2025-04-02 16:12:20.750256
4	testando com arq original	Senhas WI-FI 2.docx	2025-04-16	sim, houve alteração de nomes 	2025-04-03 08:21:31.493633
5	fazendo o mesmo teste	Senhas WI-FI 2.docx	2025-04-05	coloquei o mesmo arquivo vamos ver se vai substituir 	2025-04-03 08:22:33.613185
6	testando novamente	Senhas WI-FI 2.docx	2025-04-05	coloquei timestamp vamos ver se vai substituir agora	2025-04-03 08:28:53.023299
7	novamente	Senhas Wi-FI 2.pdf	2025-04-12	coloquei o mesmo nome de arq so com pdf	2025-04-03 08:30:32.167005
8	nova pasta	Senhas Wi-FI 2.pdf	2025-04-12	add outra pasta	2025-04-03 08:40:36.035418
9	de novo	pform.csv	2025-04-02	teste	2025-04-03 08:42:05.08913
10	de nnnn	Contatos RO_copia.xlsx	2025-04-08	gregerger	2025-04-03 08:42:58.905561
11	eu	pform.csv	\N		2025-04-03 09:01:40.665505
12	weew	1743686400990-VENCIMENTOS-1.pdf	2025-04-25	ewewew	2025-04-03 09:20:01.06255
13	MAPA	1743688678423-IC-Employee-Contact-List-57141_PT.xlsx	2025-04-12	Testando os orgãos!!!!!!	2025-04-03 09:57:58.493044
14	CIPEAGRO	1743688678423-IC-Employee-Contact-List-57141_PT.xlsx	2025-04-12	Testando os orgãos!!!!!!	2025-04-03 09:57:58.497703
15	Joaquin	1743690831869-Senhas Wi-FI 2.pdf	2025-04-16	testando o joaquim	2025-04-03 10:33:51.919177
16	eu	1743691844305-pform.csv	\N		2025-04-03 10:50:44.36347
17	teste	1743692066733-VENCIMENTOS.pdf	2025-04-16	enviando arquivos 	2025-04-03 10:54:26.783441
18	eu	1743692149100-VENCIMENTOS.pdf	2025-04-24	nome do arquivo	2025-04-03 10:55:49.162501
19	henrique	1743692175760-pform.csv	\N		2025-04-03 10:56:15.811963
20	henrique lenis	1743692286416-pform.csv	2025-07-23	sim alterei o nome do arquivos \r\n	2025-04-03 10:58:06.469988
21	testando	Certificado de Registro Estabelecimento.PDF	2025-04-30	testando o nome do arq	2025-04-03 11:04:34.455567
22	teste do teste	1743692739840-VENCIMENTOS-1.pdf	2025-12-05	sims ismismismis	2025-04-03 11:05:39.937309
23	teste	1743693593570-Contatos RO_copia.xlsx	2025-07-30	Sim, alterei o documento!!	2025-04-03 11:19:53.647076
\.


--
-- TOC entry 4902 (class 0 OID 16579)
-- Dependencies: 218
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, nome, email, senha) FROM stdin;
1	henrique lenis	teste@gmail.com	$2b$10$O0lJpQtFgOAmued/Hv7VTO.ek7axSUbXjXwU3PUCczh/t4DoAdhZi
2	henrique teste da silva lenis martins	henriquelenis12@gmail.com	$2b$10$bFgFebtMhp/89bwPx76E3uBUD.wwcsCYaDTgjD0dKn9iSkg0XWaKe
3	rafaela dos santos herebia	rafaelaherebia@gmail.com	$2b$10$ordKeL8V4LFXKDWZX/JuFu2XuhViXGVeVGmQmFnebKnqbLTaow/0y
4	henrique lenis	lenis123@gmail.com	$2b$10$bkXBd5EomD8aHi9UHRs9tOdhKRMQq7b/tpoqljiT2hqhiaCpGzUme
5	henrique lenis	asfdsd@gmail	$2b$10$Cd.VybDn4SyTpUV/.MymoO2LgWMHHjRzufA/AGqTXtwfBlICPx8au
6	henrique lenis	testando@gmail.com	$2b$10$1jc3TJm9sJIfuEoYGKhUIuefHHRIk3iAADwcNfwxNrtqEoEcyX1m2
7	henrique lenis martins	henrique@lenis.com.br	$2b$10$MQMdxDcPcpGymjR0wFq7PePpnN6U.LdZkoQLlqupihPhHtqabby12
8	henrique lenis 	henriquelenis123@gmail.com	$2b$10$DS4xdv.ou6QOnhYQUxTJQ./wLOBi0kAkEP8.X.YdcW9tz1Gg3PdMi
9	henrique lenis	henrique12@gmail.com.br	$2b$10$/fQbAIsyuwVc9q7dlypDDeXpImr6ukNZAsXj4OouUDQ47kJiWaqGG
10	henrique lenis Martins	henrique123@gmail.com.br	$2b$10$tWt6jgX5qEf3Qb2REh2qGesw4oAocGT8PcyZMZ/ryVQaGuym6CPv2
11	testando nome 	exemplo123@hotmail.com	$2b$10$f4LO8GdSe7NHnflvBx8QhefHyEimsOm5uv.xal8X3NR0lCaZojPqK
12	exemplo do teste dois	exemplodoteste12@gmail.com	$2b$10$TrtGWZCmbSic8/2VywIhHu4yoTO60BFvvQX9Rai9jGB1sgstTH32i
13	testando o teste hoje	testandooteste123@gmail.com	$2b$10$S2ZknOF799RIFqJNmjzu1udwhZojWFPIeS3EtXqPJpCQqMytX8xk.
14	henrique lenis	henriquelen123@hotmail.com	$2b$10$mWJHdm8XnmX3wyJK4E8cpOT71OptcDsL4yszT6.OYzNiU.Rbn6iRi
15	exemplo do teste dois	asfdsdsdsd@gmail.com	$2b$10$u3pg1BU6pGoXPz2NCNWKLOCJ.2zb4oxnEU8p1OX347bIz0lSIz//K
16	teste de novo 	testandonovo@hotmail.com	$2b$10$0oMmmtN5v4Dxv0G4G4sn6OI/5Wm6W1KLrrbuQSB6UOhlVDNq8erPa
17	lenis henrique	lenis4343@gmail.com	$2b$10$ivcivfkCF5UZDWMLgUeymec/8VNdCWGyC2qe1om9pyamlRQZqE82G
18	henrique lenis	asfdsikkjd@gmail	$2b$10$qqEe9of40SG5X/nd9PhUSe2v7.u6jntsqhANDNvRhdTve8KQQw646
19	henrique lenis eu teste	teste.verdadeiro@gmail.com	$2b$10$mTmXRwCskFBn1EFu3v3xpOK75D/CouOjPFYVCRhErGrvRZ1j4E/q2
20	henrique lenis lenis	emailteste1@gmail.com	$2b$10$Rx9R5qOqKBzAgCJKCI4VCOBB43/3DbfmiuhEl8tqi1Px77Xx7l7.i
21	lenis lenis lenis	lenis1234@gmail.com	$2b$10$hWsOj0g6HWI7e3xxCfc0tO.xURVgjb25w5i2kAv22.0XHEfDu.MvC
22	novo teste 	teste1020@gmail.com	$2b$10$egeIPhxPcXG4506b4oZCe.yrZzKzhj0M7p4SoYdVnibG3/3CJcuN6
23	henrique lenis	lenishenrique12@gmail.com	$2b$10$VoVkxlzdjJ1aux7Oee9pkOLjFgdjiJM9kjIk9DkLuD7JUgqUzUbLy
24	henrique lenis	henriquelenis13@gmail.com	$2b$10$irz17aUZldFKMH/zoQBRXuP8EeagrsX4R6f3xE.69gYnEHe49sG/i
25	diego diego	diego123@gmail.com	$2b$10$5GfN3ciskJ79t9L.vr2Fw.2hCj4OnJ.TqD6qRrU5LKHnZjKtLc46m
26	henrique teste	henriquetes1@gmail.com	$2b$10$50jRhLWNS4JzBiVEOoZXzOIVMlatj5ltRlwKGnMTe8a8IKFfGCWtG
27	henrique lenis	test1@gmail.com	$2b$10$vpmvlTSou/WOIx./TuC3IuTH/u/c1yo.i7EyEGU7oqJ1SCM.ZayI2
28	henrique testando 2	henrique1234@gmail.com	$2b$10$rHkJ/3.ftHBpMVJKcm/QwOMB67s5QbVHbTJ5L.IoxXGVUGR94C7w.
29	allan Allan	allan@gmail.com	$2b$10$6EucrSNMxLWPdmSBKGQ8be.BMjvusTH..euSWNDEM0tpXhvhtP6p2
30	henrique lenis	henriquelenis10@gmail.com	$2b$10$TA4xuiVAe8PJp.BRWQqSbulJzlNKxsNIwVPwiW8zqM4X2OSU6ofX6
\.


--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 219
-- Name: documentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.documentos_id_seq', 23, true);


--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 217
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 30, true);


--
-- TOC entry 4755 (class 2606 OID 16604)
-- Name: documentos documentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT documentos_pkey PRIMARY KEY (id);


--
-- TOC entry 4751 (class 2606 OID 16588)
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- TOC entry 4753 (class 2606 OID 16586)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


-- Completed on 2025-04-07 13:52:50

--
-- PostgreSQL database dump complete
--

