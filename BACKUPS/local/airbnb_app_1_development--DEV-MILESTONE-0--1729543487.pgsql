--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO heidless;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_attachments_id_seq OWNER TO heidless;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO heidless;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_blobs_id_seq OWNER TO heidless;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO heidless;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNER TO heidless;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO heidless;

--
-- Name: profiles; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.profiles (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    address_1 character varying,
    address_2 character varying,
    city character varying,
    state character varying,
    country character varying,
    latitude double precision,
    longitude double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    zip_code character varying
);


ALTER TABLE public.profiles OWNER TO heidless;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.profiles_id_seq OWNER TO heidless;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: properties; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.properties (
    id bigint NOT NULL,
    name character varying,
    headline character varying,
    description text,
    city character varying,
    state character varying,
    country character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    address_1 character varying,
    address_2 character varying,
    latitude double precision,
    longitude double precision,
    zip_code character varying,
    price_cents integer,
    price_currency character varying
);


ALTER TABLE public.properties OWNER TO heidless;

--
-- Name: properties_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.properties_id_seq OWNER TO heidless;

--
-- Name: properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.properties_id_seq OWNED BY public.properties.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO heidless;

--
-- Name: users; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO heidless;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO heidless;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Name: properties id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.properties ALTER COLUMN id SET DEFAULT nextval('public.properties_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	images	Property	1	1	2024-10-21 20:06:09.391042
2	images	Property	2	2	2024-10-21 20:06:09.971549
3	images	Property	3	3	2024-10-21 20:06:10.52506
4	images	Property	4	4	2024-10-21 20:06:11.038125
5	images	Property	5	5	2024-10-21 20:06:11.365563
6	images	Property	6	6	2024-10-21 20:06:11.93891
7	images	Property	7	7	2024-10-21 20:06:12.408707
8	images	Property	8	8	2024-10-21 20:06:12.970107
9	images	Property	9	9	2024-10-21 20:06:13.520513
10	images	Property	10	10	2024-10-21 20:06:14.121392
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	tap1pknsytk3l4npxycq7s9byfwm	quos	image/png	{"identified":true,"analyzed":true}	local	1597850	ItfK3ZVhAKFKxPIKo3+x8Q==	2024-10-21 20:06:09.380772
2	sq3qdkydfugrxdjpf0y56wqsc85p	magni	image/png	{"identified":true,"analyzed":true}	local	2113693	oUEIILPnDfz7ViYG42PK2w==	2024-10-21 20:06:09.962773
3	polw6lpxslevcza12p1oxp3ompuz	recusandae	image/png	{"identified":true,"analyzed":true}	local	1677064	NVDfQpLijXhwou1qGj0xLA==	2024-10-21 20:06:10.515693
4	p14p4nzpn8j0dffcl6yii1t4t1yd	consectetur	image/png	{"identified":true,"analyzed":true}	local	1655143	58PVXdN62RZCekFQ5/O8tg==	2024-10-21 20:06:11.024772
5	7s7stmwdwhe3s8vmatf2o6q3i2ph	soluta	image/png	{"identified":true,"analyzed":true}	local	2044121	M2EoWJJDdZvELeldmCNXLw==	2024-10-21 20:06:11.357543
6	bonpamyu6so9iclab18axm3ist5f	aut	image/png	{"identified":true,"analyzed":true}	local	1246802	N4Xjn58CeA8kqmdUZ+rFKg==	2024-10-21 20:06:11.930504
7	q4lbf36300pir0v180a5y6leq1y7	provident	image/png	{"identified":true,"analyzed":true}	local	1166457	mjo3xWkuOeWv2kqauNKvjQ==	2024-10-21 20:06:12.397181
8	n3wwxadbec69gjum6vlskn1tsx7v	porro	image/png	{"identified":true,"analyzed":true}	local	1005183	qrj9itPoCF0sYgaYde9w+w==	2024-10-21 20:06:12.961454
9	idh0e3y7oi3zwac25b6vl9py0w3g	incidunt	image/png	{"identified":true,"analyzed":true}	local	2297748	mCU3KgElM4GLTNVQ+UY4lQ==	2024-10-21 20:06:13.50489
10	sz8eunaor5t5p77n1mclsictde63	recusandae	image/png	{"identified":true}	local	2389480	6y9ZyPMeZY2duX7z+zw9RA==	2024-10-21 20:06:14.10623
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-10-21 20:05:48.873475	2024-10-21 20:05:48.873483
schema_sha1	37bf27b58c7b70e16dfc35b6ba8c252dc297649a	2024-10-21 20:05:48.936987	2024-10-21 20:05:48.936994
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.profiles (id, user_id, address_1, address_2, city, state, country, latitude, longitude, created_at, updated_at, zip_code) FROM stdin;
1	1	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:05:49.994703	2024-10-21 20:05:51.87815	75008
2	2	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:05:52.254441	2024-10-21 20:05:53.1009	75008
3	3	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:05:53.537147	2024-10-21 20:05:54.32389	75008
4	4	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:05:54.730747	2024-10-21 20:05:56.528766	75008
5	5	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:05:56.963077	2024-10-21 20:05:58.931789	75008
6	6	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:05:59.311383	2024-10-21 20:06:01.328866	75008
7	7	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:06:01.752474	2024-10-21 20:06:02.516619	75008
8	8	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:06:02.949429	2024-10-21 20:06:03.745589	75008
9	9	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:06:04.11271	2024-10-21 20:06:05.381463	75008
10	10	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 20:06:05.779117	2024-10-21 20:06:07.83953	75008
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at, address_1, address_2, latitude, longitude, zip_code, price_cents, price_currency) FROM stdin;
1	quos	Enim voluptas perspiciatis doloremque.	Aut quos sint. Assumenda blanditiis rerum. Quisquam a autem.	South Buckville	Oregon	United States	2024-10-21 20:06:09.170622	2024-10-21 20:06:09.686794	241 Gonzalo Station	\N	43.9792797	-120.737257	\N	5200	USD
2	magni	Qui nisi et eveniet.	Voluptatum odit sit. Accusamus iste numquam. Consectetur ad exercitationem.	West Lisettechester	Oklahoma	United States	2024-10-21 20:06:09.840372	2024-10-21 20:06:10.095178	46959 Cherlyn Vista	\N	34.9550817	-97.2684063	\N	4100	USD
3	recusandae	Nemo asperiores repellendus blanditiis.	Accusamus id illo. Deleniti debitis nihil. Totam non voluptas.	Shanahanville	Oklahoma	United States	2024-10-21 20:06:10.404378	2024-10-21 20:06:10.653471	473 Laurice Track	\N	34.9550817	-97.2684063	\N	8000	USD
4	consectetur	Voluptatem aut aperiam omnis.	Velit non aut. Alias ullam ut. Neque dolores dolores.	East Bernie	Nevada	United States	2024-10-21 20:06:10.911361	2024-10-21 20:06:11.173843	97619 Ike Islands	\N	39.5158825	-116.853722	\N	9600	USD
5	soluta	Possimus et quis in.	Ratione nesciunt quisquam. Adipisci ad ducimus. Occaecati cum similique.	Lajuanastad	Colorado	United States	2024-10-21 20:06:11.24615	2024-10-21 20:06:11.611157	8480 Rod Port	\N	38.7251776	-105.607716	\N	7400	USD
6	aut	Repudiandae quo nihil quibusdam.	Rem corporis voluptate. Ipsum voluptas qui. Eius impedit quis.	Essieton	Virginia	United States	2024-10-21 20:06:11.835333	2024-10-21 20:06:12.053495	591 Murphy Corners	\N	37.1232245	-78.4927721	\N	8000	USD
7	provident	Sed ea molestiae voluptate.	Reprehenderit cum molestiae. Et cum enim. Et pariatur repudiandae.	South Lenore	Massachusetts	United States	2024-10-21 20:06:12.279776	2024-10-21 20:06:12.533993	74053 Van Harbor	\N	42.3788774	-72.032366	\N	9300	USD
8	porro	Rem non rerum recusandae.	In quod iusto. Vitae omnis quasi. Consectetur officiis est.	Reynoldsstad	Rhode Island	United States	2024-10-21 20:06:12.85805	2024-10-21 20:06:13.074854	6416 Grant Pass	\N	41.7962409	-71.5992372	\N	9700	USD
9	incidunt	Blanditiis dolores corporis ex.	Est dolores molestias. Est voluptatem enim. Expedita ut officia.	North Mike	Iowa	United States	2024-10-21 20:06:13.369362	2024-10-21 20:06:13.637798	8333 Apryl Walks	\N	41.9216734	-93.3122705	\N	3800	USD
10	recusandae	Et et eaque minus.	Nihil quo delectus. Est nihil cum. At eveniet et.	Jenelleville	Delaware	United States	2024-10-21 20:06:13.984709	2024-10-21 20:06:14.126638	9310 Gudrun Viaduct	\N	38.6920451	-75.4013315	\N	8500	USD
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
20241021141131
20241021111642
20241020162329
20241020162319
20241020155142
20241010154317
20241009191759
20241009135321
20240918121727
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	dev_1@bar.com	$2a$12$SdNB75sBS01Zy7aiWx5.ieQ..nhVyYGqGS6tXH9BPtSkpDNmPlhZm	\N	\N	\N	2024-10-21 20:05:49.875995	2024-10-21 20:05:49.875995
2	dev_2@bar.com	$2a$12$Me9IEiL2WzkQ5fTqFavQPOwqROyNB0RuwlS7w.zhWkOLqc5PTE4/2	\N	\N	\N	2024-10-21 20:05:52.247953	2024-10-21 20:05:52.247953
3	dev_3@bar.com	$2a$12$PWsU9nndYKhF4pM6kSef.ew/fIKGeZ3hxZttFYxUZSU/GitaegQIe	\N	\N	\N	2024-10-21 20:05:53.525289	2024-10-21 20:05:53.525289
4	dev_4@bar.com	$2a$12$NDqSTEReFlVYqCEgN59ESOMdoha5Nqwsp43rRjbqIgq.ualAu/FTa	\N	\N	\N	2024-10-21 20:05:54.72422	2024-10-21 20:05:54.72422
5	dev_5@bar.com	$2a$12$Pcza67O/cZHfQcUyYpPYbeyAOiijevO8wiAXbXF8D2hGLh/BrGsI.	\N	\N	\N	2024-10-21 20:05:56.955778	2024-10-21 20:05:56.955778
6	dev_6@bar.com	$2a$12$P4JD4p8eNaMA/0kL5UtwPuFW2lYT9Io0VmPoAgsN0yggTXaBNbMV2	\N	\N	\N	2024-10-21 20:05:59.303754	2024-10-21 20:05:59.303754
7	dev_7@bar.com	$2a$12$Gltdny8K0EKuCwaty8kKPu747DRGvcthnPTFqLTW2h0uWxFf55qKO	\N	\N	\N	2024-10-21 20:06:01.745204	2024-10-21 20:06:01.745204
8	dev_8@bar.com	$2a$12$oNQCYSqg1CNifow23fuwne2cq8mjEWlZqiQkFd4cAhdhSthKqmm0u	\N	\N	\N	2024-10-21 20:06:02.942412	2024-10-21 20:06:02.942412
9	dev_9@bar.com	$2a$12$fNnHh1VItADzLiqs1HVx/u7KpQ4emCrVnMVYytaha0wMKK/4g8j6y	\N	\N	\N	2024-10-21 20:06:04.106615	2024-10-21 20:06:04.106615
10	dev_10@bar.com	$2a$12$MXg/BHvpgi5EmIuhKEBTpO.ifWrsG8vfVshAsaZ6FQ31d3lYFNt3W	\N	\N	\N	2024-10-21 20:06:05.771697	2024-10-21 20:06:05.771697
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 10, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 10, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.profiles_id_seq', 10, true);


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.properties_id_seq', 10, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_profiles_on_user_id; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_profiles_on_user_id ON public.profiles USING btree (user_id);


--
-- Name: index_properties_on_latitude_and_longitude; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_properties_on_latitude_and_longitude ON public.properties USING btree (latitude, longitude);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: profiles fk_rails_e424190865; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT fk_rails_e424190865 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

