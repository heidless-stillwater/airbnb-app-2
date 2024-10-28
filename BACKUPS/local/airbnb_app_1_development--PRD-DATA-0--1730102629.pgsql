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
1	images	Property	1	1	2024-10-27 20:29:26.949657
2	images	Property	2	2	2024-10-27 20:29:27.620452
3	images	Property	3	3	2024-10-27 20:29:28.259037
4	images	Property	4	4	2024-10-27 20:29:28.809298
5	images	Property	5	5	2024-10-27 20:29:29.244245
6	images	Property	6	6	2024-10-27 20:29:30.086345
7	images	Property	7	7	2024-10-27 20:29:30.565129
8	images	Property	8	8	2024-10-27 20:29:31.148597
9	images	Property	9	9	2024-10-27 20:29:31.769893
10	images	Property	10	10	2024-10-27 20:29:32.311889
11	images	Property	11	11	2024-10-27 20:29:32.825453
12	images	Property	12	12	2024-10-27 20:29:33.307068
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	eeroi13hctkgq1ny4misunnkee2c	voluptatum	image/png	{"identified":true,"analyzed":true}	local	1597850	ItfK3ZVhAKFKxPIKo3+x8Q==	2024-10-27 20:29:26.943302
2	cj7jxu7107ti5g3vrms0lt8es4vf	nisi	image/png	{"identified":true,"analyzed":true}	local	2113693	oUEIILPnDfz7ViYG42PK2w==	2024-10-27 20:29:27.60797
3	flk1o7dj15td3f1n3xh0qbzhbafj	quis	image/png	{"identified":true,"analyzed":true}	local	1677064	NVDfQpLijXhwou1qGj0xLA==	2024-10-27 20:29:28.249425
4	ym3dr1mryh42gdut6pccixxpeyxs	itaque	image/png	{"identified":true,"analyzed":true}	local	1655143	58PVXdN62RZCekFQ5/O8tg==	2024-10-27 20:29:28.801971
5	jewsx2rf5x708zwfpd2ywuq2vqox	sed	image/png	{"identified":true,"analyzed":true}	local	2044121	M2EoWJJDdZvELeldmCNXLw==	2024-10-27 20:29:29.237693
6	i4djlixz2e0fu4sc5szklazwwv6t	maxime	image/png	{"identified":true,"analyzed":true}	local	1246802	N4Xjn58CeA8kqmdUZ+rFKg==	2024-10-27 20:29:30.077216
7	fs38vd4xeg0yjnkkzz3wqmvwwpls	cupiditate	image/png	{"identified":true,"analyzed":true}	local	1166457	mjo3xWkuOeWv2kqauNKvjQ==	2024-10-27 20:29:30.553012
8	ghc7j3i5husax5fkbyirmtp31ac2	quo	image/png	{"identified":true,"analyzed":true}	local	1005183	qrj9itPoCF0sYgaYde9w+w==	2024-10-27 20:29:31.132644
9	1y0h2itl3zzzm8jehjv12l7z9hrm	deserunt	image/png	{"identified":true,"analyzed":true}	local	2297748	mCU3KgElM4GLTNVQ+UY4lQ==	2024-10-27 20:29:31.762199
10	kw63bn6hij3zigadgc4d9xd827q9	molestiae	image/png	{"identified":true,"analyzed":true}	local	2389480	6y9ZyPMeZY2duX7z+zw9RA==	2024-10-27 20:29:32.299597
11	cf9suqztd0njjsos9au5nmt8lxah	ipsum	image/png	{"identified":true,"analyzed":true}	local	2516615	AiNSK8K0YTwsG0uxX4NoaQ==	2024-10-27 20:29:32.819416
12	9xnwng9bqzcmsvlu9kcf4t0z8bda	deleniti	image/png	{"identified":true,"analyzed":true}	local	1104044	ZX9WJkI79DspDNQurz+RkQ==	2024-10-27 20:29:33.299434
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
environment	development	2024-10-27 20:29:23.343334	2024-10-27 20:29:23.343338
schema_sha1	6d245160b8b8bea28c7d171b0d39abe21e5ab2b1	2024-10-27 20:29:23.351134	2024-10-27 20:29:23.351138
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
1	1	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-27 20:29:24.109791	2024-10-27 20:29:24.866475	75008
2	2	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-27 20:29:25.274403	2024-10-27 20:29:25.950974	75008
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at, address_1, address_2, latitude, longitude, zip_code, price_cents, price_currency, reviews_count, average_rating, "defaultImage") FROM stdin;
4	itaque	Non qui maxime asperiores.	Autem quia inventore. Distinctio rerum maiores. Rerum doloribus dolor.	Gleasonshire	Nevada	United States	2024-10-27 20:29:28.745155	2024-10-27 20:29:28.979325	389 Spencer Valleys	\N	39.5158825	-116.853722	\N	6400	USD	4	4.0	\N
1	voluptatum	Ad voluptas ullam pariatur.	A enim quae. Eos ipsum voluptates. Rerum error qui.	South Valdahaven	Kansas	United States	2024-10-27 20:29:26.854677	2024-10-27 20:29:27.227186	222 Carson Ridge	\N	38.27312	-98.5821872	\N	7900	USD	2	2.0	\N
7	cupiditate	Sapiente molestiae doloribus eaque.	Repellat in et. Suscipit explicabo debitis. Sit laboriosam omnis.	Otisview	Massachusetts	United States	2024-10-27 20:29:30.507544	2024-10-27 20:29:30.865627	608 Eddy Plain	\N	42.3788774	-72.032366	\N	7000	USD	5	2.8	\N
5	sed	Tempora est illo at.	Temporibus aspernatur ut. Omnis earum consequatur. Odio et eum.	New Natachaborough	New York	United States	2024-10-27 20:29:29.199762	2024-10-27 20:29:29.373418	7038 Dicki Crest	\N	40.7127281	-74.0060152	\N	5900	USD	1	4.0	\N
11	ipsum	Sint quis excepturi officia.	Doloremque non blanditiis. Ad voluptatem ut. Minima numquam consequatur.	West Joelland	Massachusetts	United States	2024-10-27 20:29:32.764308	2024-10-27 20:29:33.085015	37719 Samella Tunnel	\N	42.3788774	-72.032366	\N	9400	USD	5	2.2	\N
9	deserunt	Quo amet odit consequatur.	Dolores quibusdam non. Quisquam esse debitis. Fugit enim commodi.	Debrahberg	Ohio	United States	2024-10-27 20:29:31.709679	2024-10-27 20:29:32.04561	893 Doyle Mews	\N	40.2253569	-82.6881395	\N	2700	USD	5	3.0	\N
2	nisi	Provident culpa nobis tempora.	Sunt sint quia. Et quos sapiente. A voluptas sit.	Port Merrill	Michigan	United States	2024-10-27 20:29:27.544514	2024-10-27 20:29:27.845162	42575 Eldora Valley	\N	43.6211955	-84.6824346	\N	7100	USD	3	3.0	\N
6	maxime	Ipsum est et quia.	Quo neque et. Eum earum eius. Voluptas rerum tempore.	Bartolettiport	Vermont	United States	2024-10-27 20:29:30.019419	2024-10-27 20:29:30.309046	94503 Tyrone Ford	\N	44.5990718	-72.5002608	\N	4100	USD	3	1.6666666666666667	\N
3	quis	Deleniti eum eligendi dicta.	Soluta velit voluptas. Minus facilis autem. Commodi eius pariatur.	South Milly	Indiana	United States	2024-10-27 20:29:28.201723	2024-10-27 20:29:28.40737	3240 Gregory Pine	\N	40.3270127	-86.1746933	\N	7500	USD	2	3.0	\N
8	quo	Minima voluptas repellendus recusandae.	Consequuntur dolor quisquam. Similique asperiores numquam. Corrupti quia nobis.	Hyattbury	Nebraska	United States	2024-10-27 20:29:31.084253	2024-10-27 20:29:31.38313	14196 Whitney Burgs	\N	41.7370229	-99.5873816	\N	7200	USD	4	2.5	\N
10	molestiae	Nihil sit incidunt et.	Totam minus molestias. Veritatis eum et. Minus tenetur ratione.	Milagrohaven	Idaho	United States	2024-10-27 20:29:32.244216	2024-10-27 20:29:32.512801	832 Hermiston Stravenue	\N	43.6447642	-114.015407	\N	2900	USD	2	4.5	\N
12	deleniti	Eum voluptatem tenetur et.	Et quo voluptatem. Blanditiis quaerat hic. Autem omnis enim.	Bodestad	New York	United States	2024-10-27 20:29:33.250122	2024-10-27 20:29:33.518225	67446 Wisozk Crescent	\N	40.7127281	-74.0060152	\N	5300	USD	3	2.3333333333333333	\N
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.reviews (id, title, body, rating, reviewable_id, reviewable_type, created_at, updated_at) FROM stdin;
1	dolor	Recusandae reprehenderit dolores. Dolor neque itaque. Sint consequatur temporibus.	2	1	Property	2024-10-27 20:29:27.088686	2024-10-27 20:29:27.088686
2	earum	Ratione maiores sapiente. Magnam id harum. Ea quam dolorum.	2	1	Property	2024-10-27 20:29:27.136244	2024-10-27 20:29:27.136244
3	sit	Pariatur quas voluptate. Ut omnis numquam. Tenetur facilis reprehenderit.	1	2	Property	2024-10-27 20:29:27.672643	2024-10-27 20:29:27.672643
4	voluptatum	Non voluptate perspiciatis. Nam ut et. Tenetur quas temporibus.	4	2	Property	2024-10-27 20:29:27.721522	2024-10-27 20:29:27.721522
5	reprehenderit	Sunt quis et. Est sunt qui. Non perspiciatis qui.	4	2	Property	2024-10-27 20:29:27.809108	2024-10-27 20:29:27.809108
6	consequatur	Consequatur quia harum. Magnam a exercitationem. Harum magnam assumenda.	3	3	Property	2024-10-27 20:29:28.303217	2024-10-27 20:29:28.303217
7	non	Ut est consequuntur. Eligendi blanditiis porro. Ratione nihil nesciunt.	3	3	Property	2024-10-27 20:29:28.341696	2024-10-27 20:29:28.341696
8	et	Quia minus dolores. Debitis nam dolores. Minus at molestiae.	5	4	Property	2024-10-27 20:29:28.847848	2024-10-27 20:29:28.847848
9	iste	Natus ut et. Minus tempora blanditiis. Aut qui esse.	5	4	Property	2024-10-27 20:29:28.927544	2024-10-27 20:29:28.927544
10	temporibus	Sint quos saepe. Numquam vel aut. Necessitatibus ut in.	2	4	Property	2024-10-27 20:29:28.955931	2024-10-27 20:29:28.955931
11	omnis	Sit qui dolores. Esse omnis veritatis. Velit vitae numquam.	4	4	Property	2024-10-27 20:29:28.992449	2024-10-27 20:29:28.992449
12	illum	Libero molestias laboriosam. Dolor soluta voluptatibus. Ut cumque nihil.	4	5	Property	2024-10-27 20:29:29.299824	2024-10-27 20:29:29.299824
13	enim	Voluptas omnis non. Corporis non vel. Amet recusandae voluptatem.	1	6	Property	2024-10-27 20:29:30.130053	2024-10-27 20:29:30.130053
14	voluptatem	Rerum fugiat rem. Eaque quibusdam voluptatum. Debitis non nam.	3	6	Property	2024-10-27 20:29:30.183786	2024-10-27 20:29:30.183786
15	repudiandae	Omnis veniam vero. Aliquid voluptatum sunt. Placeat dolores totam.	1	6	Property	2024-10-27 20:29:30.268135	2024-10-27 20:29:30.268135
16	ea	Harum ut et. Qui dolorem nostrum. Tenetur omnis rerum.	4	7	Property	2024-10-27 20:29:30.605195	2024-10-27 20:29:30.605195
17	laudantium	Atque ut voluptatibus. Voluptatem molestiae aperiam. Expedita iusto officiis.	2	7	Property	2024-10-27 20:29:30.667622	2024-10-27 20:29:30.667622
18	earum	Omnis error velit. Accusamus est ad. Eaque officia aut.	1	7	Property	2024-10-27 20:29:30.762256	2024-10-27 20:29:30.762256
19	sit	Maxime et accusantium. Quibusdam et iste. Eos rerum architecto.	3	7	Property	2024-10-27 20:29:30.808436	2024-10-27 20:29:30.808436
20	eum	Nesciunt aperiam nihil. Commodi cum sit. Dolorem officia architecto.	4	7	Property	2024-10-27 20:29:30.841291	2024-10-27 20:29:30.841291
21	accusamus	Est rerum molestias. Excepturi voluptas ut. Praesentium recusandae esse.	2	8	Property	2024-10-27 20:29:31.188227	2024-10-27 20:29:31.188227
22	veritatis	Illo aliquid maiores. Est animi ipsa. Cum in non.	2	8	Property	2024-10-27 20:29:31.240109	2024-10-27 20:29:31.240109
23	voluptatem	Perferendis beatae non. Est voluptatem et. Dolor est et.	2	8	Property	2024-10-27 20:29:31.285225	2024-10-27 20:29:31.285225
24	et	Quod consequatur qui. Fuga voluptatem qui. Aut quos quae.	4	8	Property	2024-10-27 20:29:31.341873	2024-10-27 20:29:31.341873
25	excepturi	Asperiores sunt tenetur. Ullam velit mollitia. Dolores magnam natus.	2	9	Property	2024-10-27 20:29:31.832013	2024-10-27 20:29:31.832013
26	modi	Quia ea veritatis. At qui aliquid. Cumque harum voluptatem.	3	9	Property	2024-10-27 20:29:31.862899	2024-10-27 20:29:31.862899
27	esse	Est et ex. Ipsam nihil est. Qui magnam voluptate.	4	9	Property	2024-10-27 20:29:31.901378	2024-10-27 20:29:31.901378
28	dolores	Nesciunt possimus maxime. Dolor consectetur reiciendis. Dignissimos numquam sint.	2	9	Property	2024-10-27 20:29:31.976984	2024-10-27 20:29:31.976984
29	id	Voluptatem velit error. Rem quibusdam voluptatem. Suscipit fugiat officiis.	4	9	Property	2024-10-27 20:29:32.019506	2024-10-27 20:29:32.019506
30	quidem	Necessitatibus expedita corporis. Rerum deleniti voluptate. Quasi rem non.	5	10	Property	2024-10-27 20:29:32.370099	2024-10-27 20:29:32.370099
31	maxime	Doloribus sit aut. Rerum excepturi velit. Consequuntur ut eligendi.	4	10	Property	2024-10-27 20:29:32.418577	2024-10-27 20:29:32.418577
32	animi	Culpa amet ut. Sequi fugiat quidem. Est debitis quo.	1	11	Property	2024-10-27 20:29:32.874284	2024-10-27 20:29:32.874284
33	qui	Suscipit reiciendis laborum. Ipsa eum molestiae. Sit in reiciendis.	1	11	Property	2024-10-27 20:29:32.916922	2024-10-27 20:29:32.916922
34	et	Et rerum dolores. Perferendis alias iure. Delectus voluptatem animi.	4	11	Property	2024-10-27 20:29:32.946415	2024-10-27 20:29:32.946415
35	eaque	Non eos occaecati. Dolores voluptas ut. Esse fuga voluptatem.	2	11	Property	2024-10-27 20:29:33.026496	2024-10-27 20:29:33.026496
36	tempore	Voluptate deleniti a. Enim laborum ea. Laborum possimus quos.	3	11	Property	2024-10-27 20:29:33.054432	2024-10-27 20:29:33.054432
37	voluptas	In ipsum quos. Qui earum porro. Nemo nulla quo.	3	12	Property	2024-10-27 20:29:33.346847	2024-10-27 20:29:33.346847
38	sed	Autem non doloribus. Vel distinctio sed. Laborum tempora deleniti.	1	12	Property	2024-10-27 20:29:33.398038	2024-10-27 20:29:33.398038
39	quia	Expedita impedit et. Et aspernatur quod. Aperiam voluptatem perferendis.	3	12	Property	2024-10-27 20:29:33.46881	2024-10-27 20:29:33.46881
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
1	dev_1@bar.com	$2a$12$JeUJG67hGnyCn.wl3WFIDu12X4ZkFQO5g9R2eBYfO25u6L1hyj/TC	\N	\N	\N	2024-10-27 20:29:24.078154	2024-10-27 20:29:24.078154
2	heidlessemail05@gmail.com	$2a$12$LUufLKh/PcWTKrYp/5LxC.ctEI2KolWnhJ604VzAFDNFhT08/Vcge	\N	\N	\N	2024-10-27 20:29:25.265403	2024-10-27 20:29:25.265403
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

SELECT pg_catalog.setval('public.profiles_id_seq', 2, true);


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

