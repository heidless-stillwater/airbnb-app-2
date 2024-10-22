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
1	images	Property	1	1	2024-10-22 11:01:43.496145
2	images	Property	2	2	2024-10-22 11:01:44.552284
3	images	Property	3	3	2024-10-22 11:01:46.180977
4	images	Property	4	4	2024-10-22 11:01:46.882815
5	images	Property	5	5	2024-10-22 11:01:48.411555
6	images	Property	6	6	2024-10-22 11:01:49.079732
7	images	Property	7	7	2024-10-22 11:01:52.350281
8	images	Property	8	8	2024-10-22 11:01:52.855107
9	images	Property	9	9	2024-10-22 11:01:53.654241
10	images	Property	10	10	2024-10-22 11:01:54.397462
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	acrd7n990ihd6pykm1f8ga312033	delectus	image/png	{"identified":true,"analyzed":true}	local	1597850	ItfK3ZVhAKFKxPIKo3+x8Q==	2024-10-22 11:01:43.492652
2	xoje4f3qyy6gex4p7tp7cedrlllq	beatae	image/png	{"identified":true,"analyzed":true}	local	2113693	oUEIILPnDfz7ViYG42PK2w==	2024-10-22 11:01:44.549429
3	ocnp3tf908x7nvolwo6o5t2at7ku	ex	image/png	{"identified":true,"analyzed":true}	local	1677064	NVDfQpLijXhwou1qGj0xLA==	2024-10-22 11:01:46.175524
4	kr1s68nbnwhzzhelohwdvb15jwrb	ipsum	image/png	{"identified":true,"analyzed":true}	local	1655143	58PVXdN62RZCekFQ5/O8tg==	2024-10-22 11:01:46.878247
5	w8qlxci06lfntbr3en4rmoj1q2ez	enim	image/png	{"identified":true,"analyzed":true}	local	2044121	M2EoWJJDdZvELeldmCNXLw==	2024-10-22 11:01:48.403271
6	n7fqmtusrd7tjx0966s5hn3vr9re	aliquam	image/png	{"identified":true,"analyzed":true}	local	1246802	N4Xjn58CeA8kqmdUZ+rFKg==	2024-10-22 11:01:49.075434
7	atsyzfxxuwa19uf5jrpjdkokhvw3	autem	image/png	{"identified":true,"analyzed":true}	local	1166457	mjo3xWkuOeWv2kqauNKvjQ==	2024-10-22 11:01:52.345631
8	ewsitivw2lyp7sdazjaum3wy2gfi	quam	image/png	{"identified":true,"analyzed":true}	local	1005183	qrj9itPoCF0sYgaYde9w+w==	2024-10-22 11:01:52.851349
9	hh0eo1ff6rea0ulzom6s9pm1xzb4	quia	image/png	{"identified":true,"analyzed":true}	local	2297748	mCU3KgElM4GLTNVQ+UY4lQ==	2024-10-22 11:01:53.650693
10	e71fmzqa13w0bcmg5txrdkknukwc	quia	image/png	{"identified":true}	local	2389480	6y9ZyPMeZY2duX7z+zw9RA==	2024-10-22 11:01:54.394432
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
environment	development	2024-10-22 11:01:20.508269	2024-10-22 11:01:20.508273
schema_sha1	c3a77a606637e8a8fb525af19fb033f8b7c158a4	2024-10-22 11:01:20.547253	2024-10-22 11:01:20.547256
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.profiles (id, user_id, address_1, address_2, city, state, country, latitude, longitude, created_at, updated_at, zip_code) FROM stdin;
1	1	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:21.229804	2024-10-22 11:01:22.732717	75008
2	2	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:22.947108	2024-10-22 11:01:24.398593	75008
3	3	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:24.608427	2024-10-22 11:01:26.033017	75008
4	4	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:26.24401	2024-10-22 11:01:27.296937	75008
5	5	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:27.509547	2024-10-22 11:01:28.771251	75008
6	6	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:28.981415	2024-10-22 11:01:30.431176	75008
7	7	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:30.641054	2024-10-22 11:01:33.172052	75008
8	8	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:33.384851	2024-10-22 11:01:36.436766	75008
9	9	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:36.64407	2024-10-22 11:01:39.432812	75008
10	10	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-22 11:01:39.643409	2024-10-22 11:01:42.100342	75008
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at, address_1, address_2, latitude, longitude, zip_code, price_cents, price_currency) FROM stdin;
1	delectus	Est voluptatem ad voluptas.	Modi fuga omnis. Ut saepe possimus. Molestias vitae quisquam.	Alonsoville	Pennsylvania	United States	2024-10-22 11:01:43.358504	2024-10-22 11:01:43.709579	6782 Will Center	\N	40.9699889	-77.7278831	\N	7200	USD
2	beatae	Nam ullam consequuntur vero.	Sed ex cum. Harum quis voluptatem. Modi praesentium amet.	New Rolande	Michigan	United States	2024-10-22 11:01:44.442719	2024-10-22 11:01:44.630704	3707 Shields Camp	\N	43.6211955	-84.6824346	\N	3000	USD
3	ex	Sunt consequatur odio vitae.	Laboriosam placeat debitis. Expedita rerum quam. Velit quis eum.	Gerardoside	Vermont	United States	2024-10-22 11:01:46.103221	2024-10-22 11:01:46.249411	104 Trantow Rue	\N	44.5990718	-72.5002608	\N	6500	USD
4	ipsum	Aut dignissimos ipsa enim.	Tenetur ut quia. Sed iusto et. Ut magni facere.	Ritchieborough	South Carolina	United States	2024-10-22 11:01:46.802181	2024-10-22 11:01:46.972483	35704 Nader Mountain	\N	33.6874388	-80.4363743	\N	8500	USD
5	enim	Voluptatem repellendus voluptas praesentium.	Et non ea. Aliquid a quisquam. Tempora quia et.	Louettastad	Massachusetts	United States	2024-10-22 11:01:48.321017	2024-10-22 11:01:48.488919	462 Michal Junctions	\N	42.3788774	-72.032366	\N	7900	USD
6	aliquam	Dolorem eligendi nulla vitae.	Aut sapiente libero. Nesciunt molestiae omnis. Fugit id optio.	Labadiefort	South Carolina	United States	2024-10-22 11:01:48.980017	2024-10-22 11:01:49.133958	982 Bruen Wall	\N	33.6874388	-80.4363743	\N	8400	USD
7	autem	Necessitatibus delectus dolorem iste.	Placeat odit et. Est est qui. Sit iste minima.	Lake Dwayneside	Utah	United States	2024-10-22 11:01:52.27719	2024-10-22 11:01:52.42164	617 Ryan Avenue	\N	39.4225192	-111.714358	\N	3400	USD
8	quam	Ea ut similique ut.	Nemo quas voluptas. Vel harum illum. Quam aliquam non.	Lloydhaven	Oklahoma	United States	2024-10-22 11:01:52.787289	2024-10-22 11:01:52.916074	882 Hoppe Garden	\N	34.9550817	-97.2684063	\N	4800	USD
9	quia	Quo sed a molestiae.	Amet ea tempora. Officiis corrupti quis. Iusto omnis eum.	Hammesfurt	Alabama	United States	2024-10-22 11:01:53.564754	2024-10-22 11:01:53.717714	1561 Hoeger Parkway	\N	33.2588817	-86.8295337	\N	4000	USD
10	quia	Vero qui dignissimos repellat.	Sed ratione omnis. Nihil aperiam velit. Aliquid a accusamus.	Kleinville	Missouri	United States	2024-10-22 11:01:54.266052	2024-10-22 11:01:54.401487	2587 Alecia Falls	\N	38.7604815	-92.5617875	\N	9100	USD
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.reviews (id, title, body, rating, reviewable_id, reviewable_type, created_at, updated_at) FROM stdin;
1	numquam	Excepturi corrupti amet. Sint delectus odio. Et veritatis voluptas.	5	1	Property	2024-10-22 11:01:43.634417	2024-10-22 11:01:43.634417
2	repellendus	Facilis officiis omnis. Blanditiis commodi suscipit. Laudantium qui est.	3	1	Property	2024-10-22 11:01:43.644436	2024-10-22 11:01:43.644436
3	voluptatem	Et eos et. Quo illo rem. Fugiat ad expedita.	5	1	Property	2024-10-22 11:01:43.65073	2024-10-22 11:01:43.65073
4	laboriosam	Asperiores rerum nihil. Non est consectetur. Ut doloremque aperiam.	2	1	Property	2024-10-22 11:01:43.658239	2024-10-22 11:01:43.658239
5	sit	Qui nobis exercitationem. Quos quas reprehenderit. Beatae distinctio et.	2	1	Property	2024-10-22 11:01:43.666795	2024-10-22 11:01:43.666795
6	saepe	Fugit assumenda vitae. Quibusdam sit distinctio. Ea aut ipsum.	5	2	Property	2024-10-22 11:01:44.58827	2024-10-22 11:01:44.58827
7	itaque	Nostrum libero earum. Officia excepturi harum. Harum similique magni.	1	2	Property	2024-10-22 11:01:44.595405	2024-10-22 11:01:44.595405
8	recusandae	Dicta aut aut. Temporibus dicta iusto. Atque et repellat.	5	2	Property	2024-10-22 11:01:44.601889	2024-10-22 11:01:44.601889
9	deleniti	Adipisci architecto voluptatibus. Sit suscipit tenetur. Atque officiis ut.	1	2	Property	2024-10-22 11:01:44.612908	2024-10-22 11:01:44.612908
10	aut	Quo accusantium numquam. Perspiciatis ullam quos. Id deserunt magni.	1	2	Property	2024-10-22 11:01:44.622945	2024-10-22 11:01:44.622945
11	modi	Provident ut non. Ut ut provident. Quis amet totam.	5	3	Property	2024-10-22 11:01:46.200775	2024-10-22 11:01:46.200775
12	asperiores	Ipsa nostrum non. Architecto asperiores est. Placeat eos nesciunt.	2	3	Property	2024-10-22 11:01:46.207364	2024-10-22 11:01:46.207364
13	sint	Fuga unde voluptatum. Quisquam vel ea. Voluptas maxime impedit.	4	3	Property	2024-10-22 11:01:46.214361	2024-10-22 11:01:46.214361
14	voluptatem	Exercitationem mollitia maiores. Et veniam ab. Dolorem dolorem magni.	4	3	Property	2024-10-22 11:01:46.220493	2024-10-22 11:01:46.220493
15	veniam	Magnam cumque accusantium. Est numquam et. Sed ipsum non.	2	4	Property	2024-10-22 11:01:46.934463	2024-10-22 11:01:46.934463
16	reprehenderit	Enim fugiat molestias. Qui deleniti est. Consequatur dicta expedita.	2	4	Property	2024-10-22 11:01:46.940769	2024-10-22 11:01:46.940769
17	et	Tempore numquam iure. Ipsam est veniam. Nam suscipit et.	2	4	Property	2024-10-22 11:01:46.94864	2024-10-22 11:01:46.94864
18	sed	Sint perspiciatis repellat. Quam cumque ut. Veniam alias libero.	2	5	Property	2024-10-22 11:01:48.450293	2024-10-22 11:01:48.450293
19	aut	Ullam fuga est. Commodi est velit. Expedita sed maxime.	3	5	Property	2024-10-22 11:01:48.456844	2024-10-22 11:01:48.456844
20	sapiente	Dolorem alias dolores. Dolore reiciendis adipisci. Minima quo facere.	1	5	Property	2024-10-22 11:01:48.465169	2024-10-22 11:01:48.465169
21	ad	Dolorum sit maiores. Sit voluptatem blanditiis. Et soluta consectetur.	5	6	Property	2024-10-22 11:01:49.101395	2024-10-22 11:01:49.101395
22	iure	Reprehenderit repellendus sed. Pariatur aut cumque. Quia dicta ducimus.	3	6	Property	2024-10-22 11:01:49.106956	2024-10-22 11:01:49.106956
23	tempora	Similique assumenda culpa. Aut voluptatem voluptatem. Debitis sed nisi.	3	7	Property	2024-10-22 11:01:52.382867	2024-10-22 11:01:52.382867
24	quaerat	Eligendi non in. Reiciendis officiis error. Veritatis perspiciatis repellendus.	4	7	Property	2024-10-22 11:01:52.389969	2024-10-22 11:01:52.389969
25	dolorem	Quo quia dolores. Pariatur provident culpa. Et tempore impedit.	5	7	Property	2024-10-22 11:01:52.39694	2024-10-22 11:01:52.39694
26	dicta	In id cumque. Aliquid reprehenderit quaerat. Quo numquam doloremque.	1	8	Property	2024-10-22 11:01:52.88685	2024-10-22 11:01:52.88685
27	deleniti	Consequatur ut repellat. Laboriosam et error. Et doloremque iure.	1	9	Property	2024-10-22 11:01:53.67656	2024-10-22 11:01:53.67656
28	eum	Inventore corporis vel. Dolorem omnis impedit. Libero quas accusamus.	5	9	Property	2024-10-22 11:01:53.684594	2024-10-22 11:01:53.684594
29	quos	Aut suscipit voluptatem. Sunt rem et. Minus odio voluptas.	5	9	Property	2024-10-22 11:01:53.69126	2024-10-22 11:01:53.69126
30	aut	Dignissimos quia nihil. Ut officia sed. Vel esse culpa.	5	9	Property	2024-10-22 11:01:53.699143	2024-10-22 11:01:53.699143
31	illo	Et molestias earum. Qui perspiciatis minima. Repudiandae possimus laudantium.	3	10	Property	2024-10-22 11:01:54.416883	2024-10-22 11:01:54.416883
32	quia	Laborum repellendus atque. Ut et totam. Iure dolor quod.	2	10	Property	2024-10-22 11:01:54.42311	2024-10-22 11:01:54.42311
33	deleniti	Libero laboriosam qui. Ut ea nihil. Quia laborum minus.	1	10	Property	2024-10-22 11:01:54.431129	2024-10-22 11:01:54.431129
34	ut	Dolor consequuntur rerum. Nisi corrupti inventore. Eos in non.	4	10	Property	2024-10-22 11:01:54.437743	2024-10-22 11:01:54.437743
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
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
1	dev_1@bar.com	$2a$12$dNiTBQot9v9SYXEoYG0If.FIeQAb5bjC7GHBu6Zcv67R/K2f2ufy2	\N	\N	\N	2024-10-22 11:01:21.1259	2024-10-22 11:01:21.1259
2	dev_2@bar.com	$2a$12$7qf1VrjxNi0OrOXJo/zmC.4xnvDsAW6CTq8jKI4FgJshizT614pZG	\N	\N	\N	2024-10-22 11:01:22.93757	2024-10-22 11:01:22.93757
3	dev_3@bar.com	$2a$12$pnyCwctbzRFW3WZf/rL16.xC/y.9wx4.LFcac1Vb3.HBWCIfD0zPi	\N	\N	\N	2024-10-22 11:01:24.604793	2024-10-22 11:01:24.604793
4	dev_4@bar.com	$2a$12$djmVLizOseD50z/W4KPzz..7ddPuVE6piQdbWeg5uRan9diFR2BOO	\N	\N	\N	2024-10-22 11:01:26.240466	2024-10-22 11:01:26.240466
5	dev_5@bar.com	$2a$12$OKk0D6fkM32tB92X1r3HBuhot8vNs4.IVv512ONBqjuvvqJXtBr4i	\N	\N	\N	2024-10-22 11:01:27.505249	2024-10-22 11:01:27.505249
6	dev_6@bar.com	$2a$12$qjMGoh4wpzXqfQ4Mu8njgOCVxm9XbKE0qd.KtuoHJA10D8hNYeksO	\N	\N	\N	2024-10-22 11:01:28.977823	2024-10-22 11:01:28.977823
7	dev_7@bar.com	$2a$12$y2UJIWdBpd2xX87siN/kk.uR.IXU/S9uS/KKnZZlHiBbupXr6hlou	\N	\N	\N	2024-10-22 11:01:30.636666	2024-10-22 11:01:30.636666
8	dev_8@bar.com	$2a$12$ZDvPrfL/u/L2mlcoErjGVO3H3VNJouNekyX37kWP/2xJqgDOWsdW.	\N	\N	\N	2024-10-22 11:01:33.381293	2024-10-22 11:01:33.381293
9	dev_9@bar.com	$2a$12$my5vvwLr8vLKa1rQ6FCfTOwO64frjMLcgrJyl7BkQRCTKPiKkLXUm	\N	\N	\N	2024-10-22 11:01:36.640296	2024-10-22 11:01:36.640296
10	dev_10@bar.com	$2a$12$naFt9n6QC3Jl9zkNK3YhTeYwl2kjGCaco3BWCthrdSfVQCduV.Y1W	\N	\N	\N	2024-10-22 11:01:39.639801	2024-10-22 11:01:39.639801
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
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.reviews_id_seq', 34, true);


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

