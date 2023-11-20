--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    game_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 14, 693);
INSERT INTO public.games VALUES (2, 15, 489);
INSERT INTO public.games VALUES (3, 14, 182);
INSERT INTO public.games VALUES (4, 14, 478);
INSERT INTO public.games VALUES (5, 14, 153);
INSERT INTO public.games VALUES (6, 16, 0);
INSERT INTO public.games VALUES (7, 17, 0);
INSERT INTO public.games VALUES (8, 16, 0);
INSERT INTO public.games VALUES (9, 16, 0);
INSERT INTO public.games VALUES (10, 16, 0);
INSERT INTO public.games VALUES (11, 18, 0);
INSERT INTO public.games VALUES (12, 19, 0);
INSERT INTO public.games VALUES (13, 18, 0);
INSERT INTO public.games VALUES (14, 18, 0);
INSERT INTO public.games VALUES (15, 18, 0);
INSERT INTO public.games VALUES (16, 20, 0);
INSERT INTO public.games VALUES (17, 21, 0);
INSERT INTO public.games VALUES (18, 20, 0);
INSERT INTO public.games VALUES (19, 20, 0);
INSERT INTO public.games VALUES (20, 20, 0);
INSERT INTO public.games VALUES (21, 22, 0);
INSERT INTO public.games VALUES (22, 23, 0);
INSERT INTO public.games VALUES (23, 22, 0);
INSERT INTO public.games VALUES (24, 22, 0);
INSERT INTO public.games VALUES (25, 22, 0);
INSERT INTO public.games VALUES (26, 25, 0);
INSERT INTO public.games VALUES (27, 28, 844);
INSERT INTO public.games VALUES (28, 28, 16);
INSERT INTO public.games VALUES (29, 29, 591);
INSERT INTO public.games VALUES (30, 29, 457);
INSERT INTO public.games VALUES (31, 28, 609);
INSERT INTO public.games VALUES (32, 28, 254);
INSERT INTO public.games VALUES (33, 28, 735);
INSERT INTO public.games VALUES (34, 1, 8);
INSERT INTO public.games VALUES (35, 30, 521);
INSERT INTO public.games VALUES (36, 30, 793);
INSERT INTO public.games VALUES (37, 31, 375);
INSERT INTO public.games VALUES (38, 31, 153);
INSERT INTO public.games VALUES (39, 30, 141);
INSERT INTO public.games VALUES (40, 30, 165);
INSERT INTO public.games VALUES (41, 30, 521);
INSERT INTO public.games VALUES (42, 32, 905);
INSERT INTO public.games VALUES (43, 32, 589);
INSERT INTO public.games VALUES (44, 33, 491);
INSERT INTO public.games VALUES (45, 33, 76);
INSERT INTO public.games VALUES (46, 32, 540);
INSERT INTO public.games VALUES (47, 32, 561);
INSERT INTO public.games VALUES (48, 32, 882);
INSERT INTO public.games VALUES (49, 34, 239);
INSERT INTO public.games VALUES (50, 34, 524);
INSERT INTO public.games VALUES (51, 35, 116);
INSERT INTO public.games VALUES (52, 35, 413);
INSERT INTO public.games VALUES (53, 34, 95);
INSERT INTO public.games VALUES (54, 34, 314);
INSERT INTO public.games VALUES (55, 34, 647);
INSERT INTO public.games VALUES (56, 36, 545);
INSERT INTO public.games VALUES (57, 36, 383);
INSERT INTO public.games VALUES (58, 37, 222);
INSERT INTO public.games VALUES (59, 37, 321);
INSERT INTO public.games VALUES (60, 36, 296);
INSERT INTO public.games VALUES (61, 36, 132);
INSERT INTO public.games VALUES (62, 36, 168);
INSERT INTO public.games VALUES (63, 38, 850);
INSERT INTO public.games VALUES (64, 38, 628);
INSERT INTO public.games VALUES (65, 39, 633);
INSERT INTO public.games VALUES (66, 39, 890);
INSERT INTO public.games VALUES (67, 38, 437);
INSERT INTO public.games VALUES (68, 38, 210);
INSERT INTO public.games VALUES (69, 38, 492);
INSERT INTO public.games VALUES (70, 40, 967);
INSERT INTO public.games VALUES (71, 40, 654);
INSERT INTO public.games VALUES (72, 41, 393);
INSERT INTO public.games VALUES (73, 41, 666);
INSERT INTO public.games VALUES (74, 40, 921);
INSERT INTO public.games VALUES (75, 40, 463);
INSERT INTO public.games VALUES (76, 40, 22);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Fabricio');
INSERT INTO public.users VALUES (2, 'user_1700516355258');
INSERT INTO public.users VALUES (3, 'user_1700516355257');
INSERT INTO public.users VALUES (4, 'user_1700516414562');
INSERT INTO public.users VALUES (5, 'user_1700516414561');
INSERT INTO public.users VALUES (6, 'user_1700516469582');
INSERT INTO public.users VALUES (7, 'user_1700516469581');
INSERT INTO public.users VALUES (8, 'user_1700516481916');
INSERT INTO public.users VALUES (9, 'user_1700516481915');
INSERT INTO public.users VALUES (10, 'user_1700516489967');
INSERT INTO public.users VALUES (11, 'user_1700516489966');
INSERT INTO public.users VALUES (12, 'user_1700516850509');
INSERT INTO public.users VALUES (13, 'user_1700516850508');
INSERT INTO public.users VALUES (14, 'user_1700518613629');
INSERT INTO public.users VALUES (15, 'user_1700518613628');
INSERT INTO public.users VALUES (16, 'user_1700519159601');
INSERT INTO public.users VALUES (17, 'user_1700519159600');
INSERT INTO public.users VALUES (18, 'user_1700519208517');
INSERT INTO public.users VALUES (19, 'user_1700519208516');
INSERT INTO public.users VALUES (20, 'user_1700519259186');
INSERT INTO public.users VALUES (21, 'user_1700519259185');
INSERT INTO public.users VALUES (22, 'user_1700519284208');
INSERT INTO public.users VALUES (23, 'user_1700519284207');
INSERT INTO public.users VALUES (24, '');
INSERT INTO public.users VALUES (25, 'Fabri');
INSERT INTO public.users VALUES (26, 'Fabricioo');
INSERT INTO public.users VALUES (27, 'Pepe');
INSERT INTO public.users VALUES (28, 'user_1700519667031');
INSERT INTO public.users VALUES (29, 'user_1700519667030');
INSERT INTO public.users VALUES (30, 'user_1700519959306');
INSERT INTO public.users VALUES (31, 'user_1700519959305');
INSERT INTO public.users VALUES (32, 'user_1700520009354');
INSERT INTO public.users VALUES (33, 'user_1700520009353');
INSERT INTO public.users VALUES (34, 'user_1700520226034');
INSERT INTO public.users VALUES (35, 'user_1700520226033');
INSERT INTO public.users VALUES (36, 'user_1700520449458');
INSERT INTO public.users VALUES (37, 'user_1700520449457');
INSERT INTO public.users VALUES (38, 'user_1700520585066');
INSERT INTO public.users VALUES (39, 'user_1700520585065');
INSERT INTO public.users VALUES (40, 'user_1700520902364');
INSERT INTO public.users VALUES (41, 'user_1700520902363');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 76, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 41, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

