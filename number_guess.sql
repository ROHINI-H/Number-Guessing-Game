--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    game_id integer NOT NULL,
    name character varying(22),
    guesses integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_game_id_seq OWNER TO freecodecamp;

--
-- Name: users_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_game_id_seq OWNED BY public.users.game_id;


--
-- Name: users game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN game_id SET DEFAULT nextval('public.users_game_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Ro', 3);
INSERT INTO public.users VALUES (2, 'Ro', 4);
INSERT INTO public.users VALUES (3, 'Ro', 1);
INSERT INTO public.users VALUES (4, 'user_1725704754788', 999);
INSERT INTO public.users VALUES (5, 'user_1725704754788', 2911);
INSERT INTO public.users VALUES (6, 'rew', 17);
INSERT INTO public.users VALUES (7, 'Prasanth', 17);
INSERT INTO public.users VALUES (8, 'user_1725705366498', 1748);
INSERT INTO public.users VALUES (9, 'user_1725705366498', 2576);
INSERT INTO public.users VALUES (10, 'user_1725705863209', 2845);
INSERT INTO public.users VALUES (11, 'user_1725705916246', 2232);
INSERT INTO public.users VALUES (12, 'Rohini', 24);
INSERT INTO public.users VALUES (13, 'user_1725706749714', 2251);
INSERT INTO public.users VALUES (14, 'user_1725706749714', 1161);
INSERT INTO public.users VALUES (15, 'user_1725706900486', 692);
INSERT INTO public.users VALUES (16, 'user_1725706900486', 794);
INSERT INTO public.users VALUES (17, 'user_1725706900485', 564);
INSERT INTO public.users VALUES (18, 'user_1725706900485', 566);
INSERT INTO public.users VALUES (19, 'user_1725706900486', 335);
INSERT INTO public.users VALUES (20, 'user_1725706900486', 88);
INSERT INTO public.users VALUES (21, 'user_1725706900486', 149);
INSERT INTO public.users VALUES (22, 'Prasanth', 9);
INSERT INTO public.users VALUES (23, 'user_1725707007716', 560);
INSERT INTO public.users VALUES (24, 'user_1725707007716', 944);
INSERT INTO public.users VALUES (25, 'user_1725707007715', 985);
INSERT INTO public.users VALUES (26, 'user_1725707007715', 174);
INSERT INTO public.users VALUES (27, 'user_1725707007716', 309);
INSERT INTO public.users VALUES (28, 'user_1725707007716', 389);
INSERT INTO public.users VALUES (29, 'user_1725707007716', 85);
INSERT INTO public.users VALUES (30, 'user_1725707048124', 422);
INSERT INTO public.users VALUES (31, 'user_1725707048124', 584);
INSERT INTO public.users VALUES (32, 'user_1725707048123', 117);
INSERT INTO public.users VALUES (33, 'user_1725707048123', 407);
INSERT INTO public.users VALUES (34, 'user_1725707048124', 384);
INSERT INTO public.users VALUES (35, 'user_1725707048124', 325);
INSERT INTO public.users VALUES (36, 'user_1725707048124', 342);


--
-- Name: users_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_game_id_seq', 36, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

