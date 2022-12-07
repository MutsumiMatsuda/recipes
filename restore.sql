--
-- PostgreSQL database dump
--
drop schema public cascade;
create schema public;
-- Dumped from database version 13.5 (Ubuntu 13.5-2.pgdg20.04+1)
-- Dumped by pg_dump version 13.5

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

SET search_path = public;

--
-- Name: howtos; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.howtos (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.howtos OWNER TO postgres;

--
-- Name: howtos_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.howtos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.howtos_id_seq OWNER TO postgres;

--
-- Name: howtos_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.howtos_id_seq OWNED BY public.howtos.id;

--
-- Name: mainsubs; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.mainsubs (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.mainsubs OWNER TO postgres;

--
-- Name: mainsubs_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.mainsubs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainsubs_id_seq OWNER TO postgres;

--
-- Name: mainsubs_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.mainsubs_id_seq OWNED BY public.mainsubs.id;

--
-- Name: material_categories; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.material_categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.material_categories OWNER TO postgres;

--
-- Name: material_categories_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.material_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_categories_id_seq OWNER TO postgres;

--
-- Name: material_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.material_categories_id_seq OWNED BY public.material_categories.id;

--
-- Name: materials; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.materials (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    name2 character varying(255),
    name3 character varying(255),
    season_id bigint,
    material_category_id bigint NOT NULL,
    memo character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.materials OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;

--
-- Name: menus; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.menus (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    body character varying(255) NOT NULL,
    image_path character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.menus OWNER TO postgres;

--
-- Name: menus_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_id_seq OWNER TO postgres;

--
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;

--
-- Name: migrations; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: nutrient_materials; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.nutrient_materials (
    id bigint NOT NULL,
    nutrient_id bigint NOT NULL,
    material_id bigint NOT NULL,
    memo character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.nutrient_materials OWNER TO postgres;

--
-- Name: nutrient_materials_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.nutrient_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nutrient_materials_id_seq OWNER TO postgres;

--
-- Name: nutrient_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.nutrient_materials_id_seq OWNED BY public.nutrient_materials.id;

--
-- Name: nutrients; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.nutrients (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    memo character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.nutrients OWNER TO postgres;

--
-- Name: nutrients_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.nutrients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nutrients_id_seq OWNER TO postgres;

--
-- Name: nutrients_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.nutrients_id_seq OWNED BY public.nutrients.id;

--
-- Name: password_resets; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: recipe_categories; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.recipe_categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipe_categories OWNER TO postgres;

--
-- Name: recipe_categories_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.recipe_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_categories_id_seq OWNER TO postgres;

--
-- Name: recipe_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.recipe_categories_id_seq OWNED BY public.recipe_categories.id;
--
-- Name: recipe_countries; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.recipe_countries (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipe_countries OWNER TO postgres;

--
-- Name: recipe_countries_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.recipe_countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_countries_id_seq OWNER TO postgres;

--
-- Name: recipe_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.recipe_countries_id_seq OWNED BY public.recipe_countries.id;

--
-- Name: recipe_materials; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.recipe_materials (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    material_id bigint NOT NULL,
    amount character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipe_materials OWNER TO postgres;

--
-- Name: recipe_materials_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.recipe_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_materials_id_seq OWNER TO postgres;

--
-- Name: recipe_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.recipe_materials_id_seq OWNED BY public.recipe_materials.id;

--
-- Name: recipe_tags; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.recipe_tags (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    tag_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipe_tags OWNER TO postgres;

--
-- Name: recipe_tags_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.recipe_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_tags_id_seq OWNER TO postgres;

--
-- Name: recipe_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.recipe_tags_id_seq OWNED BY public.recipe_tags.id;


--
-- Name: recipes; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.recipes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    body text NOT NULL,
    recipe_category_id bigint,
    menu_id bigint NOT NULL,
    howto_id bigint,
    recipe_country_id bigint,
    mainsub_id bigint,
    season_id bigint,
    image_path character varying(255),
    image_path2 character varying(255),
    is_easy integer DEFAULT 0 NOT NULL,
    is_favorite integer DEFAULT 0 NOT NULL,
    is_refresh integer DEFAULT 0 NOT NULL,
    is_healthy integer DEFAULT 0 NOT NULL,
    is_caloryoff integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipes OWNER TO postgres;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO postgres;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;

--
-- Name: seasonings; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.seasonings (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    recipe_id bigint NOT NULL,
    body character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.seasonings OWNER TO postgres;

--
-- Name: seasonings_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.seasonings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seasonings_id_seq OWNER TO postgres;

--
-- Name: seasonings_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.seasonings_id_seq OWNED BY public.seasonings.id;

--
-- Name: seasons; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.seasons (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.seasons OWNER TO postgres;

--
-- Name: seasons_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.seasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seasons_id_seq OWNER TO postgres;

--
-- Name: seasons_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.seasons_id_seq OWNED BY public.seasons.id;


--
-- Name: tags; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: recipes; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: recipes; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: recipes; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;

--
-- Name: howtos id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.howtos ALTER COLUMN id SET DEFAULT nextval('public.howtos_id_seq'::regclass);


--
-- Name: mainsubs id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.mainsubs ALTER COLUMN id SET DEFAULT nextval('public.mainsubs_id_seq'::regclass);


--
-- Name: material_categories id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.material_categories ALTER COLUMN id SET DEFAULT nextval('public.material_categories_id_seq'::regclass);


--
-- Name: materials id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- Name: menus id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: nutrient_materials id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.nutrient_materials ALTER COLUMN id SET DEFAULT nextval('public.nutrient_materials_id_seq'::regclass);


--
-- Name: nutrients id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.nutrients ALTER COLUMN id SET DEFAULT nextval('public.nutrients_id_seq'::regclass);


--
-- Name: recipe_categories id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.recipe_categories ALTER COLUMN id SET DEFAULT nextval('public.recipe_categories_id_seq'::regclass);


--
-- Name: recipe_countries id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.recipe_countries ALTER COLUMN id SET DEFAULT nextval('public.recipe_countries_id_seq'::regclass);


--
-- Name: recipe_materials id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.recipe_materials ALTER COLUMN id SET DEFAULT nextval('public.recipe_materials_id_seq'::regclass);


--
-- Name: recipe_tags id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.recipe_tags ALTER COLUMN id SET DEFAULT nextval('public.recipe_tags_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Name: seasonings id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.seasonings ALTER COLUMN id SET DEFAULT nextval('public.seasonings_id_seq'::regclass);


--
-- Name: seasons id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.seasons ALTER COLUMN id SET DEFAULT nextval('public.seasons_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: recipes; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
