--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: todo; Type: DATABASE; Schema: -; Owner: rondawylie
--

CREATE DATABASE todo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE todo OWNER TO rondawylie;

\connect todo

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: task; Type: TABLE; Schema: public; Owner: rondawylie
--

CREATE TABLE task (
    id integer NOT NULL,
    description character varying,
    done boolean
);


ALTER TABLE task OWNER TO rondawylie;

--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: rondawylie
--

CREATE SEQUENCE task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE task_id_seq OWNER TO rondawylie;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rondawylie
--

ALTER SEQUENCE task_id_seq OWNED BY task.id;


--
-- Name: task id; Type: DEFAULT; Schema: public; Owner: rondawylie
--

ALTER TABLE ONLY task ALTER COLUMN id SET DEFAULT nextval('task_id_seq'::regclass);


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: rondawylie
--

COPY task (id, description, done) FROM stdin;
78	go to the movies	f
80	something	f
\.


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rondawylie
--

SELECT pg_catalog.setval('task_id_seq', 81, true);


--
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: rondawylie
--

ALTER TABLE ONLY task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

