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
    updated_at timestamp(6) without time zone NOT NULL
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
environment	development	2024-09-18 12:18:11.522071	2024-09-18 12:18:11.522081
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.properties (id, name, headline, description, city, state, country, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
20240918121727
20241009135321
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	example-1@railstutorial.org	$2a$12$yEuhRcQwPlOwriuiuYKKcemqBLp6SJ8M6nqgrzW6wHWCjpONtz71y	\N	\N	\N	2024-09-19 11:58:12.472371	2024-09-19 11:58:12.472371
2	example-2@railstutorial.org	$2a$12$alGjottQsfXE0dK6FKVOKOeYWJyXPGit14xe8fKut5WVzpKoUCvia	\N	\N	\N	2024-09-19 11:58:12.920802	2024-09-19 11:58:12.920802
3	example-3@railstutorial.org	$2a$12$hXxuJvb00Ok8SNci4XfgQuu28ufLjokWB8kjUGc9O7/SJlrPPPMFS	\N	\N	\N	2024-09-19 11:58:13.273985	2024-09-19 11:58:13.273985
4	example-4@railstutorial.org	$2a$12$uQkO7pn6eRoEC.xr1x73ReVuHbIp2zOjN.8RlXsH6ud4vYrzaLWmi	\N	\N	\N	2024-09-19 11:58:13.661224	2024-09-19 11:58:13.661224
5	example-5@railstutorial.org	$2a$12$Si3dU28YnsYRjpq18jZOYeMxc2LXK347eYsrMeYw1Q7n943ejSuz6	\N	\N	\N	2024-09-19 11:58:14.065809	2024-09-19 11:58:14.065809
6	example-6@railstutorial.org	$2a$12$qFXFbIRcFXIsl3WVm024nOu0FB6VACAwOxZrKY/tVxVbqWDwn6.oC	\N	\N	\N	2024-09-19 11:58:14.435518	2024-09-19 11:58:14.435518
7	example-7@railstutorial.org	$2a$12$p2tFrDxBKXIHe.NS6bdKbetmTdSrVvF98uWPa6z0tsdBEE9bwRnFa	\N	\N	\N	2024-09-19 11:58:14.805821	2024-09-19 11:58:14.805821
8	example-8@railstutorial.org	$2a$12$j3Xc6E9Wgg15S2ZoernQ3eW2XvgIlFX/y.RgK3qoT1StCbJyDrpMS	\N	\N	\N	2024-09-19 11:58:15.18437	2024-09-19 11:58:15.18437
9	example-9@railstutorial.org	$2a$12$kCoushZKFQXXOKZOMTUGIeQHXZr./VedQHsW9/JyuhXai8IBMdZDy	\N	\N	\N	2024-09-19 11:58:15.565764	2024-09-19 11:58:15.565764
10	heidlessemail05@gmail.com	$2a$12$/cXUvo9o6WA60ngW/D3MEuauckcSZPoRWvGSHYky9Gd8zaN3Pq942	\N	\N	\N	2024-09-19 12:00:19.2637	2024-09-19 12:00:19.2637
11	heidlessemail01@gmail.com	$2a$12$Uzo/LlU82Ea/fp7ovGWefe2v.AUxQchGVCFcusHh9elUIIUFZZERO	\N	\N	\N	2024-10-08 15:51:06.283454	2024-10-08 15:51:06.283454
12	heidlessemail02@gmail.com	$2a$12$aqZsAoVYiN4YYb5ODpPuHOoWLI2O3wQ7j/f75xiQwuQlBznHnz9xu	\N	\N	\N	2024-10-08 20:23:11.624058	2024-10-08 20:23:11.624058
13	heidlessemail03@gmail.com	$2a$12$zgiS0142d7LH7x3kLMFGE.LB/AyidhHsncrCYEslaFewbpOBzvbQO	\N	\N	\N	2024-10-09 11:32:23.532717	2024-10-09 11:32:23.532717
\.


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.properties_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.users_id_seq', 45, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


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
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

