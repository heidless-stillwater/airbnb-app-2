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
    average_rating numeric,
    "defaultImage" character varying
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
1	images	Property	1	1	2024-10-28 08:55:28.782233
2	images	Property	2	2	2024-10-28 08:55:29.298048
3	images	Property	3	3	2024-10-28 08:55:29.837949
4	images	Property	4	4	2024-10-28 08:55:30.387086
5	images	Property	5	5	2024-10-28 08:55:30.937554
6	images	Property	6	6	2024-10-28 08:55:31.395518
7	images	Property	7	7	2024-10-28 08:55:31.864526
8	images	Property	8	8	2024-10-28 08:55:32.634101
9	images	Property	9	9	2024-10-28 08:55:32.986359
10	images	Property	10	10	2024-10-28 08:55:33.61936
11	images	Property	11	11	2024-10-28 08:55:34.154104
12	images	Property	12	12	2024-10-28 08:55:34.579374
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	egkxg8pbjlnpng57ea3s78nw13ur	molestiae	image/png	{"identified":true,"analyzed":true}	local	1597850	ItfK3ZVhAKFKxPIKo3+x8Q==	2024-10-28 08:55:28.77914
2	edi8cj8yz9dqeb1qneuk63e696an	quo	image/png	{"identified":true,"analyzed":true}	local	2113693	oUEIILPnDfz7ViYG42PK2w==	2024-10-28 08:55:29.294014
3	p9o4phn48zex45yil4g3xtsqhe8r	autem	image/png	{"identified":true,"analyzed":true}	local	1677064	NVDfQpLijXhwou1qGj0xLA==	2024-10-28 08:55:29.834907
4	rwmh7e2bi049hgi3qhlug2sd7i7a	qui	image/png	{"identified":true,"analyzed":true}	local	1655143	58PVXdN62RZCekFQ5/O8tg==	2024-10-28 08:55:30.384118
5	7tt6x9n438uqrrwo6e38rtr9l0rk	consequatur	image/png	{"identified":true,"analyzed":true}	local	2044121	M2EoWJJDdZvELeldmCNXLw==	2024-10-28 08:55:30.933321
6	nnpvxmkd00kxnzv8hfnqaw41i2b7	tenetur	image/png	{"identified":true,"analyzed":true}	local	1246802	N4Xjn58CeA8kqmdUZ+rFKg==	2024-10-28 08:55:31.391916
7	iks8u7ww6kio2khebv7ib5pymklv	vel	image/png	{"identified":true,"analyzed":true}	local	1166457	mjo3xWkuOeWv2kqauNKvjQ==	2024-10-28 08:55:31.861677
8	ilrsnd019rt4gqyf8odz39p345l5	ratione	image/png	{"identified":true,"analyzed":true}	local	1005183	qrj9itPoCF0sYgaYde9w+w==	2024-10-28 08:55:32.631266
9	8slj24i18cixj5p08y5f75f4d0be	vel	image/png	{"identified":true,"analyzed":true}	local	2297748	mCU3KgElM4GLTNVQ+UY4lQ==	2024-10-28 08:55:32.983374
10	dp07r1bmampof1flsemx2g6ogaqd	ut	image/png	{"identified":true,"analyzed":true}	local	2389480	6y9ZyPMeZY2duX7z+zw9RA==	2024-10-28 08:55:33.614943
11	epipjt2zxtkrxa2poi7zz6ul71ah	dolores	image/png	{"identified":true,"analyzed":true}	local	2516615	AiNSK8K0YTwsG0uxX4NoaQ==	2024-10-28 08:55:34.151351
12	mjta1mivryo72uezvyahr3t88vqi	excepturi	image/png	{"identified":true}	local	1104044	ZX9WJkI79DspDNQurz+RkQ==	2024-10-28 08:55:34.575814
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
environment	development	2024-10-28 08:55:25.985181	2024-10-28 08:55:25.985186
schema_sha1	6d245160b8b8bea28c7d171b0d39abe21e5ab2b1	2024-10-28 08:55:26.016326	2024-10-28 08:55:26.016329
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.genres (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.profiles (id, user_id, address_1, address_2, city, state, country, latitude, longitude, created_at, updated_at, zip_code) FROM stdin;
1	1	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-28 08:55:26.715519	2024-10-28 08:55:28.29993	75008
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at, address_1, address_2, latitude, longitude, zip_code, price_cents, price_currency, reviews_count, average_rating, "defaultImage") FROM stdin;
3	autem	Vitae harum consequatur voluptatibus.	Dolorem quos consequatur. Nemo eius eos. Laudantium in dolore.	West Jody	Minnesota	United States	2024-10-28 08:55:29.756375	2024-10-28 08:55:29.926093	63875 Boyer Mountains	\N	45.9896587	-94.6113288	\N	8500	USD	3	3.3333333333333333	\N
9	vel	Accusamus sapiente excepturi dolorem.	Totam voluptatem optio. Id quae eius. Vel dolor repellendus.	Murphyport	Rhode Island	United States	2024-10-28 08:55:32.875666	2024-10-28 08:55:33.063158	740 Henrietta Mill	\N	41.7962409	-71.5992372	\N	5900	USD	3	3.6666666666666667	\N
7	vel	Qui sapiente nam voluptatem.	Quis rerum aperiam. Rerum et sunt. Tempora ex exercitationem.	Morarport	Hawaii	United States	2024-10-28 08:55:31.789021	2024-10-28 08:55:31.952469	7141 Jolene Shore	\N	19.593801499999998	-155.42837009716908	\N	9300	USD	3	3.0	\N
1	molestiae	Minima esse maxime quibusdam.	Dolore voluptas velit. Vel sed deserunt. Quia facere quibusdam.	New Shermanland	Indiana	United States	2024-10-28 08:55:28.646789	2024-10-28 08:55:28.986125	91441 Carmel Roads	\N	40.3270127	-86.1746933	\N	9200	USD	5	2.4	\N
4	qui	Et omnis tempore sint.	Fugiat illo repellendus. Voluptatem accusamus totam. Vero aut totam.	South Sergioville	Wisconsin	United States	2024-10-28 08:55:30.31525	2024-10-28 08:55:30.474889	65159 Stark Island	\N	44.4308975	-89.6884637	\N	3500	USD	3	2.3333333333333333	\N
11	dolores	Delectus ullam blanditiis ut.	Quod sint reiciendis. Qui in soluta. Molestias iure sed.	East Charlie	Mississippi	United States	2024-10-28 08:55:34.040884	2024-10-28 08:55:34.259861	4815 Dare Orchard	\N	32.9715285	-89.7348497	\N	4800	USD	4	3.25	\N
12	excepturi	Molestiae nulla pariatur est.	Quis amet debitis. Est iste et. Enim dolor quas.	Port Oscar	New Jersey	United States	2024-10-28 08:55:34.50143	2024-10-28 08:55:34.60907	48557 Lanora Village	\N	40.0757384	-74.4041622	\N	9000	USD	1	3.0	\N
2	quo	Inventore tempora pariatur aliquam.	Porro molestiae qui. Impedit tempore sunt. Minus eos accusamus.	Ettashire	Wyoming	United States	2024-10-28 08:55:29.209659	2024-10-28 08:55:29.399622	847 Claire Path	\N	43.1700264	-107.568534	\N	5900	USD	4	3.0	\N
5	consequatur	Tempora aut architecto modi.	Molestiae ab omnis. Dolor beatae ut. In distinctio sit.	Port Lakenyaborough	Maine	United States	2024-10-28 08:55:30.850519	2024-10-28 08:55:31.015969	19519 Wendy Route	\N	45.709097	-68.8590201	\N	9900	USD	3	3.3333333333333333	\N
8	ratione	Consequatur facere aut odio.	Odit quo perspiciatis. Voluptatem et et. Saepe pariatur et.	Boehmbury	Vermont	United States	2024-10-28 08:55:32.545001	2024-10-28 08:55:32.718667	69009 Bridget Crossroad	\N	44.5990718	-72.5002608	\N	3500	USD	3	2.3333333333333333	\N
10	ut	Temporibus aut placeat vel.	Dolores ipsum et. Ut et voluptate. Quia eveniet deleniti.	South Oliverburgh	Wyoming	United States	2024-10-28 08:55:33.499146	2024-10-28 08:55:33.741198	734 Smith Lights	\N	43.1700264	-107.568534	\N	5000	USD	5	3.6	\N
6	tenetur	Veniam iusto et sed.	Totam et aspernatur. Quisquam et in. Veritatis est quaerat.	New Douglass	Wyoming	United States	2024-10-28 08:55:31.325413	2024-10-28 08:55:31.458511	51954 Altenwerth Tunnel	\N	43.1700264	-107.568534	\N	7400	USD	2	2.0	\N
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.reviews (id, title, body, rating, reviewable_id, reviewable_type, created_at, updated_at) FROM stdin;
1	recusandae	Delectus repudiandae reprehenderit. Culpa et eaque. Tempora molestiae error.	4	1	Property	2024-10-28 08:55:28.863227	2024-10-28 08:55:28.863227
2	nostrum	Sint aut officia. Sint aliquid necessitatibus. Necessitatibus quaerat rem.	1	1	Property	2024-10-28 08:55:28.883028	2024-10-28 08:55:28.883028
3	sed	Voluptatem error et. Amet eligendi labore. Tenetur qui laborum.	1	1	Property	2024-10-28 08:55:28.923223	2024-10-28 08:55:28.923223
4	quod	Tempora asperiores eaque. Illum tenetur non. Provident reiciendis qui.	1	1	Property	2024-10-28 08:55:28.95656	2024-10-28 08:55:28.95656
5	quae	Incidunt sequi harum. Illo et at. Voluptates nihil provident.	5	1	Property	2024-10-28 08:55:28.974904	2024-10-28 08:55:28.974904
6	est	Consequuntur voluptates et. Impedit repudiandae a. Et porro temporibus.	2	2	Property	2024-10-28 08:55:29.316136	2024-10-28 08:55:29.316136
7	fugit	Provident alias perspiciatis. Aspernatur ratione aut. Ex asperiores aliquam.	2	2	Property	2024-10-28 08:55:29.335523	2024-10-28 08:55:29.335523
8	consequatur	Ratione officia dolorum. Illo fuga repudiandae. Doloribus ut eaque.	4	2	Property	2024-10-28 08:55:29.355084	2024-10-28 08:55:29.355084
9	consequuntur	Ipsum est non. Autem et in. Expedita ab eaque.	4	2	Property	2024-10-28 08:55:29.388906	2024-10-28 08:55:29.388906
10	vitae	Eligendi exercitationem sit. Totam sint maxime. Molestiae iusto omnis.	3	3	Property	2024-10-28 08:55:29.857065	2024-10-28 08:55:29.857065
11	officiis	Aliquam qui totam. Hic libero qui. Corrupti sint nihil.	2	3	Property	2024-10-28 08:55:29.875166	2024-10-28 08:55:29.875166
12	dolorem	Non illum ducimus. Quos magnam dolor. Totam possimus esse.	5	3	Property	2024-10-28 08:55:29.905091	2024-10-28 08:55:29.905091
13	sunt	Asperiores nulla ut. Ex et labore. Voluptas sed est.	1	4	Property	2024-10-28 08:55:30.40398	2024-10-28 08:55:30.40398
14	nulla	Ducimus maxime debitis. Distinctio consequatur culpa. Vel molestiae totam.	4	4	Property	2024-10-28 08:55:30.426022	2024-10-28 08:55:30.426022
15	velit	Facere repellat qui. Doloribus a assumenda. Molestiae et et.	2	4	Property	2024-10-28 08:55:30.456459	2024-10-28 08:55:30.456459
16	rerum	Et temporibus praesentium. Amet qui totam. Non excepturi at.	3	5	Property	2024-10-28 08:55:30.955933	2024-10-28 08:55:30.955933
17	qui	Fugiat est vel. Voluptatem ea enim. Eius illum commodi.	3	5	Property	2024-10-28 08:55:30.974802	2024-10-28 08:55:30.974802
18	velit	Labore dolor sed. Aut aut sint. Quia consequatur eligendi.	4	5	Property	2024-10-28 08:55:30.993745	2024-10-28 08:55:30.993745
19	nesciunt	Similique voluptatem alias. Cum et eum. Doloribus voluptatem qui.	2	6	Property	2024-10-28 08:55:31.411909	2024-10-28 08:55:31.411909
20	est	Odit sit reprehenderit. Iure possimus quam. Non dolores impedit.	2	6	Property	2024-10-28 08:55:31.430952	2024-10-28 08:55:31.430952
21	veniam	Veritatis impedit doloribus. Quia neque expedita. Aut ab amet.	2	7	Property	2024-10-28 08:55:31.880468	2024-10-28 08:55:31.880468
22	omnis	Enim veniam dolores. Illum occaecati commodi. Quibusdam ut eligendi.	3	7	Property	2024-10-28 08:55:31.899868	2024-10-28 08:55:31.899868
23	asperiores	Qui nostrum perferendis. Quis aut quam. Neque deleniti ut.	4	7	Property	2024-10-28 08:55:31.939778	2024-10-28 08:55:31.939778
24	odit	Sed cumque facere. Nam non deserunt. Qui est et.	3	8	Property	2024-10-28 08:55:32.65035	2024-10-28 08:55:32.65035
25	molestiae	Doloribus sit explicabo. Perferendis illo dolore. Mollitia iste amet.	1	8	Property	2024-10-28 08:55:32.674071	2024-10-28 08:55:32.674071
26	non	Et provident error. Quod temporibus omnis. Sint omnis molestiae.	3	8	Property	2024-10-28 08:55:32.707566	2024-10-28 08:55:32.707566
27	consequuntur	Dolorum magni itaque. Voluptatem praesentium sit. Sed est qui.	5	9	Property	2024-10-28 08:55:33.005549	2024-10-28 08:55:33.005549
28	ex	Voluptatibus consequatur doloremque. Et quia odit. Nam eaque eos.	5	9	Property	2024-10-28 08:55:33.025443	2024-10-28 08:55:33.025443
29	odio	Et fugit inventore. Id cumque eligendi. Ipsam maxime aliquam.	1	9	Property	2024-10-28 08:55:33.044339	2024-10-28 08:55:33.044339
30	molestias	Quasi qui occaecati. Et ut iusto. At sint quasi.	3	10	Property	2024-10-28 08:55:33.638589	2024-10-28 08:55:33.638589
31	blanditiis	Est voluptatem et. Ad quisquam vero. Distinctio hic eveniet.	5	10	Property	2024-10-28 08:55:33.656759	2024-10-28 08:55:33.656759
32	ducimus	Et non at. Et quae ex. Eos laboriosam aut.	3	10	Property	2024-10-28 08:55:33.686407	2024-10-28 08:55:33.686407
33	ea	Excepturi quia maiores. Nesciunt quos esse. Eaque et architecto.	3	10	Property	2024-10-28 08:55:33.712331	2024-10-28 08:55:33.712331
34	et	Temporibus fugiat voluptate. Dolores et velit. Aliquam architecto sed.	4	10	Property	2024-10-28 08:55:33.730197	2024-10-28 08:55:33.730197
35	minima	Quod ad sint. Quas magni exercitationem. Iure quo reiciendis.	4	11	Property	2024-10-28 08:55:34.173815	2024-10-28 08:55:34.173815
36	dolorum	Id voluptas at. Enim doloremque nesciunt. Voluptas dignissimos aspernatur.	3	11	Property	2024-10-28 08:55:34.193228	2024-10-28 08:55:34.193228
37	voluptas	Labore sed harum. Tenetur necessitatibus consequatur. Inventore nobis assumenda.	2	11	Property	2024-10-28 08:55:34.225023	2024-10-28 08:55:34.225023
38	dolore	Atque rerum ipsam. Aliquid pariatur itaque. Ut enim inventore.	4	11	Property	2024-10-28 08:55:34.247722	2024-10-28 08:55:34.247722
39	quia	Et totam quidem. Quidem sequi cupiditate. Dolorem sed voluptatem.	3	12	Property	2024-10-28 08:55:34.594397	2024-10-28 08:55:34.594397
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
20241027114530
20241026191131
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
1	demo@heidless-app-0.com	$2a$12$yjqcjofU80iQffolj3HwNOGJsTm0PJw1EaFnAjsPRYIbBbyb9dYtu	\N	\N	\N	2024-10-28 08:55:26.598024	2024-10-28 08:55:26.598024
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 12, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 12, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.genres_id_seq', 1, false);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.profiles_id_seq', 1, true);


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.properties_id_seq', 12, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.reviews_id_seq', 39, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


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

