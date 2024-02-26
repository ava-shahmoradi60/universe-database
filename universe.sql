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
    name character varying(20) NOT NULL,
    galaxy_type character varying(20) NOT NULL,
    description character varying(50),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    area integer
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
    name character varying(20) NOT NULL,
    moon_type character varying(20) NOT NULL,
    description character varying(50),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    area integer,
    planet_id integer,
    moon_number text
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
    name character varying(20) NOT NULL,
    planet_type character varying(20) NOT NULL,
    description character varying(50),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    area integer,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_type character varying(20) NOT NULL,
    description character varying(50),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    area integer,
    galaxy_id integer
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
-- Name: world; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.world (
    world_id integer NOT NULL,
    name character varying(20),
    description character varying(20) NOT NULL
);


ALTER TABLE public.world OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.world_world_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_world_id_seq OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.world_world_id_seq OWNED BY public.world.world_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: world world_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world ALTER COLUMN world_id SET DEFAULT nextval('public.world_world_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'barred', 'major galaxy to the Milky Way', true, true, 450, 4.50, 1500);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'corvus', 'Two colliding galaxies', true, true, 200, 67.00, 500);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 'Ursa Major', 'Appears similar in shape to a cigar.', true, true, 1200, 4.50, 880);
INSERT INTO public.galaxy VALUES (4, 'Comet', 'Sculptor', 'looking like a comet', false, false, 3200, 120.00, 1200);
INSERT INTO public.galaxy VALUES (5, 'Fireworke', 'Cygnus and Cepheus', 'Active starburst galaxy', true, false, 1200, 410.58, 300);
INSERT INTO public.galaxy VALUES (6, 'Eye of God', 'Eridanus', 'Name after its structural appearance', false, true, 560, 80.80, 980);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'a', NULL, true, false, 300, 12.58, 150, 3, NULL);
INSERT INTO public.moon VALUES (2, 'phobos', 'a', NULL, false, true, 560, 80.80, 45, 2, NULL);
INSERT INTO public.moon VALUES (3, 'deimos', 'a', NULL, true, false, 1200, 410.58, 120, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'b', NULL, false, true, 560, 80.80, 98, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Jupiter', 'b', NULL, true, false, 1200, 410.58, 65, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Callisto', 'b', NULL, false, true, 560, 80.80, 43, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', 'c', NULL, true, false, 1200, 410.58, 220, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'c', NULL, false, true, 560, 80.80, 88, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', 'c', NULL, true, false, 1200, 410.58, 105, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Rhea', 'd', NULL, false, true, 560, 80.80, 44, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Iapetus', 'd', NULL, true, false, 1200, 410.58, 125, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Titania', 'd', NULL, false, true, 560, 80.80, 360, 7, NULL);
INSERT INTO public.moon VALUES (13, 'Oberon', 'a', NULL, true, false, 300, 12.58, 150, 7, NULL);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'a', NULL, false, true, 560, 80.80, 45, 7, NULL);
INSERT INTO public.moon VALUES (15, 'Ariel', 'a', NULL, true, false, 1200, 410.58, 120, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Puck', 'b', NULL, false, true, 560, 80.80, 98, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Proteus', 'b', NULL, true, false, 1200, 410.58, 65, 8, NULL);
INSERT INTO public.moon VALUES (18, 'Nereid', 'b', NULL, false, true, 560, 80.80, 43, 8, NULL);
INSERT INTO public.moon VALUES (19, 'Larissa', 'c', NULL, true, false, 1200, 410.58, 220, 8, NULL);
INSERT INTO public.moon VALUES (20, 'Galatea', 'c', NULL, false, true, 560, 80.80, 88, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'a', NULL, true, false, 300, 12.58, 150, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'a', NULL, false, true, 560, 80.80, 45, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'a', NULL, true, false, 1200, 410.58, 120, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'b', NULL, false, true, 560, 80.80, 98, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'b', NULL, true, false, 1200, 410.58, 65, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'b', NULL, false, true, 560, 80.80, 43, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'c', NULL, true, false, 1200, 410.58, 220, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'c', NULL, false, true, 560, 80.80, 88, 2);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 'c', NULL, true, false, 1200, 410.58, 105, 3);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'd', NULL, false, true, 560, 80.80, 44, 4);
INSERT INTO public.planet VALUES (11, 'HIP 13044b', 'd', NULL, true, false, 1200, 410.58, 125, 5);
INSERT INTO public.planet VALUES (12, 'HD 209458b', 'd', NULL, false, true, 560, 80.80, 360, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Fomalhaut', 'binary star', NULL, true, false, 1200, 410.58, 300, 1);
INSERT INTO public.star VALUES (2, 'Antares', 'binary star', NULL, false, true, 560, 80.80, 980, 2);
INSERT INTO public.star VALUES (3, 'Aldebaran', 'dwarf star', NULL, true, false, 1200, 410.58, 300, 3);
INSERT INTO public.star VALUES (4, 'Hyades', 'dwarf star', NULL, false, true, 560, 80.80, 980, 4);
INSERT INTO public.star VALUES (5, 'Pleiades', 'flare star', NULL, true, false, 1200, 410.58, 300, 5);
INSERT INTO public.star VALUES (6, 'Pleione', 'flare star', NULL, false, true, 560, 80.80, 980, 6);


--
-- Data for Name: world; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.world VALUES (1, 'a', 'a1');
INSERT INTO public.world VALUES (2, 'b', 'b1');
INSERT INTO public.world VALUES (3, 'c', 'c1');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: world_world_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.world_world_id_seq', 3, true);


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
-- Name: world world_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_name_key UNIQUE (name);


--
-- Name: world world_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_pkey PRIMARY KEY (world_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--