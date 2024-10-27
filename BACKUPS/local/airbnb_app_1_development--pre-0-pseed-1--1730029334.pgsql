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
-- Name: genres; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.genres (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.genres OWNER TO heidless;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genres_id_seq OWNER TO heidless;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


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
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


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
1	images	Property	1	1	2024-10-26 19:00:01.454317
2	images	Property	2	2	2024-10-26 19:00:03.092935
3	images	Property	3	3	2024-10-26 19:00:03.450875
4	images	Property	4	4	2024-10-26 19:00:04.081899
5	images	Property	5	5	2024-10-26 19:00:04.449602
6	images	Property	6	6	2024-10-26 19:00:05.018091
7	images	Property	7	7	2024-10-26 19:00:05.528731
8	images	Property	8	8	2024-10-26 19:00:06.142927
9	images	Property	9	9	2024-10-26 19:00:06.447655
10	images	Property	10	10	2024-10-26 19:00:07.054505
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	ap9rd98m07q4u2iodfk1agj66l0e	voluptatem	image/png	{"identified":true,"analyzed":true}	local	1597850	ItfK3ZVhAKFKxPIKo3+x8Q==	2024-10-26 19:00:01.450429
2	3wvp8p7b3e4nx66b92kxin4shvso	vero	image/png	{"identified":true,"analyzed":true}	local	2113693	oUEIILPnDfz7ViYG42PK2w==	2024-10-26 19:00:03.090171
3	h3d3lv3t1xso0uxj8xf2ffp4aoxc	aspernatur	image/png	{"identified":true,"analyzed":true}	local	1677064	NVDfQpLijXhwou1qGj0xLA==	2024-10-26 19:00:03.448272
4	vkuom1rc0zzrqbltjb9983mb2l3w	aperiam	image/png	{"identified":true,"analyzed":true}	local	1655143	58PVXdN62RZCekFQ5/O8tg==	2024-10-26 19:00:04.078823
5	4yv0bz6l1mdffelevemfy6vn83cw	ex	image/png	{"identified":true,"analyzed":true}	local	2044121	M2EoWJJDdZvELeldmCNXLw==	2024-10-26 19:00:04.445762
6	bei0nm6o5p2q649j5gzwdiouxm4t	quae	image/png	{"identified":true,"analyzed":true}	local	1246802	N4Xjn58CeA8kqmdUZ+rFKg==	2024-10-26 19:00:05.014556
7	uhmny9xmmq6ysedqtsia2oy9otwt	assumenda	image/png	{"identified":true,"analyzed":true}	local	1166457	mjo3xWkuOeWv2kqauNKvjQ==	2024-10-26 19:00:05.526242
8	mx5x7som0y2ifx25uja4a8xku2pa	libero	image/png	{"identified":true,"analyzed":true}	local	1005183	qrj9itPoCF0sYgaYde9w+w==	2024-10-26 19:00:06.139216
9	2f3axm1hddeiy09vfr7uzpdqzljl	aut	image/png	{"identified":true,"analyzed":true}	local	2297748	mCU3KgElM4GLTNVQ+UY4lQ==	2024-10-26 19:00:06.444648
10	19ryk3yv5o3ay60zawq4w679uk2f	laboriosam	image/png	{"identified":true}	local	2389480	6y9ZyPMeZY2duX7z+zw9RA==	2024-10-26 19:00:07.0518
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
environment	development	2024-10-26 18:59:57.186282	2024-10-26 18:59:57.186285
schema_sha1	f6e1363189dccde59e7cc1a88cfd5ac3c09c4e95	2024-10-26 18:59:57.192503	2024-10-26 18:59:57.192505
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.genres (id, name, created_at, updated_at) FROM stdin;
1	Action	2024-10-26 19:17:08.958049	2024-10-26 19:17:08.958049
2	Sci-Fi	2024-10-26 19:17:09.067512	2024-10-26 19:17:09.067512
3	Adventure	2024-10-26 19:17:09.079367	2024-10-26 19:17:09.079367
4	Action	2024-10-27 10:14:22.486997	2024-10-27 10:14:22.486997
5	Sci-Fi	2024-10-27 10:14:22.534705	2024-10-27 10:14:22.534705
6	Adventure	2024-10-27 10:14:22.548052	2024-10-27 10:14:22.548052
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.profiles (id, user_id, address_1, address_2, city, state, country, latitude, longitude, created_at, updated_at, zip_code) FROM stdin;
1	1	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-26 18:59:57.657174	2024-10-26 18:59:59.754934	75008
2	2	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-26 18:59:59.957819	2024-10-26 19:00:00.689299	75008
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at, address_1, address_2, latitude, longitude, zip_code, price_cents, price_currency, reviews_count, average_rating) FROM stdin;
4	aperiam	Dolor tempore voluptate qui.	Harum impedit sint. Quas consequatur dolorem. Fuga laboriosam distinctio.	Michikoburgh	Minnesota	United States	2024-10-26 19:00:03.999753	2024-10-26 19:00:04.15174	57646 Valentine Stream	\N	45.9896587	-94.6113288	\N	2700	USD	2	3.5
1	voluptatem	Qui earum quasi quam.	Aliquam eligendi numquam. Dolorem inventore dicta. Quae eligendi sunt.	Beliamouth	Oklahoma	United States	2024-10-26 19:00:01.308372	2024-10-26 19:00:01.748292	720 Jerde Summit	\N	34.9550817	-97.2684063	\N	3600	USD	3	2.6666666666666667
8	libero	Qui temporibus illum numquam.	Voluptatem ea eius. Qui quo ipsum. Ut maxime reiciendis.	Hudsonstad	Indiana	United States	2024-10-26 19:00:06.062723	2024-10-26 19:00:06.212228	58336 Hegmann Divide	\N	40.3270127	-86.1746933	\N	9400	USD	2	1.5
5	ex	Error quae dicta rem.	Voluptatem aspernatur aut. Aliquid ullam id. Inventore iusto numquam.	Lake Nolan	Hawaii	United States	2024-10-26 19:00:04.379592	2024-10-26 19:00:04.498228	377 Turner Keys	\N	19.593801499999998	-155.42837009716908	\N	8500	USD	1	1.0
2	vero	Pariatur iusto adipisci itaque.	Itaque iusto autem. Pariatur inventore quis. Fugit qui error.	Kossport	Delaware	United States	2024-10-26 19:00:02.997945	2024-10-26 19:00:03.216539	56161 Cummings Mall	\N	38.6920451	-75.4013315	\N	8200	USD	5	3.0
9	aut	Tenetur ipsa rem et.	Earum saepe nihil. Architecto iste hic. Mollitia ducimus dolore.	Lake Ethan	Kentucky	United States	2024-10-26 19:00:06.368703	2024-10-26 19:00:06.541526	726 Brakus Route	\N	37.5726028	-85.1551411	\N	6300	USD	3	3.0
6	quae	Quis id dolorum ad.	Dignissimos iste est. Eos cumque culpa. Itaque delectus sint.	West Patrina	Minnesota	United States	2024-10-26 19:00:04.932372	2024-10-26 19:00:05.147403	870 Hosea Rapid	\N	45.9896587	-94.6113288	\N	5400	USD	4	1.75
3	aspernatur	Rerum consectetur inventore recusandae.	Non aut ipsa. Sed unde nulla. Mollitia laborum deserunt.	Marisstad	Virginia	United States	2024-10-26 19:00:03.384861	2024-10-26 19:00:03.499002	64821 Faustino Roads	\N	37.1232245	-78.4927721	\N	9100	USD	1	3.0
10	laboriosam	Ea sed iusto voluptatem.	Error voluptatem pariatur. Enim in beatae. Ea in cum.	Carmonview	Rhode Island	United States	2024-10-26 19:00:06.903585	2024-10-26 19:00:07.084651	194 Tuan Radial	\N	41.7962409	-71.5992372	\N	4800	USD	1	3.0
7	assumenda	Aliquid ex id quis.	Ut non voluptate. Quisquam repellat quasi. Culpa aspernatur natus.	South Dominick	Oklahoma	United States	2024-10-26 19:00:05.461624	2024-10-26 19:00:05.575756	61398 Isidro Key	\N	34.9550817	-97.2684063	\N	6700	USD	1	1.0
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.reviews (id, title, body, rating, reviewable_id, reviewable_type, created_at, updated_at) FROM stdin;
1	nulla	Libero nesciunt officiis. Fugiat autem sapiente. Voluptatem similique fugit.	2	1	Property	2024-10-26 19:00:01.570589	2024-10-26 19:00:01.570589
2	sed	Dolor sapiente dolore. Soluta ut porro. Mollitia doloribus totam.	3	1	Property	2024-10-26 19:00:01.590744	2024-10-26 19:00:01.590744
3	eum	Sequi eaque ipsam. Et voluptatem dolore. Modi harum culpa.	3	1	Property	2024-10-26 19:00:01.713095	2024-10-26 19:00:01.713095
4	et	Ut vitae optio. Et repellendus ducimus. Sunt et fugiat.	3	2	Property	2024-10-26 19:00:03.127006	2024-10-26 19:00:03.127006
5	voluptatem	Repellat cupiditate fugit. Explicabo optio laudantium. Voluptas sequi est.	4	2	Property	2024-10-26 19:00:03.146001	2024-10-26 19:00:03.146001
6	qui	Cum delectus impedit. Ex porro autem. Amet odio eum.	2	2	Property	2024-10-26 19:00:03.174203	2024-10-26 19:00:03.174203
7	numquam	Pariatur architecto eveniet. Ut sunt error. Et suscipit corporis.	1	2	Property	2024-10-26 19:00:03.18972	2024-10-26 19:00:03.18972
8	deleniti	Corporis vel odio. Eius aperiam hic. Aut voluptatem fuga.	5	2	Property	2024-10-26 19:00:03.206654	2024-10-26 19:00:03.206654
9	molestias	Veritatis molestiae ipsa. Cum omnis corporis. Rerum blanditiis esse.	3	3	Property	2024-10-26 19:00:03.466174	2024-10-26 19:00:03.466174
10	esse	Velit ratione similique. Atque voluptatibus sed. Voluptas doloribus dolores.	2	4	Property	2024-10-26 19:00:04.097679	2024-10-26 19:00:04.097679
11	eius	Occaecati delectus quasi. Aspernatur ex aliquid. Dolorem voluptatem minima.	5	4	Property	2024-10-26 19:00:04.113854	2024-10-26 19:00:04.113854
12	officiis	Saepe dolores alias. Nobis suscipit sit. Ex error cupiditate.	1	5	Property	2024-10-26 19:00:04.465363	2024-10-26 19:00:04.465363
13	sed	Dolores iusto odio. Consectetur pariatur voluptatem. Nemo eum voluptatem.	1	6	Property	2024-10-26 19:00:05.072292	2024-10-26 19:00:05.072292
14	mollitia	Velit voluptates cupiditate. Et maxime dolores. Neque rem est.	2	6	Property	2024-10-26 19:00:05.089099	2024-10-26 19:00:05.089099
15	fugit	Incidunt et quam. Ipsum placeat possimus. Consequatur repellendus et.	2	6	Property	2024-10-26 19:00:05.118474	2024-10-26 19:00:05.118474
16	qui	Harum a in. Sint dolore incidunt. Ea optio perferendis.	2	6	Property	2024-10-26 19:00:05.136159	2024-10-26 19:00:05.136159
17	omnis	Voluptatem voluptatem nobis. Rerum est ex. Optio cumque quam.	1	7	Property	2024-10-26 19:00:05.542292	2024-10-26 19:00:05.542292
18	debitis	Labore sint inventore. Assumenda porro quo. Sed alias autem.	1	8	Property	2024-10-26 19:00:06.159032	2024-10-26 19:00:06.159032
19	enim	Officia assumenda harum. Magnam ipsa repudiandae. Minus aliquam explicabo.	2	8	Property	2024-10-26 19:00:06.180345	2024-10-26 19:00:06.180345
20	molestiae	Ducimus possimus ad. Et amet molestiae. Eos culpa nihil.	4	9	Property	2024-10-26 19:00:06.479213	2024-10-26 19:00:06.479213
21	ut	Voluptatibus repudiandae nostrum. Quia ipsa adipisci. Officia non velit.	3	9	Property	2024-10-26 19:00:06.497396	2024-10-26 19:00:06.497396
22	ex	Maiores reiciendis quod. Tempora ullam placeat. Consequatur dignissimos et.	2	9	Property	2024-10-26 19:00:06.524841	2024-10-26 19:00:06.524841
23	qui	Rerum fugiat vel. Praesentium harum blanditiis. Ullam et necessitatibus.	3	10	Property	2024-10-26 19:00:07.07467	2024-10-26 19:00:07.07467
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
20241026191131
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	dev_1@bar.com	$2a$12$i960KKZ947tuKatXCoWLq.ZO7mFY6idbZ9yEXen0z/YNJGa.gRENO	\N	\N	\N	2024-10-26 18:59:57.638734	2024-10-26 18:59:57.638734
2	heidlessemail05@gmail.com	$2a$12$G5CHGNU.04EokuaDaIRBleXwzeMV2HhpjcjnBhFyEno54ZqKEOK2q	\N	\N	\N	2024-10-26 18:59:59.953665	2024-10-26 18:59:59.953665
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
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.genres_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.reviews_id_seq', 23, true);


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
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


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

