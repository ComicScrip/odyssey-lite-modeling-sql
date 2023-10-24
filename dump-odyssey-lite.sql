--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 16.0

-- Started on 2023-10-24 15:47:40 CEST

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16482)
-- Name: Badge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Badge" (
    id integer,
    pictureurl character varying
);


ALTER TABLE public."Badge" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16472)
-- Name: Category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Category" (
    id integer,
    name character varying
);


ALTER TABLE public."Category" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16450)
-- Name: Crew; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Crew" (
    id integer,
    name character varying
);


ALTER TABLE public."Crew" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16455)
-- Name: Event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Event" (
    id integer,
    startdatetime timestamp without time zone,
    enddatetime timestamp without time zone,
    crew_id integer,
    title character varying
);


ALTER TABLE public."Event" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16467)
-- Name: Quest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Quest" (
    id integer,
    title character varying,
    content text,
    category_id integer,
    created_at date
);


ALTER TABLE public."Quest" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16436)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    name character varying,
    birthdate date,
    role character varying
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16487)
-- Name: UserHasBadge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserHasBadge" (
    id integer,
    badge_id integer,
    user_id integer
);


ALTER TABLE public."UserHasBadge" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16445)
-- Name: UserIsWilderOf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserIsWilderOf" (
    id character varying,
    wilder_id integer,
    crew_id integer
);


ALTER TABLE public."UserIsWilderOf" OWNER TO postgres;

--
-- TOC entry 3373 (class 0 OID 16482)
-- Dependencies: 220
-- Data for Name: Badge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Badge" (id, pictureurl) FROM stdin;
1	badge1
2	badge2
3	badge3
\.


--
-- TOC entry 3372 (class 0 OID 16472)
-- Dependencies: 219
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Category" (id, name) FROM stdin;
1	PHP
2	JS
\.


--
-- TOC entry 3369 (class 0 OID 16450)
-- Dependencies: 216
-- Data for Name: Crew; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Crew" (id, name) FROM stdin;
1	Neumann
2	Adleman
\.


--
-- TOC entry 3370 (class 0 OID 16455)
-- Dependencies: 217
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Event" (id, startdatetime, enddatetime, crew_id, title) FROM stdin;
1	2023-10-23 09:00:00	2023-10-23 12:00:00	1	cours node
2	2023-10-24 10:00:00	2023-10-24 12:30:00	1	cours react
3	2023-10-13 09:00:00	2023-10-13 10:00:00	2	cours sql
\.


--
-- TOC entry 3371 (class 0 OID 16467)
-- Dependencies: 218
-- Data for Name: Quest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Quest" (id, title, content, category_id, created_at) FROM stdin;
1	test	update	1	2023-10-10
2	react	plop	2	2023-10-20
3	node	example	2	2023-10-21
\.


--
-- TOC entry 3367 (class 0 OID 16436)
-- Dependencies: 214
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, name, birthdate, role) FROM stdin;
4	Pierre	2000-01-01	trainer
5	Marc	2000-01-01	trainer
1	John Doe	2000-01-01	wilder
2	Jane Doe	2001-01-01	wilder
3	Dave Lopper	1994-01-01	wilder
\.


--
-- TOC entry 3374 (class 0 OID 16487)
-- Dependencies: 221
-- Data for Name: UserHasBadge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserHasBadge" (id, badge_id, user_id) FROM stdin;
1	1	1
2	2	1
3	1	2
\.


--
-- TOC entry 3368 (class 0 OID 16445)
-- Dependencies: 215
-- Data for Name: UserIsWilderOf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserIsWilderOf" (id, wilder_id, crew_id) FROM stdin;
1	1	1
2	2	1
3	3	2
\.


--
-- TOC entry 3224 (class 2606 OID 16442)
-- Name: User user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT user_pk PRIMARY KEY (id);


-- Completed on 2023-10-24 15:47:41 CEST

--
-- PostgreSQL database dump complete
--

