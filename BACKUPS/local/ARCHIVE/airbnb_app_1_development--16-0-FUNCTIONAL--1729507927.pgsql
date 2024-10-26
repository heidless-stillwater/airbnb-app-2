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
    zip_code character varying
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
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-10-20 19:27:20.420006	2024-10-20 19:27:20.420009
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.profiles (id, user_id, address_1, address_2, city, state, country, latitude, longitude, created_at, updated_at, zip_code) FROM stdin;
4	1	\N	\N	\N	\N	\N	\N	\N	2024-10-21 10:26:46.691861	2024-10-21 10:26:46.691861	\N
3	3	99 Bd Haussmann, 75008 Paris, France	\N	Paris	Île-de-France	France	48.87485	2.3179717	2024-10-21 10:14:21.016687	2024-10-21 10:31:27.512103	75008
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at, address_1, address_2, latitude, longitude, zip_code) FROM stdin;
1	natus	Optio ipsa omnis consequuntur.	Corporis voluptatum sint. Quidem quia ipsa. Iure omnis tenetur.	South Jeanie	Massachusetts	United States	2024-10-19 11:43:03.276728	2024-10-19 11:43:03.276728	4520 Lucio Extension	\N	42.3788774	-72.032366	\N
2	omnis	Dolor explicabo molestiae esse.	Cum voluptatem eum. Excepturi at eos. Est eos occaecati.	Nicolasberg	Florida	United States	2024-10-19 11:43:03.762756	2024-10-19 11:43:03.762756	8500 Pouros Brooks	\N	27.7567667	-81.4639835	\N
3	sequi	Laudantium cupiditate quas autem.	Ut sit iste. Est et rerum. Labore voluptates quam.	Treyfort	Washington	United States	2024-10-19 11:43:04.335556	2024-10-19 11:43:04.335556	39728 Lyndon Mall	\N	38.8950368	-77.0365427	\N
4	explicabo	Sit recusandae in dolores.	Fugiat rerum eveniet. Est aut deserunt. Vero ratione laborum.	Adellaberg	Maine	United States	2024-10-19 11:43:05.901068	2024-10-19 11:43:05.901068	249 Moen Shores	\N	45.709097	-68.8590201	\N
5	fuga	Iure natus rerum vero.	Et corporis fugit. Repellat rerum quibusdam. Aut harum natus.	Bayerfurt	New York	United States	2024-10-19 11:43:06.066658	2024-10-19 11:43:06.066658	4475 Rempel Shores	\N	40.7127281	-74.0060152	\N
6	asperiores	Nisi consequatur porro ipsa.	Suscipit velit maiores. Porro quo quia. Possimus ea sunt.	Port Bruce	Maryland	United States	2024-10-19 11:43:06.672689	2024-10-19 11:43:06.672689	3525 Legros Forest	\N	39.5162401	-76.9382069	\N
7	ullam	Dolorem facilis velit tempora.	Ea pariatur corrupti. Quia doloremque perferendis. Fugiat quos culpa.	Port Arlynehaven	Alaska	United States	2024-10-19 11:43:07.270104	2024-10-19 11:43:07.270104	74984 Booker Views	\N	64.4459613	-149.680909	\N
8	maiores	Quisquam officiis commodi nihil.	Temporibus asperiores repudiandae. Temporibus quisquam deleniti. Cumque odit animi.	East Rudolph	Rhode Island	United States	2024-10-19 11:43:07.717622	2024-10-19 11:43:07.717622	57474 Stiedemann Pine	\N	41.7962409	-71.5992372	\N
9	repellendus	Temporibus non est enim.	Debitis voluptate sit. Nemo ipsum repellat. Consequatur ullam dolores.	Hauckborough	South Carolina	United States	2024-10-19 11:43:08.237915	2024-10-19 11:43:08.237915	91447 Isidro Throughway	\N	33.6874388	-80.4363743	\N
10	asperiores	Expedita at ea consequuntur.	Quod occaecati rerum. Consequatur eum rem. Porro iusto asperiores.	East Januarymouth	Alabama	United States	2024-10-19 11:43:09.056284	2024-10-19 11:43:09.056284	7581 Windler Lodge	\N	33.2588817	-86.8295337	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
20240918121727
20241009135321
20241009191759
20241010154317
20241020155142
20241020162319
20241020162329
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	heidlessemail05@gmail.com	$2a$12$KjGY7hMHacmyrkANy6COveQbI7ZlvkJng59rXKxYS91hFYu1tZCQy	\N	\N	\N	2024-10-18 17:24:29.142532	2024-10-18 17:24:29.142532
3	foo1@bar.com	$2a$12$/8C7reW19lP5uQHeUemLHejm8C1ZGH37RTPP9OY0KulJfptCrCO4K	\N	\N	\N	2024-10-21 10:14:20.950346	2024-10-21 10:14:20.950346
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.profiles_id_seq', 4, true);


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.properties_id_seq', 10, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


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
-- Name: profiles fk_rails_e424190865; Type: FK CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT fk_rails_e424190865 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO heidless;


--
-- PostgreSQL database dump complete
--

