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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 164, 4);
INSERT INTO public.games VALUES (2, 237, 4);
INSERT INTO public.games VALUES (3, 725, 5);
INSERT INTO public.games VALUES (4, 472, 5);
INSERT INTO public.games VALUES (5, 523, 4);
INSERT INTO public.games VALUES (6, 844, 4);
INSERT INTO public.games VALUES (7, 365, 4);
INSERT INTO public.games VALUES (8, 765, 6);
INSERT INTO public.games VALUES (9, 990, 6);
INSERT INTO public.games VALUES (10, 160, 7);
INSERT INTO public.games VALUES (11, 431, 7);
INSERT INTO public.games VALUES (12, 555, 6);
INSERT INTO public.games VALUES (13, 517, 6);
INSERT INTO public.games VALUES (14, 289, 6);
INSERT INTO public.games VALUES (15, 604, 8);
INSERT INTO public.games VALUES (16, 248, 8);
INSERT INTO public.games VALUES (17, 176, 9);
INSERT INTO public.games VALUES (18, 832, 9);
INSERT INTO public.games VALUES (19, 527, 8);
INSERT INTO public.games VALUES (20, 734, 8);
INSERT INTO public.games VALUES (21, 800, 8);
INSERT INTO public.games VALUES (22, 293, 10);
INSERT INTO public.games VALUES (23, 708, 10);
INSERT INTO public.games VALUES (24, 958, 11);
INSERT INTO public.games VALUES (25, 200, 11);
INSERT INTO public.games VALUES (26, 365, 10);
INSERT INTO public.games VALUES (27, 619, 10);
INSERT INTO public.games VALUES (28, 955, 10);
INSERT INTO public.games VALUES (29, 675, 12);
INSERT INTO public.games VALUES (30, 467, 12);
INSERT INTO public.games VALUES (31, 977, 13);
INSERT INTO public.games VALUES (32, 533, 13);
INSERT INTO public.games VALUES (33, 549, 12);
INSERT INTO public.games VALUES (34, 425, 12);
INSERT INTO public.games VALUES (35, 343, 12);
INSERT INTO public.games VALUES (36, 642, 14);
INSERT INTO public.games VALUES (37, 180, 14);
INSERT INTO public.games VALUES (38, 73, 15);
INSERT INTO public.games VALUES (39, 925, 15);
INSERT INTO public.games VALUES (40, 809, 14);
INSERT INTO public.games VALUES (41, 246, 14);
INSERT INTO public.games VALUES (42, 509, 14);
INSERT INTO public.games VALUES (43, 1, 16);
INSERT INTO public.games VALUES (44, 1, 16);
INSERT INTO public.games VALUES (45, 1, 17);
INSERT INTO public.games VALUES (46, 1, 17);
INSERT INTO public.games VALUES (47, 3, 16);
INSERT INTO public.games VALUES (48, 2, 16);
INSERT INTO public.games VALUES (49, 1, 16);
INSERT INTO public.games VALUES (50, 656, 20);
INSERT INTO public.games VALUES (51, 907, 20);
INSERT INTO public.games VALUES (52, 211, 21);
INSERT INTO public.games VALUES (53, 249, 21);
INSERT INTO public.games VALUES (54, 213, 20);
INSERT INTO public.games VALUES (55, 503, 20);
INSERT INTO public.games VALUES (56, 559, 20);
INSERT INTO public.games VALUES (57, 567, 22);
INSERT INTO public.games VALUES (58, 496, 22);
INSERT INTO public.games VALUES (59, 487, 23);
INSERT INTO public.games VALUES (60, 426, 23);
INSERT INTO public.games VALUES (61, 162, 22);
INSERT INTO public.games VALUES (62, 874, 22);
INSERT INTO public.games VALUES (63, 382, 22);
INSERT INTO public.games VALUES (64, 357, 24);
INSERT INTO public.games VALUES (65, 186, 24);
INSERT INTO public.games VALUES (66, 308, 25);
INSERT INTO public.games VALUES (67, 606, 25);
INSERT INTO public.games VALUES (68, 488, 24);
INSERT INTO public.games VALUES (69, 471, 24);
INSERT INTO public.games VALUES (70, 581, 24);
INSERT INTO public.games VALUES (71, 879, 26);
INSERT INTO public.games VALUES (72, 321, 26);
INSERT INTO public.games VALUES (73, 799, 27);
INSERT INTO public.games VALUES (74, 160, 27);
INSERT INTO public.games VALUES (75, 152, 26);
INSERT INTO public.games VALUES (76, 968, 26);
INSERT INTO public.games VALUES (77, 615, 26);
INSERT INTO public.games VALUES (78, 196, 28);
INSERT INTO public.games VALUES (79, 891, 28);
INSERT INTO public.games VALUES (80, 684, 29);
INSERT INTO public.games VALUES (81, 12, 29);
INSERT INTO public.games VALUES (82, 21, 28);
INSERT INTO public.games VALUES (83, 58, 28);
INSERT INTO public.games VALUES (84, 20, 28);
INSERT INTO public.games VALUES (85, 57, 30);
INSERT INTO public.games VALUES (86, 344, 30);
INSERT INTO public.games VALUES (87, 276, 31);
INSERT INTO public.games VALUES (88, 944, 31);
INSERT INTO public.games VALUES (89, 685, 30);
INSERT INTO public.games VALUES (90, 165, 30);
INSERT INTO public.games VALUES (91, 490, 30);
INSERT INTO public.games VALUES (92, 200, 32);
INSERT INTO public.games VALUES (93, 483, 32);
INSERT INTO public.games VALUES (94, 865, 33);
INSERT INTO public.games VALUES (95, 958, 33);
INSERT INTO public.games VALUES (96, 607, 32);
INSERT INTO public.games VALUES (97, 35, 32);
INSERT INTO public.games VALUES (98, 449, 32);
INSERT INTO public.games VALUES (99, 752, 34);
INSERT INTO public.games VALUES (100, 954, 34);
INSERT INTO public.games VALUES (101, 443, 35);
INSERT INTO public.games VALUES (102, 471, 35);
INSERT INTO public.games VALUES (103, 487, 34);
INSERT INTO public.games VALUES (104, 57, 34);
INSERT INTO public.games VALUES (105, 853, 34);
INSERT INTO public.games VALUES (106, 28, 36);
INSERT INTO public.games VALUES (107, 701, 36);
INSERT INTO public.games VALUES (108, 994, 37);
INSERT INTO public.games VALUES (109, 787, 37);
INSERT INTO public.games VALUES (110, 494, 36);
INSERT INTO public.games VALUES (111, 445, 36);
INSERT INTO public.games VALUES (112, 555, 36);
INSERT INTO public.games VALUES (113, 142, 38);
INSERT INTO public.games VALUES (114, 291, 38);
INSERT INTO public.games VALUES (115, 665, 39);
INSERT INTO public.games VALUES (116, 880, 39);
INSERT INTO public.games VALUES (117, 508, 38);
INSERT INTO public.games VALUES (118, 8, 38);
INSERT INTO public.games VALUES (119, 512, 38);
INSERT INTO public.games VALUES (120, 475, 40);
INSERT INTO public.games VALUES (121, 559, 40);
INSERT INTO public.games VALUES (122, 985, 41);
INSERT INTO public.games VALUES (123, 134, 41);
INSERT INTO public.games VALUES (124, 894, 40);
INSERT INTO public.games VALUES (125, 666, 40);
INSERT INTO public.games VALUES (126, 167, 40);
INSERT INTO public.games VALUES (127, 405, 42);
INSERT INTO public.games VALUES (128, 65, 42);
INSERT INTO public.games VALUES (129, 978, 43);
INSERT INTO public.games VALUES (130, 512, 43);
INSERT INTO public.games VALUES (131, 727, 42);
INSERT INTO public.games VALUES (132, 415, 42);
INSERT INTO public.games VALUES (133, 534, 42);
INSERT INTO public.games VALUES (134, 220, 44);
INSERT INTO public.games VALUES (135, 865, 44);
INSERT INTO public.games VALUES (136, 248, 45);
INSERT INTO public.games VALUES (137, 160, 45);
INSERT INTO public.games VALUES (138, 178, 44);
INSERT INTO public.games VALUES (139, 809, 44);
INSERT INTO public.games VALUES (140, 264, 44);
INSERT INTO public.games VALUES (141, 562, 46);
INSERT INTO public.games VALUES (142, 919, 46);
INSERT INTO public.games VALUES (143, 358, 47);
INSERT INTO public.games VALUES (144, 226, 47);
INSERT INTO public.games VALUES (145, 249, 46);
INSERT INTO public.games VALUES (146, 273, 46);
INSERT INTO public.games VALUES (147, 571, 46);
INSERT INTO public.games VALUES (148, 961, 48);
INSERT INTO public.games VALUES (149, 281, 48);
INSERT INTO public.games VALUES (150, 208, 49);
INSERT INTO public.games VALUES (151, 415, 49);
INSERT INTO public.games VALUES (152, 792, 48);
INSERT INTO public.games VALUES (153, 432, 48);
INSERT INTO public.games VALUES (154, 720, 48);
INSERT INTO public.games VALUES (155, 97, 50);
INSERT INTO public.games VALUES (156, 866, 50);
INSERT INTO public.games VALUES (157, 772, 51);
INSERT INTO public.games VALUES (158, 335, 51);
INSERT INTO public.games VALUES (159, 862, 50);
INSERT INTO public.games VALUES (160, 242, 50);
INSERT INTO public.games VALUES (161, 36, 50);
INSERT INTO public.games VALUES (162, 325, 52);
INSERT INTO public.games VALUES (163, 121, 52);
INSERT INTO public.games VALUES (164, 698, 53);
INSERT INTO public.games VALUES (165, 911, 53);
INSERT INTO public.games VALUES (166, 351, 52);
INSERT INTO public.games VALUES (167, 277, 52);
INSERT INTO public.games VALUES (168, 640, 52);
INSERT INTO public.games VALUES (169, 944, 54);
INSERT INTO public.games VALUES (170, 622, 54);
INSERT INTO public.games VALUES (171, 908, 55);
INSERT INTO public.games VALUES (172, 225, 55);
INSERT INTO public.games VALUES (173, 716, 54);
INSERT INTO public.games VALUES (174, 691, 54);
INSERT INTO public.games VALUES (175, 405, 54);
INSERT INTO public.games VALUES (176, 261, 56);
INSERT INTO public.games VALUES (177, 591, 56);
INSERT INTO public.games VALUES (178, 68, 57);
INSERT INTO public.games VALUES (179, 627, 57);
INSERT INTO public.games VALUES (180, 935, 56);
INSERT INTO public.games VALUES (181, 925, 56);
INSERT INTO public.games VALUES (182, 251, 56);
INSERT INTO public.games VALUES (183, 176, 58);
INSERT INTO public.games VALUES (184, 132, 58);
INSERT INTO public.games VALUES (185, 363, 59);
INSERT INTO public.games VALUES (186, 444, 59);
INSERT INTO public.games VALUES (187, 237, 58);
INSERT INTO public.games VALUES (188, 943, 58);
INSERT INTO public.games VALUES (189, 30, 58);
INSERT INTO public.games VALUES (190, 756, 60);
INSERT INTO public.games VALUES (191, 200, 60);
INSERT INTO public.games VALUES (192, 928, 61);
INSERT INTO public.games VALUES (193, 786, 61);
INSERT INTO public.games VALUES (194, 811, 60);
INSERT INTO public.games VALUES (195, 674, 60);
INSERT INTO public.games VALUES (196, 190, 60);
INSERT INTO public.games VALUES (197, 59, 62);
INSERT INTO public.games VALUES (198, 103, 62);
INSERT INTO public.games VALUES (199, 524, 63);
INSERT INTO public.games VALUES (200, 84, 63);
INSERT INTO public.games VALUES (201, 827, 62);
INSERT INTO public.games VALUES (202, 88, 62);
INSERT INTO public.games VALUES (203, 983, 62);
INSERT INTO public.games VALUES (204, 890, 64);
INSERT INTO public.games VALUES (205, 440, 64);
INSERT INTO public.games VALUES (206, 831, 65);
INSERT INTO public.games VALUES (207, 391, 65);
INSERT INTO public.games VALUES (208, 646, 64);
INSERT INTO public.games VALUES (209, 488, 64);
INSERT INTO public.games VALUES (210, 758, 64);
INSERT INTO public.games VALUES (211, 358, 66);
INSERT INTO public.games VALUES (212, 165, 66);
INSERT INTO public.games VALUES (213, 821, 67);
INSERT INTO public.games VALUES (214, 566, 67);
INSERT INTO public.games VALUES (215, 115, 66);
INSERT INTO public.games VALUES (216, 229, 66);
INSERT INTO public.games VALUES (217, 787, 66);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'rodney');
INSERT INTO public.users VALUES (2, 'user_1675581486183');
INSERT INTO public.users VALUES (3, 'user_1675581486182');
INSERT INTO public.users VALUES (4, 'user_1675582088148');
INSERT INTO public.users VALUES (5, 'user_1675582088147');
INSERT INTO public.users VALUES (6, 'user_1675582190700');
INSERT INTO public.users VALUES (7, 'user_1675582190699');
INSERT INTO public.users VALUES (8, 'user_1675582266395');
INSERT INTO public.users VALUES (9, 'user_1675582266394');
INSERT INTO public.users VALUES (10, 'user_1675582303058');
INSERT INTO public.users VALUES (11, 'user_1675582303057');
INSERT INTO public.users VALUES (12, 'user_1675582334545');
INSERT INTO public.users VALUES (13, 'user_1675582334544');
INSERT INTO public.users VALUES (14, 'user_1675582386966');
INSERT INTO public.users VALUES (15, 'user_1675582386965');
INSERT INTO public.users VALUES (16, 'user_1675582655239');
INSERT INTO public.users VALUES (17, 'user_1675582655238');
INSERT INTO public.users VALUES (18, 'user_1675582675360');
INSERT INTO public.users VALUES (19, 'user_1675582675359');
INSERT INTO public.users VALUES (20, 'user_1675582691474');
INSERT INTO public.users VALUES (21, 'user_1675582691473');
INSERT INTO public.users VALUES (22, 'user_1675582868324');
INSERT INTO public.users VALUES (23, 'user_1675582868323');
INSERT INTO public.users VALUES (24, 'user_1675582949656');
INSERT INTO public.users VALUES (25, 'user_1675582949655');
INSERT INTO public.users VALUES (26, 'user_1675583217777');
INSERT INTO public.users VALUES (27, 'user_1675583217776');
INSERT INTO public.users VALUES (28, 'user_1675634735001');
INSERT INTO public.users VALUES (29, 'user_1675634735000');
INSERT INTO public.users VALUES (30, 'user_1675634905424');
INSERT INTO public.users VALUES (31, 'user_1675634905423');
INSERT INTO public.users VALUES (32, 'user_1675635906129');
INSERT INTO public.users VALUES (33, 'user_1675635906128');
INSERT INTO public.users VALUES (34, 'user_1675635940807');
INSERT INTO public.users VALUES (35, 'user_1675635940806');
INSERT INTO public.users VALUES (36, 'user_1675635991848');
INSERT INTO public.users VALUES (37, 'user_1675635991847');
INSERT INTO public.users VALUES (38, 'user_1675636097097');
INSERT INTO public.users VALUES (39, 'user_1675636097096');
INSERT INTO public.users VALUES (40, 'user_1675636103663');
INSERT INTO public.users VALUES (41, 'user_1675636103662');
INSERT INTO public.users VALUES (42, 'user_1675636408518');
INSERT INTO public.users VALUES (43, 'user_1675636408517');
INSERT INTO public.users VALUES (44, 'user_1675636726378');
INSERT INTO public.users VALUES (45, 'user_1675636726377');
INSERT INTO public.users VALUES (46, 'user_1675637035949');
INSERT INTO public.users VALUES (47, 'user_1675637035948');
INSERT INTO public.users VALUES (48, 'user_1675637261931');
INSERT INTO public.users VALUES (49, 'user_1675637261930');
INSERT INTO public.users VALUES (50, 'user_1675637339483');
INSERT INTO public.users VALUES (51, 'user_1675637339482');
INSERT INTO public.users VALUES (52, 'user_1675637393441');
INSERT INTO public.users VALUES (53, 'user_1675637393440');
INSERT INTO public.users VALUES (54, 'user_1675637619282');
INSERT INTO public.users VALUES (55, 'user_1675637619281');
INSERT INTO public.users VALUES (56, 'user_1675637654167');
INSERT INTO public.users VALUES (57, 'user_1675637654166');
INSERT INTO public.users VALUES (58, 'user_1675637670799');
INSERT INTO public.users VALUES (59, 'user_1675637670798');
INSERT INTO public.users VALUES (60, 'user_1675637685718');
INSERT INTO public.users VALUES (61, 'user_1675637685717');
INSERT INTO public.users VALUES (62, 'user_1675637704578');
INSERT INTO public.users VALUES (63, 'user_1675637704577');
INSERT INTO public.users VALUES (64, 'user_1675637775733');
INSERT INTO public.users VALUES (65, 'user_1675637775732');
INSERT INTO public.users VALUES (66, 'user_1675637821086');
INSERT INTO public.users VALUES (67, 'user_1675637821085');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 217, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 67, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

