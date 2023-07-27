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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    systems integer NOT NULL,
    relays integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer,
    mass numeric(7,1),
    orbit integer,
    inhabited boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbital_distance numeric(4,1) NOT NULL,
    inhabited boolean,
    radius integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: race; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.race (
    race_id integer NOT NULL,
    name character varying(15) NOT NULL,
    have_fleet boolean
);


ALTER TABLE public.race OWNER TO freecodecamp;

--
-- Name: races_race_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.races_race_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.races_race_id_seq OWNER TO freecodecamp;

--
-- Name: races_race_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.races_race_id_seq OWNED BY public.race.race_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    stellar_mass numeric(4,2),
    stellar_class character varying(1),
    asteroid_belts smallint,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: race race_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race ALTER COLUMN race_id SET DEFAULT nextval('public.races_race_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Annos', 1, 1, 'Small galaxy, discovered 50 years ago');
INSERT INTO public.galaxy VALUES (2, 'Athena', 5, 1, 'Galaxy that lies at the center of Outer Council Space');
INSERT INTO public.galaxy VALUES (3, 'Hades', 4, 1, 'Lies in the outer reach of attican traverse');
INSERT INTO public.galaxy VALUES (4, 'Ismar', 3, 2, 'Relatively big galaxy, lying at the rim of Outer Council Space');
INSERT INTO public.galaxy VALUES (5, 'Arcturus', 2, 4, 'Galaxy in the center of relay routs');
INSERT INTO public.galaxy VALUES (6, 'Serpent', 2, 12, 'Galaxy, contining largiest number of relays');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Tethis', 298, 2983.0, 2, false, 1);
INSERT INTO public.moon VALUES (2, 'Artemis', 329, 987.0, 1, false, 2);
INSERT INTO public.moon VALUES (3, 'Callisto', 377, 3988.0, 0, false, 3);
INSERT INTO public.moon VALUES (4, 'Cassiopea', 123, 736.4, 2, false, 4);
INSERT INTO public.moon VALUES (5, 'Peppa', 394, 948.4, 8, true, 5);
INSERT INTO public.moon VALUES (6, 'Zheppa', 403, 567.2, 4, false, 6);
INSERT INTO public.moon VALUES (7, 'Fobos', 302, 2933.1, 3, false, 7);
INSERT INTO public.moon VALUES (8, 'Hui', 212, 3214.5, 5, false, 8);
INSERT INTO public.moon VALUES (9, 'Jimbooo', 342, 987.2, 4, true, 9);
INSERT INTO public.moon VALUES (10, 'Alan', 1092, 932.3, 1, false, 10);
INSERT INTO public.moon VALUES (11, 'AX-234', 932, 45.1, 3, false, 11);
INSERT INTO public.moon VALUES (12, 'mn-000012', 4502, 356.1, 10, false, 12);
INSERT INTO public.moon VALUES (14, 'Aegis', 1000, 487.0, 3, true, 4);
INSERT INTO public.moon VALUES (15, 'Lola', 456, 12.0, 3, false, 5);
INSERT INTO public.moon VALUES (16, 'Andrea', 1203, 322.3, 3, false, 6);
INSERT INTO public.moon VALUES (17, 'Stepanida', 4756, 943.6, 7, true, 7);
INSERT INTO public.moon VALUES (18, 'Zadolbalo', 343, 456.4, 2, false, 8);
INSERT INTO public.moon VALUES (19, 'Aoa', 1004, 348.4, 4, true, 9);
INSERT INTO public.moon VALUES (20, 'GH-034', 5403, 56.2, 4, false, 10);
INSERT INTO public.moon VALUES (13, 'NNH-09876', 310, 302.1, 4, true, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Aenea', 0.9, true, 5749, 1);
INSERT INTO public.planet VALUES (2, 'Miihas', 1.4, false, 10234, 1);
INSERT INTO public.planet VALUES (3, 'Baatos', 4.5, false, 210, 3);
INSERT INTO public.planet VALUES (4, 'Garajiv', 8.3, false, 7654, 4);
INSERT INTO public.planet VALUES (5, 'Estepior', 1.0, true, 4023, 4);
INSERT INTO public.planet VALUES (6, 'Hebed', 6.5, false, 59968, 4);
INSERT INTO public.planet VALUES (7, 'Baalre', 4.9, false, 453, 7);
INSERT INTO public.planet VALUES (8, 'Jiagomnite', 1.0, true, 6695, 7);
INSERT INTO public.planet VALUES (9, 'Baari', 12.4, false, 10298, 8);
INSERT INTO public.planet VALUES (10, 'Neear', 45.3, false, 10003, 9);
INSERT INTO public.planet VALUES (11, 'Sasppios', 5.4, false, 452, 11);
INSERT INTO public.planet VALUES (12, 'Biilquery', 1.0, true, 8923, 11);
INSERT INTO public.planet VALUES (13, 'AX0982', 3.4, false, 5092, 12);
INSERT INTO public.planet VALUES (14, 'Ge0345', 3.2, false, 431, 12);


--
-- Data for Name: race; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.race VALUES (1, 'human', true);
INSERT INTO public.race VALUES (2, 'synt', true);
INSERT INTO public.race VALUES (3, 'eter', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Ialessa', 0.97, 'G', 1, 1);
INSERT INTO public.star VALUES (2, 'Orisoni', 0.99, 'G', 0, 1);
INSERT INTO public.star VALUES (3, 'Parnitha', 2.34, 'A', 2, 2);
INSERT INTO public.star VALUES (4, 'Hecate', 1.00, 'G', 0, 2);
INSERT INTO public.star VALUES (5, 'Hoplos', 1.80, 'B', 2, 2);
INSERT INTO public.star VALUES (6, 'Paymat', 1.00, 'G', 1, 3);
INSERT INTO public.star VALUES (7, 'Aquilla', 1.00, 'G', 0, 3);
INSERT INTO public.star VALUES (8, 'Elista', 0.76, 'K', 0, 4);
INSERT INTO public.star VALUES (9, 'Faia', 1.00, 'G', 0, 4);
INSERT INTO public.star VALUES (10, 'Boltzman', 1.00, 'B', 0, 5);
INSERT INTO public.star VALUES (11, 'Widow', 2.80, 'K', 0, 5);
INSERT INTO public.star VALUES (12, 'Arcturus Alpha', 1.50, 'K', 1, 6);
INSERT INTO public.star VALUES (13, 'Euler', 0.10, 'X', 0, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: races_race_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.races_race_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: race races_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT races_name_key UNIQUE (name);


--
-- Name: race races_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT races_pkey PRIMARY KEY (race_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

