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
1	images	Property	1	1	2024-10-21 18:46:52.942257
2	images	Property	2	2	2024-10-21 18:46:53.502021
3	images	Property	3	3	2024-10-21 18:46:53.814438
4	images	Property	4	4	2024-10-21 18:46:54.431096
5	images	Property	5	5	2024-10-21 18:46:54.976026
6	images	Property	6	6	2024-10-21 18:46:55.465996
7	images	Property	7	7	2024-10-21 18:46:55.964578
8	images	Property	8	8	2024-10-21 18:46:56.416435
9	images	Property	9	9	2024-10-21 18:46:56.894251
10	images	Property	10	10	2024-10-21 18:46:57.454438
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	jl8gntknqyvz4qwrxlkiw426n1rz	tenetur	image/png	{"identified":true,"analyzed":true}	local	1597850	ItfK3ZVhAKFKxPIKo3+x8Q==	2024-10-21 18:46:52.920658
2	amy1f1a5psnz1r8m3lclhoze6z23	ratione	image/png	{"identified":true,"analyzed":true}	local	2113693	oUEIILPnDfz7ViYG42PK2w==	2024-10-21 18:46:53.49019
3	x7bqtj5snfyklj980ou4xzytdgb3	saepe	image/png	{"identified":true,"analyzed":true}	local	1677064	NVDfQpLijXhwou1qGj0xLA==	2024-10-21 18:46:53.808754
4	hp7o2dxf3qbq0w1yf2e5ep6cqmle	totam	image/png	{"identified":true,"analyzed":true}	local	1655143	58PVXdN62RZCekFQ5/O8tg==	2024-10-21 18:46:54.420977
5	fj0u99ydggfnxy7kb9whldgmhqdg	nulla	image/png	{"identified":true,"analyzed":true}	local	2044121	M2EoWJJDdZvELeldmCNXLw==	2024-10-21 18:46:54.968825
6	y1qe983sf9e8eo7l510bgzy0856c	id	image/png	{"identified":true,"analyzed":true}	local	1246802	N4Xjn58CeA8kqmdUZ+rFKg==	2024-10-21 18:46:55.456488
7	ewjtfn9tc81ivvf7ycacqany1ez6	nihil	image/png	{"identified":true,"analyzed":true}	local	1166457	mjo3xWkuOeWv2kqauNKvjQ==	2024-10-21 18:46:55.953877
8	ti3subu7pxngvehz1xc25y8n1tc6	omnis	image/png	{"identified":true,"analyzed":true}	local	1005183	qrj9itPoCF0sYgaYde9w+w==	2024-10-21 18:46:56.406134
9	u9lcvojycvgeu4wibqq6ejqicmaa	est	image/png	{"identified":true,"analyzed":true}	local	2297748	mCU3KgElM4GLTNVQ+UY4lQ==	2024-10-21 18:46:56.88488
10	1i3hvpx53caxj5wkzey8vnvhju00	vitae	image/png	{"identified":true}	local	2389480	6y9ZyPMeZY2duX7z+zw9RA==	2024-10-21 18:46:57.446564
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
environment	development	2024-10-21 18:46:39.443054	2024-10-21 18:46:39.443058
schema_sha1	37bf27b58c7b70e16dfc35b6ba8c252dc297649a	2024-10-21 18:46:39.451222	2024-10-21 18:46:39.451226
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.profiles (id, user_id, address_1, address_2, city, state, country, latitude, longitude, created_at, updated_at, zip_code) FROM stdin;
1	1	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:40.181236	2024-10-21 18:46:40.968319	75008
2	2	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:41.40331	2024-10-21 18:46:42.161471	75008
3	3	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:42.672265	2024-10-21 18:46:43.290021	75008
4	4	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:43.668555	2024-10-21 18:46:44.889383	75008
5	5	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:45.376506	2024-10-21 18:46:46.00316	75008
6	6	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:46.502097	2024-10-21 18:46:47.041968	75008
7	7	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:47.414335	2024-10-21 18:46:48.018137	75008
8	8	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:48.397975	2024-10-21 18:46:49.774654	75008
9	9	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:50.177068	2024-10-21 18:46:51.01075	75008
10	10	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 18:46:51.388642	2024-10-21 18:46:52.139979	75008
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at, address_1, address_2, latitude, longitude, zip_code, price_cents, price_currency) FROM stdin;
1	tenetur	Eum et magni et.	Autem iure libero. Sint debitis quis. Nulla hic dignissimos.	New Kristeenfurt	Alaska	United States	2024-10-21 18:46:52.781733	2024-10-21 18:46:53.198354	797 Kazuko Cape	\N	64.4459613	-149.680909	\N	3200	USD
2	ratione	Dolorum consequatur quisquam odit.	Ullam neque quisquam. Labore iusto rerum. Sed voluptatum enim.	South Chloe	Vermont	United States	2024-10-21 18:46:53.441057	2024-10-21 18:46:53.616341	7730 Leandro Isle	\N	44.5990718	-72.5002608	\N	4400	USD
3	saepe	Dolorem aliquam laudantium a.	Blanditiis consequatur excepturi. Dicta quidem quas. Et et praesentium.	Port Lutherburgh	Missouri	United States	2024-10-21 18:46:53.768368	2024-10-21 18:46:53.884553	1970 Sona Unions	\N	38.7604815	-92.5617875	\N	7500	USD
4	totam	Qui consectetur qui deleniti.	Ex blanditiis animi. Sit aut eos. Minus illum perspiciatis.	Deckowborough	Ohio	United States	2024-10-21 18:46:54.369674	2024-10-21 18:46:54.537989	470 Denesik Hill	\N	40.2253569	-82.6881395	\N	3100	USD
5	nulla	Sapiente ut et id.	Ullam ratione ducimus. Quas deserunt repellat. Vero adipisci nihil.	Isiahfurt	Indiana	United States	2024-10-21 18:46:54.930939	2024-10-21 18:46:55.26111	96426 Crysta Fords	\N	40.3270127	-86.1746933	\N	5000	USD
6	id	Cum dolor odit omnis.	Quia laborum illum. Atque quos pariatur. Atque omnis labore.	Anikafurt	Colorado	United States	2024-10-21 18:46:55.398671	2024-10-21 18:46:55.573399	79376 Cartwright Pine	\N	38.7251776	-105.607716	\N	8600	USD
7	nihil	Consequatur asperiores voluptas et.	Sunt doloribus iure. Sapiente sit aspernatur. Omnis autem et.	Loweside	Mississippi	United States	2024-10-21 18:46:55.911155	2024-10-21 18:46:56.08415	86923 Sadie Dam	\N	32.9715285	-89.7348497	\N	3100	USD
8	omnis	Quidem voluptates rerum reprehenderit.	Repellendus non quidem. Et voluptas reiciendis. Vitae qui doloribus.	New Lawrence	Washington	United States	2024-10-21 18:46:56.361853	2024-10-21 18:46:56.524839	5712 Kshlerin Spur	\N	38.8950368	-77.0365427	\N	6800	USD
9	est	Praesentium ducimus alias eligendi.	Sed aut magni. Dolor voluptates architecto. Molestias et excepturi.	Gilbertomouth	Texas	United States	2024-10-21 18:46:56.832974	2024-10-21 18:46:56.972043	872 Chanelle Lights	\N	31.2638905	-98.5456116	\N	9800	USD
10	vitae	Pariatur non corrupti ut.	Laborum quae recusandae. Cupiditate ut eius. Nihil provident quis.	Lake Meghann	Wisconsin	United States	2024-10-21 18:46:57.384847	2024-10-21 18:46:57.45997	3821 Barrows Gateway	\N	44.4308975	-89.6884637	\N	10000	USD
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
1	foo_1@bar.com	$2a$12$fPfRvdQ3wp9565wHkmgTOOzjuZqy7RzusYcA1R.OTsirinAeqyfVu	\N	\N	\N	2024-10-21 18:46:40.148633	2024-10-21 18:46:40.148633
2	foo_2@bar.com	$2a$12$zD8hIN9hAQY2IIs6aMkV2ekwuGhT1UyrPBUvUHKLCE/WvclWBC.rK	\N	\N	\N	2024-10-21 18:46:41.396203	2024-10-21 18:46:41.396203
3	foo_3@bar.com	$2a$12$XKuS9ORXXoc51yjhLKp7Quw1xKH99jLb36pHHoJlKHC4FlTcCX9Vu	\N	\N	\N	2024-10-21 18:46:42.665256	2024-10-21 18:46:42.665256
4	foo_4@bar.com	$2a$12$bFdZDVWjWnPRc7dVnhSEDObwK32SJ6j0lQqZBNra52QPgj0my/dWG	\N	\N	\N	2024-10-21 18:46:43.662205	2024-10-21 18:46:43.662205
5	foo_5@bar.com	$2a$12$pkfEODLu1mGnZua0IEQP2e5qQZ5I6FBePTg4EjbP9dBGv/BNBID7a	\N	\N	\N	2024-10-21 18:46:45.358947	2024-10-21 18:46:45.358947
6	foo_6@bar.com	$2a$12$rp54kfv.gTufhrF6utTVIuA05LfHFgnU9oL1mnr8IWgiOas5hj.6W	\N	\N	\N	2024-10-21 18:46:46.494831	2024-10-21 18:46:46.494831
7	foo_7@bar.com	$2a$12$29Uq4R5CccANqEhot1repec.FUg9k7WevHs4dEGW5fyPqV3ntXIwK	\N	\N	\N	2024-10-21 18:46:47.407677	2024-10-21 18:46:47.407677
8	foo_8@bar.com	$2a$12$jLNzLxrnWmd0uhF/EFgcjezbgWnpFAbCoxqpbLSaZiKChBU888eh2	\N	\N	\N	2024-10-21 18:46:48.391714	2024-10-21 18:46:48.391714
9	foo_9@bar.com	$2a$12$wm2SDmg2Qd5l6N51YxcYluOtcyJBhDNquIgYWdeDBf7rEBzY2guEG	\N	\N	\N	2024-10-21 18:46:50.168497	2024-10-21 18:46:50.168497
10	foo_10@bar.com	$2a$12$5wHzEDwzR30sQ71ZkiNHQeY1Gxl/BvOLAcwc9Uc.9yL9dcB4SsLu2	\N	\N	\N	2024-10-21 18:46:51.382453	2024-10-21 18:46:51.382453
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

