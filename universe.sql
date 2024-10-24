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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
    discover_year integer,
    age_in_millions_of_years numeric(8,2),
    has_h20 boolean,
    has_life boolean
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
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
    discover_year integer,
    age_in_millions_of_years numeric(8,2),
    has_h20 boolean,
    has_life boolean,
    planet_id integer
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
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
    discover_year integer,
    age_in_millions_of_years numeric(8,2),
    has_h20 boolean,
    has_life boolean,
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
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
    discover_year integer,
    age_in_millions_of_years numeric(8,2),
    has_h20 boolean,
    has_life boolean,
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
    discover_year integer,
    age_in_millions_of_years numeric(8,2),
    has_h20 boolean,
    has_life boolean
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Centaury', 'Exoplaneta en la zona habitable de Proxima Centauri', 4, 2016, 4.50, true, false);
INSERT INTO public.galaxy VALUES (2, 'Kepler-186f', 'Planeta similar a la Tierra en la zona habitable de su estrella', 500, 2014, 5.00, true, true);
INSERT INTO public.galaxy VALUES (3, 'TRAPPIST-1d', 'Planeta potencialmente habitable en el sistema TRAPPIST-1', 40, 2017, 8.00, true, true);
INSERT INTO public.galaxy VALUES (4, 'Gliese 581d', 'Exoplaneta en la zona habitable de Gliese 581', 20, 2010, 1.30, true, false);
INSERT INTO public.galaxy VALUES (5, 'HD 209458 b', 'Exoplaneta gigante gaseoso, conocido como Osiris', 63, 1999, 4.00, false, false);
INSERT INTO public.galaxy VALUES (6, 'Proxima Centauri c', 'Planeta en el sistema de Proxima Centauri, más allá de la zona habitable', 4, 2020, 4.50, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'La única luna natural de la Tierra, con cráteres y mares.', 0, 1609, 4500.00, true, false, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 'Luna de Júpiter, conocida por su posible océano subterráneo.', 628, 1610, 4.50, true, false, 2);
INSERT INTO public.moon VALUES (3, 'Titan', 'Luna de Saturno, famosa por su atmósfera densa y lagos de metano.', 1270, 1655, 4.50, true, false, 3);
INSERT INTO public.moon VALUES (4, 'Ganimedes', 'La luna más grande del sistema solar, también de Júpiter.', 628, 1610, 4.50, true, false, 1);
INSERT INTO public.moon VALUES (5, 'Calisto', 'Luna de Júpiter, con una superficie llena de cráteres.', 628, 1610, 4.50, true, false, 1);
INSERT INTO public.moon VALUES (6, 'Ío', 'Luna de Júpiter, conocida por su intensa actividad volcánica.', 628, 1610, 4.50, false, false, 5);
INSERT INTO public.moon VALUES (7, 'Tritón', 'La luna más grande de Neptuno, con actividad geológica interesante.', 354, 1846, 4.50, true, false, 1);
INSERT INTO public.moon VALUES (8, 'Rhea', 'Luna de Saturno, con características geológicas únicas.', 528, 1672, 4.50, true, false, 2);
INSERT INTO public.moon VALUES (9, 'Dione', 'Luna de Saturno, famosa por su mezcla de hielo y roca.', 562, 1684, 4.50, true, false, 3);
INSERT INTO public.moon VALUES (10, 'Oberón', 'Luna de Urano, con una superficie llena de cráteres.', 584, 1787, 4.50, true, false, 4);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Luna de Urano, conocida por su paisaje extremadamente variado.', 129, 1948, 4.50, true, false, 5);
INSERT INTO public.moon VALUES (12, 'Charon', 'La luna más grande de Plutón, comparte un centro de masa.', 20, 1978, 4.50, true, false, 6);
INSERT INTO public.moon VALUES (13, 'Encelado', 'Luna de Saturno, famosa por sus géiseres de agua.', 1, 1789, 4.50, true, false, 7);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Luna de Saturno, conocida por su cráter gigante.', 2, 1789, 4.50, true, false, 8);
INSERT INTO public.moon VALUES (15, 'Nereida', 'Luna de Neptuno, con una órbita excéntrica.', 5, 1989, 4.50, true, false, 9);
INSERT INTO public.moon VALUES (16, 'Phobos', 'Luna de Marte, famosa por su rápido movimiento orbital.', 0, 1877, 4.50, false, false, 10);
INSERT INTO public.moon VALUES (17, 'Deimos', 'La luna más pequeña de Marte.', 0, 1877, 4.50, false, false, 11);
INSERT INTO public.moon VALUES (18, 'Himalia', 'Luna de Júpiter, más grande que muchas lunas menores.', 12, 1904, 4.50, true, false, 12);
INSERT INTO public.moon VALUES (19, 'Triton', 'Luna de Neptuno, conocida por sus características geológicas.', 354, 1846, 4.50, true, false, 1);
INSERT INTO public.moon VALUES (20, 'Ganymede II', 'Luna ficticia, imaginada en una historia de ciencia ficción.', 1000, 2050, 4.50, false, false, 2);
INSERT INTO public.moon VALUES (21, 'Charon II', 'Una luna ficticia de un exoplaneta, explorada por sondas.', 2000, 2100, 4.50, false, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 'El cuarto planeta del sistema solar, conocido como el planeta rojo.', 225, 1659, 4500.00, true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'El segundo planeta más cercano al sol, conocido por su atmósfera densa.', 41, 1610, 4600.00, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Júpiter', 'El gigante gaseoso más grande del sistema solar.', 484, 1610, 4600.00, false, false, 2);
INSERT INTO public.planet VALUES (4, 'Saturno', 'Famoso por sus anillos, es el segundo gigante gaseoso.', 794, 1610, 4600.00, false, false, 4);
INSERT INTO public.planet VALUES (6, 'Mercurio', 'El planeta más cercano al sol, con temperaturas extremas.', 91, 1610, 4600.00, false, false, 3);
INSERT INTO public.planet VALUES (12, 'LHS 1140 b', 'Un exoplaneta rocoso en la zona habitable de LHS 1140.', 40, 2017, 7.00, true, true, 5);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1f', 'Uno de los planetas en el sistema TRAPPIST-1, potencialmente habitable.', 40, 2017, 8.00, true, true, 6);
INSERT INTO public.planet VALUES (5, 'Tierra', 'El único planeta conocido con vida.', 0, 1543, 4500.00, true, true, 1);
INSERT INTO public.planet VALUES (7, 'Europa', 'Una luna de Júpiter que se cree que tiene un océano bajo su superficie.', 484, 1610, 4.50, true, false, 2);
INSERT INTO public.planet VALUES (8, 'Titan', 'La luna de Saturno con una densa atmósfera y cuerpos de metano líquido.', 794, 1666, 4.50, true, false, 3);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Un exoplaneta en la zona habitable de su estrella.', 600, 2011, 2.00, true, true, 4);
INSERT INTO public.planet VALUES (11, 'HD 40307g', 'Un exoplaneta en la zona habitable de su estrella.', 42, 2008, 3.00, true, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'La estrella más brillante en el cielo nocturno.', 9, 1839, 200.00, false, false, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Una supergigante roja en la constelación de Orión.', 642, 1866, 10.00, false, false, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'La estrella más cercana a nuestro sistema solar.', 4, 1915, 4.85, false, false, 3);
INSERT INTO public.star VALUES (4, 'Vega', 'Una de las estrellas más brillantes en la constelación de Lyra.', 25, 1850, 455.00, false, false, 4);
INSERT INTO public.star VALUES (5, 'Antares', 'Una estrella supergigante roja en la constelación de Escorpio.', 550, 1843, 12.00, false, false, 5);
INSERT INTO public.star VALUES (6, 'Canopus', 'La segunda estrella más brillante en el cielo nocturno.', 310, 1803, 10.00, false, false, 6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sol', 'La estrella central del sistema solar, fuente de luz y calor.', 0, 5, 4600.00, false, false);
INSERT INTO public.sun VALUES (2, 'Proxima Centauri', 'La estrella más cercana al sistema solar, parte del sistema Alpha Centauri.', 4, 1915, 4500.00, false, false);
INSERT INTO public.sun VALUES (3, 'Sirius A', 'La estrella más brillante en el cielo nocturno, parte del sistema binario Sirius.', 9, 1862, 200.00, false, false);
INSERT INTO public.sun VALUES (4, 'Alpha Centauri A', 'Estrella del sistema Alpha Centauri, similar al Sol.', 4, 1836, 5000.00, false, false);
INSERT INTO public.sun VALUES (5, 'Betelgeuse', 'Una supergigante roja en la constelación de Orión, conocida por su tamaño enorme.', 640, 1836, 10.00, false, false);
INSERT INTO public.sun VALUES (6, 'Vega', 'Una de las estrellas más brillantes en la constelación de Lyra, utilizada como referencia en astronomía.', 25, 1850, 455.00, false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pk PRIMARY KEY (sun_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

