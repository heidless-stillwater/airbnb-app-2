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
    price_currency character varying,
    reviews_count integer,
    average_rating numeric
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
-- Name: reviews; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    title character varying,
    body text,
    rating integer,
    reviewable_id bigint,
    reviewable_type character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.reviews OWNER TO heidless;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_id_seq OWNER TO heidless;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


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
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	images	Property	1	1	2024-10-26 12:48:00.596345
2	images	Property	2	2	2024-10-26 12:48:01.305629
3	images	Property	3	3	2024-10-26 12:48:01.878159
4	images	Property	4	4	2024-10-26 12:48:02.49988
5	images	Property	5	5	2024-10-26 12:48:03.121839
6	images	Property	6	6	2024-10-26 12:48:03.688017
7	images	Property	7	7	2024-10-26 12:48:04.815677
8	images	Property	8	8	2024-10-26 12:48:05.296685
9	images	Property	9	9	2024-10-26 12:48:05.839766
10	images	Property	10	10	2024-10-26 12:48:06.454024
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	pm837yafcz8kos1dzgbodsezc2l0	neque	image/png	{"identified":true,"analyzed":true}	local	1597850	ItfK3ZVhAKFKxPIKo3+x8Q==	2024-10-26 12:48:00.581601
2	oycxmj4klhfk85xtmbpxrb4f4akm	autem	image/png	{"identified":true,"analyzed":true}	local	2113693	oUEIILPnDfz7ViYG42PK2w==	2024-10-26 12:48:01.2947
3	rvhla9gtv0mhg5eq1bu0qm14tv9h	ad	image/png	{"identified":true,"analyzed":true}	local	1677064	NVDfQpLijXhwou1qGj0xLA==	2024-10-26 12:48:01.871161
4	fff84bvd5a2ol7lk5d27qh4mrdkz	cumque	image/png	{"identified":true,"analyzed":true}	local	1655143	58PVXdN62RZCekFQ5/O8tg==	2024-10-26 12:48:02.489539
5	22hppu5wbzp94ii281tgkra52u4z	facere	image/png	{"identified":true,"analyzed":true}	local	2044121	M2EoWJJDdZvELeldmCNXLw==	2024-10-26 12:48:03.108945
6	7rvtgesih0x4mjeuyztiduub8cjx	nihil	image/png	{"identified":true,"analyzed":true}	local	1246802	N4Xjn58CeA8kqmdUZ+rFKg==	2024-10-26 12:48:03.677357
7	3yhhlms3kidd0mz5xarj9mxhq6u6	impedit	image/png	{"identified":true,"analyzed":true}	local	1166457	mjo3xWkuOeWv2kqauNKvjQ==	2024-10-26 12:48:04.805965
8	xl0iqbfkd3zi7u6508e2ekd3ax2n	omnis	image/png	{"identified":true,"analyzed":true}	local	1005183	qrj9itPoCF0sYgaYde9w+w==	2024-10-26 12:48:05.286424
9	ugwjt2zvzpzpgwya2s7kt06svxod	est	image/png	{"identified":true,"analyzed":true}	local	2297748	mCU3KgElM4GLTNVQ+UY4lQ==	2024-10-26 12:48:05.824309
10	bxu897vsrm5fgpop6ujpckx3pm23	iste	image/png	{"identified":true}	local	2389480	6y9ZyPMeZY2duX7z+zw9RA==	2024-10-26 12:48:06.44634
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
environment	development	2024-10-26 12:47:55.595485	2024-10-26 12:47:55.595492
schema_sha1	f6e1363189dccde59e7cc1a88cfd5ac3c09c4e95	2024-10-26 12:47:55.606852	2024-10-26 12:47:55.606858
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.profiles (id, user_id, address_1, address_2, city, state, country, latitude, longitude, created_at, updated_at, zip_code) FROM stdin;
1	1	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-26 12:47:56.709446	2024-10-26 12:47:57.544348	75008
2	2	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-26 12:47:58.07217	2024-10-26 12:47:59.451016	75008
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at, address_1, address_2, latitude, longitude, zip_code, price_cents, price_currency, reviews_count, average_rating) FROM stdin;
6	nihil	Quis nobis sapiente iste.	Molestias est sed. Corrupti dolorem quod. Molestiae pariatur fuga.	Marilufort	South Dakota	United States	2024-10-26 12:48:03.627223	2024-10-26 12:48:03.895406	7864 Mann Knolls	\N	44.6471761	-100.348761	\N	3300	USD	3	4.3333333333333333
1	neque	Eius soluta eveniet doloremque.	Quo cumque reprehenderit. Ratione natus rerum. Placeat fugiat voluptatem.	Millerchester	Nebraska	United States	2024-10-26 12:48:00.458121	2024-10-26 12:48:00.87073	5460 Rosenbaum Motorway	\N	41.7370229	-99.5873816	\N	4900	USD	1	2.0
4	cumque	Aut doloribus repudiandae ea.	Maiores voluptatem dolor. Aut ex libero. Quos sapiente quo.	Lake Deneen	Texas	United States	2024-10-26 12:48:02.43287	2024-10-26 12:48:02.837392	636 Mica Roads	\N	31.2638905	-98.5456116	\N	5100	USD	4	2.75
9	est	Nisi architecto et ex.	Vel temporibus et. Cum amet omnis. Fugit est dolorem.	Wisokychester	Florida	United States	2024-10-26 12:48:05.763112	2024-10-26 12:48:06.223031	36427 Mattie Hills	\N	27.7567667	-81.4639835	\N	9300	USD	5	2.0
7	impedit	Veritatis ipsa veniam tempora.	Nostrum non praesentium. Expedita non ad. Pariatur voluptatem iste.	Considinetown	Georgia	United States	2024-10-26 12:48:04.761885	2024-10-26 12:48:05.006184	2789 Herman Route	\N	32.3293809	-83.1137366	\N	3300	USD	2	4.0
2	autem	Quam ab accusamus aspernatur.	Non id est. Tenetur facilis quia. Non voluptate totam.	Walshburgh	Vermont	United States	2024-10-26 12:48:01.234639	2024-10-26 12:48:01.62968	478 Bernice Tunnel	\N	44.5990718	-72.5002608	\N	3500	USD	4	3.5
5	facere	Est quas quibusdam cupiditate.	Dolorem expedita est. Ipsam aut dicta. Tempora fuga ipsa.	Hageneshaven	New Hampshire	United States	2024-10-26 12:48:03.056827	2024-10-26 12:48:03.425235	84924 Magen Isle	\N	43.4849133	-71.6553992	\N	9300	USD	4	3.5
8	omnis	Voluptatem ut dolorem in.	Sunt dolor doloribus. Reprehenderit eveniet esse. Adipisci blanditiis impedit.	South Graig	Arkansas	United States	2024-10-26 12:48:05.239026	2024-10-26 12:48:05.487317	1123 Graham Terrace	\N	35.2048883	-92.4479108	\N	7000	USD	2	4.0
10	iste	Et ipsum et rem.	Et atque sed. Ipsa sit enim. Molestias nostrum excepturi.	Aureliotown	South Dakota	United States	2024-10-26 12:48:06.390955	2024-10-26 12:48:06.623451	401 Ondricka Plaza	\N	44.6471761	-100.348761	\N	9700	USD	2	3.0
3	ad	Voluptatem ipsam numquam ex.	Aut suscipit quia. Libero aspernatur ex. Ea sint aut.	West Doris	Texas	United States	2024-10-26 12:48:01.82426	2024-10-26 12:48:02.174425	93570 Kareem Village	\N	31.2638905	-98.5456116	\N	8200	USD	4	3.5
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.reviews (id, title, body, rating, reviewable_id, reviewable_type, created_at, updated_at) FROM stdin;
1	consequatur	Et sit earum. Voluptatibus consequatur dignissimos. Totam ut ipsam.	2	1	Property	2024-10-26 12:48:00.699593	2024-10-26 12:48:00.699593
2	error	Culpa voluptate repellat. Eos et libero. Recusandae labore quasi.	5	2	Property	2024-10-26 12:48:01.358797	2024-10-26 12:48:01.358797
3	quae	Sed eius quia. Et consequatur ipsum. Minus quidem odio.	3	2	Property	2024-10-26 12:48:01.40875	2024-10-26 12:48:01.40875
4	est	Molestiae nesciunt magnam. Odit nulla consequatur. Reiciendis eos debitis.	1	2	Property	2024-10-26 12:48:01.515688	2024-10-26 12:48:01.515688
5	modi	Perspiciatis id eum. Et pariatur voluptates. Qui minus aut.	5	2	Property	2024-10-26 12:48:01.598958	2024-10-26 12:48:01.598958
6	fuga	Necessitatibus maxime fugit. Non et beatae. Voluptas labore praesentium.	4	3	Property	2024-10-26 12:48:01.916957	2024-10-26 12:48:01.916957
7	porro	Rerum fugiat pariatur. Rerum quia nihil. Assumenda temporibus repellendus.	3	3	Property	2024-10-26 12:48:01.987019	2024-10-26 12:48:01.987019
8	eaque	Aut sequi quod. Et veritatis explicabo. Exercitationem temporibus vero.	3	3	Property	2024-10-26 12:48:02.07102	2024-10-26 12:48:02.07102
9	hic	Ut eius voluptatem. Porro sunt vitae. Soluta aperiam quo.	4	3	Property	2024-10-26 12:48:02.145079	2024-10-26 12:48:02.145079
10	soluta	Non enim consequatur. Voluptas atque dolor. Laboriosam maiores quod.	1	4	Property	2024-10-26 12:48:02.637742	2024-10-26 12:48:02.637742
11	eius	Nulla ab vel. Sapiente molestiae labore. Ab impedit eius.	1	4	Property	2024-10-26 12:48:02.703905	2024-10-26 12:48:02.703905
12	quisquam	Cupiditate facilis dolores. Dicta minus dolores. Ea sit beatae.	5	4	Property	2024-10-26 12:48:02.740859	2024-10-26 12:48:02.740859
13	sit	Nam iste praesentium. Numquam eos molestias. Velit autem nisi.	4	4	Property	2024-10-26 12:48:02.810263	2024-10-26 12:48:02.810263
14	officia	Illo velit sint. Voluptas itaque similique. Qui voluptatem aspernatur.	4	5	Property	2024-10-26 12:48:03.178953	2024-10-26 12:48:03.178953
15	qui	Asperiores facilis voluptate. Natus velit ea. Porro molestias sunt.	4	5	Property	2024-10-26 12:48:03.259367	2024-10-26 12:48:03.259367
16	aut	Blanditiis laborum amet. Veritatis commodi qui. Et eos magni.	5	5	Property	2024-10-26 12:48:03.319255	2024-10-26 12:48:03.319255
17	eum	Necessitatibus eaque ducimus. Sit nulla autem. Molestiae adipisci saepe.	1	5	Property	2024-10-26 12:48:03.398573	2024-10-26 12:48:03.398573
18	laborum	Praesentium voluptatem velit. Harum itaque ad. Sunt quibusdam dolore.	4	6	Property	2024-10-26 12:48:03.727651	2024-10-26 12:48:03.727651
19	id	Explicabo eaque illum. In id magnam. Excepturi dicta quis.	5	6	Property	2024-10-26 12:48:03.776336	2024-10-26 12:48:03.776336
20	asperiores	Dolorem magni aut. Aliquam veniam minima. Harum qui illo.	4	6	Property	2024-10-26 12:48:03.869647	2024-10-26 12:48:03.869647
21	minus	Rerum eum minima. Illo reiciendis ea. Cumque hic eveniet.	3	7	Property	2024-10-26 12:48:04.868859	2024-10-26 12:48:04.868859
22	ratione	Accusantium enim odit. Repudiandae labore iure. Voluptas dolore voluptatum.	5	7	Property	2024-10-26 12:48:04.922503	2024-10-26 12:48:04.922503
23	voluptas	Qui earum ea. Placeat doloremque consequatur. Tempora rerum error.	5	8	Property	2024-10-26 12:48:05.336162	2024-10-26 12:48:05.336162
24	consequatur	Amet dolorem exercitationem. Est expedita nesciunt. Laudantium aut sapiente.	3	8	Property	2024-10-26 12:48:05.380339	2024-10-26 12:48:05.380339
25	et	Eligendi veniam deleniti. Eum aspernatur vel. Sequi corrupti qui.	4	9	Property	2024-10-26 12:48:05.892433	2024-10-26 12:48:05.892433
26	sequi	Doloribus possimus aut. Adipisci maxime dolorum. Et sunt eos.	1	9	Property	2024-10-26 12:48:05.956346	2024-10-26 12:48:05.956346
27	sed	Voluptatem ipsum quia. Qui distinctio quaerat. Accusamus quas voluptatum.	1	9	Property	2024-10-26 12:48:06.071076	2024-10-26 12:48:06.071076
28	ut	At sequi cumque. Iusto excepturi optio. Sit dolorem at.	1	9	Property	2024-10-26 12:48:06.119073	2024-10-26 12:48:06.119073
29	odio	Adipisci ea veniam. Iure qui qui. Doloremque ut omnis.	3	9	Property	2024-10-26 12:48:06.183364	2024-10-26 12:48:06.183364
30	et	Placeat repellendus culpa. In possimus rerum. Ratione in odio.	1	10	Property	2024-10-26 12:48:06.499799	2024-10-26 12:48:06.499799
31	rerum	Ab error quis. Hic atque omnis. Unde enim ratione.	5	10	Property	2024-10-26 12:48:06.563933	2024-10-26 12:48:06.563933
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
20241022140502
20241022134158
20241022091752
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
1	dev_1@bar.com	$2a$12$VFx0qu15QIf4HuC8L5MG2OQO5/eJeKEaerrJsY7ceTpyoSkp7CgiG	\N	\N	\N	2024-10-26 12:47:56.64452	2024-10-26 12:47:56.64452
2	heidlessemail05@gmail.com	$2a$12$QHawdI3HYt1ipv.PWzz7gejVvy8TmE6MUdq5y.Tq7mjgetTtZptyG	\N	\N	\N	2024-10-26 12:47:58.062791	2024-10-26 12:47:58.062791
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

SELECT pg_catalog.setval('public.profiles_id_seq', 2, true);


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.properties_id_seq', 10, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.reviews_id_seq', 31, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


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
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


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
-- Name: index_reviews_on_reviewable_type_and_reviewable_id; Type: INDEX; Schema: public; Owner: heidless
--

CREATE INDEX index_reviews_on_reviewable_type_and_reviewable_id ON public.reviews USING btree (reviewable_type, reviewable_id);


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

