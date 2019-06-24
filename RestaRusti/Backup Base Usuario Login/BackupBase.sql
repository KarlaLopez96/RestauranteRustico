--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 11.2

-- Started on 2019-06-23 23:05:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2821 (class 1262 OID 24941)
-- Name: tareaNCapas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "tareaNCapas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_El Salvador.1252' LC_CTYPE = 'Spanish_El Salvador.1252';


ALTER DATABASE "tareaNCapas" OWNER TO postgres;

\connect "tareaNCapas"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 24942)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    idempleado integer NOT NULL,
    nombreempleado character varying(250),
    edadempleado integer,
    generoempleado character(1),
    estadoempleado boolean,
    idsucursal integer
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 24945)
-- Name: empleado_idempleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_idempleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleado_idempleado_seq OWNER TO postgres;

--
-- TOC entry 2822 (class 0 OID 0)
-- Dependencies: 197
-- Name: empleado_idempleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_idempleado_seq OWNED BY public.empleado.idempleado;


--
-- TOC entry 198 (class 1259 OID 24947)
-- Name: sucursal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sucursal (
    idsucursal integer NOT NULL,
    nombresucursal character varying(250),
    ubicacionsucursal character varying(250),
    horarioentrada time without time zone,
    horariosalida time without time zone,
    numeromesas integer,
    nombregerente character varying(250)
);


ALTER TABLE public.sucursal OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 24953)
-- Name: sucursal_idsucursal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sucursal_idsucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sucursal_idsucursal_seq OWNER TO postgres;

--
-- TOC entry 2823 (class 0 OID 0)
-- Dependencies: 199
-- Name: sucursal_idsucursal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sucursal_idsucursal_seq OWNED BY public.sucursal.idsucursal;


--
-- TOC entry 200 (class 1259 OID 24955)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    nombreusuario character varying(250) NOT NULL,
    claveusuario character varying(250)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 2681 (class 2604 OID 24958)
-- Name: empleado idempleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN idempleado SET DEFAULT nextval('public.empleado_idempleado_seq'::regclass);


--
-- TOC entry 2682 (class 2604 OID 24959)
-- Name: sucursal idsucursal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal ALTER COLUMN idsucursal SET DEFAULT nextval('public.sucursal_idsucursal_seq'::regclass);


--
-- TOC entry 2811 (class 0 OID 24942)
-- Dependencies: 196
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empleado (idempleado, nombreempleado, edadempleado, generoempleado, estadoempleado, idsucursal) VALUES (28, 'Rubio Aparicio', 28, 'm', true, 1);
INSERT INTO public.empleado (idempleado, nombreempleado, edadempleado, generoempleado, estadoempleado, idsucursal) VALUES (29, 'Andrea Escobar', 22, 'f', true, 1);
INSERT INTO public.empleado (idempleado, nombreempleado, edadempleado, generoempleado, estadoempleado, idsucursal) VALUES (30, 'Ileana Cardenas', 41, 'f', true, 1);
INSERT INTO public.empleado (idempleado, nombreempleado, edadempleado, generoempleado, estadoempleado, idsucursal) VALUES (27, 'Mario Ponse', 60, 'm', false, 1);


--
-- TOC entry 2813 (class 0 OID 24947)
-- Dependencies: 198
-- Data for Name: sucursal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sucursal (idsucursal, nombresucursal, ubicacionsucursal, horarioentrada, horariosalida, numeromesas, nombregerente) VALUES (1, 'Hacienda Real', 'Carretera Panamericana', '08:30:00', '09:00:00', 20, 'Gerardo López');
INSERT INTO public.sucursal (idsucursal, nombresucursal, ubicacionsucursal, horarioentrada, horariosalida, numeromesas, nombregerente) VALUES (2, 'LongHorn Stakehouse', 'Centro comercial Multiplaza', '05:00:00', '09:00:00', 25, 'Sandra Patricia Torres');
INSERT INTO public.sucursal (idsucursal, nombresucursal, ubicacionsucursal, horarioentrada, horariosalida, numeromesas, nombregerente) VALUES (4, 'Fly Wings', 'Multiplaza', '08:30:00', '07:00:00', 30, 'Maritza Galdamez');


--
-- TOC entry 2815 (class 0 OID 24955)
-- Dependencies: 200
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario (nombreusuario, claveusuario) VALUES ('karlam.96@gmail.com', 'Karla');
INSERT INTO public.usuario (nombreusuario, claveusuario) VALUES ('danieLopez@hotmail.com', 'Daniel');
INSERT INTO public.usuario (nombreusuario, claveusuario) VALUES ('usuario1@gmail.com', 'usuario1');
INSERT INTO public.usuario (nombreusuario, claveusuario) VALUES ('oscarP_78@gmail.com', 'oscar78');


--
-- TOC entry 2824 (class 0 OID 0)
-- Dependencies: 197
-- Name: empleado_idempleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_idempleado_seq', 30, true);


--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 199
-- Name: sucursal_idsucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sucursal_idsucursal_seq', 22, true);


--
-- TOC entry 2684 (class 2606 OID 24961)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (idempleado);


--
-- TOC entry 2686 (class 2606 OID 24963)
-- Name: sucursal sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (idsucursal);


--
-- TOC entry 2688 (class 2606 OID 24965)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (nombreusuario);


--
-- TOC entry 2689 (class 2606 OID 24966)
-- Name: empleado empleado_idsucursal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_idsucursal_fkey FOREIGN KEY (idsucursal) REFERENCES public.sucursal(idsucursal);


-- Completed on 2019-06-23 23:05:02

--
-- PostgreSQL database dump complete
--

