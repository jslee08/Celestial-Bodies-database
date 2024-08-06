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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    name character varying(30) NOT NULL,
    distancefromearth integer,
    galaxy_id integer NOT NULL,
    asteroid_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distancefromearth integer,
    ageinmillionsofyears integer,
    solarmass numeric,
    cansupportlife boolean,
    isrocky boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxyid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxyid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distancefromearth integer,
    ageinmillionsofyears integer,
    solarmass numeric,
    cansupportlife boolean,
    isrocky boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonid_seq OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonid_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distancefromearth integer,
    ageinmillionsofyears integer,
    solarmass numeric,
    cansupportlife boolean,
    isrocky boolean,
    star_id integer,
    planet_description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetid_seq OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetid_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distancefromearth integer,
    ageinmillionsofyears integer,
    solarmass numeric,
    cansupportlife boolean,
    isrocky boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxyid_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moonid_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planetid_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('Ceres', NULL, 2, 1);
INSERT INTO public.asteroid VALUES ('Pallas', NULL, 3, 2);
INSERT INTO public.asteroid VALUES ('Vesta', NULL, 1, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 13600, 9000000000, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 765, 19000, 20000000000, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 17000, 47204, 456000000000, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 50000, 88203, 1903000000000, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 11204, 39573, 9000000000, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Fireworks', 23200, 78232, 12000000000, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth Moon', 0, NULL, NULL, false, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 0, NULL, NULL, false, true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 0, NULL, NULL, false, true, 4);
INSERT INTO public.moon VALUES (4, 'Io', 0, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 0, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 0, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 0, NULL, NULL, false, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 0, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (9, 'Hyperion', 0, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 0, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (11, 'Rhea', 0, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 0, NULL, NULL, false, true, 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 0, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 0, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 0, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 0, NULL, NULL, false, true, 7);
INSERT INTO public.moon VALUES (17, 'Proteus', 0, NULL, NULL, false, true, 8);
INSERT INTO public.moon VALUES (18, 'Triton', 0, NULL, NULL, false, true, 8);
INSERT INTO public.moon VALUES (19, 'Nereid', 0, NULL, NULL, false, true, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 0, NULL, NULL, false, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4500, 0, false, true, 6, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4500, 0, false, true, 6, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 0, 4500, 0, true, true, 6, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 4500, 0, false, true, 6, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 4500, 0, false, false, 6, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 4500, 0, false, false, 6, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, 4500, 0, false, false, 6, NULL);
INSERT INTO public.planet VALUES (8, 'Pluto', 1, 4500, 0, false, false, 6, NULL);
INSERT INTO public.planet VALUES (9, 'Aegir', 12, 5500, 0, false, false, 2, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima D', 4, 5500, 0, false, false, 5, NULL);
INSERT INTO public.planet VALUES (11, 'Lalande', 8, 6000, 0, false, false, 5, NULL);
INSERT INTO public.planet VALUES (12, 'Tau Ceti', 12, 2930, 0, false, false, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Vega', 25, 482047, 2, NULL, false, 4);
INSERT INTO public.star VALUES (2, 'Polaris', 448, 71945, 5, NULL, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 134, 85739, 14, NULL, false, 3);
INSERT INTO public.star VALUES (4, 'Sirius', 3, 38204, 2, NULL, false, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 4, 12474, 1, NULL, false, 2);
INSERT INTO public.star VALUES (6, 'Sun', 1, 4600, 1, NULL, false, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxyid_seq', 6, true);


--
-- Name: moon_moonid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonid_seq', 20, true);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 12, true);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: moon moon_orbitingplanetid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbitingplanetid_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_orbitingstarid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbitingstarid_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_parentgalaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_parentgalaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

