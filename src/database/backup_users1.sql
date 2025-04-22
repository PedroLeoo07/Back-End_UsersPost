--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-22 10:53:48

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
-- TOC entry 220 (class 1259 OID 16400)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    descricao character varying(100) NOT NULL,
    user_id integer
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16399)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 218 (class 1259 OID 16389)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    age integer NOT NULL,
    sexo character varying(10) NOT NULL,
    telefone character varying(15) NOT NULL,
    photo text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16388)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4701 (class 2604 OID 16403)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16392)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4859 (class 0 OID 16400)
-- Dependencies: 220
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, name, descricao, user_id) FROM stdin;
1	Corinthians	31 titulos paulista	1
2	Corinthians	Corinthians campeÆo mundial 2023	2
3	Manicure	dicas de manicure	3
4	Leitura	Livros CristÆos para ler	4
5	Moto	top 10 motos da gera‡Æo 2010	5
6	Escapamento	Escapamento no i30	6
\.


--
-- TOC entry 4857 (class 0 OID 16389)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password, age, sexo, telefone, photo) FROM stdin;
1	Leonardo Oliveira	leonardo@gmail.com	Leo1234	17	M	(11) 99999-9999	\N
2	Sofia Cintra	sofia@gmail.com	Sofia1234	14	F	(11) 99999-9999	\N
3	Viviane Camila	viviane@gmail.com	Viviane1234	33	F	(11) 99999-9999	\N
4	Camila Cintra	camila@gmail.com	Camila1234	36	F	(11) 99999-9999	\N
5	Jose Alves	jose@gmail.com	Jose1234	40	M	(11) 99999-9999	\N
6	Vitor Siilverio	vitor@gmail.com	Vitor1234	41	M	(11) 99999-9999	\N
7	Cristiano Ronaldo	cristiano@gmail.com	Cristiano1234	40	M	(11) 99999-9999	\N
21	Lionel Messi	messi@gmail.com	Messi1234	36	M	(11) 99999-9999	\N
22	Neymar Jr	neymar@gmail.com	Neymar1234	31	M	(11) 99999-9999	\N
23	Kylian Mbapp‚	mbappe@gmail.com	Mbappe1234	24	M	(11) 99999-9999	\N
24	Robert Lewandowski	lewandowski@gmail.com	Lewandowski1234	35	M	(11) 99999-9999	\N
25	Kevin De Bruyne	debruyne@gmail.com	DeBruyne1234	32	M	(11) 99999-9999	\N
26	Mohamed Salah	salah@gmail.com	Salah1234	31	M	(11) 99999-9999	\N
27	Karim Benzema	benzema@gmail.com	Benzema1234	35	M	(11) 99999-9999	\N
28	Virgil van Dijk	vandijk@gmail.com	VanDijk1234	32	M	(11) 99999-9999	\N
29	Sadio Man‚	mane@gmail.com	Mane1234	31	M	(11) 99999-9999	\N
30	Erling Haaland	haaland@gmail.com	Haaland1234	23	M	(11) 99999-9999	\N
31	Harry Kane	kane@gmail.com	Kane1234	30	M	(11) 99999-9999	\N
32	Luka Modric	modric@gmail.com	Modric1234	38	M	(11) 99999-9999	\N
33	Eden Hazard	hazard@gmail.com	Hazard1234	32	M	(11) 99999-9999	\N
34	Paul Pogba	pogba@gmail.com	Pogba1234	30	M	(11) 99999-9999	\N
35	Sergio Ramos	ramos@gmail.com	Ramos1234	37	M	(11) 99999-9999	\N
36	Toni Kroos	kroos@gmail.com	Kroos1234	33	M	(11) 99999-9999	\N
37	Gerard Piqu‚	pique@gmail.com	Pique1234	36	M	(11) 99999-9999	\N
38	Andr‚s Iniesta	iniesta@gmail.com	Iniesta1234	39	M	(11) 99999-9999	\N
39	Xavi Hernandez	xavi@gmail.com	Xavi1234	43	M	(11) 99999-9999	\N
40	Zlatan Ibrahimovic	ibrahimovic@gmail.com	Ibra1234	42	M	(11) 99999-9999	\N
41	Gareth Bale	bale@gmail.com	Bale1234	34	M	(11) 99999-9999	\N
42	Luis Su rez	suarez@gmail.com	Suarez1234	36	M	(11) 99999-9999	\N
43	Antoine Griezmann	griezmann@gmail.com	Griezmann1234	32	M	(11) 99999-9999	\N
44	Philippe Coutinho	coutinho@gmail.com	Coutinho1234	31	M	(11) 99999-9999	\N
45	Marcelo Vieira	marcelo@gmail.com	Marcelo1234	35	M	(11) 99999-9999	\N
46	Thiago Silva	thiagosilva@gmail.com	Thiago1234	39	M	(11) 99999-9999	\N
47	Alisson Becker	alisson@gmail.com	Alisson1234	31	M	(11) 99999-9999	\N
48	Manuel Neuer	neuer@gmail.com	Neuer1234	37	M	(11) 99999-9999	\N
49	Jan Oblak	oblak@gmail.com	Oblak1234	30	M	(11) 99999-9999	\N
50	Ederson Moraes	ederson@gmail.com	Ederson1234	30	M	(11) 99999-9999	\N
51	Keylor Navas	navas@gmail.com	Navas1234	36	M	(11) 99999-9999	\N
52	Hugo Lloris	lloris@gmail.com	Lloris1234	36	M	(11) 99999-9999	\N
53	David de Gea	degea@gmail.com	DeGea1234	32	M	(11) 99999-9999	\N
54	Romelu Lukaku	lukaku@gmail.com	Lukaku1234	30	M	(11) 99999-9999	\N
55	Raheem Sterling	sterling@gmail.com	Sterling1234	28	M	(11) 99999-9999	\N
56	Jadon Sancho	sancho@gmail.com	Sancho1234	23	M	(11) 99999-9999	\N
57	Marcus Rashford	rashford@gmail.com	Rashford1234	25	M	(11) 99999-9999	\N
58	Trent Alexander-Arnold	taa@gmail.com	TAA1234	25	M	(11) 99999-9999	\N
59	Andrew Robertson	robertson@gmail.com	Robertson1234	29	M	(11) 99999-9999	\N
60	JoÆo Cancelo	cancelo@gmail.com	Cancelo1234	29	M	(11) 99999-9999	\N
61	Achraf Hakimi	hakimi@gmail.com	Hakimi1234	24	M	(11) 99999-9999	\N
62	Joshua Kimmich	kimmich@gmail.com	Kimmich1234	28	M	(11) 99999-9999	\N
63	Leon Goretzka	goretzka@gmail.com	Goretzka1234	28	M	(11) 99999-9999	\N
64	Pedri Gonzalez	pedri@gmail.com	Pedri1234	20	M	(11) 99999-9999	\N
65	Gavi	gavi@gmail.com	Gavi1234	19	M	(11) 99999-9999	\N
66	Jude Bellingham	bellingham@gmail.com	Bellingham1234	20	M	(11) 99999-9999	\N
67	Vin¡cius Jr	vinicius@gmail.com	Vinicius1234	23	M	(11) 99999-9999	\N
68	Rodrygo Goes	rodrygo@gmail.com	Rodrygo1234	22	M	(11) 99999-9999	\N
\.


--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 6, true);


--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 68, true);


--
-- TOC entry 4709 (class 2606 OID 16405)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16398)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4705 (class 2606 OID 16396)
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- TOC entry 4707 (class 2606 OID 16394)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4710 (class 2606 OID 16406)
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


-- Completed on 2025-04-22 10:53:48

--
-- PostgreSQL database dump complete
--

