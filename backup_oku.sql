--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.6

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

--
-- Name: heroku_ext; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA heroku_ext;


ALTER SCHEMA heroku_ext OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: howtos; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.howtos (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.howtos OWNER TO johsoyhojfcovp;

--
-- Name: howtos_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.howtos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.howtos_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: howtos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.howtos_id_seq OWNED BY public.howtos.id;


--
-- Name: mainsubs; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.mainsubs (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.mainsubs OWNER TO johsoyhojfcovp;

--
-- Name: mainsubs_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.mainsubs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainsubs_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: mainsubs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.mainsubs_id_seq OWNED BY public.mainsubs.id;


--
-- Name: material_categories; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.material_categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.material_categories OWNER TO johsoyhojfcovp;

--
-- Name: material_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.material_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_categories_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: material_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.material_categories_id_seq OWNED BY public.material_categories.id;


--
-- Name: materials; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
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


ALTER TABLE public.materials OWNER TO johsoyhojfcovp;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;


--
-- Name: menus; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.menus (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    body character varying(255) NOT NULL,
    image_path character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.menus OWNER TO johsoyhojfcovp;

--
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO johsoyhojfcovp;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: nutrient_materials; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.nutrient_materials (
    id bigint NOT NULL,
    nutrient_id bigint NOT NULL,
    material_id bigint NOT NULL,
    memo character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.nutrient_materials OWNER TO johsoyhojfcovp;

--
-- Name: nutrient_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.nutrient_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nutrient_materials_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: nutrient_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.nutrient_materials_id_seq OWNED BY public.nutrient_materials.id;


--
-- Name: nutrients; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.nutrients (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    memo character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.nutrients OWNER TO johsoyhojfcovp;

--
-- Name: nutrients_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.nutrients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nutrients_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: nutrients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.nutrients_id_seq OWNED BY public.nutrients.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO johsoyhojfcovp;

--
-- Name: recipe_categories; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.recipe_categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipe_categories OWNER TO johsoyhojfcovp;

--
-- Name: recipe_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.recipe_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_categories_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: recipe_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.recipe_categories_id_seq OWNED BY public.recipe_categories.id;


--
-- Name: recipe_countries; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.recipe_countries (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipe_countries OWNER TO johsoyhojfcovp;

--
-- Name: recipe_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.recipe_countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_countries_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: recipe_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.recipe_countries_id_seq OWNED BY public.recipe_countries.id;


--
-- Name: recipe_materials; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.recipe_materials (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    material_id bigint NOT NULL,
    amount character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipe_materials OWNER TO johsoyhojfcovp;

--
-- Name: recipe_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.recipe_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_materials_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: recipe_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.recipe_materials_id_seq OWNED BY public.recipe_materials.id;


--
-- Name: recipe_tags; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.recipe_tags (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    tag_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipe_tags OWNER TO johsoyhojfcovp;

--
-- Name: recipe_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.recipe_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_tags_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: recipe_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.recipe_tags_id_seq OWNED BY public.recipe_tags.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
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


ALTER TABLE public.recipes OWNER TO johsoyhojfcovp;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: seasonings; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.seasonings (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    recipe_id bigint NOT NULL,
    body character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.seasonings OWNER TO johsoyhojfcovp;

--
-- Name: seasonings_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.seasonings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seasonings_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: seasonings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.seasonings_id_seq OWNED BY public.seasonings.id;


--
-- Name: seasons; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.seasons (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.seasons OWNER TO johsoyhojfcovp;

--
-- Name: seasons_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.seasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seasons_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: seasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.seasons_id_seq OWNED BY public.seasons.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.tags OWNER TO johsoyhojfcovp;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: johsoyhojfcovp
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


ALTER TABLE public.users OWNER TO johsoyhojfcovp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: johsoyhojfcovp
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO johsoyhojfcovp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: johsoyhojfcovp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: howtos id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.howtos ALTER COLUMN id SET DEFAULT nextval('public.howtos_id_seq'::regclass);


--
-- Name: mainsubs id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.mainsubs ALTER COLUMN id SET DEFAULT nextval('public.mainsubs_id_seq'::regclass);


--
-- Name: material_categories id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.material_categories ALTER COLUMN id SET DEFAULT nextval('public.material_categories_id_seq'::regclass);


--
-- Name: materials id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: nutrient_materials id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.nutrient_materials ALTER COLUMN id SET DEFAULT nextval('public.nutrient_materials_id_seq'::regclass);


--
-- Name: nutrients id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.nutrients ALTER COLUMN id SET DEFAULT nextval('public.nutrients_id_seq'::regclass);


--
-- Name: recipe_categories id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipe_categories ALTER COLUMN id SET DEFAULT nextval('public.recipe_categories_id_seq'::regclass);


--
-- Name: recipe_countries id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipe_countries ALTER COLUMN id SET DEFAULT nextval('public.recipe_countries_id_seq'::regclass);


--
-- Name: recipe_materials id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipe_materials ALTER COLUMN id SET DEFAULT nextval('public.recipe_materials_id_seq'::regclass);


--
-- Name: recipe_tags id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipe_tags ALTER COLUMN id SET DEFAULT nextval('public.recipe_tags_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Name: seasonings id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.seasonings ALTER COLUMN id SET DEFAULT nextval('public.seasonings_id_seq'::regclass);


--
-- Name: seasons id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.seasons ALTER COLUMN id SET DEFAULT nextval('public.seasons_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: howtos; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.howtos (id, name, created_at, updated_at) FROM stdin;
1	圧力鍋	2021-11-03 01:57:03	2021-11-03 01:57:03
2	オーブン	2021-11-03 01:57:03	2021-11-03 01:57:03
3	レンジ	2021-11-03 01:57:03	2021-11-03 01:57:03
5	蒸し器	2021-12-22 06:01:15	2021-12-22 06:01:15
38	ストウブ鍋	2021-12-29 11:41:11	2021-12-29 11:41:11
\.


--
-- Data for Name: mainsubs; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.mainsubs (id, name, created_at, updated_at) FROM stdin;
1	肉料理	2021-12-06 07:06:00	2021-12-29 06:16:59
42	魚料理	2021-12-29 06:17:12	2021-12-29 06:17:12
38	豆皿	2021-12-28 12:19:27	2021-12-29 08:13:25
43	パスタ	2021-12-29 06:17:40	2021-12-29 08:13:38
41	麺・ごはん類	2021-12-29 02:45:08	2021-12-29 08:13:53
40	みそ汁・和スープ	2021-12-28 13:03:34	2021-12-29 08:14:08
3	スープ	2021-12-06 07:06:00	2021-12-29 08:14:27
2	サラダ類	2021-12-06 07:06:00	2021-12-29 08:14:39
5	デザート	2021-12-22 05:56:41	2021-12-29 08:14:51
\.


--
-- Data for Name: material_categories; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.material_categories (id, name, created_at, updated_at) FROM stdin;
1	豆類	2021-11-03 02:04:59	2021-11-03 02:04:59
2	穀類	2021-11-03 02:04:59	2021-11-03 02:04:59
3	野菜	2021-11-03 02:04:59	2021-11-03 02:04:59
4	果実・香辛料類	2021-11-03 02:04:59	2021-11-03 02:04:59
5	きのこ・海藻	2021-11-03 02:04:59	2021-11-03 02:04:59
6	魚	2021-11-03 02:04:59	2021-11-03 02:04:59
7	肉	2021-11-03 02:04:59	2021-11-03 02:04:59
8	嗜好品	2021-11-03 02:04:59	2021-11-03 02:04:59
9	甘味類	2021-11-03 02:04:59	2021-11-03 02:04:59
10	乾物	2021-11-03 02:04:59	2021-11-03 02:04:59
11	油脂・調味料	2021-11-03 02:04:59	2021-11-03 02:04:59
12	乳類	2021-11-03 02:04:59	2021-11-03 02:04:59
13	卵類・たんぱく質	2021-11-03 02:04:59	2021-11-03 02:04:59
\.


--
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.materials (id, name, name2, name3, season_id, material_category_id, memo, created_at, updated_at) FROM stdin;
2	みそ	味噌		\N	1		2021-10-21 04:39:18	2021-10-21 04:39:18
7	煮小豆			\N	1		2021-10-21 04:39:18	2021-10-21 04:39:18
10	米	ごはん		\N	2		2021-10-21 04:39:18	2021-10-21 04:39:18
11	強力粉			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
12	薄力粉			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
13	てんぷら粉			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
14	米(無洗米)			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
15	雑穀			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
16	コーン			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
17	パン粉			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
19	米粉			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
20	春巻きの皮			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
21	スパゲッティ	パスタ		\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
24	ラザニア			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
25	コーン（クリーム）			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
26	コーン(粒)			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
27	餃子の皮			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
28	中華麺(生・太麺)			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
29	角もち			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
30	冷凍パイシート			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
31	わらびもち粉			\N	2		2021-10-21 05:50:05	2021-10-21 05:50:05
32	白ねぎ	ネギ	\N	\N	3		2021-10-21 05:50:05	2021-12-02 01:57:37
39	グリーンリーフ			\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
43	ゴーヤ			\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
47	紅芯大根			\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
48	わけぎ			\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
53	トレビス			\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
58	たくわん			\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
61	かぼちゃ	カボチャ	南瓜	\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
62	れんこん			\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
69	みょうが	茗荷	ミョウガ	\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
74	長芋			\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
76	筍(水煮)	たけのこ		\N	3		2021-10-21 05:50:05	2021-10-21 05:50:05
77	ライム			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
79	りんご			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
80	レモン			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
81	エルダーフラワーコーディアル			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
82	ミントの葉			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
83	セルフィーユ			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
84	バジル			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
89	栗渋皮煮	くり		\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
91	ローリエ			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
45	大根	\N	\N	\N	3		2021-10-21 05:50:05	2021-12-29 12:22:07
6	小豆	\N	\N	\N	1		2021-10-21 04:39:18	2021-12-29 12:25:24
56	ごぼう	\N	\N	\N	3		2021-10-21 05:50:05	2021-12-29 12:47:36
59	かぶ	カブ	\N	\N	3		2021-10-21 05:50:05	2021-12-29 12:48:09
66	ニラ	にら	\N	\N	3		2021-10-21 05:50:05	2021-12-29 12:49:30
68	オクラ	おくら	\N	\N	3		2021-10-21 05:50:05	2021-12-29 12:51:12
50	プチトマト	\N	\N	\N	3		2021-10-21 05:50:05	2022-01-02 00:46:02
3	調製豆乳.	\N	\N	\N	1		2021-10-21 04:39:18	2022-01-02 01:24:09
4	無調製豆乳	\N	\N	\N	1		2021-10-21 04:39:18	2022-01-02 01:26:04
37	セロリ	\N	\N	\N	3		2021-10-21 05:50:05	2022-01-10 16:13:29
51	人参	にんじん	\N	\N	3		2021-10-21 05:50:05	2022-01-10 16:14:00
34	きゅうり	\N	\N	\N	3		2021-10-21 05:50:05	2022-01-16 12:38:09
22	じゃがいも	ポテト	\N	\N	2		2021-10-21 05:50:05	2022-01-16 12:41:50
5	ごま	\N	\N	0	1		2021-10-21 04:39:18	2022-02-13 05:01:49
33	水菜	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 05:33:24
18	さつま芋	\N	\N	0	2		2021-10-21 05:50:05	2022-02-13 05:46:13
38	赤パプリカ	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 06:26:19
70	黄パプリカ	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 06:26:59
71	みつ葉	みつば、	\N	0	3		2021-10-21 05:50:05	2022-02-13 11:15:47
72	ブロッコリー	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 11:19:56
63	ピーマン	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 11:25:15
57	春菊	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 11:56:05
44	ズッキーニ	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 11:57:57
41	ほうれん草	\N	\N	0	3		2021-10-21 05:50:05	2022-02-14 00:07:19
23	フランスパン	\N	\N	\N	2		2021-10-21 05:50:05	2022-01-16 12:42:40
40	小松菜	\N	\N	0	3		2021-10-21 05:50:05	2022-02-20 14:04:20
88	いちご	ストロベリー	\N	0	4		2021-10-21 05:50:05	2022-03-22 14:04:31
67	なす	ナス	\N	0	3		2021-10-21 05:50:05	2022-03-22 14:04:55
9	黒豆	\N	\N	0	1		2021-10-21 04:39:18	2022-03-22 14:05:16
60	紫キャベツ	\N	\N	0	3		2021-10-21 05:50:05	2022-03-22 14:07:14
36	紫玉ねぎ	\N	\N	0	3		2021-10-21 05:50:05	2022-03-22 14:07:31
86	キウイフルーツ	キウイ	\N	0	4		2021-10-21 05:50:05	2022-04-29 12:14:32
35	玉ねぎ	\N	\N	0	3		2021-10-21 05:50:05	2022-04-29 12:16:35
85	アボガド	\N	\N	0	4		2021-10-21 05:50:05	2022-04-29 12:17:07
75	グリーンアスパラガス	\N	\N	0	3		2021-10-21 05:50:05	2022-04-29 12:17:49
55	キャベツ	\N	\N	0	3		2021-10-21 05:50:05	2022-04-29 12:18:10
42	トマト	\N	\N	0	3		2021-10-21 05:50:05	2022-04-29 12:24:16
1	枝豆	えだまめ	\N	0	1		2021-10-21 04:39:18	2022-05-02 01:12:55
73	しし唐辛子	ししとう	\N	0	3		2021-10-21 05:50:05	2022-05-05 08:24:17
90	グリーンレーズン	\N	\N	\N	4		2021-10-21 05:50:05	2022-01-23 12:57:54
8	豆腐	\N	\N	\N	1		2021-10-21 04:39:18	2022-01-23 15:48:38
52	キムチ(白菜)	\N	\N	\N	3		2021-10-21 05:50:05	2022-01-25 04:02:03
92	オレンジ	みかん		\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
93	ブラックオリーブ			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
95	ディル			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
96	ラズベリー(冷凍)			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
100	くるみ	胡桃	クルミ	\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
101	マンゴー(冷凍)			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
102	ライチ(缶)			\N	4		2021-10-21 05:50:05	2021-10-21 05:50:05
104	しめじ			\N	5		2021-10-21 05:50:05	2021-10-21 05:50:05
105	きざみ海苔			\N	5		2021-10-21 05:50:05	2021-10-21 05:50:05
107	椎茸	しいたけ		\N	5		2021-10-21 05:50:05	2021-10-21 05:50:05
108	ポルチーニ茸			\N	5		2021-10-21 05:50:05	2021-10-21 05:50:05
110	まいたけ			\N	5		2021-10-21 05:50:05	2021-10-21 05:50:05
111	えのき茸			\N	5		2021-10-21 05:50:05	2021-10-21 05:50:05
112	マッシュルーム			\N	5		2021-10-21 05:50:05	2021-10-21 05:50:05
113	ツナ缶			\N	6		2021-10-21 05:50:05	2021-10-21 05:50:05
125	ちりめんじゃこ			\N	6		2021-10-21 05:50:05	2021-10-21 05:50:05
127	海老(有頭)	えび		\N	6		2021-10-21 05:50:05	2021-10-21 05:50:05
128	ロブスター			\N	6		2021-10-21 05:50:05	2021-10-21 05:50:05
129	鯛	タイ		\N	6		2021-10-21 05:50:05	2021-10-21 05:50:05
149	牛もも塊肉	牛肉	ビーフ	\N	7		2021-10-21 05:50:05	2021-10-21 05:50:05
152	インスタントコーヒー			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
154	ラム酒			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
155	クコの実			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
157	黒練ごま			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
159	ピーナッツクリーム			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
160	ピンクペッパー			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
161	レッドペッパー			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
162	赤ワイン			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
163	ゆず茶	柚子茶		\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
164	インスタントドライイースト			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
165	ターメリック			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
166	クミンシード			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
167	クミンパウダー			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
168	ガラムマサラ			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
169	抹茶			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
170	ストロベリーリキュール			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
171	サイダー			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
172	白ワイン			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
173	フランボワーズリキュール			\N	8		2021-10-21 05:50:05	2021-10-21 05:50:05
174	フロストシュガー			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
175	白玉粉	しらたま		\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
176	はちみつ			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
177	カステラ			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
178	フルーツグラノーラ			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
124	たらこ	\N	\N	\N	6		2021-10-21 05:50:05	2021-12-18 03:52:39
103	生姜（加熱用）	しょうが	\N	\N	4		2021-10-21 05:50:05	2022-01-24 13:21:38
98	アーモンドスライス	\N	\N	\N	4		2021-10-21 05:50:05	2021-12-29 12:54:27
99	サフラン	\N	\N	\N	4		2021-10-21 05:50:05	2021-12-29 12:54:57
109	わかめ	ワカメ	\N	\N	5		2021-10-21 05:50:05	2021-12-29 12:55:35
126	かまぼこ	\N	\N	\N	6		2021-10-21 05:50:05	2021-12-29 13:03:52
132	練りうに	ウニ	\N	\N	6		2021-10-21 05:50:05	2021-12-29 13:04:19
114	辛子明太子	\N	\N	\N	6		2021-10-21 05:50:05	2021-12-29 13:05:15
117	カニ風味かまぼこ	\N	\N	\N	6		2021-10-21 05:50:05	2021-12-29 13:08:26
119	スモークサーモン	\N	\N	\N	6		2021-10-21 05:50:05	2021-12-29 13:08:51
146	ウインナー	\N	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:21:08
144	フォアグラ	\N	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:26:57
141	合い挽き肉	\N	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:29:01
136	豚バラ薄切り肉	豚肉	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:31:02
135	豚ロース薄切り	豚肉	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:32:15
123	しじみ	シジミ	\N	0	6		2021-10-21 05:50:05	2022-02-13 11:34:46
143	豚ひき肉	豚肉	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:36:34
147	牛ステーキ肉	牛肉	ビーフ	0	7		2021-10-21 05:50:05	2022-02-13 11:42:32
139	ロースハム	\N	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:49:02
134	鶏もも肉	鶏肉	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:51:05
142	豚肩ロース塊肉	豚肉	\N	0	7		2021-10-21 05:50:05	2022-02-13 23:42:34
145	豚肩ロース薄切り肉	豚肉	\N	0	7		2021-10-21 05:50:05	2022-02-13 23:53:28
150	スペアリブ	\N	\N	0	7		2021-10-21 05:50:05	2022-02-14 00:02:25
118	はんぺん	\N	\N	\N	6		2021-10-21 05:50:05	2021-12-29 13:15:10
131	ほたて貝柱	\N	\N	\N	6		2021-10-21 05:50:05	2021-12-29 13:15:38
158	トマトジュース	\N	\N	\N	8		2021-10-21 05:50:05	2022-01-02 00:46:34
115	アジ	鯵	あじ	0	6		2021-10-21 05:50:05	2022-03-20 13:09:43
130	鰤	ぶり	ブリ	0	6		2021-10-21 05:50:05	2022-03-20 13:10:16
116	むき海老	えび	エビ	0	6		2021-10-21 05:50:05	2022-03-20 13:10:47
138	鶏ひき肉	鶏肉	\N	0	7		2021-10-21 05:50:05	2022-05-02 01:10:25
156	味つきザーサイ	搾菜	ザーサイ	0	8		2021-10-21 05:50:05	2022-07-04 02:51:06
106	焼き海苔	のり	\N	\N	5		2021-10-21 05:50:05	2022-01-16 12:53:23
120	さきいか	\N	\N	\N	6		2021-10-21 05:50:05	2022-01-23 12:41:03
94	タイム	たいむ	\N	\N	4		2021-10-21 05:50:05	2022-01-23 12:50:47
179	コーンフレーク			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
180	チョコレートシロップ			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
181	羊羹			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
182	ココアパウダー			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
183	パイナップル(缶)			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
184	黒こしあん			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
185	マンゴージャム			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
186	粉糖			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
187	いちご(フリーズドライパウダー)			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
188	いちごジャム			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
189	ブルーベリージャム			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
190	市販のマカロンミックス			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
191	きび砂糖			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
192	砂糖	さとう		\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
193	ミックスフルーツ(缶)			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
194	メープルシロップ			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
195	洋梨(缶)			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
196	市販のキャラメルシロップ			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
197	ラズベリージャム			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
198	りんごジャム			\N	9		2021-10-21 05:50:05	2021-10-21 05:50:05
199	切り干し大根			\N	10		2021-10-21 05:50:05	2021-10-21 05:50:05
200	ゆかり			\N	10		2021-10-21 05:50:05	2021-10-21 05:50:05
205	チリインオイル			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
206	ナンプラー			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
207	スイートチリソース			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
208	マヨネーズ			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
210	カレー粉			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
211	鶏がらスープの素			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
212	マスタード			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
213	ウスターソース			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
214	バニラオイル			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
215	ごま油			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
216	だしじょうゆ	だし醤油		\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
217	片栗粉			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
218	オリーブオイル			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
219	和風だしの素			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
221	黒こしょう	黒胡椒		\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
222	コンソメ顆粒			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
225	市販ホワイトソース			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
227	アーモンドパウダー			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
228	アーモンドエッセンス			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
229	カスタードクリームパウダー			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
230	ココナッツミルクパウダー			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
231	ベーキングパウダー			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
234	コチュジャン			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
235	チリパウダー			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
237	白だし			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
238	白こしょう			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
239	赤唐辛子(輪切り)			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
240	粒マスタード			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
241	ナツメグ			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
243	トウチ			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
244	青花椒(アオホワジャオ)			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
245	テンメジャン			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
246	ラー油			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
247	ターメリック			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
248	オイスターソース			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
249	酒			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
251	しょうゆこうじ	醤油麹	醤油こうじ	\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
252	ゆずこしょう	柚子こしょう	ゆず胡椒	\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
253	市販のタルタルソース			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
254	ハーブ&スパイスミックス調味料			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
255	チョウテンガンシンジャオ			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
260	生クリーム			\N	12		2021-10-21 05:50:05	2021-10-21 05:50:05
259	バジル	\N	\N	\N	11		2021-10-21 05:50:05	2021-12-29 12:53:15
226	市販トマトソース	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-02 00:47:30
148	鶏手羽元	鶏肉	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:38:29
133	牛肩ロース薄切り肉	\N	\N	0	7		2021-10-21 05:50:05	2022-02-13 23:47:17
232	トマトケチャップ	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-02 00:48:05
233	トマトペースト	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-02 00:48:47
242	豆板醤	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-02 01:02:28
264	牛乳	ミルク	\N	\N	12		2021-10-21 05:50:05	2022-01-02 01:06:56
223	岩塩	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-02 01:10:51
201	桜の花の塩漬け	\N	\N	\N	10		2021-10-21 05:50:05	2022-01-02 01:18:42
140	ベーコン	\N	\N	0	7		2021-10-21 05:50:05	2022-05-02 01:11:38
262	バター	\N	\N	\N	12		2021-10-21 05:50:05	2022-01-10 16:14:51
263	バター(食塩不使用)	\N	\N	\N	12		2021-10-21 05:50:05	2022-01-10 16:15:16
220	ポン酢しょうゆ	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-11 02:18:08
236	黒酢	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-11 02:18:54
261	スライスチーズ	\N	\N	\N	12		2021-10-21 05:50:05	2022-01-16 12:46:17
202	削りがつお	\N	\N	\N	10		2021-10-21 05:50:05	2022-01-16 12:51:55
203	素干し海老	素干しエビ	\N	\N	10		2021-10-21 05:50:05	2022-01-23 12:40:26
204	芽ひじき	\N	\N	\N	10		2021-10-21 05:50:05	2022-01-23 12:48:14
265	サワークリーム			\N	12		2021-10-21 05:50:05	2021-10-21 05:50:05
270	カマンベールチーズ			\N	12		2021-10-21 05:50:05	2021-10-21 05:50:05
275	卵	エッグ	たまご	\N	13		2021-10-21 05:50:05	2021-10-21 05:50:05
276	粉ゼラチン			\N	13		2021-10-21 05:50:05	2021-10-21 05:50:05
279	醤油	しょうゆ		\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
280	エキストラバージンオリーブオイル	オリーブオイル		\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
282	たくわん			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
283	市販のドレッシング			\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
284	市販のきざみしょうが	しょうが	生姜	\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
285	市販のきざみにんにく	にんにく	ニンニク	\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
286	市販のおろしにんにく	にんにく	ニンニク	\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
287	市販のおろししょうが	生姜	しょうが	\N	11		2021-10-21 05:50:05	2021-10-21 05:50:05
288	生クリーム			\N	12		2021-11-04 02:00:22	2021-11-04 02:00:22
289	フロストシュガー			\N	9		2021-11-04 02:00:22	2021-11-04 02:00:22
290	クコの実			\N	4		2021-11-04 02:00:22	2021-11-04 02:00:22
291	ツナ缶	ツナ	\N	\N	6	\N	2021-12-02 01:39:32	2021-12-02 01:39:32
292	しめじ	\N	\N	\N	5	\N	2021-12-02 01:43:47	2021-12-02 01:43:47
294	牛肩ロース	\N	\N	\N	7	\N	2021-12-02 12:20:44	2021-12-02 12:20:44
296	米	\N	\N	\N	2	\N	2021-12-02 12:25:57	2021-12-02 12:25:57
297	食パン	パン	\N	\N	2	\N	2021-12-08 13:50:39	2021-12-08 13:50:39
298	グレープフルーツ	グレープフルーツ(ルビー)	\N	\N	4	\N	2021-12-09 01:40:57	2021-12-09 01:40:57
299	コアントロー	\N	\N	\N	8	\N	2021-12-09 01:42:22	2021-12-09 01:42:22
300	シーフードミックス	\N	\N	\N	6	\N	2021-12-09 02:14:20	2021-12-09 02:14:20
301	豚肩ロース	豚肩ロース肉	\N	\N	7	\N	2021-12-09 08:40:41	2021-12-09 08:40:41
302	白みそ	白味噌	白ミソ	\N	1	\N	2021-12-10 01:16:07	2021-12-10 01:16:07
303	ローズマリー	\N	\N	\N	11	\N	2021-12-10 09:43:41	2021-12-10 09:43:41
304	温泉卵	温泉たまご	\N	\N	13	\N	2021-12-10 10:10:30	2021-12-10 10:10:30
305	オレンジジャム	\N	\N	\N	9	\N	2021-12-10 10:17:09	2021-12-10 10:17:09
306	ロールパン	\N	\N	\N	2	\N	2021-12-10 10:23:23	2021-12-10 10:23:23
307	薄口醤油	薄口しょうゆ	\N	\N	11	\N	2021-12-10 13:32:27	2021-12-10 13:32:27
308	くちなしの実	クチナシの実	\N	\N	4	\N	2021-12-10 13:43:43	2021-12-10 13:43:43
309	水飴	水あめ	\N	\N	9	\N	2021-12-10 13:44:06	2021-12-10 13:44:06
310	栗の甘露煮	くりの甘露煮	\N	\N	4	\N	2021-12-10 13:44:33	2021-12-10 13:44:33
311	干し柿	干柿	\N	\N	4	\N	2021-12-11 00:21:03	2021-12-11 00:21:03
312	みりん	ミリン	\N	\N	11	\N	2021-12-11 00:29:58	2021-12-11 00:29:58
313	アンチョビペースト	\N	\N	\N	11	\N	2021-12-11 03:22:54	2021-12-11 03:22:54
315	マグロ	鮪	まぐろ	\N	6	\N	2021-12-18 03:16:00	2021-12-18 03:16:36
317	鯖	サバ	さば	\N	6	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
319	がりしょうが	ガリ	がり生姜	\N	4	\N	2021-12-26 02:25:41	2021-12-26 02:25:41
320	グラニュー糖	\N	\N	\N	9	\N	2021-12-26 06:45:47	2021-12-26 06:45:47
321	レーズン	\N	\N	\N	8	\N	2021-12-26 06:47:48	2021-12-26 06:47:48
256	にんにく	\N	\N	\N	11		2021-10-21 05:50:05	2021-12-29 12:45:12
250	塩こうじ	塩麹	\N	\N	11		2021-10-21 05:50:05	2021-12-29 12:51:46
322	大根の葉	\N	\N	\N	3	\N	2021-12-29 13:33:01	2021-12-29 13:33:01
323	とうもろこし	\N	\N	\N	2	\N	2021-12-30 04:37:44	2021-12-30 04:37:44
324	牛バラ薄切り	\N	\N	\N	7	\N	2021-12-30 15:46:56	2021-12-30 15:48:48
325	サラダ油	\N	\N	\N	11	\N	2021-12-31 06:10:05	2021-12-31 06:10:05
326	大根（おろし用）	\N	\N	\N	3	\N	2022-01-01 17:14:39	2022-01-01 17:16:42
278	塩	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-02 01:10:21
153	グレープフルーツジュース	\N	\N	\N	8		2021-10-21 05:50:05	2022-01-11 02:17:12
277	酢	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-11 02:18:33
281	削りがつお	\N	\N	\N	11		2021-10-21 05:50:05	2022-01-16 12:52:22
328	大豆ミート	ソイミート	\N	\N	1	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
329	余ったトマトソース	\N	\N	\N	11	\N	2022-01-17 04:32:40	2022-01-17 04:32:40
269	クリームチーズ	\N	\N	0	12		2021-10-21 05:50:05	2022-02-13 05:26:51
266	ピザ用チーズ	\N	\N	0	12		2021-10-21 05:50:05	2022-02-13 11:12:30
49	ルッコラ	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 11:17:48
273	コンデンスミルク	\N	\N	0	12		2021-10-21 05:50:05	2022-02-13 11:23:51
267	粉チーズ	\N	\N	0	12		2021-10-21 05:50:05	2022-02-13 11:46:31
271	プレーンヨーグルト	\N	\N	0	12		2021-10-21 05:50:05	2022-02-13 11:48:11
272	プロセスチーズ	\N	\N	0	12		2021-10-21 05:50:05	2022-02-13 11:54:07
318	トマト缶	トマト水煮	\N	0	11	\N	2021-12-26 02:15:28	2022-02-13 23:57:31
224	市販のデミグラスソース	\N	\N	0	11		2021-10-21 05:50:05	2022-02-13 23:59:20
295	牛肩ロース薄切り	牛肩ロース	\N	\N	7	\N	2021-12-02 12:21:48	2022-01-17 05:11:33
331	あおさ	\N	\N	\N	5	\N	2022-01-23 15:46:49	2022-01-23 15:46:49
330	白菜	はくさい	\N	\N	3	\N	2022-01-23 15:12:54	2022-01-23 15:12:54
121	あさり缶（むき身）	アサリ	あさり	\N	6		2021-10-21 05:50:05	2022-01-24 12:53:33
332	生姜（生）	しょうが	ショウガ	\N	4	\N	2022-01-24 13:22:55	2022-01-24 13:22:55
333	なめこ	\N	\N	\N	5	\N	2022-01-25 04:20:46	2022-01-25 04:20:46
122	あさり(殻付き)	\N	\N	1	6		2021-10-21 05:50:05	2022-02-08 12:29:26
316	納豆	\N	\N	0	1	\N	2021-12-19 15:39:34	2022-02-17 12:55:19
334	白練ごま	白練りごま	白練りゴマ	0	1	\N	2022-02-08 11:40:00	2022-02-09 03:00:38
335	おからパウダー	\N	\N	0	1	\N	2022-02-08 12:16:12	2022-02-09 03:00:55
336	しらす	シラス	\N	1	6	\N	2022-02-13 04:52:14	2022-02-13 04:52:14
337	カリカリ梅	カリカリうめ	\N	0	8	\N	2022-02-13 04:53:19	2022-02-13 04:53:19
46	青じそ	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 04:58:15
64	菜の花	\N	\N	0	3		2021-10-21 05:50:05	2022-02-13 05:24:28
258	パセリ	\N	\N	0	11		2021-10-21 05:50:05	2022-02-13 05:30:13
257	イタリアンパセリ	\N	\N	0	11		2021-10-21 05:50:05	2022-02-13 06:20:04
327	みかん	オレンジ	\N	0	4	\N	2022-01-11 03:00:37	2022-02-13 06:32:32
338	豆苗	とうみょう	\N	0	3	\N	2022-02-13 11:00:02	2022-02-13 11:00:02
151	豚バラ塊肉	豚肉	\N	0	7		2021-10-21 05:50:05	2022-02-13 11:40:49
268	ラクレットチーズ	\N	\N	0	12		2021-10-21 05:50:05	2022-02-13 23:51:29
65	スナップえんどう	\N	\N	0	3		2021-10-21 05:50:05	2022-02-14 00:00:44
339	鮭	サケ	さけ	0	6	\N	2022-02-14 07:37:36	2022-02-14 07:37:36
340	芽キャベツ	芽きゃべつ	\N	1	3	\N	2022-02-14 07:38:59	2022-02-14 07:38:59
341	めんつゆ	麺つゆ	\N	0	11	\N	2022-02-14 11:16:06	2022-02-14 11:16:06
54	青ねぎ	ネギ	\N	0	3		2021-10-21 05:50:05	2022-02-17 12:56:02
342	コリアンダー	\N	\N	0	4	\N	2022-03-08 11:41:11	2022-03-08 11:41:11
343	パン	\N	\N	0	2	\N	2022-03-08 11:45:15	2022-03-08 11:46:32
344	油揚げ	油あげ	あぶらあげ	0	1	\N	2022-03-15 04:21:32	2022-03-15 04:21:32
345	ふきのとう	\N	\N	1	3	\N	2022-03-15 04:24:05	2022-03-15 04:24:05
346	五穀米	ごこくまい	じゅうろっこくまい	0	2	\N	2022-03-15 04:25:45	2022-03-15 04:25:45
137	鶏手羽中	鶏肉	\N	0	7		2021-10-21 05:50:05	2022-03-20 13:07:32
347	いちじく	イチジク	\N	3	5	\N	2022-03-22 13:55:56	2022-03-22 13:55:56
97	ブルーベリー(冷凍)	\N	\N	0	4		2021-10-21 05:50:05	2022-03-22 14:04:04
78	ぶどう	\N	\N	0	4		2021-10-21 05:50:05	2022-03-22 14:05:34
348	塩昆布	しおこんぶ	\N	0	5	\N	2022-04-25 16:39:30	2022-04-25 16:39:30
293	ねぎ	青ねぎ	白ネギ	0	3	\N	2021-12-02 01:50:34	2022-04-29 12:18:46
87	バナナ	\N	\N	0	4		2021-10-21 05:50:05	2022-04-29 12:19:10
349	バジルソース	ジェノベーゼソース	ジェノベーゼ	0	11	\N	2022-04-30 11:54:46	2022-04-30 11:54:46
350	マカロニ	\N	\N	0	2	\N	2022-04-30 11:55:34	2022-04-30 11:55:34
209	市販のカットトマト	\N	\N	0	11		2021-10-21 05:50:05	2022-05-02 01:10:49
351	ねりからし	練り辛子	練りからし	0	11	\N	2022-05-05 08:23:41	2022-05-05 08:23:41
352	甜麺醤	テンメンジャン	てんめんじゃん	0	11	\N	2022-05-05 08:41:59	2022-05-05 08:41:59
353	花椒	ホアジャオ	\N	0	11	\N	2022-05-05 08:42:35	2022-05-05 08:42:35
354	うどん	\N	\N	0	2	\N	2022-05-05 08:43:06	2022-05-05 08:43:06
355	もやし	モヤシ	\N	0	3	\N	2022-05-05 10:11:29	2022-05-05 10:11:29
356	アサイーピューレ	アサイー	アサイ	2	4	\N	2022-05-06 07:03:40	2022-05-06 07:03:40
357	グラノーラ	フルーツグラノーラ	シリアル	0	2	\N	2022-05-06 07:04:16	2022-05-06 07:04:16
358	そうめん	素麺	\N	2	2	\N	2022-05-20 12:36:49	2022-05-20 12:36:49
359	きくらげ	キクラゲ	木クラゲ	0	5	\N	2022-07-05 10:45:50	2022-07-05 10:45:50
360	蕎麦	そば	\N	0	2	\N	2022-07-11 11:32:38	2022-07-11 11:32:38
361	たら	タラ	鱈	3	6	\N	2022-10-11 14:02:25	2022-10-11 14:02:25
362	こんにゃく	コンニャク	\N	0	8	\N	2022-10-31 08:51:05	2022-10-31 08:51:05
363	もつ	モツ	モツ煮	0	7	\N	2022-10-31 08:51:29	2022-10-31 08:51:29
364	梅干し	梅ぼし	梅	0	8	\N	2022-11-01 02:09:07	2022-11-01 02:09:55
365	深煎りごまドレッシング	ふかいりごまドレッシング	深煎りごま	0	8	\N	2022-11-14 10:27:24	2022-11-14 10:29:05
\.


--
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.menus (id, name, body, image_path, created_at, updated_at) FROM stdin;
1	2010A	黒酢酢豚・きゅうりの浅漬け・中華風コーンスープ・黒ごまプリン	0.10A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
2	2010B	チキンカレー・ほうれん草とヨーグルトのカレー・チーズクルチャ&ターメリックライス・マンゴーラッシー	0.10B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
3	2010C	手打ちニョッキのチーズグラタン・スパイシーチキン・かぼちゃとナッツのサラダ&トマトとルッコラのサラダ・まるごとマロンケーキ	0.10C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
4	2011A	みそしょうが焼き・雑穀ご飯・ミネラルサラダ・きのこの豆乳みそ汁・キャラメル豆乳プリン	0.11A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
5	2011B	チリトマトカルボナーラ・マスタードチキングリル・焼ききのこサラダ・洋梨のクラフティ	0.11B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
6	2012A	ローストビーフ〜玉ねぎとしょうゆこうじのソース・トマトのポトフ〜チーズバゲット〜・グラスディップサラダ・ホワイトムース〜ベリーソース仕立て〜	0.12A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
7	2012B	伊達巻き寿司・スペアリブの香味みそ焼き・海老のタルタルグリル・紅芯大根のゆずこしょう甘酢・かまぼこのクリームチーズサンド・関東風雑煮	0.12B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
8	2012C	ロブスターのビスク風パスタ・マッシュルームと温泉卵のサラダ・ヴィシソワーズ・ショコラケイク	0.12C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
9	2101A	牛肉のステーキ〜レモンバター醤油仕立て〜・クラムチャウダー・グリーンサラダ・バラのクレープ	1.01A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
10	2101B	万能だれ・鰤の竜田揚げ&長芋わかめ天・雑穀ご飯・圧力調理バッグで時短チャーシュー・ザーサイとかぶの豆乳みそ汁・アップルサイダーゼリー	1.01B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
11	2101C	真鯛のポワレ〜サルサヴェルデ仕立て〜・ホタテのサフランリゾット・トマトドレッシングのサラダ・塩キャラメルミルフィーユ	1.01C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
12	2102A	ボロネーゼソースのラザニア・オニオングラタンスープ・スモークサーモンのサラダ・チョコバナナパフェ	1.02A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
13	2102B	5種ナムルのビビンパ・卵と海苔のスープ・チーズタッカルビ・ゆず茶のケーキ	1.02B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
14	2102C	フォグラハンバーグステーキ・キャロットポタージュ・グリーンサラダ・珈琲プリン	1.02C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
15	2103A	チキン南蛮〜たくあんタルタル添え・雑穀ご飯・キャベツのかきたまみそ汁・あさりと春野菜の酒蒸し・抹茶豆乳ババロア	1.03A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
16	2103B	桜ごはん・レンジで作る洋風つくね・海老と青じその春巻き・和風ジャーマンポテト・切り干し大根のゆかり甘酢・卵焼き・桜餅	1.03B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
17	2103C	うにトマトクリーム仕立てのロールキャベツ・菜の花とアボガドのエッグサラダ・カマンベールチーズのパーネ・オレンジのパンナコッタ	1.03C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
18	2104A	・ハッシュドビーフのオムライス・コブサラダ・いちごのスノーボールクッキー	1.04A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
19	2104B	四川風麻婆豆腐・雲白肉〜ウンパイロー〜・黄金チャーハン・杏仁プリン	1.04B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
20	2104C	肉バルのラクレットプレート〜豚肉のハニーロースト&ミートボール・あさりとレモンのパエリア・オニオンサラダ・ストロベリースパークリング	1.04C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
21	2105A	十勝若牛のステーキディッシュ・ガーリックライス・パイナップルとキャベツのコールスロー・飲むチーズケーキ	1.05A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
22	2105B	2種のパスタ〜アマトリチャーナ&冷製たらこレモン・バジルチキンサラダ・キウイヨーグルト	1.05B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
23	2105C	韓国風ザクザクチキン&ヤンニョムチキン・チーズキンパ・わかめの炒めドレッシングサラダ・トゥンカロン〜韓国風マカロン〜	1.05C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
24	2106A	台湾まぜそば・ぷりぷり海老餃子・白いたまごプリン	1.06A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
25	2106B	5種野菜と鶏肉のごま香味炒め・オクラとみょうがの冷たいみそ汁・桜海老とチーズの卵焼き・小松菜のごま和え・フルーツ和ポンチ	1.06B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
26	2106C	豚しゃぶのスープカレー・ターメリックライス・グリルチキンウイング・アボガドとトマトのサラダ・ココナッツミルクラッシー	1.06C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
27	2107A	スコッチエッグ・アスパラフライ・炒り黒豆のごはん・揚げなすのみそ汁・抹茶くるみわらび餅	1.07A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
28	2107B	ガパオライス・チャーゾー〜ベトナム風揚げ春巻き〜・牛肉とミントのサラダ・マンゴーミルク	1.07B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
29	2107C	焼き小籠包・ラーズーチー〜鶏のから揚げ甘辛四川炒め〜トマトと卵のスープ・ライチプリン	1.07C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
30	2108A	すき焼き丼・枝豆とたたききゅうりのサラダ・焼き枝豆のみそ汁・甘酒クリームコーヒーゼリー	1.08A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
31	2108B	プーパッポンカリー〜ソフトシェルクラブと卵のカレー炒め〜・鶏肉のピーナッツグリル・エスニックツナサラダ・グレープフルーツゼリー	1.08B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
32	2108C	手打ちうどん〜明太チーズかま玉&トマトだしつゆ〜・豚竜田揚げのサラダ仕立て・みたらし団子	1.08C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
33	2109A	鯵フライ・雑穀ご飯・手羽中と大根のスピード煮物・大根みそ汁・季節の水菓子	1.09A.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
34	2109B	海老コーン天むす・カラフルチキンボール・ふわふわハムたまチーズ・ズッキーニの焼きナムル・きのこのレモンソテー・紅芯大根の甘酢漬け・ブルーベリー大福	1.09B.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
35	2109C	フレッシュポルチーニのクリームパスタ・鶏肉のトマト煮込み・ぶどうとレモンのサラダ・さつま芋のモンブラン	1.09C.jpg	2021-11-03 01:58:31	2021-11-03 01:58:31
36	2110A	サクサクとろーり五目おこげ・海老チリ春巻き・わかめとザーサイの和え物・レモンティーゼリー	ZDwuUEo2vlqmH6ecjO7ZwbbV0NofA2XjGxhG5ikT.jpg	2021-11-03 01:58:31	2021-11-27 23:00:07
37	2110B	デミグラス煮込みチーズハンバーグ・かぼちゃのみそ汁・りんごと春菊のサラダ・カスタードアップルパイ	EK3a8rGWtO8sQv4RpZ4tktb5g3Pq0lM4708W92j4.jpg	2021-11-03 01:58:31	2021-11-27 23:00:42
38	2110C	チキンとかぼちゃのガーリッククリームシチュー〜シュクメルリ・とろーり卵のチーズブレッド〜ハチャプリ・ハロウィンサラダ・ウフアラネージュ〜メレンゲデザート	nH3ibCxzy9AsjN7dxceJcTyCVZ3dCV002FrUygSc.jpg	2021-11-03 01:58:31	2021-11-27 23:01:29
39	kids	基本のポークソテー	4NUsROyNI3APlXJ1yquz2ZaDznUGwFHg98l9wshF.jpg	2021-11-03 01:58:31	2021-11-28 11:48:03
40	kids	レンジで！もやしと豆苗の豚巻きレンジ蒸し	ZU2zcvLR3RlHm25mP4WffVquKMgbgdI4Yw4PS5qF.jpg	2021-11-03 01:58:31	2021-11-28 11:48:42
41	kids	香りもごちそう鮭のガリバタ醤油ムニエル	MV9CkJ1EgE2eNfRZvESmTE1dOiD6ipZ4LueuDFF7.jpg	2021-11-03 01:58:31	2021-11-28 11:50:07
42	kids	やみつきピリ辛きゅうり	ShTMzzabsp1972bTVTukYrdtAUmcSKiYHKFOkfeN.jpg	2021-11-03 01:58:31	2021-11-28 11:50:37
43	kids	ジューシー鶏の唐揚げ	ItIkOiTvzzqh3CN8VWgIf7JMZSeFe0xWv9iAElzj.jpg	2021-11-03 01:58:31	2021-11-28 12:08:42
44	kids	ふんわりやわらか！簡単海老チリ	b6FpdSofWHjC619RVMP4lRsqhx2KRfSvmkKR0i6Y.jpg	2021-11-03 01:58:31	2021-11-28 12:14:40
45	hiro	牡蠣とほうれん草のレモンクリームパスタ	EJxS74X4uLVTdAwSd0iENDhXJ2VCGUaBTtFOnbDo.jpg	2021-11-03 01:58:31	2021-11-28 11:47:17
46	hiro	しじみの中華スープ		2021-11-03 01:58:31	2021-11-03 01:58:31
47	hiro	はまぐりの潮汁		2021-11-03 01:58:31	2021-11-03 01:58:31
48	hiro	アアスパラと海老の塩ソース蒸し		2021-11-03 01:58:31	2021-11-03 01:58:31
49	hiro	あおさ汁		2021-11-03 01:58:31	2021-11-03 01:58:31
50	hiro	茶碗蒸し	OfLoCsEVaOnjp7askOG92iFlgr4mPWZaT42XCRrJ.jpg	2021-11-03 01:58:31	2021-11-28 12:04:16
51	hiro	アジのたたき	P8BGa4CyrIaQXTri7CCvMrReXbn9BNEZRfLoJcy0.jpg	2021-11-03 01:58:31	2021-11-28 12:05:08
52	hiro	カレーパン	1nQ0aqQtQlFithFeviq1Df3TCvC4Z6Wzf77tNoge.jpg	2021-11-03 01:58:31	2021-11-28 12:07:56
53	hiro	鶏肉のトマト煮込み(カチャトーラ)		2021-11-03 01:58:31	2021-11-03 01:58:31
54	2111A	ビーフカツサンド　ワンポットナポリタン　アップルピクルス&グリーンサラダ　グレープフルーツのクレープ	BKWJrRRnJ3HHzX0TwbdyqqnFEs8jynkAvTqyELsj.jpg	2021-12-09 01:13:39	2021-12-11 04:05:40
55	2111B	シーフードトマトクリームドリア　ガーリックポークステーキ　紅芯大根のレモンサラダ\\r\\nりんごのジュレ	R0uWlHI4jdufkbqUp9KpKTlWY9SRTlP0jkJXZFJn.jpg	2021-12-09 01:50:53	2021-12-11 04:05:19
56	2111C	5種のてまり寿司　フリットミスト　塩豆腐とトマトのサラダ　かぶとベーコンの白みそ椀仕立て　固めの焼きプリン	uMphfebFwUalvKIJfmrzyUAsMPgaWjDASlmeLeah.jpg	2021-12-09 09:04:57	2021-12-11 04:03:24
57	2112A	ハニーマスタードローストチキン&ローズマリーポテト・トマトのオニオンスープ・トロトロ卵のサラダ・いちごのマリトッツォ	xD03DC4rR1VMQZf5QTUIfD7LkQLtqHSKCefaUAFn.jpg	2021-12-10 01:24:13	2021-12-11 04:02:53
58	2112B	豚の角煮・海老の香味焼き・オレンジ栗きんとん・紅白なます・メープル黒豆・市田柿のサワークリーム巻き・みぞれ雑煮	pA2KGblZgKzr304tzWie19t3ChnK1SPK3PJaXcBC.jpg	2021-12-10 01:27:58	2021-12-11 04:02:02
59	2112C	牛肉のワイン煮込み・ドフィノワ~じゃが芋のグラタン~バーニャカウダ・オレンジマフィン	qXxLVmYDLoMFwpxujSYdeBZMsrjodiWd429LL6Vi.jpg	2021-12-10 01:29:35	2021-12-11 04:02:31
60	★携帯お気に入り	携帯お気に入りレシピ	\N	2021-12-13 08:52:53	2021-12-13 08:52:53
61	その他	どこにも入らない料理	\N	2021-12-13 09:09:58	2021-12-13 09:09:58
63	おせち	作り方	\N	2021-12-22 05:51:03	2021-12-22 05:51:03
96	クリスマス	手順	\N	2021-12-25 23:19:56	2021-12-25 23:19:56
97	2201A	牛肉のデミボロネーゼ愛鯛のカルパッチョ	\N	2021-12-30 15:36:36	2021-12-30 15:36:36
98	2102A	サムゲタン風スープ	\N	2022-01-01 15:26:51	2022-01-01 15:26:51
100	2102C	サムゲタン風スープ	\N	2022-01-01 15:32:14	2022-01-01 15:32:14
99	2102B	わかめごはん	\N	2022-01-01 15:31:59	2022-01-02 05:32:51
101	2201C	海老と大根のスープ	5ZwoU7ZjhP3KxlDUD2FQB4FuGpaUC1I4QNeBgv5R.jpg	2022-07-04 01:59:20	2022-07-04 01:59:20
102	2202B	鶏から揚げ〜香味ねぎだれ添え〜\r\n揚げ出し豆腐\r\nわかめごはん\r\nゆず大根\r\nいちごわらび餅	aNH7nyZeG0VFpkOx0RLxbpbrYBPSTBPqT6R6v3L9.jpg	2022-07-04 13:16:02	2022-07-04 13:16:02
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2021_09_08_014221_create_nutrients_table	1
4	2021_09_08_025056_create_material_categories_table	1
5	2021_09_08_104855_create_materials_table	1
6	2021_09_11_004409_create_nutrient_materials_table	1
7	2021_09_15_015021_create_recipe_categories_table	1
8	2021_09_15_232130_create_howtos_table	1
9	2021_10_04_083637_create_menus_table	1
10	2021_10_09_071036_create_seasonings_table	1
11	2021_11_02_005233_create_recipes_table	1
12	2021_11_02_005234_create_recipe_materials_table	1
13	2021_12_01_000000_create_recipe_countries_table	1
14	2021_12_02_000000_create_mainsubs_table	1
18	2022_02_04_000001_create_seasons_table	2
19	2022_02_04_000002_create_tags_table	2
20	2022_02_04_000003_create_recipe_tags_table	2
\.


--
-- Data for Name: nutrient_materials; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.nutrient_materials (id, nutrient_id, material_id, memo, created_at, updated_at) FROM stdin;
1256	14	224	\N	2022-02-13 23:59:20	2022-02-13 23:59:20
1113	28	37	\N	2022-01-24 12:33:32	2022-01-24 12:33:32
1114	37	37	\N	2022-01-24 12:33:32	2022-01-24 12:33:32
1128	38	0	\N	2022-01-24 13:41:58	2022-01-24 13:41:58
734	12	119	\N	2021-12-29 13:09:37	2021-12-29 13:09:37
6	1	89		2021-10-21 05:52:08	2021-10-21 05:52:08
735	13	119	\N	2021-12-29 13:09:37	2021-12-29 13:09:37
736	24	119	\N	2021-12-29 13:09:37	2021-12-29 13:09:37
753	11	0	\N	2021-12-29 13:30:23	2021-12-29 13:30:23
10	1	100		2021-10-21 05:52:08	2021-10-21 05:52:08
11	2	2		2021-10-21 05:52:08	2021-10-21 05:52:08
906	32	80	\N	2022-01-11 02:13:15	2022-01-11 02:13:15
915	32	220	\N	2022-01-11 02:18:08	2022-01-11 02:18:08
1257	22	224	\N	2022-02-13 23:59:20	2022-02-13 23:59:20
18	2	16		2021-10-21 05:52:08	2021-10-21 05:52:08
31	2	43		2021-10-21 05:52:08	2021-10-21 05:52:08
35	2	48		2021-10-21 05:52:08	2021-10-21 05:52:08
39	2	53		2021-10-21 05:52:08	2021-10-21 05:52:08
929	28	34	\N	2022-01-16 12:38:09	2022-01-16 12:38:09
48	2	62		2021-10-21 05:52:08	2021-10-21 05:52:08
55	2	69		2021-10-21 05:52:08	2021-10-21 05:52:08
59	2	74		2021-10-21 05:52:08	2021-10-21 05:52:08
61	2	76		2021-10-21 05:52:08	2021-10-21 05:52:08
62	2	199		2021-10-21 05:52:08	2021-10-21 05:52:08
64	2	241		2021-10-21 05:52:08	2021-10-21 05:52:08
844	30	232	\N	2022-01-02 00:56:50	2022-01-02 00:56:50
67	2	77		2021-10-21 05:52:08	2021-10-21 05:52:08
69	2	79		2021-10-21 05:52:08	2021-10-21 05:52:08
854	14	278	\N	2022-01-02 01:10:21	2022-01-02 01:10:21
858	31	250	\N	2022-01-02 01:16:10	2022-01-02 01:16:10
78	2	89		2021-10-21 05:52:08	2021-10-21 05:52:08
79	2	92		2021-10-21 05:52:08	2021-10-21 05:52:08
81	2	197		2021-10-21 05:52:08	2021-10-21 05:52:08
83	2	100		2021-10-21 05:52:08	2021-10-21 05:52:08
84	2	101		2021-10-21 05:52:08	2021-10-21 05:52:08
85	2	102		2021-10-21 05:52:08	2021-10-21 05:52:08
86	2	107		2021-10-21 05:52:08	2021-10-21 05:52:08
87	2	108		2021-10-21 05:52:08	2021-10-21 05:52:08
88	2	110		2021-10-21 05:52:08	2021-10-21 05:52:08
89	2	111		2021-10-21 05:52:08	2021-10-21 05:52:08
90	2	112		2021-10-21 05:52:08	2021-10-21 05:52:08
876	28	68	\N	2022-01-02 05:16:26	2022-01-02 05:16:26
877	15	68	\N	2022-01-02 05:16:26	2022-01-02 05:16:26
878	17	68	\N	2022-01-02 05:16:26	2022-01-02 05:16:26
106	4	128		2021-10-21 05:52:08	2021-10-21 05:52:08
885	2	45	\N	2022-01-10 15:42:12	2022-01-10 15:42:12
886	15	45	\N	2022-01-10 15:42:12	2022-01-10 15:42:12
891	22	324	\N	2022-01-10 16:16:26	2022-01-10 16:16:26
892	9	324	\N	2022-01-10 16:16:26	2022-01-10 16:16:26
893	24	324	\N	2022-01-10 16:16:26	2022-01-10 16:16:26
894	4	324	\N	2022-01-10 16:16:26	2022-01-10 16:16:26
895	23	324	\N	2022-01-10 16:16:26	2022-01-10 16:16:26
896	28	324	\N	2022-01-10 16:16:26	2022-01-10 16:16:26
897	13	324	\N	2022-01-10 16:16:26	2022-01-10 16:16:26
898	12	324	\N	2022-01-10 16:16:26	2022-01-10 16:16:26
717	9	132	\N	2021-12-29 13:04:19	2021-12-29 13:04:19
718	16	132	\N	2021-12-29 13:04:19	2021-12-29 13:04:19
916	32	277	\N	2022-01-11 02:18:33	2022-01-11 02:18:33
124	6	43		2021-10-21 05:52:08	2021-10-21 05:52:08
719	4	132	\N	2021-12-29 13:04:19	2021-12-29 13:04:19
128	6	48		2021-10-21 05:52:08	2021-10-21 05:52:08
926	7	61	\N	2022-01-11 15:38:10	2022-01-11 15:38:10
138	6	62		2021-10-21 05:52:08	2021-10-21 05:52:08
1258	28	65	\N	2022-02-14 00:00:44	2022-02-14 00:00:44
144	6	199		2021-10-21 05:52:08	2021-10-21 05:52:08
754	11	322	\N	2021-12-29 13:33:01	2021-12-29 13:33:01
146	6	77		2021-10-21 05:52:08	2021-10-21 05:52:08
147	6	80		2021-10-21 05:52:08	2021-10-21 05:52:08
152	6	92		2021-10-21 05:52:08	2021-10-21 05:52:08
153	6	101		2021-10-21 05:52:08	2021-10-21 05:52:08
154	6	102		2021-10-21 05:52:08	2021-10-21 05:52:08
927	13	61	\N	2022-01-11 15:38:10	2022-01-11 15:38:10
156	6	183		2021-10-21 05:52:08	2021-10-21 05:52:08
1129	40	332	\N	2022-01-24 13:57:27	2022-01-24 13:57:27
928	28	61	\N	2022-01-11 15:38:10	2022-01-11 15:38:10
755	6	322	\N	2021-12-29 13:33:01	2021-12-29 13:33:01
930	28	109	\N	2022-01-16 12:40:32	2022-01-16 12:40:32
931	5	109	\N	2022-01-16 12:40:32	2022-01-16 12:40:32
932	1	109	\N	2022-01-16 12:40:32	2022-01-16 12:40:32
933	17	109	\N	2022-01-16 12:40:32	2022-01-16 12:40:32
958	5	106	\N	2022-01-16 12:53:23	2022-01-16 12:53:23
959	28	106	\N	2022-01-16 12:53:23	2022-01-16 12:53:23
960	24	106	\N	2022-01-16 12:53:23	2022-01-16 12:53:23
961	18	106	\N	2022-01-16 12:53:23	2022-01-16 12:53:23
979	24	294	\N	2022-01-17 05:10:40	2022-01-17 05:10:40
980	28	294	\N	2022-01-17 05:10:40	2022-01-17 05:10:40
981	23	294	\N	2022-01-17 05:10:40	2022-01-17 05:10:40
997	4	0	\N	2022-01-23 11:31:47	2022-01-23 11:31:47
785	27	290	\N	2022-01-01 16:09:47	2022-01-01 16:09:47
806	13	50	\N	2022-01-02 00:46:02	2022-01-02 00:46:02
1041	28	4	\N	2022-01-23 12:45:08	2022-01-23 12:45:08
1042	1	4	\N	2022-01-23 12:45:08	2022-01-23 12:45:08
1043	36	4	\N	2022-01-23 12:45:08	2022-01-23 12:45:08
1044	15	4	\N	2022-01-23 12:45:08	2022-01-23 12:45:08
1045	4	4	\N	2022-01-23 12:45:08	2022-01-23 12:45:08
1046	18	4	\N	2022-01-23 12:45:08	2022-01-23 12:45:08
1067	4	94	\N	2022-01-23 12:50:47	2022-01-23 12:50:47
1082	28	330	\N	2022-01-23 15:12:54	2022-01-23 15:12:54
1083	15	330	\N	2022-01-23 15:12:54	2022-01-23 15:12:54
1084	18	330	\N	2022-01-23 15:12:54	2022-01-23 15:12:54
908	32	92	\N	2022-01-11 02:14:29	2022-01-11 02:14:29
223	8	15		2021-10-21 05:52:08	2021-10-21 05:52:08
720	12	114	\N	2021-12-29 13:05:15	2021-12-29 13:05:15
721	13	114	\N	2021-12-29 13:05:15	2021-12-29 13:05:15
1121	24	121	\N	2022-01-24 12:53:33	2022-01-24 12:53:33
917	32	236	\N	2022-01-11 02:18:54	2022-01-11 02:18:54
1122	34	121	\N	2022-01-24 12:53:33	2022-01-24 12:53:33
242	8	149		2021-10-21 05:52:08	2021-10-21 05:52:08
1123	5	121	\N	2022-01-24 12:53:33	2022-01-24 12:53:33
1124	4	121	\N	2022-01-24 12:53:33	2022-01-24 12:53:33
951	28	66	\N	2022-01-16 12:48:21	2022-01-16 12:48:21
1259	8	150	\N	2022-02-14 00:02:25	2022-02-14 00:02:25
1260	22	150	\N	2022-02-14 00:02:25	2022-02-14 00:02:25
1261	24	150	\N	2022-02-14 00:02:25	2022-02-14 00:02:25
952	25	66	\N	2022-01-16 12:48:21	2022-01-16 12:48:21
1262	23	150	\N	2022-02-14 00:02:25	2022-02-14 00:02:25
1263	36	150	\N	2022-02-14 00:02:25	2022-02-14 00:02:25
722	14	114	\N	2021-12-29 13:05:16	2021-12-29 13:05:16
259	9	104		2021-10-21 05:52:08	2021-10-21 05:52:08
260	9	107		2021-10-21 05:52:08	2021-10-21 05:52:08
261	9	108		2021-10-21 05:52:08	2021-10-21 05:52:08
262	9	110		2021-10-21 05:52:08	2021-10-21 05:52:08
263	9	111		2021-10-21 05:52:08	2021-10-21 05:52:08
264	9	112		2021-10-21 05:52:08	2021-10-21 05:52:08
962	28	0	\N	2022-01-17 01:17:56	2022-01-17 01:17:56
982	24	295	\N	2022-01-17 05:11:33	2022-01-17 05:11:33
983	28	295	\N	2022-01-17 05:11:33	2022-01-17 05:11:33
984	23	295	\N	2022-01-17 05:11:33	2022-01-17 05:11:33
271	9	128		2021-10-21 05:52:08	2021-10-21 05:52:08
993	27	0	\N	2022-01-23 09:42:41	2022-01-23 09:42:41
998	12	126	\N	2022-01-23 12:33:35	2022-01-23 12:33:35
999	14	126	\N	2022-01-23 12:33:35	2022-01-23 12:33:35
1023	24	203	\N	2022-01-23 12:40:26	2022-01-23 12:40:26
1024	36	203	\N	2022-01-23 12:40:26	2022-01-23 12:40:26
277	10	15		2021-10-21 05:52:08	2021-10-21 05:52:08
278	10	16		2021-10-21 05:52:08	2021-10-21 05:52:08
282	10	241		2021-10-21 05:52:08	2021-10-21 05:52:08
1025	11	203	\N	2022-01-23 12:40:26	2022-01-23 12:40:26
1026	4	203	\N	2022-01-23 12:40:26	2022-01-23 12:40:26
1047	24	131	\N	2022-01-23 12:46:54	2022-01-23 12:46:54
1048	34	131	\N	2022-01-23 12:46:54	2022-01-23 12:46:54
1049	15	131	\N	2022-01-23 12:46:54	2022-01-23 12:46:54
807	30	50	\N	2022-01-02 00:46:02	2022-01-02 00:46:02
808	6	50	\N	2022-01-02 00:46:02	2022-01-02 00:46:02
308	11	265		2021-10-21 05:52:08	2021-10-21 05:52:08
313	11	270		2021-10-21 05:52:08	2021-10-21 05:52:08
317	11	199		2021-10-21 05:52:08	2021-10-21 05:52:08
845	12	275	\N	2022-01-02 01:00:29	2022-01-02 01:00:29
846	9	275	\N	2022-01-02 01:00:29	2022-01-02 01:00:29
847	24	275	\N	2022-01-02 01:00:29	2022-01-02 01:00:29
848	4	275	\N	2022-01-02 01:00:29	2022-01-02 01:00:29
855	14	223	\N	2022-01-02 01:10:51	2022-01-02 01:10:51
859	31	2	\N	2022-01-02 01:17:58	2022-01-02 01:17:58
899	13	233	\N	2022-01-10 16:17:22	2022-01-10 16:17:22
900	30	233	\N	2022-01-10 16:17:22	2022-01-10 16:17:22
329	11	113		2021-10-21 05:52:08	2021-10-21 05:52:08
909	6	298	\N	2022-01-11 02:15:26	2022-01-11 02:15:26
910	32	298	\N	2022-01-11 02:15:26	2022-01-11 02:15:26
918	24	0	\N	2022-01-11 02:28:17	2022-01-11 02:28:17
936	22	22	\N	2022-01-16 12:41:50	2022-01-16 12:41:50
937	2	22	\N	2022-01-16 12:41:50	2022-01-16 12:41:50
1131	40	284	\N	2022-01-24 14:04:06	2022-01-24 14:04:06
1132	38	284	\N	2022-01-24 14:04:06	2022-01-24 14:04:06
339	11	125		2021-10-21 05:52:08	2021-10-21 05:52:08
938	18	22	\N	2022-01-16 12:41:50	2022-01-16 12:41:50
341	11	128		2021-10-21 05:52:08	2021-10-21 05:52:08
343	11	129		2021-10-21 05:52:08	2021-10-21 05:52:08
963	8	328	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
348	12	104		2021-10-21 05:52:08	2021-10-21 05:52:08
349	12	107		2021-10-21 05:52:08	2021-10-21 05:52:08
350	12	108		2021-10-21 05:52:08	2021-10-21 05:52:08
351	12	110		2021-10-21 05:52:08	2021-10-21 05:52:08
352	12	111		2021-10-21 05:52:08	2021-10-21 05:52:08
353	12	112		2021-10-21 05:52:08	2021-10-21 05:52:08
354	12	113		2021-10-21 05:52:08	2021-10-21 05:52:08
964	22	328	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
965	15	328	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
359	12	125		2021-10-21 05:52:08	2021-10-21 05:52:08
361	12	129		2021-10-21 05:52:08	2021-10-21 05:52:08
966	11	328	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
967	23	328	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
365	13	93		2021-10-21 05:52:08	2021-10-21 05:52:08
368	13	113		2021-10-21 05:52:08	2021-10-21 05:52:08
968	4	328	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
969	1	328	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
374	13	125		2021-10-21 05:52:08	2021-10-21 05:52:08
376	13	129		2021-10-21 05:52:08	2021-10-21 05:52:08
377	14	2		2021-10-21 05:52:08	2021-10-21 05:52:08
970	2	328	\N	2022-01-17 04:31:17	2022-01-17 04:31:17
985	8	329	\N	2022-01-17 05:13:40	2022-01-17 05:13:40
1036	18	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
387	14	206		2021-10-21 05:52:08	2021-10-21 05:52:08
986	9	329	\N	2022-01-17 05:13:40	2022-01-17 05:13:40
987	22	329	\N	2022-01-17 05:13:40	2022-01-17 05:13:40
988	24	329	\N	2022-01-17 05:13:40	2022-01-17 05:13:40
989	30	329	\N	2022-01-17 05:13:40	2022-01-17 05:13:40
990	2	329	\N	2022-01-17 05:13:40	2022-01-17 05:13:40
994	7	0	\N	2022-01-23 11:28:59	2022-01-23 11:28:59
395	15	43		2021-10-21 05:52:08	2021-10-21 05:52:08
402	15	108		2021-10-21 05:52:08	2021-10-21 05:52:08
407	16	276		2021-10-21 05:52:08	2021-10-21 05:52:08
408	16	260		2021-10-21 05:52:08	2021-10-21 05:52:08
413	16	265		2021-10-21 05:52:08	2021-10-21 05:52:08
418	16	270		2021-10-21 05:52:08	2021-10-21 05:52:08
424	16	113		2021-10-21 05:52:08	2021-10-21 05:52:08
1027	24	120	\N	2022-01-23 12:41:03	2022-01-23 12:41:03
1050	34	315	\N	2022-01-23 12:47:32	2022-01-23 12:47:32
1051	12	315	\N	2022-01-23 12:47:32	2022-01-23 12:47:32
1052	22	315	\N	2022-01-23 12:47:32	2022-01-23 12:47:32
1053	24	315	\N	2022-01-23 12:47:32	2022-01-23 12:47:32
433	16	125		2021-10-21 05:52:08	2021-10-21 05:52:08
1095	9	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
1096	12	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
1097	16	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
1098	18	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
1099	28	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
1100	24	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
1101	34	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
849	14	242	\N	2022-01-02 01:02:28	2022-01-02 01:02:28
856	14	250	\N	2022-01-02 01:13:43	2022-01-02 01:13:43
860	14	201	\N	2022-01-02 01:18:42	2022-01-02 01:18:42
1102	7	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
1103	5	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
1104	4	274	\N	2022-01-23 15:36:35	2022-01-23 15:36:35
436	16	128		2021-10-21 05:52:08	2021-10-21 05:52:08
437	16	129		2021-10-21 05:52:08	2021-10-21 05:52:08
911	32	153	\N	2022-01-11 02:17:12	2022-01-11 02:17:12
919	33	92	\N	2022-01-11 02:54:25	2022-01-11 02:54:25
1126	38	103	\N	2022-01-24 13:21:38	2022-01-24 13:21:38
1133	28	52	\N	2022-01-25 04:02:03	2022-01-25 04:02:03
939	34	23	\N	2022-01-16 12:45:34	2022-01-16 12:45:34
1134	14	52	\N	2022-01-25 04:02:03	2022-01-25 04:02:03
453	17	74		2021-10-21 05:52:08	2021-10-21 05:52:08
454	17	76		2021-10-21 05:52:08	2021-10-21 05:52:08
455	17	199		2021-10-21 05:52:08	2021-10-21 05:52:08
456	17	80		2021-10-21 05:52:08	2021-10-21 05:52:08
459	17	111		2021-10-21 05:52:08	2021-10-21 05:52:08
954	24	202	\N	2022-01-16 12:51:55	2022-01-16 12:51:55
464	19	79		2021-10-21 05:52:08	2021-10-21 05:52:08
465	2	32	\N	2021-12-02 01:57:37	2021-12-02 01:57:37
466	6	32	\N	2021-12-02 01:57:37	2021-12-02 01:57:37
467	17	32	\N	2021-12-02 01:57:37	2021-12-02 01:57:37
955	34	202	\N	2022-01-16 12:51:55	2022-01-16 12:51:55
473	16	297	\N	2021-12-08 13:50:39	2021-12-08 13:50:39
474	17	297	\N	2021-12-08 13:50:39	2021-12-08 13:50:39
476	16	300	\N	2021-12-09 02:14:20	2021-12-09 02:14:20
801	29	326	\N	2022-01-01 17:16:42	2022-01-01 17:16:42
802	6	326	\N	2022-01-01 17:16:42	2022-01-01 17:16:42
803	2	326	\N	2022-01-01 17:16:42	2022-01-01 17:16:42
488	24	0	\N	2021-12-18 03:40:49	2021-12-18 03:40:49
840	6	158	\N	2022-01-02 00:55:51	2022-01-02 00:55:51
841	13	158	\N	2022-01-02 00:55:51	2022-01-02 00:55:51
842	30	158	\N	2022-01-02 00:55:51	2022-01-02 00:55:51
843	22	158	\N	2022-01-02 00:55:51	2022-01-02 00:55:51
850	9	264	\N	2022-01-02 01:06:56	2022-01-02 01:06:56
851	24	264	\N	2022-01-02 01:06:56	2022-01-02 01:06:56
852	16	264	\N	2022-01-02 01:06:56	2022-01-02 01:06:56
853	11	264	\N	2022-01-02 01:06:56	2022-01-02 01:06:56
995	5	0	\N	2022-01-23 11:29:48	2022-01-23 11:29:48
1007	4	0	\N	2022-01-23 12:36:10	2022-01-23 12:36:10
1028	1	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
1029	8	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
1030	23	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
1031	27	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
1032	4	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
1033	15	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
1034	36	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
1035	18	323	\N	2022-01-23 12:42:29	2022-01-23 12:42:29
1054	5	204	\N	2022-01-23 12:48:14	2022-01-23 12:48:14
1055	4	204	\N	2022-01-23 12:48:14	2022-01-23 12:48:14
1056	28	204	\N	2022-01-23 12:48:14	2022-01-23 12:48:14
857	31	251	\N	2022-01-02 01:15:34	2022-01-02 01:15:34
861	14	302	\N	2022-01-02 01:21:34	2022-01-02 01:21:34
862	31	302	\N	2022-01-02 01:21:34	2022-01-02 01:21:34
874	2	59	\N	2022-01-02 01:54:18	2022-01-02 01:54:18
875	22	59	\N	2022-01-02 01:54:18	2022-01-02 01:54:18
890	7	51	\N	2022-01-10 16:14:00	2022-01-10 16:14:00
904	25	256	\N	2022-01-10 16:20:30	2022-01-10 16:20:30
905	22	256	\N	2022-01-10 16:20:30	2022-01-10 16:20:30
1076	13	124	\N	2022-01-23 12:54:45	2022-01-23 12:54:45
1077	24	124	\N	2022-01-23 12:54:45	2022-01-23 12:54:45
1078	5	124	\N	2022-01-23 12:54:45	2022-01-23 12:54:45
1079	34	124	\N	2022-01-23 12:54:45	2022-01-23 12:54:45
1105	1	331	\N	2022-01-23 15:46:49	2022-01-23 15:46:49
552	4	0	\N	2021-12-19 15:43:17	2021-12-19 15:43:17
553	4	0	\N	2021-12-19 15:44:26	2021-12-19 15:44:26
554	4	0	\N	2021-12-19 15:54:36	2021-12-19 15:54:36
555	1	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
556	2	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
557	10	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
558	23	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
559	4	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
560	12	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
561	8	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
562	9	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
563	22	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
564	24	317	\N	2021-12-26 02:13:31	2021-12-26 02:13:31
920	33	0	\N	2022-01-11 02:58:38	2022-01-11 02:58:38
940	24	261	\N	2022-01-16 12:46:17	2022-01-16 12:46:17
956	24	281	\N	2022-01-16 12:52:22	2022-01-16 12:52:22
957	34	281	\N	2022-01-16 12:52:22	2022-01-16 12:52:22
590	26	79	\N	2021-12-29 12:13:09	2021-12-29 12:13:09
592	26	0	\N	2021-12-29 12:14:41	2021-12-29 12:14:41
593	11	0	\N	2021-12-29 12:16:48	2021-12-29 12:16:48
594	11	0	\N	2021-12-29 12:19:03	2021-12-29 12:19:03
996	15	0	\N	2022-01-23 11:30:55	2022-01-23 11:30:55
1008	13	3	\N	2022-01-23 12:37:17	2022-01-23 12:37:17
599	1	6	\N	2021-12-29 12:25:24	2021-12-29 12:25:24
600	2	6	\N	2021-12-29 12:25:24	2021-12-29 12:25:24
601	16	6	\N	2021-12-29 12:25:24	2021-12-29 12:25:24
602	17	6	\N	2021-12-29 12:25:24	2021-12-29 12:25:24
603	18	6	\N	2021-12-29 12:25:24	2021-12-29 12:25:24
1009	16	3	\N	2022-01-23 12:37:17	2022-01-23 12:37:17
1010	28	3	\N	2022-01-23 12:37:17	2022-01-23 12:37:17
752	11	0	\N	2021-12-29 13:24:26	2021-12-29 13:24:26
1127	39	332	\N	2022-01-24 13:31:40	2022-01-24 13:31:40
1135	24	0	\N	2022-01-26 11:58:28	2022-01-26 11:58:28
621	2	56	\N	2021-12-29 12:47:36	2021-12-29 12:47:36
622	17	56	\N	2021-12-29 12:47:36	2021-12-29 12:47:36
1011	15	3	\N	2022-01-23 12:37:17	2022-01-23 12:37:17
1012	4	3	\N	2022-01-23 12:37:17	2022-01-23 12:37:17
1037	13	226	\N	2022-01-23 12:43:20	2022-01-23 12:43:20
1038	28	226	\N	2022-01-23 12:43:20	2022-01-23 12:43:20
1039	30	226	\N	2022-01-23 12:43:20	2022-01-23 12:43:20
1040	7	226	\N	2022-01-23 12:43:20	2022-01-23 12:43:20
1080	2	90	\N	2022-01-23 12:57:54	2022-01-23 12:57:54
1081	17	90	\N	2022-01-23 12:57:54	2022-01-23 12:57:54
1106	28	8	\N	2022-01-23 15:48:38	2022-01-23 15:48:38
661	2	259	\N	2021-12-29 12:53:15	2021-12-29 12:53:15
662	3	259	\N	2021-12-29 12:53:15	2021-12-29 12:53:15
663	7	259	\N	2021-12-29 12:53:15	2021-12-29 12:53:15
664	10	259	\N	2021-12-29 12:53:15	2021-12-29 12:53:15
665	15	259	\N	2021-12-29 12:53:15	2021-12-29 12:53:15
670	1	98	\N	2021-12-29 12:54:27	2021-12-29 12:54:27
671	2	98	\N	2021-12-29 12:54:27	2021-12-29 12:54:27
672	13	98	\N	2021-12-29 12:54:27	2021-12-29 12:54:27
673	1	99	\N	2021-12-29 12:54:57	2021-12-29 12:54:57
674	13	99	\N	2021-12-29 12:54:57	2021-12-29 12:54:57
1107	11	8	\N	2022-01-23 15:48:38	2022-01-23 15:48:38
1108	36	8	\N	2022-01-23 15:48:38	2022-01-23 15:48:38
1109	4	8	\N	2022-01-23 15:48:38	2022-01-23 15:48:38
1110	18	8	\N	2022-01-23 15:48:38	2022-01-23 15:48:38
1111	34	8	\N	2022-01-23 15:48:38	2022-01-23 15:48:38
1112	23	8	\N	2022-01-23 15:48:38	2022-01-23 15:48:38
707	1	319	\N	2021-12-29 12:59:20	2021-12-29 12:59:20
708	2	319	\N	2021-12-29 12:59:20	2021-12-29 12:59:20
709	3	319	\N	2021-12-29 12:59:20	2021-12-29 12:59:20
710	10	319	\N	2021-12-29 12:59:20	2021-12-29 12:59:20
711	13	319	\N	2021-12-29 12:59:20	2021-12-29 12:59:20
712	14	319	\N	2021-12-29 12:59:20	2021-12-29 12:59:20
713	15	319	\N	2021-12-29 12:59:20	2021-12-29 12:59:20
1136	41	330	\N	2022-02-08 08:33:52	2022-02-08 08:33:52
1138	24	122	\N	2022-02-08 12:29:26	2022-02-08 12:29:26
1139	4	122	\N	2022-02-08 12:29:26	2022-02-08 12:29:26
1140	34	122	\N	2022-02-08 12:29:26	2022-02-08 12:29:26
1141	5	122	\N	2022-02-08 12:29:26	2022-02-08 12:29:26
1145	24	336	\N	2022-02-13 04:53:47	2022-02-13 04:53:47
1146	12	336	\N	2022-02-13 04:53:47	2022-02-13 04:53:47
1147	28	46	\N	2022-02-13 04:58:15	2022-02-13 04:58:15
1150	7	64	\N	2022-02-13 05:24:28	2022-02-13 05:24:28
1151	28	64	\N	2022-02-13 05:24:28	2022-02-13 05:24:28
1152	13	64	\N	2022-02-13 05:24:28	2022-02-13 05:24:28
1153	15	64	\N	2022-02-13 05:24:28	2022-02-13 05:24:28
1154	4	64	\N	2022-02-13 05:24:28	2022-02-13 05:24:28
1155	28	258	\N	2022-02-13 05:30:13	2022-02-13 05:30:13
1156	28	33	\N	2022-02-13 05:33:24	2022-02-13 05:33:24
1157	13	33	\N	2022-02-13 05:33:24	2022-02-13 05:33:24
1158	15	33	\N	2022-02-13 05:33:24	2022-02-13 05:33:24
1159	18	33	\N	2022-02-13 05:33:24	2022-02-13 05:33:24
1160	13	18	\N	2022-02-13 05:46:13	2022-02-13 05:46:13
1161	22	18	\N	2022-02-13 05:46:13	2022-02-13 05:46:13
1162	15	18	\N	2022-02-13 05:46:13	2022-02-13 05:46:13
1163	36	18	\N	2022-02-13 05:46:13	2022-02-13 05:46:13
1168	14	337	\N	2022-02-13 06:31:45	2022-02-13 06:31:45
1169	32	337	\N	2022-02-13 06:31:45	2022-02-13 06:31:45
1173	7	338	\N	2022-02-13 11:00:02	2022-02-13 11:00:02
1174	28	338	\N	2022-02-13 11:00:02	2022-02-13 11:00:02
1175	13	338	\N	2022-02-13 11:00:02	2022-02-13 11:00:02
1176	15	338	\N	2022-02-13 11:00:02	2022-02-13 11:00:02
1177	24	266	\N	2022-02-13 11:12:30	2022-02-13 11:12:30
1178	11	266	\N	2022-02-13 11:12:30	2022-02-13 11:12:30
1179	10	266	\N	2022-02-13 11:12:30	2022-02-13 11:12:30
1180	28	49	\N	2022-02-13 11:17:48	2022-02-13 11:17:48
1185	24	146	\N	2022-02-13 11:21:08	2022-02-13 11:21:08
1186	11	273	\N	2022-02-13 11:23:51	2022-02-13 11:23:51
1187	28	63	\N	2022-02-13 11:25:15	2022-02-13 11:25:15
1188	7	144	\N	2022-02-13 11:26:57	2022-02-13 11:26:57
1189	9	144	\N	2022-02-13 11:26:57	2022-02-13 11:26:57
1190	24	144	\N	2022-02-13 11:26:57	2022-02-13 11:26:57
1191	15	144	\N	2022-02-13 11:26:57	2022-02-13 11:26:57
1192	36	144	\N	2022-02-13 11:26:57	2022-02-13 11:26:57
1193	4	144	\N	2022-02-13 11:26:57	2022-02-13 11:26:57
1194	8	141	\N	2022-02-13 11:29:01	2022-02-13 11:29:01
1195	9	141	\N	2022-02-13 11:29:01	2022-02-13 11:29:01
1196	22	141	\N	2022-02-13 11:29:01	2022-02-13 11:29:01
1197	23	141	\N	2022-02-13 11:29:01	2022-02-13 11:29:01
1198	8	136	\N	2022-02-13 11:31:02	2022-02-13 11:31:02
1199	23	136	\N	2022-02-13 11:31:02	2022-02-13 11:31:02
1200	8	135	\N	2022-02-13 11:32:16	2022-02-13 11:32:16
1201	34	135	\N	2022-02-13 11:32:16	2022-02-13 11:32:16
1202	24	123	\N	2022-02-13 11:34:46	2022-02-13 11:34:46
1203	4	123	\N	2022-02-13 11:34:46	2022-02-13 11:34:46
1204	8	143	\N	2022-02-13 11:36:34	2022-02-13 11:36:34
1205	22	143	\N	2022-02-13 11:36:34	2022-02-13 11:36:34
1206	23	143	\N	2022-02-13 11:36:34	2022-02-13 11:36:34
1214	8	151	\N	2022-02-13 11:40:49	2022-02-13 11:40:49
1215	23	151	\N	2022-02-13 11:40:49	2022-02-13 11:40:49
1216	28	147	\N	2022-02-13 11:42:32	2022-02-13 11:42:32
1217	13	147	\N	2022-02-13 11:42:32	2022-02-13 11:42:32
1218	24	147	\N	2022-02-13 11:42:33	2022-02-13 11:42:33
1219	23	147	\N	2022-02-13 11:42:33	2022-02-13 11:42:33
1220	11	267	\N	2022-02-13 11:46:31	2022-02-13 11:46:31
1221	24	267	\N	2022-02-13 11:46:31	2022-02-13 11:46:31
1222	11	271	\N	2022-02-13 11:48:11	2022-02-13 11:48:11
1223	8	139	\N	2022-02-13 11:49:02	2022-02-13 11:49:02
1224	28	134	\N	2022-02-13 11:51:05	2022-02-13 11:51:05
1225	9	134	\N	2022-02-13 11:51:05	2022-02-13 11:51:05
1226	22	134	\N	2022-02-13 11:51:05	2022-02-13 11:51:05
1227	23	134	\N	2022-02-13 11:51:05	2022-02-13 11:51:05
1228	10	134	\N	2022-02-13 11:51:05	2022-02-13 11:51:05
1229	34	134	\N	2022-02-13 11:51:05	2022-02-13 11:51:05
1230	24	272	\N	2022-02-13 11:54:07	2022-02-13 11:54:07
1231	11	272	\N	2022-02-13 11:54:07	2022-02-13 11:54:07
1234	28	44	\N	2022-02-13 11:57:57	2022-02-13 11:57:57
1235	8	142	\N	2022-02-13 23:42:34	2022-02-13 23:42:34
1236	22	142	\N	2022-02-13 23:42:34	2022-02-13 23:42:34
1237	24	142	\N	2022-02-13 23:42:34	2022-02-13 23:42:34
1238	23	142	\N	2022-02-13 23:42:34	2022-02-13 23:42:34
1239	10	142	\N	2022-02-13 23:42:34	2022-02-13 23:42:34
1240	24	133	\N	2022-02-13 23:47:17	2022-02-13 23:47:17
1241	8	133	\N	2022-02-13 23:47:17	2022-02-13 23:47:17
1243	11	268	\N	2022-02-13 23:51:29	2022-02-13 23:51:29
1244	8	145	\N	2022-02-13 23:53:28	2022-02-13 23:53:28
1245	22	145	\N	2022-02-13 23:53:28	2022-02-13 23:53:28
1246	24	145	\N	2022-02-13 23:53:28	2022-02-13 23:53:28
1247	22	145	\N	2022-02-13 23:53:28	2022-02-13 23:53:28
1248	23	145	\N	2022-02-13 23:53:28	2022-02-13 23:53:28
1249	36	145	\N	2022-02-13 23:53:28	2022-02-13 23:53:28
1250	13	318	\N	2022-02-13 23:57:31	2022-02-13 23:57:31
1251	28	318	\N	2022-02-13 23:57:31	2022-02-13 23:57:31
1252	22	318	\N	2022-02-13 23:57:31	2022-02-13 23:57:31
1253	36	318	\N	2022-02-13 23:57:31	2022-02-13 23:57:31
1254	30	318	\N	2022-02-13 23:57:31	2022-02-13 23:57:31
1255	7	318	\N	2022-02-13 23:57:32	2022-02-13 23:57:32
1275	28	340	\N	2022-02-14 07:38:59	2022-02-14 07:38:59
1276	28	316	\N	2022-02-17 12:55:19	2022-02-17 12:55:19
1277	15	316	\N	2022-02-17 12:55:19	2022-02-17 12:55:19
1278	36	316	\N	2022-02-17 12:55:19	2022-02-17 12:55:19
1279	18	316	\N	2022-02-17 12:55:19	2022-02-17 12:55:19
1280	25	54	\N	2022-02-17 12:56:02	2022-02-17 12:56:02
1281	28	54	\N	2022-02-17 12:56:02	2022-02-17 12:56:02
1282	28	0	\N	2022-02-17 14:57:24	2022-02-17 14:57:24
1283	32	0	\N	2022-02-18 04:15:37	2022-02-18 04:15:37
1290	28	345	\N	2022-03-15 04:24:05	2022-03-15 04:24:05
1291	15	345	\N	2022-03-15 04:24:05	2022-03-15 04:24:05
1292	13	345	\N	2022-03-15 04:24:05	2022-03-15 04:24:05
1293	8	346	\N	2022-03-15 04:25:45	2022-03-15 04:25:45
1294	22	346	\N	2022-03-15 04:25:45	2022-03-15 04:25:45
1295	36	346	\N	2022-03-15 04:25:45	2022-03-15 04:25:45
1296	23	346	\N	2022-03-15 04:25:45	2022-03-15 04:25:45
1297	28	137	\N	2022-03-20 13:07:32	2022-03-20 13:07:32
1298	16	137	\N	2022-03-20 13:07:32	2022-03-20 13:07:32
1299	22	137	\N	2022-03-20 13:07:32	2022-03-20 13:07:32
1300	23	137	\N	2022-03-20 13:07:32	2022-03-20 13:07:32
1301	24	137	\N	2022-03-20 13:07:32	2022-03-20 13:07:32
1302	4	137	\N	2022-03-20 13:07:32	2022-03-20 13:07:32
1303	42	137	\N	2022-03-20 13:07:32	2022-03-20 13:07:32
1304	16	148	\N	2022-03-20 13:08:27	2022-03-20 13:08:27
1305	22	148	\N	2022-03-20 13:08:27	2022-03-20 13:08:27
1306	28	148	\N	2022-03-20 13:08:27	2022-03-20 13:08:27
1307	10	148	\N	2022-03-20 13:08:27	2022-03-20 13:08:27
1308	34	148	\N	2022-03-20 13:08:27	2022-03-20 13:08:27
1309	18	148	\N	2022-03-20 13:08:27	2022-03-20 13:08:27
1310	23	148	\N	2022-03-20 13:08:27	2022-03-20 13:08:27
1311	42	148	\N	2022-03-20 13:08:27	2022-03-20 13:08:27
1312	12	339	\N	2022-03-20 13:09:05	2022-03-20 13:09:05
1313	22	339	\N	2022-03-20 13:09:05	2022-03-20 13:09:05
1314	24	339	\N	2022-03-20 13:09:05	2022-03-20 13:09:05
1315	10	339	\N	2022-03-20 13:09:05	2022-03-20 13:09:05
1316	42	339	\N	2022-03-20 13:09:05	2022-03-20 13:09:05
1317	11	115	\N	2022-03-20 13:09:43	2022-03-20 13:09:43
1318	12	115	\N	2022-03-20 13:09:43	2022-03-20 13:09:43
1319	13	115	\N	2022-03-20 13:09:43	2022-03-20 13:09:43
1320	16	115	\N	2022-03-20 13:09:43	2022-03-20 13:09:43
1321	42	115	\N	2022-03-20 13:09:43	2022-03-20 13:09:43
1322	11	130	\N	2022-03-20 13:10:16	2022-03-20 13:10:16
1323	12	130	\N	2022-03-20 13:10:16	2022-03-20 13:10:16
1324	13	130	\N	2022-03-20 13:10:16	2022-03-20 13:10:16
1325	16	130	\N	2022-03-20 13:10:16	2022-03-20 13:10:16
1326	42	130	\N	2022-03-20 13:10:16	2022-03-20 13:10:16
1327	10	116	\N	2022-03-20 13:10:47	2022-03-20 13:10:47
1328	13	116	\N	2022-03-20 13:10:47	2022-03-20 13:10:47
1329	16	116	\N	2022-03-20 13:10:47	2022-03-20 13:10:47
1330	24	116	\N	2022-03-20 13:10:47	2022-03-20 13:10:47
1331	36	116	\N	2022-03-20 13:10:47	2022-03-20 13:10:47
1332	34	116	\N	2022-03-20 13:10:47	2022-03-20 13:10:47
1333	42	116	\N	2022-03-20 13:10:47	2022-03-20 13:10:47
1334	42	0	\N	2022-03-20 13:32:24	2022-03-20 13:32:24
1335	2	347	\N	2022-03-22 13:55:56	2022-03-22 13:55:56
1336	4	347	\N	2022-03-22 13:55:56	2022-03-22 13:55:56
1337	43	97	\N	2022-03-22 14:04:04	2022-03-22 14:04:04
1342	2	67	\N	2022-03-22 14:04:55	2022-03-22 14:04:55
1343	43	67	\N	2022-03-22 14:04:55	2022-03-22 14:04:55
1344	43	9	\N	2022-03-22 14:05:16	2022-03-22 14:05:16
1345	2	78	\N	2022-03-22 14:05:34	2022-03-22 14:05:34
1346	43	78	\N	2022-03-22 14:05:34	2022-03-22 14:05:34
1347	2	88	\N	2022-03-22 14:06:54	2022-03-22 14:06:54
1348	32	88	\N	2022-03-22 14:06:54	2022-03-22 14:06:54
1349	6	88	\N	2022-03-22 14:06:54	2022-03-22 14:06:54
1350	2	60	\N	2022-03-22 14:07:14	2022-03-22 14:07:14
1351	6	60	\N	2022-03-22 14:07:14	2022-03-22 14:07:14
1352	43	60	\N	2022-03-22 14:07:14	2022-03-22 14:07:14
1353	25	36	\N	2022-03-22 14:07:31	2022-03-22 14:07:31
1354	43	36	\N	2022-03-22 14:07:31	2022-03-22 14:07:31
1355	27	0	\N	2022-03-22 14:13:13	2022-03-22 14:13:13
1364	7	40	\N	2022-03-22 14:21:37	2022-03-22 14:21:37
1365	28	40	\N	2022-03-22 14:21:37	2022-03-22 14:21:37
1366	6	40	\N	2022-03-22 14:21:37	2022-03-22 14:21:37
1367	11	40	\N	2022-03-22 14:21:37	2022-03-22 14:21:37
1368	15	40	\N	2022-03-22 14:21:37	2022-03-22 14:21:37
1369	17	40	\N	2022-03-22 14:21:37	2022-03-22 14:21:37
1370	44	40	\N	2022-03-22 14:21:37	2022-03-22 14:21:37
1371	45	316	\N	2022-03-28 16:37:25	2022-03-28 16:37:25
1378	38	0	\N	2022-03-30 22:46:08	2022-03-30 22:46:08
1379	5	348	\N	2022-04-25 16:39:30	2022-04-25 16:39:30
1380	14	348	\N	2022-04-25 16:39:30	2022-04-25 16:39:30
1381	46	63	\N	2022-04-25 16:43:36	2022-04-25 16:43:36
1382	46	92	\N	2022-04-25 16:43:54	2022-04-25 16:43:54
1385	46	80	\N	2022-04-25 16:45:35	2022-04-25 16:45:35
1386	46	298	\N	2022-04-25 16:45:58	2022-04-25 16:45:58
1390	2	86	\N	2022-04-29 12:15:26	2022-04-29 12:15:26
1391	6	86	\N	2022-04-29 12:15:26	2022-04-29 12:15:26
1392	32	86	\N	2022-04-29 12:15:26	2022-04-29 12:15:26
1393	47	86	\N	2022-04-29 12:15:26	2022-04-29 12:15:26
1394	28	72	\N	2022-04-29 12:16:12	2022-04-29 12:16:12
1395	15	72	\N	2022-04-29 12:16:12	2022-04-29 12:16:12
1396	18	72	\N	2022-04-29 12:16:12	2022-04-29 12:16:12
1397	26	72	\N	2022-04-29 12:16:12	2022-04-29 12:16:12
1398	45	72	\N	2022-04-29 12:16:12	2022-04-29 12:16:12
1399	47	72	\N	2022-04-29 12:16:12	2022-04-29 12:16:12
1400	25	35	\N	2022-04-29 12:16:35	2022-04-29 12:16:35
1401	26	35	\N	2022-04-29 12:16:35	2022-04-29 12:16:35
1402	45	35	\N	2022-04-29 12:16:35	2022-04-29 12:16:35
1403	46	35	\N	2022-04-29 12:16:35	2022-04-29 12:16:35
1404	47	35	\N	2022-04-29 12:16:35	2022-04-29 12:16:35
1405	2	85	\N	2022-04-29 12:17:07	2022-04-29 12:17:07
1406	6	85	\N	2022-04-29 12:17:07	2022-04-29 12:17:07
1407	17	85	\N	2022-04-29 12:17:07	2022-04-29 12:17:07
1408	45	85	\N	2022-04-29 12:17:07	2022-04-29 12:17:07
1409	47	85	\N	2022-04-29 12:17:07	2022-04-29 12:17:07
1410	7	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1411	28	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1412	13	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1413	2	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1414	27	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1415	15	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1416	4	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1417	44	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1418	47	41	\N	2022-04-29 12:17:29	2022-04-29 12:17:29
1419	28	75	\N	2022-04-29 12:17:49	2022-04-29 12:17:49
1420	15	75	\N	2022-04-29 12:17:49	2022-04-29 12:17:49
1421	13	75	\N	2022-04-29 12:17:49	2022-04-29 12:17:49
1422	45	75	\N	2022-04-29 12:17:49	2022-04-29 12:17:49
1423	47	75	\N	2022-04-29 12:17:49	2022-04-29 12:17:49
1424	2	55	\N	2022-04-29 12:18:10	2022-04-29 12:18:10
1425	6	55	\N	2022-04-29 12:18:10	2022-04-29 12:18:10
1426	41	55	\N	2022-04-29 12:18:10	2022-04-29 12:18:10
1427	47	55	\N	2022-04-29 12:18:10	2022-04-29 12:18:10
1428	25	293	\N	2022-04-29 12:18:46	2022-04-29 12:18:46
1429	45	293	\N	2022-04-29 12:18:46	2022-04-29 12:18:46
1430	47	293	\N	2022-04-29 12:18:46	2022-04-29 12:18:46
1431	2	87	\N	2022-04-29 12:19:10	2022-04-29 12:19:10
1432	6	87	\N	2022-04-29 12:19:10	2022-04-29 12:19:10
1433	45	87	\N	2022-04-29 12:19:10	2022-04-29 12:19:10
1434	47	87	\N	2022-04-29 12:19:10	2022-04-29 12:19:10
1435	6	327	\N	2022-04-29 12:19:29	2022-04-29 12:19:29
1436	32	327	\N	2022-04-29 12:19:29	2022-04-29 12:19:29
1437	33	327	\N	2022-04-29 12:19:29	2022-04-29 12:19:29
1438	46	327	\N	2022-04-29 12:19:29	2022-04-29 12:19:29
1439	47	327	\N	2022-04-29 12:19:29	2022-04-29 12:19:29
1440	28	57	\N	2022-04-29 12:19:50	2022-04-29 12:19:50
1441	15	57	\N	2022-04-29 12:19:50	2022-04-29 12:19:50
1442	47	57	\N	2022-04-29 12:19:50	2022-04-29 12:19:50
1443	13	38	\N	2022-04-29 12:20:12	2022-04-29 12:20:12
1444	27	38	\N	2022-04-29 12:20:12	2022-04-29 12:20:12
1445	47	38	\N	2022-04-29 12:20:12	2022-04-29 12:20:12
1446	13	70	\N	2022-04-29 12:20:32	2022-04-29 12:20:32
1447	27	70	\N	2022-04-29 12:20:32	2022-04-29 12:20:32
1448	47	70	\N	2022-04-29 12:20:32	2022-04-29 12:20:32
1449	13	42	\N	2022-04-29 12:24:16	2022-04-29 12:24:16
1450	30	42	\N	2022-04-29 12:24:16	2022-04-29 12:24:16
1451	47	42	\N	2022-04-29 12:24:16	2022-04-29 12:24:16
1460	22	138	\N	2022-05-02 01:10:25	2022-05-02 01:10:25
1461	13	209	\N	2022-05-02 01:10:49	2022-05-02 01:10:49
1462	28	209	\N	2022-05-02 01:10:49	2022-05-02 01:10:49
1463	30	209	\N	2022-05-02 01:10:49	2022-05-02 01:10:49
1464	7	209	\N	2022-05-02 01:10:49	2022-05-02 01:10:49
1465	22	209	\N	2022-05-02 01:10:49	2022-05-02 01:10:49
1466	14	209	\N	2022-05-02 01:10:49	2022-05-02 01:10:49
1467	35	140	\N	2022-05-02 01:11:38	2022-05-02 01:11:38
1470	28	73	\N	2022-05-05 08:24:17	2022-05-05 08:24:17
1482	4	356	\N	2022-05-06 08:02:11	2022-05-06 08:02:11
1483	11	356	\N	2022-05-06 08:02:11	2022-05-06 08:02:11
1484	13	356	\N	2022-05-06 08:02:11	2022-05-06 08:02:11
1485	8	356	\N	2022-05-06 08:02:11	2022-05-06 08:02:11
1486	43	356	\N	2022-05-06 08:02:11	2022-05-06 08:02:11
1487	23	356	\N	2022-05-06 08:02:11	2022-05-06 08:02:11
1488	6	356	\N	2022-05-06 08:02:11	2022-05-06 08:02:11
1489	6	0	\N	2022-06-30 09:45:10	2022-06-30 09:45:10
1490	6	0	\N	2022-06-30 09:46:20	2022-06-30 09:46:20
1491	7	1	\N	2022-06-30 09:53:31	2022-06-30 09:53:31
1492	8	1	\N	2022-06-30 09:53:31	2022-06-30 09:53:31
1493	4	1	\N	2022-06-30 09:53:31	2022-06-30 09:53:31
1494	14	156	\N	2022-07-04 02:51:06	2022-07-04 02:51:06
1495	28	156	\N	2022-07-04 02:51:06	2022-07-04 02:51:06
1496	4	156	\N	2022-07-04 02:51:06	2022-07-04 02:51:06
1497	12	359	\N	2022-07-05 10:45:50	2022-07-05 10:45:50
1498	17	359	\N	2022-07-05 10:45:50	2022-07-05 10:45:50
1499	16	361	\N	2022-10-11 14:02:25	2022-10-11 14:02:25
1500	24	361	\N	2022-10-11 14:02:25	2022-10-11 14:02:25
1501	17	362	\N	2022-10-31 08:51:05	2022-10-31 08:51:05
1502	8	363	\N	2022-10-31 08:56:27	2022-10-31 08:56:27
1503	7	363	\N	2022-10-31 08:56:27	2022-10-31 08:56:27
1506	14	364	\N	2022-11-01 02:09:55	2022-11-01 02:09:55
1507	32	364	\N	2022-11-01 02:09:55	2022-11-01 02:09:55
\.


--
-- Data for Name: nutrients; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.nutrients (id, name, memo, created_at, updated_at) FROM stdin;
1	マグネシウム	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
2	カリウム	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
3	クロム	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
8	ビタミンB1	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
9	ビタミンB2	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
10	リン	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
12	ビタミンD	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
13	ビタミンE	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
14	ナトリウム	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
16	たんぱく質	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
17	食物繊維	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
18	モリブデン	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
19	ペクチン	\N	2021-11-11 06:29:12	2021-11-11 06:29:12
22	ビタミンB6	\N	2021-12-18 03:29:06	2021-12-18 03:29:06
23	亜鉛	\N	2021-12-18 03:33:05	2021-12-18 03:33:05
25	アリシン	★アリシンはVB1の作用持続を促し、疲労回復をもたらします。\r\n★アリシンは加熱に弱い物質ですが、油と一緒に調理すると、分解されにくくなります。シチューなどの煮込み料理に使う時、水から入れて煮込むよりは、油でいったん炒めてから入れる方が効果的です。	2021-12-29 12:04:03	2021-12-29 12:04:03
33	βクリプトキサンチン	カロテンの一種。\r\n日本国内で実施された栄養疫学研究（三ヶ日町研究）では、血中β-クリプトキサンチン濃度が高い人ほど肝機能障害や動脈硬化、インスリン抵抗性といった生活習慣病のリスクが低い。また、閉経後の女性は骨粗しょう症を発症しやすいが、血中のβ-クリプトキサンチン濃度が高いと、骨粗しょう症の発症リスクが低下する。また、発ガン性物質から体内の健康な細胞を守り、その効果はβ‐カロテンの5倍になり、ヒアルロン酸合成酵素の活性化を誘発し、ヒアルロン酸の量を増やすことが分かりました。	2022-01-11 02:52:50	2022-01-11 02:58:38
26	ケルセチン	ケルセチンの健康効果\r\n油と一緒に摂取すると吸収されやすい。熱に強いが、水溶性のため、茹でるならスープにするのがおすすめ。\r\n◎血流を改善する効果\r\n◎コレステロール値を下げる効果\r\n◎動脈硬化を予防する効果\r\n◎関節痛の症状をやわらげる効果	2021-12-29 12:10:38	2021-12-29 12:14:41
34	セレン	古くから毒性の強い元素として知られていましたが、比較的最近、人にとって必須の微量元素であることが認識されるようになりました 。生体内では、酵素やたんぱく質の一部を構成し 、抗酸化反応において重要な役割を担っていますが 、毒性が強く、必要量と中毒量の差がとても小さいため、サプリメントなどの摂取には注意が必要です。セレンは藻類、魚介類、肉類、卵黄に豊富に含まれており、通常の食事で不足することはありません 。	2022-01-16 12:44:36	2022-01-16 12:44:36
35	脂質	1食分が8g以上なら記入	2022-01-23 10:36:37	2022-01-23 10:36:37
11	Ca	★成人1人当たりが一日にとるカルシウムの目標量は600～800mg。成長期の子どもは700～1000mgです。\r\n\r\n★牛乳1カップ　231mg\r\n★ヨーグルト1/2カップ100g 120mg\r\n★豆腐1/3丁100g 150mg\r\n★小松菜　80g 1/3束　136mg\r\n★大根の葉30g 78mg\r\n★切り干し大根（乾燥）15g 75mg\r\n★干しエビ　大さじ1/2 213mg\r\n★ちりめんじゃこ　大さじ3 78mg\r\n★ひじき（乾燥）6g  60mg	2021-11-11 06:29:12	2021-12-29 13:30:23
29	イソチオシアネート	苦味成分。熱を加えることで含量は半分以下になる。すりおろしたりして、細胞壁を壊すことで生まれるが、揮発性のため、食べる直接にすりおろすこと。\r\n抗がん作用や殺菌作用がある。	2022-01-01 17:12:14	2022-01-01 17:12:14
30	リコピン	朝摂ったり、加熱すると吸収率が良くなる。\r\nビタミンEの100倍の抗酸化作用	2022-01-02 00:43:45	2022-01-02 00:43:45
31	オリゴ糖生成酵素	善玉菌のエサとなるオリゴ糖を生成する酵素は腸活によい！	2022-01-02 01:15:11	2022-01-02 01:15:11
7	ビタミンA	ビタミンAは、脂溶性ビタミンで、妊娠初期に摂りすぎると赤ちゃんの形態に異常を引き起こす場合があります。	2021-11-11 06:29:12	2022-01-23 11:28:59
5	ヨウ素	特に昆布には、ヨウ素が多く含まれています。\r\nヨウ素は、過剰に摂取すると赤ちゃんの甲状腺機能の低下につながります。	2021-11-11 06:29:12	2022-01-23 11:29:48
15	葉酸	妊娠初期は赤ちゃんの発育が著しい時期です。神経管の発育に必要な葉酸、貧血予防の鉄分などをしっかり摂取しましょう。	2021-11-11 06:29:12	2022-01-23 11:30:55
4	鉄	1食分が0.6mg以上で入力。\r\n推奨量：男性：7.5mg/day 女性10.5mg/day（月経あり）\r\n　　　　女性妊娠初期9.0mg/day 妊娠中期後期16.0mg/day\r\n妊娠初期は赤ちゃんの発育が著しい時期です。神経管の発育に必要な葉酸、貧血予防の鉄分などをしっかり摂取しましょう。\r\n吸収率；非ヘム鉄：5％、ヘム鉄：25%\r\n足りなくなると、血液中のヘモグロビンが減少し、全身が酸素不足になり、疲れやすい、立ちくらみ、息切れ、動悸。非ヘム鉄は鉄の吸収を高めるビタミンCと一緒に摂りましょう。	2021-11-11 06:29:12	2022-01-23 12:36:10
36	銅	\N	2022-01-23 12:36:31	2022-01-23 12:36:31
37	アビオイル	アビオイルは、セロリの特有の、香りと苦味の成分で、さまざまな働きがあります。\r\nアビオイルには浄血作用、がん予防、健胃、疲労回復、ストレス解消、神経鎮静作用、粘膜強化作用などがあります。また、アビオイルに含まれているメチオニンという成分が肝機能を高めるため、美容食としての効果も期待できます。	2022-01-24 12:32:43	2022-01-24 12:32:43
32	クエン酸	腎臓結石予防、疲労回復、乳酸をなくす\r\n胃酸分泌を促す作用もあるため、食欲ない時にも良い	2022-01-11 02:12:55	2022-02-18 04:15:37
27	ゼアキサンチン	ゼアキサンチンの持つ抗酸化作用は、黄斑部を光のダメージから守る働きがあります。\r\nクコの実11粒で、0.3mg程度のゼアキサンチンを含みます。\r\n光には、紫外線を含む日光や蛍光灯、パソコン、テレビなどから発せられる青色の光（ブルーライト）があり、それらは活性酸素を発生させる一因となります。\r\n特に青色の光（ブルーライト）は、光の波長が短く、力の強い光です。\r\n1日の摂取目安はルテイン6～35㎎、ゼアキサンチン2～7mg（※）とされています。	2022-01-01 16:07:45	2022-03-22 14:13:13
39	ジンゲロール	★ショウガオールと共通の作用\r\n免疫力を活性化\r\n★ジンゲロールのみの作用\r\n•生の生姜に含まれる\r\n•殺菌作用\r\n•頭痛を抑える\r\n△O2や熱に弱いため、食べる直前にすりおろす	2022-01-24 13:30:28	2022-01-24 13:30:28
40	ジンギパイン	別名:ショウガプロテアーゼ\r\n肉を柔らかくする作用がある。\r\n生の生姜に含まれており、チューブの生姜には含まれていない	2022-01-24 13:54:26	2022-01-24 13:54:26
24	ビタミンB12	アミノ酸代謝、葉酸の代謝、赤血球の形成を助ける栄養素。1日の推奨量は男女性ともに 2.4μg レバーやあさり、しじみに多く含まれます。\r\n植物性食品にはほとんどなく、菜食主義者の場合不足。\r\n高用量のビタミンB12の長期使用は有害で、肺がんや結腸直腸/結腸がんなどの特定のがんのリスクを高める可能性があり。4.2→13.7μg/dayでリスク1.5倍\r\n小腸で吸収される際胃壁からの内因子を必要で、胃を切除、慢性胃炎は内因子で吸収されにくくなります。\r\n水溶性のビタミンで、スープなど丸ごと食べられる◎	2021-12-18 03:40:14	2022-01-26 11:58:28
41	メラトニン	\N	2022-02-08 08:33:10	2022-02-08 08:33:10
28	ビタミンK	腸内細菌によって体内で合成されるため不足することはまれ。プロトロンビン生成時に補酵素として働くのがビタミンKです。欠乏すると凝固時間がかかります。\r\nまた、ビタミンKは丈夫な骨づくりにも不可欠で、骨に存在するオステオカルシンというたんぱく質を活性化し、カルシウムを骨に沈着させて骨の形成を促す作用があります。\r\nビタミンKの成人の1日の摂取の目安量を男女ともに150㎍。多量に摂取しても健康被害がなく、上限量はなし。	2022-01-01 16:10:42	2022-02-17 14:57:24
42	コラーゲン	目安　5000〜10000mg/day\r\n成人女性が1日摂取量は1.9gとのデータも。\r\n海洋性コラーゲンは動物性の7倍の吸収率\r\nコラーゲンは美肌、関節、骨、血管（動脈効果予防）の作用のほか、爪を強化したり白髪、抜け毛を防ぎ、美しい髪へ導く効果、創傷治癒を促進する効果もあります。\r\n\r\n手羽、牛すじ、ふかひれ、鮭の皮、あじ、ブリ、エビ、イカなどに含まれます。\r\n1位.ブリの竜田揚げ　1620mg/人\r\n2位.アジフライ　　　　1500mg/人\r\n3位.鮭の炊き込みごはん　　600mg/人	2022-03-20 13:06:55	2022-03-20 13:32:24
43	アントシアニン	脳は、このロドプシンが光の情報を受け取ったものを信号として受け取っています。アントシアニンはロドプシンの再合成を促進し、視覚機能を改善する効果があることが明らかになっています。白内障予防効果もあります。抜け毛にも良いです	2022-03-22 14:03:28	2022-03-22 14:03:28
44	ルテイン	ほうれん草には100ｇあたり4.51mgのルテインが含まれています。\r\n小松菜には、100ｇあたり7.59mgと、ほうれん草より多くのルテインが含まれています。\r\nその他、とうもろこしやブロッコリー、アボカドにも含まれますが、ほうれん草、小松菜に比べると少ないです。	2022-03-22 14:20:41	2022-03-22 14:20:41
45	フラクトオリゴ糖	腸内細菌のエサとなる。プレバイオティクス	2022-03-28 16:36:54	2022-03-28 16:36:54
38	ショウガオール	ショウガオールは、ジンゲロールが加熱や乾燥によって変化して出来る成分。\r\n★ジンゲロールと共通する作用\r\n•免疫力活性化\r\n★ショウガオールのみの作用\r\n•血行を良くし、冷えを改善\r\n•痛みの原因成分を抑制します\r\n殺菌などを目的とする場合はすりおろして、冷えを改善したい場合は加熱して食べると良いです。\r\nショウガを乾燥させるとショウガオールというが７倍に、蒸して乾燥させると10倍に増加	2022-01-24 13:05:53	2022-03-30 22:46:08
46	ビタミンP	ビタミンPはからだの中でいちばん細い血管（毛細血管）を強くする効能があるといわれています。	2022-04-25 16:43:09	2022-04-25 16:43:09
47	グルタチオン	\N	2022-04-29 12:14:55	2022-04-29 12:14:55
6	ビタミンC	抗ストレスホルモンのコルチゾールの合成にはこのビタミンCが必要。ストレスの多い現代社会では、このコルチゾールの必要量増大に伴って、ビタミンCの必要量も増えると予想される。\r\n夏場は約8倍ビタミンCが必要とされる。	2021-11-11 06:29:12	2022-06-30 09:46:20
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.password_resets (email, token, created_at) FROM stdin;
mai_eternalmelody555@yahoo.co.jp	$2y$10$TXSaRRAGIf6tsxaF2MtiEuJid1iOsT8wcovFkLZmOYvY2b.WBlTli	2021-12-26 10:34:42
rin-memory106@i.softbank.jp	$2y$10$3dd2xHNBuPVUYgyUt7ZAJOoOi5467W3eLjTsZysTV30YGNdjqGhgK	2022-01-24 03:44:38
\.


--
-- Data for Name: recipe_categories; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.recipe_categories (id, name, created_at, updated_at) FROM stdin;
52	即席料理	2021-12-28 12:16:14	2021-12-28 12:16:14
53	朝食	2021-12-28 12:25:36	2021-12-28 12:25:36
57	お気に入り★	2021-12-28 15:28:49	2021-12-28 15:28:49
3	サラダ類	2021-10-21 05:52:08	2021-12-29 08:08:08
12	クリスマス	2021-12-22 05:59:21	2021-12-29 08:08:21
45	おせち	2021-12-25 23:58:18	2021-12-29 08:08:36
50	春の七草　1/7	2021-12-26 00:38:43	2021-12-29 08:09:26
47	節分立春前日2/3頃	2021-12-26 00:34:43	2021-12-29 08:09:39
48	ひな祭り	2021-12-26 00:34:57	2021-12-29 08:10:13
51	花見	2021-12-28 12:08:06	2021-12-29 08:10:29
49	ハロウィン	2021-12-26 00:35:27	2021-12-29 08:10:50
9	おもてなし	2021-10-21 05:52:08	2021-12-29 08:12:31
54	指定なし	2021-12-28 14:37:06	2021-12-29 08:12:48
58	作り置き	2022-02-28 08:10:33	2022-02-28 08:10:33
\.


--
-- Data for Name: recipe_countries; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.recipe_countries (id, name, created_at, updated_at) FROM stdin;
1	和食	2021-12-06 07:06:00	2021-12-06 07:06:00
2	洋食	2021-12-06 07:06:00	2021-12-06 07:06:00
3	中華	2021-12-06 07:06:00	2021-12-06 07:06:00
4	エスニック	2021-12-06 07:06:00	2021-12-06 07:06:00
5	タイ（バ）	2021-12-08 04:07:34	2021-12-30 14:50:53
6	マレーシア（ク）	2021-12-08 04:07:46	2021-12-30 14:51:09
7	ベトナム（ハ）	2021-12-08 04:07:58	2021-12-30 14:52:29
9	スペイン（マド）	2021-12-08 04:08:13	2021-12-30 14:53:18
8	インド（ニュ）	2021-12-08 04:08:05	2021-12-30 14:53:55
\.


--
-- Data for Name: recipe_materials; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.recipe_materials (id, recipe_id, material_id, amount, created_at, updated_at) FROM stdin;
2947	61	39	80g	2022-02-09 07:40:17	2022-02-09 07:40:17
2948	61	53	40g	2022-02-09 07:40:17	2022-02-09 07:40:17
2641	206	294	塊で400g	2022-02-08 13:08:11	2022-02-08 13:08:11
2642	206	162	200cc (マディラの代わり)	2022-02-08 13:08:11	2022-02-08 13:08:11
2643	206	278	小さじ1/4	2022-02-08 13:08:11	2022-02-08 13:08:11
2644	206	222	小さじ1	2022-02-08 13:08:11	2022-02-08 13:08:11
2949	61	34	1本	2022-02-09 07:40:17	2022-02-09 07:40:17
2950	61	51	40g	2022-02-09 07:40:17	2022-02-09 07:40:17
2951	61	86	1個	2022-02-09 07:40:17	2022-02-09 07:40:17
2952	61	283	小さじ8	2022-02-09 07:40:17	2022-02-09 07:40:17
3026	159	30	1/2枚・20 × 10cm	2022-02-10 04:20:33	2022-02-10 04:20:33
2645	206	91	1枚	2022-02-08 13:08:11	2022-02-08 13:08:11
2646	206	35	160g	2022-02-08 13:08:11	2022-02-08 13:08:11
2647	206	217	小さじ1/2	2022-02-08 13:08:11	2022-02-08 13:08:11
2648	206	83	4本(チャービル)	2022-02-08 13:08:11	2022-02-08 13:08:11
2722	144	44	120g	2022-02-08 13:19:39	2022-02-08 13:19:39
2723	144	285	小さじ1/2	2022-02-08 13:19:39	2022-02-08 13:19:39
3027	159	229	小さじ４	2022-02-10 04:20:33	2022-02-10 04:20:33
1617	116	141	400g	2021-12-29 08:00:02	2021-12-29 08:00:02
1618	116	250	小さじ4	2021-12-29 08:00:02	2021-12-29 08:00:02
3028	159	79	1/2個	2022-02-10 04:20:33	2022-02-10 04:20:33
3029	159	198	小さじ2	2022-02-10 04:20:33	2022-02-10 04:20:33
3097	189	276	小さじ2	2022-02-10 05:15:32	2022-02-10 05:15:32
3098	189	289	大さじ2	2022-02-10 05:15:32	2022-02-10 05:15:32
3099	189	80	果汁を小さじ1	2022-02-10 05:15:32	2022-02-10 05:15:32
3100	189	198	小さじ8	2022-02-10 05:15:32	2022-02-10 05:15:32
5507	307	261	適量　10g	2022-02-19 06:01:36	2022-02-19 06:01:36
5875	58	141	480g	2022-03-07 11:25:02	2022-03-07 11:25:02
5876	58	212	小さじ2	2022-03-07 11:25:02	2022-03-07 11:25:02
5877	58	35	120g	2022-03-07 11:25:02	2022-03-07 11:25:02
1342	100	14	200cc	2021-12-29 07:16:26	2021-12-29 07:16:26
1343	100	234	小さじ4	2021-12-29 07:16:26	2021-12-29 07:16:26
1344	100	106	2枚	2021-12-29 07:16:26	2021-12-29 07:16:26
1345	100	261	4枚	2021-12-29 07:16:26	2021-12-29 07:16:26
5878	58	17	大さじ8	2022-03-07 11:25:02	2022-03-07 11:25:02
5879	58	264	大さじ4	2022-03-07 11:25:02	2022-03-07 11:25:02
1457	77	11	160g	2021-12-29 07:39:43	2021-12-29 07:39:43
1458	77	12	120g	2021-12-29 07:39:43	2021-12-29 07:39:43
1619	116	17	大さじ8	2021-12-29 08:00:02	2021-12-29 08:00:02
1620	116	264	大さじ4	2021-12-29 08:00:02	2021-12-29 08:00:02
1621	116	275	4個	2021-12-29 08:00:02	2021-12-29 08:00:02
1622	116	75	4本	2021-12-29 08:00:02	2021-12-29 08:00:02
1623	116	33	60g	2021-12-29 08:00:02	2021-12-29 08:00:02
1624	116	50	4個	2021-12-29 08:00:02	2021-12-29 08:00:02
1625	116	80	1/2個	2021-12-29 08:00:02	2021-12-29 08:00:02
1459	77	164	小さじ1	2021-12-29 07:39:43	2021-12-29 07:39:43
1460	77	192	大さじ2	2021-12-29 07:39:43	2021-12-29 07:39:43
1461	77	218	小さじ4	2021-12-29 07:39:43	2021-12-29 07:39:43
1462	77	270	4/5個(72g)	2021-12-29 07:39:43	2021-12-29 07:39:43
1463	77	266	40g	2021-12-29 07:39:43	2021-12-29 07:39:43
1525	69	141	200g	2021-12-29 07:56:10	2021-12-29 07:56:10
1526	69	35	60g	2021-12-29 07:56:10	2021-12-29 07:56:10
1527	69	17	小さじ8	2021-12-29 07:56:10	2021-12-29 07:56:10
1528	69	158	80cc(無塩)	2021-12-29 07:56:10	2021-12-29 07:56:10
1529	69	232	小さじ2	2021-12-29 07:56:10	2021-12-29 07:56:10
940	53	87	1本	2021-12-28 15:18:02	2021-12-28 15:18:02
941	53	88	4個	2021-12-28 15:18:02	2021-12-28 15:18:02
942	53	177	1切れ(40g)	2021-12-28 15:18:02	2021-12-28 15:18:02
6455	327	349	ジェノベーゼ	2022-05-05 09:00:52	2022-05-05 09:00:52
6456	327	267	適量	2022-05-05 09:00:52	2022-05-05 09:00:52
6457	327	104	何かあればトッピング用に炒めて	2022-05-05 09:00:52	2022-05-05 09:00:52
6567	140	137	4本(1本40g位)	2022-05-24 12:34:29	2022-05-24 12:34:29
943	53	179	20g	2021-12-28 15:18:02	2021-12-28 15:18:02
944	53	288	40g	2021-12-28 15:18:02	2021-12-28 15:18:02
945	53	180	小さじ1	2021-12-28 15:18:02	2021-12-28 15:18:02
946	53	82	4つ	2021-12-28 15:18:03	2021-12-28 15:18:03
3339	163	141	100g	2021-11-28 12:10:39	2021-11-28 12:10:39
3340	163	35	1/2個(100g)	2021-11-28 12:10:39	2021-11-28 12:10:39
3341	163	51	1/2本	2021-11-28 12:10:39	2021-11-28 12:10:39
3342	163	210	小さじ2	2021-11-28 12:10:39	2021-11-28 12:10:39
3343	163	164	小さじ1(3g)	2021-11-28 12:10:39	2021-11-28 12:10:39
3344	163	11	150g	2021-11-28 12:10:39	2021-11-28 12:10:39
3345	163	275	溶き卵として20g	2021-11-28 12:10:39	2021-11-28 12:10:39
3346	163	262	10g	2021-11-28 12:10:39	2021-11-28 12:10:39
3347	163	192	大さじ1(10g)	2021-11-28 12:10:39	2021-11-28 12:10:39
1530	69	39	40g	2021-12-29 07:56:10	2021-12-29 07:56:10
2649	199	151	400g	2022-02-08 13:09:18	2022-02-08 13:09:18
2650	199	277	小さじ2 + 小さじ4	2022-02-08 13:09:18	2022-02-08 13:09:18
2651	199	103	8g	2022-02-08 13:09:18	2022-02-08 13:09:18
2652	199	249	小さじ4	2022-02-08 13:09:18	2022-02-08 13:09:18
2653	199	248	小さじ2	2022-02-08 13:09:18	2022-02-08 13:09:18
6568	140	45	400g	2022-05-24 12:34:29	2022-05-24 12:34:29
1073	4	276	小さじ2(4g位)	2021-12-29 06:24:36	2021-12-29 06:24:36
6569	140	219	小さじ1	2022-05-24 12:34:29	2022-05-24 12:34:29
6570	140	9	40g	2022-05-24 12:34:29	2022-05-24 12:34:29
3101	263	79	1	2022-02-10 05:15:55	2022-02-10 05:15:55
1074	4	264	120cc	2021-12-29 06:24:36	2021-12-29 06:24:36
1075	4	157	12g	2021-12-29 06:24:36	2021-12-29 06:24:36
6809	340	107	3枚　★前日から袋で戻す	2022-08-30 10:57:42	2022-08-30 10:57:42
1773	266	322	100g 2人分	2021-12-29 13:52:45	2021-12-29 13:52:45
1774	266	278	小さじ1/2	2021-12-29 13:52:45	2021-12-29 13:52:45
3219	296	338	1パック	2022-02-13 11:06:53	2022-02-13 11:06:53
3220	296	275	2個分	2022-02-13 11:06:53	2022-02-13 11:06:53
3221	296	107	適量　薄切り	2022-02-13 11:06:53	2022-02-13 11:06:53
5880	58	275	1個	2022-03-07 11:25:02	2022-03-07 11:25:02
5881	58	144	30g × 4枚	2022-03-07 11:25:02	2022-03-07 11:25:02
642	29	47	120g	2021-12-28 13:10:06	2021-12-28 13:10:06
643	29	252	小さじ1/4	2021-12-28 13:10:06	2021-12-28 13:10:06
5882	58	22	320g	2022-03-07 11:25:02	2022-03-07 11:25:02
2917	277	137	4本（1本40g位）4人分	2022-02-08 14:05:12	2022-02-08 14:05:12
2918	277	215	小さじ1	2022-02-08 14:05:12	2022-02-08 14:05:12
2919	277	296	もち米大さじ2	2022-02-08 14:05:12	2022-02-08 14:05:12
2920	277	293	白ねぎ40g	2022-02-08 14:05:12	2022-02-08 14:05:12
2921	277	293	青い部分8g	2022-02-08 14:05:12	2022-02-08 14:05:12
2922	277	290	18個	2022-02-08 14:05:12	2022-02-08 14:05:12
6295	261	37	60g	2022-04-29 13:48:04	2022-04-29 13:48:04
6296	261	38	30g	2022-04-29 13:48:04	2022-04-29 13:48:04
6297	261	85	1/2個	2022-04-29 13:48:04	2022-04-29 13:48:04
6298	261	80	1/2個	2022-04-29 13:48:04	2022-04-29 13:48:04
6299	261	249	小さじ1	2022-04-29 13:48:04	2022-04-29 13:48:04
1002	162	275	4個	2021-12-28 15:36:24	2021-12-28 15:36:24
1003	162	197	60g	2021-12-28 15:36:24	2021-12-28 15:36:24
1004	162	180	20g	2021-12-28 15:36:24	2021-12-28 15:36:24
1076	49	30	2/3枚 (20 × 13cm)	2021-12-29 06:24:55	2021-12-29 06:24:55
1077	49	264	小さじ1	2021-12-29 06:24:55	2021-12-29 06:24:55
1078	49	98	16g	2021-12-29 06:24:55	2021-12-29 06:24:55
2726	174	34	1本	2022-02-08 13:20:32	2022-02-08 13:20:32
2727	174	211	小さじ1	2022-02-08 13:20:32	2022-02-08 13:20:32
2728	174	215	小さじ1	2022-02-08 13:20:32	2022-02-08 13:20:32
2729	174	242	小さじ1/2	2022-02-08 13:20:32	2022-02-08 13:20:32
6810	340	359	4枚くらい　★前日から戻す	2022-08-30 10:57:42	2022-08-30 10:57:42
861	201	18	160g	2021-12-28 14:24:23	2021-12-28 14:24:23
862	201	308	1個	2021-12-28 14:24:23	2021-12-28 14:24:23
863	201	309	40g	2021-12-28 14:24:23	2021-12-28 14:24:23
864	201	305	小さじ4	2021-12-28 14:24:23	2021-12-28 14:24:23
865	201	310	4個	2021-12-28 14:24:23	2021-12-28 14:24:23
1079	49	229	小さじ8	2021-12-29 06:24:55	2021-12-29 06:24:55
2730	174	5	白い炒りごま小さじ1	2022-02-08 13:20:32	2022-02-08 13:20:32
1469	5	35	480g	2021-12-29 07:42:24	2021-12-29 07:42:24
1470	5	134	400g	2021-12-29 07:42:24	2021-12-29 07:42:24
1471	5	209	400g	2021-12-29 07:42:24	2021-12-29 07:42:24
2800	120	143	240g	2022-02-08 13:45:57	2022-02-08 13:45:57
5883	58	160	8粒	2022-03-07 11:25:02	2022-03-07 11:25:02
5884	58	83	4つ	2022-03-07 11:25:02	2022-03-07 11:25:02
6811	340	136	1枚でok!　細切り　片栗粉まぶして炒める	2022-08-30 10:57:42	2022-08-30 10:57:42
6812	340	76	50gくらい	2022-08-30 10:57:42	2022-08-30 10:57:42
6813	340	51	1/2本　50〜60g	2022-08-30 10:57:42	2022-08-30 10:57:42
2801	120	76	80g	2022-02-08 13:45:57	2022-02-08 13:45:57
6814	340	275	1個	2022-08-30 10:57:42	2022-08-30 10:57:42
6815	340	242	6〜7cm	2022-08-30 10:57:42	2022-08-30 10:57:42
6816	340	156	数枚	2022-08-30 10:57:42	2022-08-30 10:57:42
1775	266	5	適量	2021-12-29 13:52:45	2021-12-29 13:52:45
2802	120	38	60g	2022-02-08 13:45:57	2022-02-08 13:45:57
2803	120	70	60g	2022-02-08 13:45:57	2022-02-08 13:45:57
1080	49	264	60cc	2021-12-29 06:24:55	2021-12-29 06:24:55
1081	49	288	小さじ4	2021-12-29 06:24:55	2021-12-29 06:24:55
1082	49	196	小さじ1	2021-12-29 06:24:55	2021-12-29 06:24:55
1083	49	223	少々	2021-12-29 06:24:55	2021-12-29 06:24:55
1084	49	186	小さじ1/2	2021-12-29 06:24:55	2021-12-29 06:24:55
1085	49	196	小さじ2	2021-12-29 06:24:55	2021-12-29 06:24:55
5995	285	37	1/2本　2〜3人分　斜め切り	2022-03-20 13:13:44	2022-03-20 13:13:44
2804	120	275	4個	2022-02-08 13:45:57	2022-02-08 13:45:57
5996	285	116	100g 食べやすく切る	2022-03-20 13:13:44	2022-03-20 13:13:44
5997	285	250	小さじ1	2022-03-20 13:13:44	2022-03-20 13:13:44
5998	285	8	1/2丁	2022-03-20 13:13:44	2022-03-20 13:13:44
6940	325	134	150g/人	2022-10-24 09:37:11	2022-10-24 09:37:11
553	135	276	大さじ1	2021-12-28 12:52:11	2021-12-28 12:52:11
554	135	82	4つ	2021-12-28 12:52:11	2021-12-28 12:52:11
951	62	275	2個	2021-12-28 15:25:29	2021-12-28 15:25:29
952	62	264	100cc	2021-12-28 15:25:29	2021-12-28 15:25:29
953	62	288	40g	2021-12-28 15:25:29	2021-12-28 15:25:29
954	62	192	大さじ2	2021-12-28 15:25:29	2021-12-28 15:25:29
2805	120	14	240cc	2022-02-08 13:45:57	2022-02-08 13:45:57
2871	205	29	4個	2022-02-08 13:58:26	2022-02-08 13:58:26
2872	205	219	小さじ1	2022-02-08 13:58:26	2022-02-08 13:58:26
6941	325	55	適量　朝用に多めに	2022-10-24 09:37:11	2022-10-24 09:37:11
6942	325	60	少量	2022-10-24 09:37:11	2022-10-24 09:37:11
6943	325	42	1切れ/人	2022-10-24 09:37:11	2022-10-24 09:37:11
6944	325	350	適量	2022-10-24 09:37:11	2022-10-24 09:37:11
715	196	35	120g	2021-12-28 13:17:51	2021-12-28 13:17:51
716	196	140	スライス2枚	2021-12-28 13:17:51	2021-12-28 13:17:51
717	196	285	小さじ1	2021-12-28 13:17:51	2021-12-28 13:17:51
718	196	218	小さじ1	2021-12-28 13:17:51	2021-12-28 13:17:51
2873	205	307	小さじ2	2022-02-08 13:58:26	2022-02-08 13:58:26
2874	205	249	小さじ2	2022-02-08 13:58:26	2022-02-08 13:58:26
2875	205	217	大さじ1	2022-02-08 13:58:26	2022-02-08 13:58:26
6945	325	349	適量	2022-10-24 09:37:11	2022-10-24 09:37:11
6946	325	84	適量　デミグラスソースに	2022-10-24 09:37:11	2022-10-24 09:37:11
6947	325	224	適量	2022-10-24 09:37:11	2022-10-24 09:37:11
6948	325	267	適量	2022-10-24 09:37:11	2022-10-24 09:37:11
6949	325	233	適量	2022-10-24 09:37:11	2022-10-24 09:37:11
6052	299	67	適量	2022-03-22 14:09:22	2022-03-22 14:09:22
6053	299	8	適量	2022-03-22 14:09:22	2022-03-22 14:09:22
2876	205	326	200g	2022-02-08 13:58:26	2022-02-08 13:58:26
1280	7	261	4枚	2021-12-29 07:10:54	2021-12-29 07:10:54
1281	7	14	160cc	2021-12-29 07:10:54	2021-12-29 07:10:54
6300	261	127	殻付で22尾・ホタテで代用可	2022-04-29 13:48:04	2022-04-29 13:48:04
3222	175	136	150g	2022-02-13 11:08:42	2022-02-13 11:08:42
3223	175	211	小さじ1/2	2022-02-13 11:08:42	2022-02-13 11:08:42
3224	175	279	大さじ1	2022-02-13 11:08:42	2022-02-13 11:08:42
3225	175	246	小さじ1/2	2022-02-13 11:08:42	2022-02-13 11:08:42
1282	7	247	小さじ1/4	2021-12-29 07:10:54	2021-12-29 07:10:54
719	196	226	200g	2021-12-28 13:17:51	2021-12-28 13:17:51
720	196	222	小さじ1	2021-12-28 13:17:51	2021-12-28 13:17:51
1086	57	275	1個	2021-12-29 06:25:16	2021-12-29 06:25:16
1087	57	192	大さじ4	2021-12-29 06:25:16	2021-12-29 06:25:16
1088	57	264	40cc	2021-12-29 06:25:16	2021-12-29 06:25:16
1356	264	296	ご飯、黒米入りご飯　各400g 4本分	2021-12-29 07:24:52	2021-12-29 07:24:52
1357	264	295	牛薄切り肉150g	2021-12-29 07:24:52	2021-12-29 07:24:52
1358	264	41	100g	2021-12-29 07:24:52	2021-12-29 07:24:52
1359	264	46	8枚	2021-12-29 07:24:52	2021-12-29 07:24:52
1360	264	51	100g	2021-12-29 07:24:52	2021-12-29 07:24:52
6506	177	256	1片	2022-05-11 02:46:14	2022-05-11 02:46:14
6507	177	80	2個	2022-05-11 02:46:14	2022-05-11 02:46:14
2731	72	200	小さじ1	2022-02-08 13:21:00	2022-02-08 13:21:00
1089	57	215	小さじ8	2021-12-29 06:25:16	2021-12-29 06:25:16
1090	57	12	60g	2021-12-29 06:25:16	2021-12-29 06:25:16
1091	57	227	20g	2021-12-29 06:25:16	2021-12-29 06:25:16
1092	57	231	小さじ1/2	2021-12-29 06:25:16	2021-12-29 06:25:16
1093	57	163	40g	2021-12-29 06:25:16	2021-12-29 06:25:16
2732	72	277	小さじ4	2022-02-08 13:21:00	2022-02-08 13:21:00
2733	72	45	30g	2022-02-08 13:21:00	2022-02-08 13:21:00
3110	204	311	4個	2022-02-10 05:17:20	2022-02-10 05:17:20
3111	204	265	20g	2022-02-10 05:17:20	2022-02-10 05:17:20
3226	175	338	適量	2022-02-13 11:08:42	2022-02-13 11:08:42
1690	182	294	240g× 2枚	2021-12-29 08:04:40	2021-12-29 08:04:40
1691	182	182	小さじ1	2021-12-29 08:04:40	2021-12-29 08:04:40
1692	182	213	小さじ4	2021-12-29 08:04:40	2021-12-29 08:04:40
1693	182	12	大さじ4	2021-12-29 08:04:40	2021-12-29 08:04:40
1694	182	212	小さじ4	2021-12-29 08:04:40	2021-12-29 08:04:40
1695	182	297	8枚切り8枚	2021-12-29 08:04:40	2021-12-29 08:04:40
1157	97	134	100g × 4枚	2021-12-29 06:31:22	2021-12-29 06:31:22
1158	97	84	小さじ1/2	2021-12-29 06:31:22	2021-12-29 06:31:22
1159	97	39	60g	2021-12-29 06:31:22	2021-12-29 06:31:22
1160	97	53	20g	2021-12-29 06:31:22	2021-12-29 06:31:22
2877	205	71	8g	2022-02-08 13:58:26	2022-02-08 13:58:26
2878	205	312	小さじ2	2022-02-08 13:58:26	2022-02-08 13:58:26
6508	177	50	4個	2022-05-11 02:46:14	2022-05-11 02:46:14
6509	177	262	10g	2022-05-11 02:46:14	2022-05-11 02:46:14
6510	177	12	大さじ1	2022-05-11 02:46:14	2022-05-11 02:46:14
1161	97	93	8個	2021-12-29 06:31:22	2021-12-29 06:31:22
1162	97	256	8g	2021-12-29 06:31:22	2021-12-29 06:31:22
6511	177	279	大さじ1	2022-05-11 02:46:14	2022-05-11 02:46:14
1696	188	301	100g × 4枚	2021-12-29 08:04:58	2021-12-29 08:04:58
1094	194	275	2個	2021-12-29 06:25:35	2021-12-29 06:25:35
1095	194	4	120cc	2021-12-29 06:25:35	2021-12-29 06:25:35
1096	194	288	40g	2021-12-29 06:25:35	2021-12-29 06:25:35
1097	194	192	小さじ8	2021-12-29 06:25:35	2021-12-29 06:25:35
1098	194	214	適宜	2021-12-29 06:25:35	2021-12-29 06:25:35
1697	188	278	小さじ1/8	2021-12-29 08:04:58	2021-12-29 08:04:58
1698	188	12	小さじ4	2021-12-29 08:04:58	2021-12-29 08:04:58
1699	188	256	16g	2021-12-29 08:04:58	2021-12-29 08:04:58
1700	188	218	小さじ2	2021-12-29 08:04:58	2021-12-29 08:04:58
1701	188	172	40cc	2021-12-29 08:04:58	2021-12-29 08:04:58
1702	188	279	小さじ2	2021-12-29 08:04:58	2021-12-29 08:04:58
1703	188	262	10g	2021-12-29 08:04:58	2021-12-29 08:04:58
1704	188	257	2g	2021-12-29 08:04:58	2021-12-29 08:04:58
1830	133	134	100 ×４枚	2021-12-30 14:48:17	2021-12-30 14:48:17
1831	133	206	小さじ2	2021-12-30 14:48:17	2021-12-30 14:48:17
1099	194	196	小さじ2	2021-12-29 06:25:35	2021-12-29 06:25:35
6512	177	249	大さじ1	2022-05-11 02:46:14	2022-05-11 02:46:14
6513	177	339	2切れ	2022-05-11 02:46:14	2022-05-11 02:46:14
1832	133	212	小さじ1	2021-12-30 14:48:17	2021-12-30 14:48:17
1833	133	213	小さじ1	2021-12-30 14:48:17	2021-12-30 14:48:17
1834	133	285	小さじ1	2021-12-30 14:48:17	2021-12-30 14:48:17
2970	33	39	60g	2022-02-09 08:19:18	2022-02-09 08:19:18
2971	33	53	20g	2022-02-09 08:19:18	2022-02-09 08:19:18
2972	33	47	40g	2022-02-09 08:19:18	2022-02-09 08:19:18
2973	33	112	4個	2022-02-09 08:19:18	2022-02-09 08:19:18
2974	33	275	温泉卵として4個	2022-02-09 08:19:18	2022-02-09 08:19:18
3046	115	264	200cc	2022-02-10 05:08:22	2022-02-10 05:08:22
3047	115	230	小さじ8	2022-02-10 05:08:22	2022-02-10 05:08:22
3048	115	176	小さじ2	2022-02-10 05:08:22	2022-02-10 05:08:22
3049	115	271	80g	2022-02-10 05:08:22	2022-02-10 05:08:22
6697	161	39	60g	2022-07-04 01:38:09	2022-07-04 01:38:09
6698	161	53	20g	2022-07-04 01:38:09	2022-07-04 01:38:09
6699	161	61	120g	2022-07-04 01:38:09	2022-07-04 01:38:09
6700	161	261	2枚	2022-07-04 01:38:09	2022-07-04 01:38:09
6701	161	283	小さじ4	2022-07-04 01:38:09	2022-07-04 01:38:09
3112	119	31	32g	2022-02-10 05:17:41	2022-02-10 05:17:41
3113	119	192	小さじ8	2022-02-10 05:17:41	2022-02-10 05:17:41
3114	119	100	12g	2022-02-10 05:17:41	2022-02-10 05:17:41
5892	137	135	240g	2022-03-07 11:26:56	2022-03-07 11:26:56
5893	137	216	小さじ4	2022-03-07 11:26:56	2022-03-07 11:26:56
5894	137	43	80g	2022-03-07 11:26:56	2022-03-07 11:26:56
5895	137	33	40g	2022-03-07 11:26:56	2022-03-07 11:26:56
6708	336	323	2本	2022-07-04 01:44:33	2022-07-04 01:44:33
6767	334	42	中1個	2022-07-05 12:32:35	2022-07-05 12:32:35
6768	334	156	30g	2022-07-05 12:32:35	2022-07-05 12:32:35
3115	119	169	小さじ1/2	2022-02-10 05:17:41	2022-02-10 05:17:41
3174	295	46	数枚　千切り	2022-02-13 04:55:37	2022-02-13 04:55:37
3175	295	336	適量	2022-02-13 04:55:37	2022-02-13 04:55:37
3176	295	337	適量　みじん切り	2022-02-13 04:55:37	2022-02-13 04:55:37
3177	295	5	適量	2022-02-13 04:55:37	2022-02-13 04:55:37
5896	137	39	40g	2022-03-07 11:26:56	2022-03-07 11:26:56
6769	334	34	1本　乱切り	2022-07-05 12:32:35	2022-07-05 12:32:35
6770	334	5	白いりごま適量	2022-07-05 12:32:35	2022-07-05 12:32:35
1779	267	322	100g	2021-12-29 14:02:51	2021-12-29 14:02:51
1780	267	5	適量	2021-12-29 14:02:51	2021-12-29 14:02:51
1781	267	278	小さじ1/2	2021-12-29 14:02:51	2021-12-29 14:02:51
2734	73	275	2個	2022-02-08 13:21:16	2022-02-08 13:21:16
2735	73	192	小さじ2	2022-02-08 13:21:16	2022-02-08 13:21:16
3977	76	275	4個	2021-12-07 13:38:49	2021-12-07 13:38:49
3978	76	64	80g	2021-12-07 13:38:49	2021-12-07 13:38:49
3979	76	55	160g	2021-12-07 13:38:49	2021-12-07 13:38:49
3980	76	278	小さじ1/8	2021-12-07 13:38:49	2021-12-07 13:38:49
3981	76	85	1個	2021-12-07 13:38:49	2021-12-07 13:38:49
3982	76	208	小さじ8	2021-12-07 13:38:49	2021-12-07 13:38:49
3983	76	267	小さじ4	2021-12-07 13:38:49	2021-12-07 13:38:49
3984	76	241	少々	2021-12-07 13:38:49	2021-12-07 13:38:49
3985	76	264	20cc	2021-12-07 13:38:49	2021-12-07 13:38:49
811	208	218	小さじ2	2021-12-28 14:17:07	2021-12-28 14:17:07
812	208	256	60g	2021-12-28 14:17:07	2021-12-28 14:17:07
813	208	264	200cc	2021-12-28 14:17:07	2021-12-28 14:17:07
961	78	288	60g	2021-12-28 15:26:20	2021-12-28 15:26:20
962	78	264	140cc	2021-12-28 15:26:20	2021-12-28 15:26:20
963	78	192	小さじ4	2021-12-28 15:26:20	2021-12-28 15:26:20
964	78	276	小さじ4	2021-12-28 15:26:20	2021-12-28 15:26:20
965	78	92	1個	2021-12-28 15:26:20	2021-12-28 15:26:20
966	78	82	4つ	2021-12-28 15:26:20	2021-12-28 15:26:20
1011	142	78	12個	2021-12-28 15:38:22	2021-12-28 15:38:22
1012	142	79	1個	2021-12-28 15:38:22	2021-12-28 15:38:22
1557	86	142	320g	2021-12-29 07:57:29	2021-12-29 07:57:29
1558	86	94	4本	2021-12-29 07:57:29	2021-12-29 07:57:29
1559	86	176	小さじ2	2021-12-29 07:57:29	2021-12-29 07:57:29
6459	331	43	100g 1/2本 2人分	2022-05-05 10:12:37	2022-05-05 10:12:37
6460	331	355	100g	2022-05-05 10:12:37	2022-05-05 10:12:37
1560	86	141	320g	2021-12-29 07:57:29	2021-12-29 07:57:29
1561	86	140	2枚	2021-12-29 07:57:29	2021-12-29 07:57:29
1562	86	17	大さじ4	2021-12-29 07:57:29	2021-12-29 07:57:29
1563	86	264	40cc	2021-12-29 07:57:29	2021-12-29 07:57:29
1564	86	35	120g	2021-12-29 07:57:29	2021-12-29 07:57:29
1565	86	209	200g	2021-12-29 07:57:29	2021-12-29 07:57:29
1566	86	268	60g	2021-12-29 07:57:29	2021-12-29 07:57:29
814	208	313	小さじ1	2021-12-28 14:17:07	2021-12-28 14:17:07
815	208	49	20g	2021-12-28 14:17:07	2021-12-28 14:17:07
816	208	37	40g	2021-12-28 14:17:07	2021-12-28 14:17:07
817	208	47	60g	2021-12-28 14:17:07	2021-12-28 14:17:07
818	208	70	60g	2021-12-28 14:17:07	2021-12-28 14:17:07
6514	318	339	1切れ　塩味	2022-05-11 02:48:00	2022-05-11 02:48:00
6515	318	110	適量	2022-05-11 02:48:00	2022-05-11 02:48:00
6516	318	56	1/3本くらい　	2022-05-11 02:48:00	2022-05-11 02:48:00
6517	318	71	適量	2022-05-11 02:48:00	2022-05-11 02:48:00
6518	318	287	5cm	2022-05-11 02:48:00	2022-05-11 02:48:00
2676	150	134	100g × 4枚	2022-02-08 13:11:33	2022-02-08 13:11:33
2677	150	256	8g	2022-02-08 13:11:33	2022-02-08 13:11:33
2678	150	209	400g	2022-02-08 13:11:33	2022-02-08 13:11:33
2679	150	261	4枚	2022-02-08 13:11:33	2022-02-08 13:11:33
2680	150	265	60g	2022-02-08 13:11:33	2022-02-08 13:11:33
2022	274	21	リングイネ200g 4人分	2022-01-11 15:10:24	2022-01-11 15:10:24
2023	274	35	120g	2022-01-11 15:10:24	2022-01-11 15:10:24
872	146	47	120g	2021-12-28 14:31:41	2021-12-28 14:31:41
873	146	39	40g	2021-12-28 14:31:41	2021-12-28 14:31:41
1100	209	263	40g	2021-12-29 06:25:54	2021-12-29 06:25:54
2024	274	37	40g	2022-01-11 15:10:24	2022-01-11 15:10:24
2025	274	51	40g	2022-01-11 15:10:24	2022-01-11 15:10:24
2026	274	256	8g	2022-01-11 15:10:24	2022-01-11 15:10:24
2027	274	262	10g	2022-01-11 15:10:24	2022-01-11 15:10:24
2028	274	324	320g	2022-01-11 15:10:24	2022-01-11 15:10:24
2029	274	233	小さじ2	2022-01-11 15:10:24	2022-01-11 15:10:24
2030	274	162	小さじ4	2022-01-11 15:10:24	2022-01-11 15:10:24
2031	274	224	280g	2022-01-11 15:10:24	2022-01-11 15:10:24
4097	88	36	120g	2021-12-07 14:02:42	2021-12-07 14:02:42
4098	88	39	60g	2021-12-07 14:02:42	2021-12-07 14:02:42
4099	88	283	小さじ4	2021-12-07 14:02:42	2021-12-07 14:02:42
1101	209	192	大さじ4	2021-12-29 06:25:54	2021-12-29 06:25:54
1102	209	275	40g	2021-12-29 06:25:54	2021-12-29 06:25:54
1103	209	12	40g	2021-12-29 06:25:54	2021-12-29 06:25:54
1104	209	231	小さじ1/2	2021-12-29 06:25:54	2021-12-29 06:25:54
1105	209	305	小さじ4	2021-12-29 06:25:54	2021-12-29 06:25:54
2681	150	258	4枚	2022-02-08 13:11:33	2022-02-08 13:11:33
6519	318	219	小さじ2	2022-05-11 02:48:00	2022-05-11 02:48:00
6520	318	279	小さじ2	2022-05-11 02:48:00	2022-05-11 02:48:00
6521	318	10	2合　水は具材を入れて2合のライン	2022-05-11 02:48:00	2022-05-11 02:48:00
2682	150	280	小さじ2	2022-02-08 13:11:33	2022-02-08 13:11:33
5897	137	44	40g	2022-03-07 11:26:56	2022-03-07 11:26:56
5898	137	283	小さじ4	2022-03-07 11:26:56	2022-03-07 11:26:56
1836	271	206	1	2021-12-30 15:07:04	2021-12-30 15:07:04
1567	91	147	厚さ2cm・240g × 2枚	2021-12-29 07:57:44	2021-12-29 07:57:44
1568	91	258	20g	2021-12-29 07:57:44	2021-12-29 07:57:44
1569	91	45	200g	2021-12-29 07:57:44	2021-12-29 07:57:44
967	85	276	小さじ2	2021-12-28 15:29:07	2021-12-28 15:29:07
968	85	264	160cc	2021-12-28 15:29:07	2021-12-28 15:29:07
969	85	192	大さじ2	2021-12-28 15:29:07	2021-12-28 15:29:07
970	85	288	40g	2021-12-28 15:29:07	2021-12-28 15:29:07
971	85	228	適量	2021-12-28 15:29:07	2021-12-28 15:29:07
972	85	290	12粒	2021-12-28 15:29:07	2021-12-28 15:29:07
1013	131	276	小さじ2(4人分)	2021-12-28 15:39:21	2021-12-28 15:39:21
1014	131	289	小さじ4	2021-12-28 15:39:21	2021-12-28 15:39:21
1015	131	288	60g	2021-12-28 15:39:21	2021-12-28 15:39:21
1106	209	265	20g	2021-12-29 06:25:54	2021-12-29 06:25:54
1107	209	88	4個	2021-12-29 06:25:54	2021-12-29 06:25:54
1570	91	40	20g	2021-12-29 07:57:44	2021-12-29 07:57:44
3050	151	18	200g	2022-02-10 05:08:43	2022-02-10 05:08:43
3051	151	154	小さじ1	2022-02-10 05:08:43	2022-02-10 05:08:43
3052	151	288	土台用40g・芋クリーム用40g	2022-02-10 05:08:43	2022-02-10 05:08:43
3053	151	182	小さじ1/2	2022-02-10 05:08:43	2022-02-10 05:08:43
1371	112	14	240cc	2021-12-29 07:32:09	2021-12-29 07:32:09
1372	112	247	小さじ1/2	2021-12-29 07:32:09	2021-12-29 07:32:09
1475	18	134	120g × 4枚	2021-12-29 07:43:24	2021-12-29 07:43:24
1571	91	50	4個	2021-12-29 07:57:44	2021-12-29 07:57:44
4184	101	125	12g	2021-12-07 14:21:29	2021-12-07 14:21:29
4185	101	283	小さじ1/2	2021-12-07 14:21:29	2021-12-07 14:21:29
4186	101	109	8g	2021-12-07 14:21:29	2021-12-07 14:21:29
4187	101	39	80g	2021-12-07 14:21:29	2021-12-07 14:21:29
1476	18	59	1個	2021-12-29 07:43:24	2021-12-29 07:43:24
1477	18	240	大さじ2	2021-12-29 07:43:24	2021-12-29 07:43:24
2883	130	1	120g	2022-02-08 13:59:20	2022-02-08 13:59:20
2884	130	2	小さじ4前後	2022-02-08 13:59:20	2022-02-08 13:59:20
2932	23	22	200g	2022-02-08 14:07:17	2022-02-08 14:07:17
2933	23	35	120g	2022-02-08 14:07:17	2022-02-08 14:07:17
2934	23	209	240g	2022-02-08 14:07:17	2022-02-08 14:07:17
2935	23	222	小さじ2	2022-02-08 14:07:17	2022-02-08 14:07:17
2936	23	213	小さじ2	2022-02-08 14:07:17	2022-02-08 14:07:17
2937	23	91	1枚	2022-02-08 14:07:17	2022-02-08 14:07:17
3054	102	190	40g	2022-02-10 05:09:28	2022-02-10 05:09:28
3055	102	227	40g	2022-02-10 05:09:28	2022-02-10 05:09:28
3056	102	263	40g	2022-02-10 05:09:28	2022-02-10 05:09:28
3057	102	96	4個	2022-02-10 05:09:28	2022-02-10 05:09:28
3058	102	186	40g	2022-02-10 05:09:28	2022-02-10 05:09:28
3116	67	276	小さじ2	2022-02-10 05:18:07	2022-02-10 05:18:07
4252	114	85	1個	2021-12-07 14:43:07	2021-12-07 14:43:07
4253	114	42	1個	2021-12-07 14:43:07	2021-12-07 14:43:07
4254	114	39	60g	2021-12-07 14:43:07	2021-12-07 14:43:07
4255	114	235	小さじ1/2	2021-12-07 14:43:07	2021-12-07 14:43:07
3117	67	288	40g	2022-02-10 05:18:07	2022-02-10 05:18:07
3118	67	229	大さじ2	2022-02-10 05:18:07	2022-02-10 05:18:07
3119	67	192	小さじ4	2022-02-10 05:18:07	2022-02-10 05:18:07
3120	67	169	小さじ1	2022-02-10 05:18:07	2022-02-10 05:18:07
3121	67	3	160cc	2022-02-10 05:18:07	2022-02-10 05:18:07
3122	67	6	60g	2022-02-10 05:18:07	2022-02-10 05:18:07
4256	114	264	小さじ1	2021-12-07 14:43:07	2021-12-07 14:43:07
4257	114	208	大さじ2	2021-12-07 14:43:07	2021-12-07 14:43:07
1837	273	154	1	2021-12-30 15:19:44	2021-12-30 15:19:44
1572	99	148	4本(1本60g位)	2021-12-29 07:58:06	2021-12-29 07:58:06
1573	99	134	320g	2021-12-29 07:58:06	2021-12-29 07:58:06
1574	99	271	120g	2021-12-29 07:58:06	2021-12-29 07:58:06
1575	99	19	32g	2021-12-29 07:58:06	2021-12-29 07:58:06
1296	32	127	半身(120g前後) × 4	2021-12-29 07:13:06	2021-12-29 07:13:06
1016	181	127	2個	2021-12-29 06:18:55	2021-12-29 06:18:55
1017	181	21	80g	2021-12-29 06:18:55	2021-12-29 06:18:55
1297	32	262	10g	2021-12-29 07:13:06	2021-12-29 07:13:06
1298	32	172	40cc	2021-12-29 07:13:06	2021-12-29 07:13:06
1299	32	256	12g	2021-12-29 07:13:06	2021-12-29 07:13:06
1300	32	35	240g	2021-12-29 07:13:06	2021-12-29 07:13:06
6664	96	140	2枚（ア）	2022-07-03 07:56:33	2022-07-03 07:56:33
6665	96	256	8g（ア）	2022-07-03 07:56:33	2022-07-03 07:56:33
6666	96	35	80g（ア）	2022-07-03 07:56:33	2022-07-03 07:56:33
6667	96	226	160g（ア）	2022-07-03 07:56:33	2022-07-03 07:56:33
6668	96	264	80cc（ア）	2022-07-03 07:56:33	2022-07-03 07:56:33
6669	96	21	120g（ア）	2022-07-03 07:56:33	2022-07-03 07:56:33
6670	96	124	40g（冷）	2022-07-03 07:56:33	2022-07-03 07:56:33
6671	96	95	2g（冷）	2022-07-03 07:56:33	2022-07-03 07:56:33
6672	96	119	4枚（冷）	2022-07-03 07:56:33	2022-07-03 07:56:33
6673	96	21	120g（冷）	2022-07-03 07:56:33	2022-07-03 07:56:33
6702	161	11	240g	2022-07-04 01:38:09	2022-07-04 01:38:09
6703	161	264	180cc	2022-07-04 01:38:09	2022-07-04 01:38:09
6704	161	266	40g	2022-07-04 01:38:09	2022-07-04 01:38:09
5822	316	275	1個	2022-03-01 13:44:34	2022-03-01 13:44:34
5823	316	107	スライス	2022-03-01 13:44:34	2022-03-01 13:44:34
5824	316	341	大さじ1 水150cc	2022-03-01 13:44:34	2022-03-01 13:44:34
6705	161	164	小さじ1	2022-07-04 01:38:09	2022-07-04 01:38:09
7006	65	55	40g	2022-11-07 11:33:12	2022-11-07 11:33:12
7007	65	219	小さじ1	2022-11-07 11:33:12	2022-11-07 11:33:12
6714	337	127	4人　80g 有頭でないむきえび	2022-07-04 01:59:51	2022-07-04 01:59:51
6715	337	45	160g	2022-07-04 01:59:51	2022-07-04 01:59:51
6716	337	156	40g	2022-07-04 01:59:51	2022-07-04 01:59:51
6717	337	217	小さじ1	2022-07-04 01:59:51	2022-07-04 01:59:51
1018	181	264	120g	2021-12-29 06:18:55	2021-12-29 06:18:55
1019	181	288	40g	2021-12-29 06:18:55	2021-12-29 06:18:55
1020	181	262	1個	2021-12-29 06:18:55	2021-12-29 06:18:55
6393	328	130	3切れ250g  2人分	2022-05-05 08:30:02	2022-05-05 08:30:02
6394	328	293	長ネギ　80g	2022-05-05 08:30:02	2022-05-05 08:30:02
775	202	45	200g	2021-12-28 14:12:05	2021-12-28 14:12:05
776	202	51	20g	2021-12-28 14:12:05	2021-12-28 14:12:05
777	202	277	大さじ2	2021-12-28 14:12:05	2021-12-28 14:12:05
778	202	80	小さじ1果汁	2021-12-28 14:12:05	2021-12-28 14:12:05
6395	328	73	8本	2022-05-05 08:30:02	2022-05-05 08:30:02
6396	328	107	4個	2022-05-05 08:30:02	2022-05-05 08:30:02
6397	328	232	大さじ2	2022-05-05 08:30:02	2022-05-05 08:30:02
6398	328	351	大さじ1/2	2022-05-05 08:30:02	2022-05-05 08:30:02
6399	328	217	適量	2022-05-05 08:30:02	2022-05-05 08:30:02
2683	169	134	2枚(500g)	2022-02-08 13:11:58	2022-02-08 13:11:58
1576	99	217	大さじ2	2021-12-29 07:58:06	2021-12-29 07:58:06
1577	99	234	小さじ4	2021-12-29 07:58:06	2021-12-29 07:58:06
1578	99	191	小さじ2	2021-12-29 07:58:06	2021-12-29 07:58:06
1579	99	286	小さじ1	2021-12-29 07:58:06	2021-12-29 07:58:06
1580	99	287	小さじ1	2021-12-29 07:58:06	2021-12-29 07:58:06
2684	169	35	1/2個(100g)	2022-02-08 13:11:58	2022-02-08 13:11:58
2685	169	256	10g	2022-02-08 13:11:58	2022-02-08 13:11:58
2686	169	209	1缶(400g)	2022-02-08 13:11:58	2022-02-08 13:11:58
2687	169	162	50cc	2022-02-08 13:11:58	2022-02-08 13:11:58
1301	32	12	大さじ2	2021-12-29 07:13:06	2021-12-29 07:13:06
1302	32	233	大さじ1	2021-12-29 07:13:06	2021-12-29 07:13:06
1303	32	288	120g	2021-12-29 07:13:06	2021-12-29 07:13:06
1304	32	21	200g	2021-12-29 07:13:06	2021-12-29 07:13:06
2985	260	45	1	2022-02-09 08:23:03	2022-02-09 08:23:03
3059	41	12	大さじ1	2022-02-10 05:10:31	2022-02-10 05:10:31
3060	41	275	1/4個(13g)	2022-02-10 05:10:31	2022-02-10 05:10:31
2688	169	91	1~2枚	2022-02-08 13:11:58	2022-02-08 13:11:58
3061	41	214	少々	2022-02-10 05:10:31	2022-02-10 05:10:31
6531	94	55	200g	2022-05-24 12:23:29	2022-05-24 12:23:29
6532	94	183	2枚	2022-05-24 12:23:29	2022-05-24 12:23:29
2689	169	93	オリーブ12~20粒くらい	2022-02-08 13:11:58	2022-02-08 13:11:58
2690	169	262	20g	2022-02-08 13:11:58	2022-02-08 13:11:58
2691	169	288	適量	2022-02-08 13:11:58	2022-02-08 13:11:58
2885	31	134	20g× 4	2022-02-08 13:59:43	2022-02-08 13:59:43
2886	31	219	小さじ1	2022-02-08 13:59:43	2022-02-08 13:59:43
2887	31	51	暑さ5mm輪切り× 4	2022-02-08 13:59:43	2022-02-08 13:59:43
2888	31	29	4個	2022-02-08 13:59:43	2022-02-08 13:59:43
2889	31	71	8g	2022-02-08 13:59:43	2022-02-08 13:59:43
3062	41	264	大さじ1	2022-02-10 05:10:31	2022-02-10 05:10:31
3063	41	262	2g	2022-02-10 05:10:31	2022-02-10 05:10:31
1021	183	21	80g	2021-12-29 06:19:26	2021-12-29 06:19:26
1022	183	209	200g	2021-12-29 06:19:26	2021-12-29 06:19:26
1023	183	232	大さじ4	2021-12-29 06:19:26	2021-12-29 06:19:26
1024	183	277	大さじ1	2021-12-29 06:19:26	2021-12-29 06:19:26
1025	183	91	1枚	2021-12-29 06:19:26	2021-12-29 06:19:26
1026	183	35	80g	2021-12-29 06:19:26	2021-12-29 06:19:26
1027	183	146	2本	2021-12-29 06:19:26	2021-12-29 06:19:26
1028	183	112	缶スライス40g	2021-12-29 06:19:26	2021-12-29 06:19:26
1029	183	16	40g	2021-12-29 06:19:26	2021-12-29 06:19:26
4850	184	79	1/2個	2021-12-11 04:17:26	2021-12-11 04:17:26
4851	184	37	葉を適宜4g位	2021-12-11 04:17:26	2021-12-11 04:17:26
4852	184	91	1/2枚	2021-12-11 04:17:26	2021-12-11 04:17:26
4853	184	277	40cc	2021-12-11 04:17:26	2021-12-11 04:17:26
4854	184	39	40g	2021-12-11 04:17:26	2021-12-11 04:17:26
4855	184	53	20g	2021-12-11 04:17:26	2021-12-11 04:17:26
4856	184	37	40g	2021-12-11 04:17:26	2021-12-11 04:17:26
4857	184	297	食パン8枚切りのみみ2枚分	2021-12-11 04:17:26	2021-12-11 04:17:26
1030	183	63	1/2個	2021-12-29 06:19:26	2021-12-29 06:19:26
1116	39	39	20g	2021-12-29 06:28:32	2021-12-29 06:28:32
1117	39	37	10g	2021-12-29 06:28:32	2021-12-29 06:28:32
1118	39	283	小さじ1	2021-12-29 06:28:32	2021-12-29 06:28:32
1185	47	131	4個	2021-12-29 06:33:33	2021-12-29 06:33:33
1186	47	12	小さじ1	2021-12-29 06:33:33	2021-12-29 06:33:33
1187	47	218	小さじ2	2021-12-29 06:33:33	2021-12-29 06:33:33
1188	47	256	8g	2021-12-29 06:33:33	2021-12-29 06:33:33
3064	41	229	小さじ1	2022-02-10 05:10:31	2022-02-10 05:10:31
3065	41	197	小さじ1	2022-02-10 05:10:31	2022-02-10 05:10:31
1715	28	127	4尾(1尾40g)	2021-12-29 08:17:55	2021-12-29 08:17:55
1716	28	253	小さじ4	2021-12-29 08:17:55	2021-12-29 08:17:55
5591	256	59	260g 4人分	2022-02-22 10:09:57	2022-02-22 10:09:57
2214	34	22	160g	2022-01-23 10:32:44	2022-01-23 10:32:44
2215	34	35	120g	2022-01-23 10:32:44	2022-01-23 10:32:44
2216	34	37	20g	2022-01-23 10:32:44	2022-01-23 10:32:44
2217	34	262	10g	2022-01-23 10:32:44	2022-01-23 10:32:44
2218	34	222	小さじ1	2022-01-23 10:32:44	2022-01-23 10:32:44
2219	34	91	1枚	2022-01-23 10:32:44	2022-01-23 10:32:44
2220	34	264	80cc	2022-01-23 10:32:44	2022-01-23 10:32:44
2221	34	258	少々	2022-01-23 10:32:44	2022-01-23 10:32:44
5592	256	35	1/2個　4人分	2022-02-22 10:09:57	2022-02-22 10:09:57
5593	256	264	400cc	2022-02-22 10:09:57	2022-02-22 10:09:57
5594	256	222	小さじ1	2022-02-22 10:09:57	2022-02-22 10:09:57
6674	283	61	220g 4人分	2022-07-04 00:29:19	2022-07-04 00:29:19
6675	283	35	1/2個　100g	2022-07-04 00:29:19	2022-07-04 00:29:19
1189	47	262	16g	2021-12-29 06:33:33	2021-12-29 06:33:33
1190	47	35	120g	2021-12-29 06:33:33	2021-12-29 06:33:33
1191	47	14	200cc	2021-12-29 06:33:33	2021-12-29 06:33:33
3066	41	82	1つ	2022-02-10 05:10:31	2022-02-10 05:10:31
6718	337	246	4人で小さじ1	2022-07-04 01:59:51	2022-07-04 01:59:51
6824	343	354	適量	2022-09-02 09:33:03	2022-09-02 09:33:03
6825	343	77	適量	2022-09-02 09:33:03	2022-09-02 09:33:03
6826	343	293	青ネギ　小口切り	2022-09-02 09:33:03	2022-09-02 09:33:03
1192	47	172	40cc	2021-12-29 06:33:33	2021-12-29 06:33:33
1193	47	99	24本	2021-12-29 06:33:33	2021-12-29 06:33:33
1194	47	267	小さじ2	2021-12-29 06:33:33	2021-12-29 06:33:33
1254	223	35	40g	2021-12-29 06:46:55	2021-12-29 06:46:55
3123	74	175	8g	2022-02-10 05:18:37	2022-02-10 05:18:37
3124	74	12	40g	2022-02-10 05:18:37	2022-02-10 05:18:37
3125	74	184	60g	2022-02-10 05:18:37	2022-02-10 05:18:37
5523	281	330	250g 4人分	2022-02-20 04:29:41	2022-02-20 04:29:41
5524	281	211	4カップ分	2022-02-20 04:29:41	2022-02-20 04:29:41
5525	281	217	大さじ1〜2	2022-02-20 04:29:41	2022-02-20 04:29:41
5526	281	32	適量	2022-02-20 04:29:41	2022-02-20 04:29:41
5527	281	275	1個	2022-02-20 04:29:41	2022-02-20 04:29:41
2692	1	135	12枚(400g)	2022-02-08 13:12:32	2022-02-08 13:12:32
2693	1	61	120g	2022-02-08 13:12:32	2022-02-08 13:12:32
2694	1	62	80g	2022-02-08 13:12:32	2022-02-08 13:12:32
2695	1	38	80g	2022-02-08 13:12:32	2022-02-08 13:12:32
2696	1	63	2個	2022-02-08 13:12:32	2022-02-08 13:12:32
6827	343	105	適量	2022-09-02 09:33:03	2022-09-02 09:33:03
6828	343	326	おろし	2022-09-02 09:33:03	2022-09-02 09:33:03
6829	343	202	適量	2022-09-02 09:33:03	2022-09-02 09:33:03
4944	197	39	60g	2021-12-11 04:40:38	2021-12-11 04:40:38
4945	197	53	20g	2021-12-11 04:40:38	2021-12-11 04:40:38
4946	197	304	4個	2021-12-11 04:40:38	2021-12-11 04:40:38
2986	71	22	200g	2022-02-09 08:23:49	2022-02-09 08:23:49
2987	71	64	4本(40g)	2022-02-09 08:23:49	2022-02-09 08:23:49
2988	71	140	2枚	2022-02-09 08:23:49	2022-02-09 08:23:49
6830	343	216	適量	2022-09-02 09:33:03	2022-09-02 09:33:03
6831	343	287	適量	2022-09-02 09:33:03	2022-09-02 09:33:03
6832	343	105	天かす	2022-09-02 09:33:03	2022-09-02 09:33:03
2989	71	219	小さじ1/2	2022-02-09 08:23:49	2022-02-09 08:23:49
2990	71	240	小さじ1	2022-02-09 08:23:49	2022-02-09 08:23:49
906	37	122	2個	2021-12-28 14:48:31	2021-12-28 14:48:31
907	37	140	1/2枚	2021-12-28 14:48:31	2021-12-28 14:48:31
908	37	264	60cc	2021-12-28 14:48:31	2021-12-28 14:48:31
909	37	267	小さじ1/2	2021-12-28 14:48:31	2021-12-28 14:48:31
910	37	222	小さじ1/4	2021-12-28 14:48:31	2021-12-28 14:48:31
977	89	188	40g	2021-12-28 15:32:05	2021-12-28 15:32:05
978	89	170	小さじ2	2021-12-28 15:32:05	2021-12-28 15:32:05
979	89	276	小さじ1	2021-12-28 15:32:05	2021-12-28 15:32:05
980	89	171	400cc	2021-12-28 15:32:05	2021-12-28 15:32:05
981	89	88	4個	2021-12-28 15:32:05	2021-12-28 15:32:05
5595	256	278	小さじ1 玉ねぎ炒め、カブ炒め	2022-02-22 10:09:57	2022-02-22 10:09:57
5596	256	218	適量	2022-02-22 10:09:57	2022-02-22 10:09:57
5597	256	160	適量	2022-02-22 10:09:57	2022-02-22 10:09:57
6880	346	122	120g 2人分	2022-10-11 14:07:25	2022-10-11 14:07:25
6881	346	361	2切れ　2人分　切ると崩れやすくなるので、切らない	2022-10-11 14:07:25	2022-10-11 14:07:25
2835	9	11	100g	2022-02-08 13:49:56	2022-02-08 13:49:56
2836	9	22	400g	2022-02-08 13:49:56	2022-02-08 13:49:56
2837	9	140	2枚	2022-02-08 13:49:56	2022-02-08 13:49:56
2838	9	264	200cc	2022-02-08 13:49:56	2022-02-08 13:49:56
2839	9	288	100g	2022-02-08 13:49:56	2022-02-08 13:49:56
5042	191	62	80g	2021-12-11 06:50:24	2021-12-11 06:50:24
5043	191	138	80g	2021-12-11 06:50:24	2021-12-11 06:50:24
5044	191	284	小さじ1	2021-12-11 06:50:24	2021-12-11 06:50:24
5045	191	72	80g	2021-12-11 06:50:24	2021-12-11 06:50:24
5046	191	4	80cc	2021-12-11 06:50:24	2021-12-11 06:50:24
5047	191	208	小さじ4	2021-12-11 06:50:24	2021-12-11 06:50:24
5048	191	13	60g強	2021-12-11 06:50:24	2021-12-11 06:50:24
5049	191	80	1/2個	2021-12-11 06:50:24	2021-12-11 06:50:24
5050	191	167	小さじ1/2	2021-12-11 06:50:24	2021-12-11 06:50:24
5051	191	249	小さじ1	2021-12-11 06:50:24	2021-12-11 06:50:24
2840	9	270	4/5個	2022-02-08 13:49:56	2022-02-08 13:49:56
1315	55	57	60g	2021-12-29 07:13:48	2021-12-29 07:13:48
1316	55	109	8g	2021-12-29 07:13:48	2021-12-29 07:13:48
1317	55	282	80g	2021-12-29 07:13:48	2021-12-29 07:13:48
1318	55	37	80g	2021-12-29 07:13:48	2021-12-29 07:13:48
1319	55	120	20g	2021-12-29 07:13:48	2021-12-29 07:13:48
1320	55	60	80g	2021-12-29 07:13:48	2021-12-29 07:13:48
1321	55	14	200cc	2021-12-29 07:13:48	2021-12-29 07:13:48
1322	55	275	温泉卵4個	2021-12-29 07:13:48	2021-12-29 07:13:48
1323	55	234	小さじ2	2021-12-29 07:13:48	2021-12-29 07:13:48
1439	186	140	2枚	2021-12-29 07:38:48	2021-12-29 07:38:48
1440	186	35	120g	2021-12-29 07:38:48	2021-12-29 07:38:48
1441	186	262	20g + 10g	2021-12-29 07:38:48	2021-12-29 07:38:48
1442	186	300	200g	2021-12-29 07:38:48	2021-12-29 07:38:48
1443	186	172	40cc	2021-12-29 07:38:48	2021-12-29 07:38:48
1444	186	12	小さじ8	2021-12-29 07:38:48	2021-12-29 07:38:48
1445	186	233	大さじ1	2021-12-29 07:38:48	2021-12-29 07:38:48
1446	186	264	480cc	2021-12-29 07:38:48	2021-12-29 07:38:48
1447	186	296	200cc	2021-12-29 07:38:48	2021-12-29 07:38:48
1448	186	266	40g	2021-12-29 07:38:48	2021-12-29 07:38:48
1478	36	147	(厚さ1.5~2cm)120g・1人分	2021-12-29 07:43:59	2021-12-29 07:43:59
1479	36	218	小さじ1/2	2021-12-29 07:43:59	2021-12-29 07:43:59
1480	36	80	1/4個　（1人分）	2021-12-29 07:43:59	2021-12-29 07:43:59
1481	36	262	8g　（1人分）	2021-12-29 07:43:59	2021-12-29 07:43:59
1482	36	72	20g　（1人分）	2021-12-29 07:43:59	2021-12-29 07:43:59
5967	319	141	200g 4人分　少なめにして薄く仕上げ	2022-03-09 02:06:25	2022-03-09 02:06:25
5968	319	275	1/2個	2022-03-09 02:06:25	2022-03-09 02:06:25
5969	319	17	大さじ4	2022-03-09 02:06:25	2022-03-09 02:06:25
5970	319	264	大さじ2	2022-03-09 02:06:25	2022-03-09 02:06:25
5971	319	342	適量	2022-03-09 02:06:25	2022-03-09 02:06:25
5972	319	42	輪切り　大きいトマトを使用	2022-03-09 02:06:25	2022-03-09 02:06:25
1483	36	22	60g　（1人分）	2021-12-29 07:43:59	2021-12-29 07:43:59
1484	36	286	少々	2021-12-29 07:43:59	2021-12-29 07:43:59
3067	110	181	2本(30g)	2022-02-10 05:11:23	2022-02-10 05:11:23
3068	110	193	80g	2022-02-10 05:11:23	2022-02-10 05:11:23
3069	110	194	小さじ4	2022-02-10 05:11:23	2022-02-10 05:11:23
3126	21	275	1個	2022-02-10 05:19:21	2022-02-10 05:19:21
3127	21	192	大さじ2	2022-02-10 05:19:21	2022-02-10 05:19:21
3128	21	12	小さじ4	2022-02-10 05:19:21	2022-02-10 05:19:21
3129	21	227	小さじ4	2022-02-10 05:19:21	2022-02-10 05:19:21
3130	21	264	小さじ4	2022-02-10 05:19:21	2022-02-10 05:19:21
3131	21	288	40g	2022-02-10 05:19:21	2022-02-10 05:19:21
3132	21	214	8ふり	2022-02-10 05:19:21	2022-02-10 05:19:21
3133	21	195	半割2個	2022-02-10 05:19:21	2022-02-10 05:19:21
3134	21	186	小さじ1/2	2022-02-10 05:19:21	2022-02-10 05:19:21
5528	286	331	大さじ2（乾燥）3人分	2022-02-20 04:30:43	2022-02-20 04:30:43
5529	286	121	1缶	2022-02-20 04:30:43	2022-02-20 04:30:43
5530	286	293	長ネギ3/4本　小口切り	2022-02-20 04:30:43	2022-02-20 04:30:43
5531	286	103	すりおろし小さじ1.5	2022-02-20 04:30:43	2022-02-20 04:30:43
5907	148	21	200g	2022-03-07 11:28:03	2022-03-07 11:28:03
2225	270	206	1	2022-01-23 11:19:25	2022-01-23 11:19:25
5908	148	264	120cc	2022-03-07 11:28:03	2022-03-07 11:28:03
5600	310	61	1/8〜1/4程度	2022-02-28 03:33:41	2022-02-28 03:33:41
5909	148	288	200g	2022-03-07 11:28:03	2022-03-07 11:28:03
5910	148	256	8g	2022-03-07 11:28:03	2022-03-07 11:28:03
5911	148	140	2枚	2022-03-07 11:28:03	2022-03-07 11:28:03
5737	313	141	400g 4人分	2022-03-01 10:56:12	2022-03-01 10:56:12
5738	313	35	160g	2022-03-01 10:56:12	2022-03-01 10:56:12
1595	111	35	240g	2021-12-29 07:59:03	2021-12-29 07:59:03
1596	111	51	トッピング用とペースト用で各80g	2021-12-29 07:59:03	2021-12-29 07:59:03
1597	111	166	小さじ1	2021-12-29 07:59:03	2021-12-29 07:59:03
1598	111	230	大さじ8	2021-12-29 07:59:03	2021-12-29 07:59:03
1599	111	61	200g	2021-12-29 07:59:03	2021-12-29 07:59:03
1600	111	68	4本	2021-12-29 07:59:03	2021-12-29 07:59:03
1601	111	67	1本	2021-12-29 07:59:03	2021-12-29 07:59:03
1602	111	56	60g	2021-12-29 07:59:03	2021-12-29 07:59:03
1041	218	21	300g 4人分	2021-12-29 06:22:10	2021-12-29 06:22:10
1042	218	313	10g	2021-12-29 06:22:10	2021-12-29 06:22:10
1043	218	256	30g	2021-12-29 06:22:10	2021-12-29 06:22:10
1044	218	222	小さじ4（目安）	2021-12-29 06:22:10	2021-12-29 06:22:10
5167	122	145	120g	2021-12-13 09:31:19	2021-12-13 09:31:19
5168	122	39	60g	2021-12-13 09:31:19	2021-12-13 09:31:19
5169	122	36	40g	2021-12-13 09:31:19	2021-12-13 09:31:19
5170	122	82	4g	2021-12-13 09:31:19	2021-12-13 09:31:19
5171	122	206	小さじ2	2021-12-13 09:31:19	2021-12-13 09:31:19
1603	111	14	240cc	2021-12-29 07:59:03	2021-12-29 07:59:03
1604	111	247	小さじ1/2	2021-12-29 07:59:03	2021-12-29 07:59:03
1717	180	30	2枚・(15× 23.5cm)	2021-12-29 08:19:12	2021-12-29 08:19:12
1718	180	264	100cc	2021-12-29 08:19:12	2021-12-29 08:19:12
1719	180	44	(幅3mmの輪切り)180g	2021-12-29 08:19:12	2021-12-29 08:19:12
1720	180	35	薄切り60g	2021-12-29 08:19:12	2021-12-29 08:19:12
1045	218	239	4本	2021-12-29 06:22:10	2021-12-29 06:22:10
1046	218	318	2缶 800g 水煮	2021-12-29 06:22:10	2021-12-29 06:22:10
5912	148	35	120g	2022-03-07 11:28:03	2022-03-07 11:28:03
5913	148	262	8g	2022-03-07 11:28:03	2022-03-07 11:28:03
5914	148	108	200g	2022-03-07 11:28:03	2022-03-07 11:28:03
1721	180	140	細切り1枚分	2021-12-29 08:19:12	2021-12-29 08:19:12
1722	180	267	小さじ2	2021-12-29 08:19:12	2021-12-29 08:19:12
1723	180	262	10g	2021-12-29 08:19:12	2021-12-29 08:19:12
1724	180	12	10g	2021-12-29 08:19:12	2021-12-29 08:19:12
1766	265	35	1個	2021-12-29 12:00:42	2021-12-29 12:00:42
1767	265	146	2〜3本	2021-12-29 12:00:42	2021-12-29 12:00:42
1768	265	65	2本	2021-12-29 12:00:42	2021-12-29 12:00:42
1769	265	222	小さじ1/3〜1/2	2021-12-29 12:00:42	2021-12-29 12:00:42
2991	129	283	大さじ2	2022-02-09 08:27:47	2022-02-09 08:27:47
2992	129	34	1本	2022-02-09 08:27:47	2022-02-09 08:27:47
2993	129	33	60g	2022-02-09 08:27:47	2022-02-09 08:27:47
1200	87	122	240g	2021-12-29 06:34:50	2021-12-29 06:34:50
1201	87	172	40cc	2021-12-29 06:34:50	2021-12-29 06:34:50
1202	87	256	12g	2021-12-29 06:34:50	2021-12-29 06:34:50
1203	87	35	120g	2021-12-29 06:34:50	2021-12-29 06:34:50
1204	87	14	240cc	2021-12-29 06:34:50	2021-12-29 06:34:50
1205	87	42	1個	2021-12-29 06:34:50	2021-12-29 06:34:50
1206	87	80	1/2個	2021-12-29 06:34:50	2021-12-29 06:34:50
5739	313	275	1個	2022-03-01 10:56:12	2022-03-01 10:56:12
1605	113	137	4本(1本40g位)	2021-12-29 07:59:21	2021-12-29 07:59:21
1606	113	206	小さじ2	2021-12-29 07:59:21	2021-12-29 07:59:21
1607	113	235	小さじ2	2021-12-29 07:59:21	2021-12-29 07:59:21
5740	313	17	大さじ8 しとらせる	2022-03-01 10:56:12	2022-03-01 10:56:12
5741	313	264	大さじ4	2022-03-01 10:56:12	2022-03-01 10:56:12
5742	313	278	小さじ1/2	2022-03-01 10:56:12	2022-03-01 10:56:12
5743	313	110	適量　トッピング用→焼く	2022-03-01 10:56:12	2022-03-01 10:56:12
5744	313	326	トッピング用→おろす	2022-03-01 10:56:12	2022-03-01 10:56:12
2994	129	1	60g	2022-02-09 08:27:47	2022-02-09 08:27:47
2995	129	204	4g	2022-02-09 08:27:47	2022-02-09 08:27:47
3070	147	175	60g	2022-02-10 05:11:52	2022-02-10 05:11:52
3071	147	189	小さじ4	2022-02-10 05:11:52	2022-02-10 05:11:52
3072	147	181	2本(30g)	2022-02-10 05:11:52	2022-02-10 05:11:52
3073	147	217	大さじ1	2022-02-10 05:11:52	2022-02-10 05:11:52
3135	105	275	4個	2022-02-10 05:19:51	2022-02-10 05:19:51
3136	105	264	240cc	2022-02-10 05:19:51	2022-02-10 05:19:51
3137	105	289	小さじ4	2022-02-10 05:19:51	2022-02-10 05:19:51
3138	105	214	適量	2022-02-10 05:19:51	2022-02-10 05:19:51
3139	105	169	小さじ1/2	2022-02-10 05:19:51	2022-02-10 05:19:51
5745	313	51	グラッセ（じゃがいもと蒸して付け合わせ）	2022-03-01 10:56:12	2022-03-01 10:56:12
2996	20	110	80g	2022-02-09 08:28:44	2022-02-09 08:28:44
2997	20	218	大さじ1	2022-02-09 08:28:44	2022-02-09 08:28:44
2998	20	250	小さじ1	2022-02-09 08:28:44	2022-02-09 08:28:44
1608	113	230	小さじ2	2021-12-29 07:59:21	2021-12-29 07:59:21
2999	20	39	40g	2022-02-09 08:28:44	2022-02-09 08:28:44
3000	20	53	20g	2022-02-09 08:28:44	2022-02-09 08:28:44
3001	20	50	4個	2022-02-09 08:28:44	2022-02-09 08:28:44
2841	219	68	4本	2022-02-08 13:50:16	2022-02-08 13:50:16
2842	219	45	200g 4人分	2022-02-08 13:50:16	2022-02-08 13:50:16
2843	219	51	20g	2022-02-08 13:50:16	2022-02-08 13:50:16
2844	219	74	100g	2022-02-08 13:50:16	2022-02-08 13:50:16
1609	113	12	小さじ2	2021-12-29 07:59:21	2021-12-29 07:59:21
2845	219	315	20g	2022-02-08 13:50:16	2022-02-08 13:50:16
1923	278	296	240cc	2022-01-01 16:19:12	2022-01-01 16:19:12
1924	278	109	4g（乾燥）	2022-01-01 16:19:12	2022-01-01 16:19:12
1925	278	5	小さじ2	2022-01-01 16:19:12	2022-01-01 16:19:12
1926	278	219	小さじ1（かつお）	2022-01-01 16:19:12	2022-01-01 16:19:12
5973	319	35	スライスして水で絞る	2022-03-09 02:06:25	2022-03-09 02:06:25
5974	319	39	適量	2022-03-09 02:06:25	2022-03-09 02:06:25
1485	43	151	320g	2021-12-29 07:44:19	2021-12-29 07:44:19
1486	43	293	60g	2021-12-29 07:44:19	2021-12-29 07:44:19
1487	43	246	小さじ1	2021-12-29 07:44:19	2021-12-29 07:44:19
3002	20	283	小さじ2	2022-02-09 08:28:44	2022-02-09 08:28:44
3003	20	292	80g	2022-02-09 08:28:44	2022-02-09 08:28:44
3074	25	276	小さじ2	2022-02-10 05:12:18	2022-02-10 05:12:18
3075	25	288	40g	2022-02-10 05:12:18	2022-02-10 05:12:18
3076	25	271	80g	2022-02-10 05:12:18	2022-02-10 05:12:18
3077	25	265	40g	2022-02-10 05:12:18	2022-02-10 05:12:18
3078	25	189	40g	2022-02-10 05:12:18	2022-02-10 05:12:18
3079	25	173	小さじ1	2022-02-10 05:12:18	2022-02-10 05:12:18
3080	25	96	4個	2022-02-10 05:12:18	2022-02-10 05:12:18
3081	25	97	8個	2022-02-10 05:12:18	2022-02-10 05:12:18
3082	25	82	4つ	2022-02-10 05:12:18	2022-02-10 05:12:18
156	200	127	4尾(1尾40g位)	2021-12-26 00:05:10	2021-12-26 00:05:10
157	200	218	小さじ4	2021-12-26 00:05:10	2021-12-26 00:05:10
158	200	249	小さじ1	2021-12-26 00:05:10	2021-12-26 00:05:10
159	200	285	小さじ1	2021-12-26 00:05:10	2021-12-26 00:05:10
160	200	221	少々	2021-12-26 00:05:10	2021-12-26 00:05:10
161	200	80	果汁小さじ1	2021-12-26 00:05:10	2021-12-26 00:05:10
162	200	307	小さじ1/2	2021-12-26 00:05:10	2021-12-26 00:05:10
5975	319	343	4個	2022-03-09 02:06:25	2022-03-09 02:06:25
2941	284	22	適量　スライス	2022-02-09 02:58:22	2022-02-09 02:58:22
2942	284	250	小さじ1	2022-02-09 02:58:22	2022-02-09 02:58:22
5976	319	262	適量（調味料&焼く用）	2022-03-09 02:06:25	2022-03-09 02:06:25
2294	288	51	250g 2人分	2022-01-25 04:13:19	2022-01-25 04:13:19
2295	288	90	30g	2022-01-25 04:13:19	2022-01-25 04:13:19
6578	324	21	160g 2人分	2022-06-06 11:43:05	2022-06-06 11:43:05
6579	324	33	1株　2人分	2022-06-06 11:43:05	2022-06-06 11:43:05
201	30	126	暑さ1cm× 4切れ	2021-12-26 00:32:48	2021-12-26 00:32:48
202	30	46	4枚	2021-12-26 00:32:48	2021-12-26 00:32:48
203	30	269	40g	2021-12-26 00:32:48	2021-12-26 00:32:48
204	30	160	8粒	2021-12-26 00:32:48	2021-12-26 00:32:48
3004	187	39	80g	2022-02-09 08:29:23	2022-02-09 08:29:23
3005	187	47	40g	2022-02-09 08:29:23	2022-02-09 08:29:23
3006	187	280	小さじ2	2022-02-09 08:29:23	2022-02-09 08:29:23
212	259	275	1	2021-12-26 00:47:50	2021-12-26 00:47:50
3007	187	80	果汁小さじ1	2022-02-09 08:29:23	2022-02-09 08:29:23
3083	123	101	120g	2022-02-10 05:13:21	2022-02-10 05:13:21
1488	54	134	400g	2021-12-29 07:44:32	2021-12-29 07:44:32
1489	54	232	小さじ2	2021-12-29 07:44:32	2021-12-29 07:44:32
1490	54	234	小さじ1	2021-12-29 07:44:32	2021-12-29 07:44:32
1491	54	35	120g	2021-12-29 07:44:32	2021-12-29 07:44:32
1492	54	215	小さじ1	2021-12-29 07:44:32	2021-12-29 07:44:32
1493	54	266	60g	2021-12-29 07:44:32	2021-12-29 07:44:32
1494	54	234	お好みで小さじ1	2021-12-29 07:44:32	2021-12-29 07:44:32
1495	54	286	小さじ1/2	2021-12-29 07:44:32	2021-12-29 07:44:32
3084	123	273	小さじ4	2022-02-10 05:13:21	2022-02-10 05:13:21
3085	123	82	4つ	2022-02-10 05:13:21	2022-02-10 05:13:21
6580	324	50	8個　2人分	2022-06-06 11:43:05	2022-06-06 11:43:05
5601	311	41	1束	2022-02-28 08:21:50	2022-02-28 08:21:50
5602	311	5	いりごま	2022-02-28 08:21:50	2022-02-28 08:21:50
5603	311	286	小さじ1	2022-02-28 08:21:50	2022-02-28 08:21:50
5604	311	51	あれば　かたゆで	2022-02-28 08:21:50	2022-02-28 08:21:50
1496	54	279	大さじ1	2021-12-29 07:44:32	2021-12-29 07:44:32
6581	324	67	2本	2022-06-06 11:43:05	2022-06-06 11:43:05
6582	324	256	ふたかけ	2022-06-06 11:43:05	2022-06-06 11:43:05
6583	324	140	2枚	2022-06-06 11:43:05	2022-06-06 11:43:05
5746	313	64	付け合わせ	2022-03-01 10:56:12	2022-03-01 10:56:12
5791	13	145	400g(12~16枚)厚み2mm	2022-03-01 11:44:34	2022-03-01 11:44:34
5792	13	35	280g	2022-03-01 11:44:34	2022-03-01 11:44:34
6584	324	104	1袋	2022-06-06 11:43:05	2022-06-06 11:43:05
5848	45	171	160cc	2022-03-07 11:19:14	2022-03-07 11:19:14
5849	45	276	小さじ2	2022-03-07 11:19:14	2022-03-07 11:19:14
5850	45	198	40g	2022-03-07 11:19:14	2022-03-07 11:19:14
5851	45	82	4つ	2022-03-07 11:19:14	2022-03-07 11:19:14
5852	45	171	小さじ4	2022-03-07 11:19:14	2022-03-07 11:19:14
6585	324	341	3倍濃縮　小さじ2	2022-06-06 11:43:05	2022-06-06 11:43:05
6586	324	287	ふたかけ	2022-06-06 11:43:05	2022-06-06 11:43:05
6587	324	252	小さじ1	2022-06-06 11:43:05	2022-06-06 11:43:05
6591	145	220	大さじ1	2022-06-12 10:30:10	2022-06-12 10:30:10
5539	291	56	1本　2人分？	2022-02-20 04:31:48	2022-02-20 04:31:48
2761	12	263	40g	2022-02-08 13:36:01	2022-02-08 13:36:01
886	6	41	200g	2021-12-28 14:38:39	2021-12-28 14:38:39
887	6	271	200g	2021-12-28 14:38:39	2021-12-28 14:38:39
914	56	211	小さじ2	2021-12-28 14:49:56	2021-12-28 14:49:56
915	56	275	1個	2021-12-28 14:49:56	2021-12-28 14:49:56
916	56	215	小さじ1/2	2021-12-28 14:49:56	2021-12-28 14:49:56
2762	12	275	4/5個	2022-02-08 13:36:01	2022-02-08 13:36:01
2763	12	154	小さじ1	2022-02-08 13:36:01	2022-02-08 13:36:01
2764	12	12	40g	2022-02-08 13:36:01	2022-02-08 13:36:01
2765	12	89	4個	2022-02-08 13:36:01	2022-02-08 13:36:01
2766	12	180	小さじ2	2022-02-08 13:36:01	2022-02-08 13:36:01
2767	12	182	小さじ1/2	2022-02-08 13:36:01	2022-02-08 13:36:01
2846	68	14	160cc	2022-02-08 13:50:43	2022-02-08 13:50:43
917	56	105	4g	2021-12-28 14:49:56	2021-12-28 14:49:56
918	56	5	小さじ1	2021-12-28 14:49:56	2021-12-28 14:49:56
414	35	275	1個	2021-12-28 12:13:52	2021-12-28 12:13:52
415	35	192	小さじ8	2021-12-28 12:13:52	2021-12-28 12:13:52
416	35	12	大さじ4	2021-12-28 12:13:52	2021-12-28 12:13:52
417	35	182	小さじ2 ＋ 小さじ1/2	2021-12-28 12:13:52	2021-12-28 12:13:52
418	35	264	小さじ2	2021-12-28 12:13:52	2021-12-28 12:13:52
419	35	288	60g	2021-12-28 12:13:52	2021-12-28 12:13:52
5540	291	35	1/2個	2022-02-20 04:31:48	2022-02-20 04:31:48
5541	291	4	1カップ	2022-02-20 04:31:48	2022-02-20 04:31:48
2847	68	278	少々	2022-02-08 13:50:43	2022-02-08 13:50:43
2848	68	106	2枚	2022-02-08 13:50:43	2022-02-08 13:50:43
2849	68	201	4つ	2022-02-08 13:50:43	2022-02-08 13:50:43
2897	51	35	240g	2022-02-08 14:02:45	2022-02-08 14:02:45
2898	51	218	小さじ1	2022-02-08 14:02:45	2022-02-08 14:02:45
420	35	197	20g	2021-12-28 12:13:52	2021-12-28 12:13:52
421	35	82	4つ	2021-12-28 12:13:52	2021-12-28 12:13:52
2899	51	23	10g × 4枚	2022-02-08 14:02:45	2022-02-08 14:02:45
2900	51	266	40g	2022-02-08 14:02:45	2022-02-08 14:02:45
2943	293	56	適量	2022-02-09 02:59:07	2022-02-09 02:59:07
5542	291	302	大さじ1	2022-02-20 04:31:48	2022-02-20 04:31:48
5543	291	334	大さじ1	2022-02-20 04:31:48	2022-02-20 04:31:48
5605	312	51	適量	2022-02-28 11:53:27	2022-02-28 11:53:27
5606	312	262	適量	2022-02-28 11:53:27	2022-02-28 11:53:27
5607	312	22	適量	2022-02-28 11:53:27	2022-02-28 11:53:27
6719	44	59	葉付き　1個	2022-07-04 02:07:03	2022-07-04 02:07:03
2944	293	51	適量	2022-02-09 02:59:07	2022-02-09 02:59:07
2945	293	35	適量	2022-02-09 02:59:07	2022-02-09 02:59:07
2946	293	32	適量	2022-02-09 02:59:07	2022-02-09 02:59:07
1339	92	14	240cc	2021-12-29 07:15:32	2021-12-29 07:15:32
1340	92	256	20g	2021-12-29 07:15:32	2021-12-29 07:15:32
1341	92	218	小さじ4	2021-12-29 07:15:32	2021-12-29 07:15:32
6720	44	156	40g	2022-07-04 02:07:03	2022-07-04 02:07:03
6721	44	3	240cc	2022-07-04 02:07:03	2022-07-04 02:07:03
6722	44	2	適量	2022-07-04 02:07:03	2022-07-04 02:07:03
598	198	306	4個	2021-12-28 12:58:29	2021-12-28 12:58:29
599	198	269	40g	2021-12-28 12:58:29	2021-12-28 12:58:29
600	198	192	小さじ1	2021-12-28 12:58:29	2021-12-28 12:58:29
601	198	288	80g	2021-12-28 12:58:29	2021-12-28 12:58:29
602	198	305	小さじ4	2021-12-28 12:58:29	2021-12-28 12:58:29
603	198	88	4個	2021-12-28 12:58:29	2021-12-28 12:58:29
604	198	186	小さじ1/2	2021-12-28 12:58:29	2021-12-28 12:58:29
3086	8	264	100cc	2022-02-10 05:14:10	2022-02-10 05:14:10
3087	8	271	200g	2022-02-10 05:14:10	2022-02-10 05:14:10
3088	8	185	60g	2022-02-10 05:14:10	2022-02-10 05:14:10
3153	262	56	1/2〜1本（100〜150g)2人分	2022-02-11 01:56:15	2022-02-11 01:56:15
3154	262	51	1/3本	2022-02-11 01:56:15	2022-02-11 01:56:15
3155	262	215	大さじ1/2	2022-02-11 01:56:15	2022-02-11 01:56:15
3156	262	5	適量	2022-02-11 01:56:15	2022-02-11 01:56:15
3157	262	252	少々（チューブ）	2022-02-11 01:56:15	2022-02-11 01:56:15
2850	143	116	8尾(60g位)	2022-02-08 13:51:04	2022-02-08 13:51:04
2851	143	16	40g	2022-02-08 13:51:04	2022-02-08 13:51:04
787	24	53	40g	2021-12-28 14:14:21	2021-12-28 14:14:21
788	24	47	40g	2021-12-28 14:14:21	2021-12-28 14:14:21
789	24	70	40g	2021-12-28 14:14:21	2021-12-28 14:14:21
790	24	59	1個	2021-12-28 14:14:21	2021-12-28 14:14:21
791	24	34	1/2本	2021-12-28 14:14:21	2021-12-28 14:14:21
792	24	265	40g	2021-12-28 14:14:21	2021-12-28 14:14:21
793	24	264	小さじ1	2021-12-28 14:14:21	2021-12-28 14:14:21
794	24	114	40g	2021-12-28 14:14:21	2021-12-28 14:14:21
2852	143	106	1枚	2022-02-08 13:51:04	2022-02-08 13:51:04
2853	143	138	120g	2022-02-08 13:51:04	2022-02-08 13:51:04
2854	143	4	大さじ2	2022-02-08 13:51:04	2022-02-08 13:51:04
2855	143	275	1個	2022-02-08 13:51:04	2022-02-08 13:51:04
2856	143	118	1/2枚(50g)	2022-02-08 13:51:04	2022-02-08 13:51:04
2857	143	139	1枚	2022-02-08 13:51:04	2022-02-08 13:51:04
2858	143	46	2枚	2022-02-08 13:51:04	2022-02-08 13:51:04
2859	143	261	1枚	2022-02-08 13:51:04	2022-02-08 13:51:04
6407	136	11	80g	2022-05-05 08:44:06	2022-05-05 08:44:06
6408	136	12	80g	2022-05-05 08:44:06	2022-05-05 08:44:06
6409	136	261	2枚	2022-05-05 08:44:06	2022-05-05 08:44:06
6410	136	3	40cc	2022-05-05 08:44:06	2022-05-05 08:44:06
6411	136	275	温泉卵4個	2022-05-05 08:44:06	2022-05-05 08:44:06
6412	136	114	40g	2022-05-05 08:44:06	2022-05-05 08:44:06
6413	136	105	20g	2022-05-05 08:44:06	2022-05-05 08:44:06
6414	136	158	200cc	2022-05-05 08:44:06	2022-05-05 08:44:06
6415	136	42	1つ	2022-05-05 08:44:06	2022-05-05 08:44:06
6416	136	354	適量	2022-05-05 08:44:06	2022-05-05 08:44:06
6592	145	80	1/4個〜1/2個	2022-06-12 10:30:10	2022-06-12 10:30:10
6593	145	107	4枚	2022-06-12 10:30:10	2022-06-12 10:30:10
6676	283	262	20g	2022-07-04 00:29:19	2022-07-04 00:29:19
6677	283	222	250cc分　小さじ1.5〜	2022-07-04 00:29:19	2022-07-04 00:29:19
6678	283	264	250cc	2022-07-04 00:29:19	2022-07-04 00:29:19
6679	283	260	適量	2022-07-04 00:29:19	2022-07-04 00:29:19
2360	292	275	1個	2022-02-08 12:18:04	2022-02-08 12:18:04
2361	292	231	3g	2022-02-08 12:18:04	2022-02-08 12:18:04
2362	292	176	25g	2022-02-08 12:18:04	2022-02-08 12:18:04
2363	292	335	15g	2022-02-08 12:18:04	2022-02-08 12:18:04
2364	292	152	3g	2022-02-08 12:18:04	2022-02-08 12:18:04
2380	66	122	200g	2022-02-08 12:28:29	2022-02-08 12:28:29
2381	66	249	大さじ1	2022-02-08 12:28:29	2022-02-08 12:28:29
2382	66	64	160g	2022-02-08 12:28:29	2022-02-08 12:28:29
2383	66	65	4本	2022-02-08 12:28:29	2022-02-08 12:28:29
2384	66	278	少々	2022-02-08 12:28:29	2022-02-08 12:28:29
6723	52	119	4枚	2022-07-04 02:08:12	2022-07-04 02:08:12
6724	52	39	80g	2022-07-04 02:08:12	2022-07-04 02:08:12
6725	52	37	40g	2022-07-04 02:08:12	2022-07-04 02:08:12
6726	52	53	20g	2022-07-04 02:08:12	2022-07-04 02:08:12
5977	317	104	適量	2022-03-13 08:37:54	2022-03-13 08:37:54
6882	346	50	7個 半分に切る	2022-10-11 14:07:25	2022-10-11 14:07:25
6883	346	256	1かけ　みじん切り	2022-10-11 14:07:25	2022-10-11 14:07:25
3015	81	262	20g	2022-02-10 04:19:03	2022-02-10 04:19:03
3016	81	186	小さじ2	2022-02-10 04:19:03	2022-02-10 04:19:03
3017	81	12	小さじ10	2022-02-10 04:19:03	2022-02-10 04:19:03
3018	81	227	大さじ1	2022-02-10 04:19:03	2022-02-10 04:19:03
3019	81	187	小さじ1/4	2022-02-10 04:19:03	2022-02-10 04:19:03
3089	138	175	60g	2022-02-10 05:14:33	2022-02-10 05:14:33
6417	301	105	適量	2022-05-05 08:45:07	2022-05-05 08:45:07
6418	301	109	適量	2022-05-05 08:45:07	2022-05-05 08:45:07
6419	301	5	適量	2022-05-05 08:45:07	2022-05-05 08:45:07
6420	301	80	適量	2022-05-05 08:45:07	2022-05-05 08:45:07
6421	301	136	適量	2022-05-05 08:45:07	2022-05-05 08:45:07
6422	301	354	適量	2022-05-05 08:45:07	2022-05-05 08:45:07
6884	346	172	大さじ2	2022-10-11 14:07:25	2022-10-11 14:07:25
6885	346	218	大さじ2	2022-10-11 14:07:25	2022-10-11 14:07:25
6594	139	115	4尾(1尾150g位)	2022-06-26 09:26:50	2022-06-26 09:26:50
6595	139	212	小さじ4	2022-06-26 09:26:50	2022-06-26 09:26:50
2435	280	222	小さじ1/2くらい　ソースは既に味付きのため	2022-02-08 12:42:03	2022-02-08 12:42:03
2436	280	75	3本（2人分）	2022-02-08 12:42:03	2022-02-08 12:42:03
2437	280	294	薄切り　1枚　2人分	2022-02-08 12:42:03	2022-02-08 12:42:03
2438	280	328	40g(2人分)	2022-02-08 12:42:03	2022-02-08 12:42:03
2439	280	329	おたまで2杯分くらい	2022-02-08 12:42:03	2022-02-08 12:42:03
2440	280	267	ソース用&トッピング用	2022-02-08 12:42:03	2022-02-08 12:42:03
2441	280	21	100〜140g 2人分	2022-02-08 12:42:03	2022-02-08 12:42:03
2442	290	328	適量	2022-02-08 12:42:38	2022-02-08 12:42:38
2443	290	21	適量	2022-02-08 12:42:38	2022-02-08 12:42:38
2447	132	14	240cc	2022-02-08 12:46:45	2022-02-08 12:46:45
2448	132	275	2個	2022-02-08 12:46:45	2022-02-08 12:46:45
2449	132	35	120g	2022-02-08 12:46:45	2022-02-08 12:46:45
2450	132	37	60g	2022-02-08 12:46:45	2022-02-08 12:46:45
2451	132	38	40g	2022-02-08 12:46:45	2022-02-08 12:46:45
2452	132	210	小さじ1	2022-02-08 12:46:45	2022-02-08 12:46:45
2453	132	285	小さじ2	2022-02-08 12:46:45	2022-02-08 12:46:45
2454	132	206	小さじ2	2022-02-08 12:46:45	2022-02-08 12:46:45
2455	132	288	40g	2022-02-08 12:46:45	2022-02-08 12:46:45
2456	179	116	120g	2022-02-08 12:47:27	2022-02-08 12:47:27
2457	179	72	120g	2022-02-08 12:47:27	2022-02-08 12:47:27
2458	179	54	斜め薄切り20g	2022-02-08 12:47:27	2022-02-08 12:47:27
2459	179	103	せん切り10g	2022-02-08 12:47:27	2022-02-08 12:47:27
2460	179	156	40g 1/2缶	2022-02-08 12:47:27	2022-02-08 12:47:27
2461	46	129	切り身100g × 4切れ	2022-02-08 12:49:34	2022-02-08 12:49:34
2462	46	12	小さじ4	2022-02-08 12:49:34	2022-02-08 12:49:34
2463	46	218	小さじ2	2022-02-08 12:49:34	2022-02-08 12:49:34
2464	46	51	80g	2022-02-08 12:49:34	2022-02-08 12:49:34
2465	46	59	1個(葉付き)	2022-02-08 12:49:34	2022-02-08 12:49:34
2466	46	72	80g	2022-02-08 12:49:34	2022-02-08 12:49:34
2467	46	222	小さじ1/2	2022-02-08 12:49:34	2022-02-08 12:49:34
2468	46	288	大さじ4	2022-02-08 12:49:34	2022-02-08 12:49:34
2469	46	280	小さじ2	2022-02-08 12:49:34	2022-02-08 12:49:34
6596	139	13	大さじ4	2022-06-26 09:26:50	2022-06-26 09:26:50
6597	139	17	48g	2022-06-26 09:26:50	2022-06-26 09:26:50
6598	139	33	80g	2022-06-26 09:26:50	2022-06-26 09:26:50
6599	139	42	1/2個	2022-06-26 09:26:50	2022-06-26 09:26:50
6600	139	283	小さじ4	2022-06-26 09:26:50	2022-06-26 09:26:50
6601	139	213	大さじ2	2022-06-26 09:26:50	2022-06-26 09:26:50
6602	139	253	大さじ2	2022-06-26 09:26:50	2022-06-26 09:26:50
3090	138	192	小さじ2	2022-02-10 05:14:33	2022-02-10 05:14:33
3091	138	3	40cc	2022-02-10 05:14:33	2022-02-10 05:14:33
3092	138	216	小さじ2	2022-02-10 05:14:33	2022-02-10 05:14:33
6054	299	326	適量	2022-03-22 14:09:22	2022-03-22 14:09:22
6055	299	293	適量	2022-03-22 14:09:22	2022-03-22 14:09:22
6060	315	67	適量	2022-03-22 14:10:37	2022-03-22 14:10:37
6061	315	237	水で薄める	2022-03-22 14:10:37	2022-03-22 14:10:37
6062	315	287	トッピング	2022-03-22 14:10:37	2022-03-22 14:10:37
6087	322	76	150g 米2合	2022-03-29 15:02:00	2022-03-29 15:02:00
6088	322	344	1枚	2022-03-29 15:02:00	2022-03-29 15:02:00
6089	322	201	適量	2022-03-29 15:02:00	2022-03-29 15:02:00
6090	322	51	少量　刻む	2022-03-29 15:02:00	2022-03-29 15:02:00
2493	75	141	200g	2022-02-08 12:54:33	2022-02-08 12:54:33
2494	75	35	120g	2022-02-08 12:54:33	2022-02-08 12:54:33
2495	75	17	大さじ4	2022-02-08 12:54:34	2022-02-08 12:54:34
2496	75	264	40cc	2022-02-08 12:54:34	2022-02-08 12:54:34
2497	75	275	1個	2022-02-08 12:54:34	2022-02-08 12:54:34
2498	75	256	8g	2022-02-08 12:54:34	2022-02-08 12:54:34
2499	75	158	無塩で200cc	2022-02-08 12:54:34	2022-02-08 12:54:34
2500	75	132	20g	2022-02-08 12:54:34	2022-02-08 12:54:34
2501	75	288	60g	2022-02-08 12:54:34	2022-02-08 12:54:34
2502	173	134	200g	2022-02-08 12:55:25	2022-02-08 12:55:25
2503	173	208	大さじ2	2022-02-08 12:55:25	2022-02-08 12:55:25
2504	173	279	大さじ1	2022-02-08 12:55:25	2022-02-08 12:55:25
2505	173	249	大さじ1	2022-02-08 12:55:25	2022-02-08 12:55:25
2506	173	217	30g	2022-02-08 12:55:25	2022-02-08 12:55:25
2507	128	145	400g	2022-02-08 12:55:45	2022-02-08 12:55:45
2508	128	54	80g	2022-02-08 12:55:45	2022-02-08 12:55:45
2509	128	33	120g	2022-02-08 12:55:45	2022-02-08 12:55:45
2510	128	275	温泉卵4個	2022-02-08 12:55:45	2022-02-08 12:55:45
2511	10	137	8本(1本40g)	2022-02-08 12:56:14	2022-02-08 12:56:14
2512	27	150	8本(500g)	2022-02-08 12:56:39	2022-02-08 12:56:39
2513	160	134	400g	2022-02-08 12:58:07	2022-02-08 12:58:07
2514	160	256	20g	2022-02-08 12:58:07	2022-02-08 12:58:07
2515	160	61	240g	2022-02-08 12:58:07	2022-02-08 12:58:07
2516	160	249	60cc	2022-02-08 12:58:07	2022-02-08 12:58:07
2517	160	264	320cc	2022-02-08 12:58:07	2022-02-08 12:58:07
2518	268	134	2枚　300g×2  2人分	2022-02-08 12:58:35	2022-02-08 12:58:35
2519	268	35	1個	2022-02-08 12:58:35	2022-02-08 12:58:35
2520	268	51	1本	2022-02-08 12:58:35	2022-02-08 12:58:35
2521	268	22	1個	2022-02-08 12:58:36	2022-02-08 12:58:36
2522	268	50	4個	2022-02-08 12:58:36	2022-02-08 12:58:36
2523	268	72	1/4個	2022-02-08 12:58:36	2022-02-08 12:58:36
2524	268	218	大さじ1	2022-02-08 12:58:36	2022-02-08 12:58:36
2525	268	278	小さじ1と1/2	2022-02-08 12:58:36	2022-02-08 12:58:36
2526	268	221	適量	2022-02-08 12:58:36	2022-02-08 12:58:36
2527	63	134	140g × 4枚	2022-02-08 12:58:55	2022-02-08 12:58:55
2528	63	275	1個	2022-02-08 12:58:55	2022-02-08 12:58:55
2529	63	239	8切れ	2022-02-08 12:58:55	2022-02-08 12:58:55
2530	63	35	40g	2022-02-08 12:58:55	2022-02-08 12:58:55
2531	63	282	40g	2022-02-08 12:58:55	2022-02-08 12:58:55
2532	63	208	大さじ2	2022-02-08 12:58:55	2022-02-08 12:58:55
2533	63	33	80g	2022-02-08 12:58:55	2022-02-08 12:58:55
2534	63	42	1/2個	2022-02-08 12:58:55	2022-02-08 12:58:55
2535	63	80	1/2個	2022-02-08 12:58:55	2022-02-08 12:58:55
2545	207	22	320g(メークィーン)	2022-02-08 13:00:01	2022-02-08 13:00:01
2546	207	264	バーニャカウダに使用した牛乳+牛乳で320cc	2022-02-08 13:00:01	2022-02-08 13:00:01
2547	207	241	少々	2022-02-08 13:00:01	2022-02-08 13:00:01
2548	207	222	小さじ1	2022-02-08 13:00:01	2022-02-08 13:00:01
2549	207	266	80g	2022-02-08 13:00:01	2022-02-08 13:00:01
2550	195	134	骨つきで、4本(1本200g前後)	2022-02-08 13:00:53	2022-02-08 13:00:53
2551	195	254	大さじ1	2022-02-08 13:00:53	2022-02-08 13:00:53
2552	195	285	小さじ2	2022-02-08 13:00:53	2022-02-08 13:00:53
2553	195	218	小さじ2	2022-02-08 13:00:53	2022-02-08 13:00:53
2554	195	212	大さじ2	2022-02-08 13:00:53	2022-02-08 13:00:53
2555	195	279	小さじ2	2022-02-08 13:00:53	2022-02-08 13:00:53
2556	195	22	(メークィーン)200g	2022-02-08 13:00:53	2022-02-08 13:00:53
2557	195	254	小さじ1	2022-02-08 13:00:53	2022-02-08 13:00:53
2558	195	218	小さじ2	2022-02-08 13:00:53	2022-02-08 13:00:53
2559	195	303	1枚	2022-02-08 13:00:53	2022-02-08 13:00:53
6423	321	134	200〜250g 2人分	2022-05-05 08:45:50	2022-05-05 08:45:50
6424	321	32	1本	2022-05-05 08:45:50	2022-05-05 08:45:50
6425	321	354	適量	2022-05-05 08:45:50	2022-05-05 08:45:50
6551	276	45	400g	2022-05-24 12:25:40	2022-05-24 12:25:40
6552	276	56	好きなだけ	2022-05-24 12:25:40	2022-05-24 12:25:40
6553	276	51	好きなだけ	2022-05-24 12:25:40	2022-05-24 12:25:40
2577	178	22	2個(300g)	2022-02-08 13:02:18	2022-02-08 13:02:18
2578	178	35	1/2個	2022-02-08 13:02:18	2022-02-08 13:02:18
2579	178	134	小1枚(200g)	2022-02-08 13:02:18	2022-02-08 13:02:18
2580	178	219	小さじ1/3	2022-02-08 13:02:18	2022-02-08 13:02:18
2581	178	279	大さじ2	2022-02-08 13:02:18	2022-02-08 13:02:18
2582	178	192	大さじ1	2022-02-08 13:02:18	2022-02-08 13:02:18
2583	50	141	280g	2022-02-08 13:02:41	2022-02-08 13:02:41
2584	50	162	40cc	2022-02-08 13:02:41	2022-02-08 13:02:41
2585	50	35	120g	2022-02-08 13:02:41	2022-02-08 13:02:41
2586	50	37	40g	2022-02-08 13:02:41	2022-02-08 13:02:41
2587	50	51	40g	2022-02-08 13:02:41	2022-02-08 13:02:41
2588	50	266	40g	2022-02-08 13:02:41	2022-02-08 13:02:41
2589	50	209	400g	2022-02-08 13:02:41	2022-02-08 13:02:41
2590	50	264	80cc	2022-02-08 13:02:41	2022-02-08 13:02:41
6554	276	71	トッピング	2022-05-24 12:25:40	2022-05-24 12:25:40
6555	276	293	水にさらして白髪葱	2022-05-24 12:25:40	2022-05-24 12:25:40
6556	276	62	酢水に浮かべてアク取り	2022-05-24 12:25:40	2022-05-24 12:25:40
6603	164	115	4匹(中型)	2022-06-26 09:27:26	2022-06-26 09:27:26
6604	164	332	1~2かけ	2022-06-26 09:27:26	2022-06-26 09:27:26
6605	164	46	4枚	2022-06-26 09:27:26	2022-06-26 09:27:26
6615	333	341	大さじ2（2倍濃縮）大さじ1（4倍濃縮）	2022-06-28 11:45:35	2022-06-28 11:45:35
6616	333	358	3束150g（2人分）　茹でた流水麺も可	2022-06-28 11:45:35	2022-06-28 11:45:35
6617	333	248	小さじ2	2022-06-28 11:45:35	2022-06-28 11:45:35
6618	333	5	白いりごま	2022-06-28 11:45:35	2022-06-28 11:45:35
6619	333	42	トッピング	2022-06-28 11:45:35	2022-06-28 11:45:35
6620	333	34	トッピング　千切り	2022-06-28 11:45:35	2022-06-28 11:45:35
6621	333	275	味付けゆで卵	2022-06-28 11:45:35	2022-06-28 11:45:35
2591	50	225	160g	2022-02-08 13:02:41	2022-02-08 13:02:41
2592	50	24	8枚	2022-02-08 13:02:41	2022-02-08 13:02:41
2593	125	134	520g	2022-02-08 13:03:42	2022-02-08 13:03:42
2594	125	255	20g	2022-02-08 13:03:42	2022-02-08 13:03:42
2595	125	244	小さじ2	2022-02-08 13:03:42	2022-02-08 13:03:42
2596	125	48	60g	2022-02-08 13:03:42	2022-02-08 13:03:42
2604	26	275	4個	2022-02-08 13:05:25	2022-02-08 13:05:25
2605	26	118	100g	2022-02-08 13:05:25	2022-02-08 13:05:25
2606	26	191	小さじ8	2022-02-08 13:05:25	2022-02-08 13:05:25
2607	26	14	100cc	2022-02-08 13:05:25	2022-02-08 13:05:25
2608	26	34	1/2本	2022-02-08 13:05:25	2022-02-08 13:05:25
2609	26	117	4本(40g位)	2022-02-08 13:05:25	2022-02-08 13:05:25
2620	176	135	とんかつ用豚ロース2枚	2022-02-08 13:06:17	2022-02-08 13:06:17
2621	176	39	適量	2022-02-08 13:06:17	2022-02-08 13:06:17
2622	176	50	3個	2022-02-08 13:06:17	2022-02-08 13:06:17
2623	176	80	スライスレモン3枚	2022-02-08 13:06:17	2022-02-08 13:06:17
2628	70	127	殻付で4尾(1尾20g)	2022-02-08 13:07:07	2022-02-08 13:07:07
2629	70	20	2枚	2022-02-08 13:07:07	2022-02-08 13:07:07
2630	70	46	4枚	2022-02-08 13:07:07	2022-02-08 13:07:07
2631	70	284	小さじ1	2022-02-08 13:07:07	2022-02-08 13:07:07
2632	70	12	小さじ1	2022-02-08 13:07:07	2022-02-08 13:07:07
2633	124	11	100g	2022-02-08 13:07:36	2022-02-08 13:07:36
2634	124	12	20g	2022-02-08 13:07:36	2022-02-08 13:07:36
2635	124	143	120g	2022-02-08 13:07:36	2022-02-08 13:07:36
2636	124	276	小さじ2	2022-02-08 13:07:36	2022-02-08 13:07:36
2637	124	211	小さじ1/2	2022-02-08 13:07:36	2022-02-08 13:07:36
2638	124	248	小さじ1	2022-02-08 13:07:36	2022-02-08 13:07:36
2639	124	284	小さじ1	2022-02-08 13:07:36	2022-02-08 13:07:36
2640	124	277	小さじ4	2022-02-08 13:07:36	2022-02-08 13:07:36
2721	2	34	2本	2022-02-08 13:19:08	2022-02-08 13:19:08
2778	190	296	240cc	2022-02-08 13:44:53	2022-02-08 13:44:53
2779	190	277	40cc	2022-02-08 13:44:53	2022-02-08 13:44:53
2780	190	136	厚さ2mm2枚	2022-02-08 13:44:53	2022-02-08 13:44:53
2781	190	46	4枚	2022-02-08 13:44:53	2022-02-08 13:44:53
2782	190	129	40g	2022-02-08 13:44:53	2022-02-08 13:44:53
2783	190	250	小さじ1	2022-02-08 13:44:53	2022-02-08 13:44:53
2784	190	302	20g	2022-02-08 13:44:53	2022-02-08 13:44:53
2785	190	288	20g	2022-02-08 13:44:53	2022-02-08 13:44:53
2786	190	119	2枚	2022-02-08 13:44:53	2022-02-08 13:44:53
2787	190	275	1個	2022-02-08 13:44:53	2022-02-08 13:44:53
6783	342	360	適量	2022-07-11 11:33:47	2022-07-11 11:33:47
6784	342	74	1本　3〜4人分	2022-07-11 11:33:47	2022-07-11 11:33:47
6785	342	77	すだちもOK,1人で約1/4個	2022-07-11 11:33:47	2022-07-11 11:33:47
6786	342	341	2倍濃縮なら水と1:1	2022-07-11 11:33:47	2022-07-11 11:33:47
3020	275	175	40g 2個分（求肥）	2022-02-10 04:19:35	2022-02-10 04:19:35
3021	275	192	30g（求肥）水80ccで溶く	2022-02-10 04:19:35	2022-02-10 04:19:35
3022	275	325	小さじ1（求肥）	2022-02-10 04:19:35	2022-02-10 04:19:35
3023	275	88	大2個（1粒30g程度）	2022-02-10 04:19:35	2022-02-10 04:19:35
3024	275	184	120g（固めのもの）	2022-02-10 04:19:35	2022-02-10 04:19:35
3025	275	217	適量	2022-02-10 04:19:35	2022-02-10 04:19:35
3209	152	131	ボイルもの4個(100g位)	2022-02-13 05:36:44	2022-02-13 05:36:44
3210	152	116	80g	2022-02-13 05:36:44	2022-02-13 05:36:44
3211	152	136	120g	2022-02-13 05:36:44	2022-02-13 05:36:44
3212	152	38	60g	2022-02-13 05:36:44	2022-02-13 05:36:44
3213	152	70	60g	2022-02-13 05:36:44	2022-02-13 05:36:44
3267	297	339	2切れ	2022-02-14 07:54:48	2022-02-14 07:54:48
3268	297	340	3個	2022-02-14 07:54:48	2022-02-14 07:54:48
3269	297	112	4個	2022-02-14 07:54:48	2022-02-14 07:54:48
3270	297	172	50cc	2022-02-14 07:54:48	2022-02-14 07:54:48
3271	297	264	100cc	2022-02-14 07:54:48	2022-02-14 07:54:48
3272	297	262	10g	2022-02-14 07:54:48	2022-02-14 07:54:48
3273	297	12	塩を振った鮭にまぶす	2022-02-14 07:54:48	2022-02-14 07:54:48
3274	297	288	30cc	2022-02-14 07:54:48	2022-02-14 07:54:48
6426	330	354	2玉	2022-05-05 08:56:36	2022-05-05 08:56:36
6427	330	66	40g	2022-05-05 08:56:36	2022-05-05 08:56:36
6428	330	32	長ネギ　2/3本	2022-05-05 08:56:36	2022-05-05 08:56:36
6429	330	328	100g	2022-05-05 08:56:36	2022-05-05 08:56:36
6430	330	352	大さじ2	2022-05-05 08:56:36	2022-05-05 08:56:36
6886	22	149	200g × 2	2022-10-23 01:31:55	2022-10-23 01:31:55
6887	22	35	60g	2022-10-23 01:31:55	2022-10-23 01:31:55
6888	22	251	小さじ4	2022-10-23 01:31:55	2022-10-23 01:31:55
5853	308	51	小さめ適量　1/4カット　多め	2022-03-07 11:19:43	2022-03-07 11:19:43
5854	308	62	2〜3切れ　酢にさらす	2022-03-07 11:19:43	2022-03-07 11:19:43
5855	308	37	縦長に切る	2022-03-07 11:19:43	2022-03-07 11:19:43
5856	308	42	1/4カット	2022-03-07 11:19:43	2022-03-07 11:19:43
5857	308	61	厚さ7〜8mm	2022-03-07 11:19:43	2022-03-07 11:19:43
5858	308	49	適量	2022-03-07 11:19:43	2022-03-07 11:19:43
5859	308	38	適量	2022-03-07 11:19:43	2022-03-07 11:19:43
7008	65	275	1個	2022-11-07 11:33:12	2022-11-07 11:33:12
7009	65	2	小さじ4前後	2022-11-07 11:33:12	2022-11-07 11:33:12
7028	153	116	80g	2022-11-07 11:36:15	2022-11-07 11:36:15
7029	153	275	2個	2022-11-07 11:36:15	2022-11-07 11:36:15
7030	153	20	4枚	2022-11-07 11:36:15	2022-11-07 11:36:15
7092	109	40	200g	2022-11-14 10:29:53	2022-11-14 10:29:53
7093	109	365	小さじ4	2022-11-14 10:29:53	2022-11-14 10:29:53
7094	109	192	小さじ1	2022-11-14 10:29:53	2022-11-14 10:29:53
7106	341	111	100g 2人分	2022-11-14 10:34:41	2022-11-14 10:34:41
7107	341	40	100g	2022-11-14 10:34:41	2022-11-14 10:34:41
7108	341	354	2玉	2022-11-14 10:34:41	2022-11-14 10:34:41
7109	341	143	100g	2022-11-14 10:34:41	2022-11-14 10:34:41
7110	341	54	適量	2022-11-14 10:34:41	2022-11-14 10:34:41
7111	341	246	適量	2022-11-14 10:34:41	2022-11-14 10:34:41
7112	341	341	大さじ2 2倍濃縮	2022-11-14 10:34:41	2022-11-14 10:34:41
7113	341	304	2個	2022-11-14 10:34:41	2022-11-14 10:34:41
7114	341	365	レシピ参照	2022-11-14 10:34:41	2022-11-14 10:34:41
7125	104	116	100g 生エビをオススメ！	2022-11-15 10:26:26	2022-11-15 10:26:26
7126	104	143	60g	2022-11-15 10:26:26	2022-11-15 10:26:26
5558	157	61	120g	2022-02-20 14:19:32	2022-02-20 14:19:32
5559	157	2	28g前後	2022-02-20 14:19:32	2022-02-20 14:19:32
5560	157	251	小さじ2	2022-02-20 14:19:32	2022-02-20 14:19:32
6357	95	269	100g	2022-05-01 16:00:25	2022-05-01 16:00:25
6358	95	289	小さじ4	2022-05-01 16:00:25	2022-05-01 16:00:25
6359	95	264	60cc	2022-05-01 16:00:25	2022-05-01 16:00:25
6360	95	271	40g	2022-05-01 16:00:25	2022-05-01 16:00:25
6361	95	288	80g	2022-05-01 16:00:25	2022-05-01 16:00:25
6362	95	178	40g	2022-05-01 16:00:25	2022-05-01 16:00:25
6363	95	183	2枚	2022-05-01 16:00:25	2022-05-01 16:00:25
6364	95	189	小さじ2	2022-05-01 16:00:25	2022-05-01 16:00:25
6365	95	82	4つ	2022-05-01 16:00:25	2022-05-01 16:00:25
6431	330	286	小さじ1	2022-05-05 08:56:36	2022-05-05 08:56:36
6432	330	4	100ml	2022-05-05 08:56:36	2022-05-05 08:56:36
6433	330	334	大さじ4	2022-05-05 08:56:36	2022-05-05 08:56:36
6434	330	246	適量	2022-05-05 08:56:36	2022-05-05 08:56:36
6435	330	353	適量	2022-05-05 08:56:36	2022-05-05 08:56:36
6557	289	326	適量	2022-05-24 12:26:04	2022-05-24 12:26:04
6558	289	71	や大葉など	2022-05-24 12:26:04	2022-05-24 12:26:04
6559	289	333	適量	2022-05-24 12:26:04	2022-05-24 12:26:04
6622	333	150	切り売りの出来上がり品	2022-06-28 11:45:35	2022-06-28 11:45:35
6623	333	80	1/2個	2022-06-28 11:45:35	2022-06-28 11:45:35
6684	84	275	2個 × 2	2022-07-04 01:34:48	2022-07-04 01:34:48
6685	84	156	20g × 2	2022-07-04 01:34:48	2022-07-04 01:34:48
6686	84	284	小さじ1/2 × 2	2022-07-04 01:34:48	2022-07-04 01:34:48
6687	84	14	240cc	2022-07-04 01:34:48	2022-07-04 01:34:48
6688	84	279	小さじ1/2 × 2	2022-07-04 01:34:48	2022-07-04 01:34:48
5860	156	141	400g	2022-03-07 11:23:40	2022-03-07 11:23:40
5861	156	35	160g	2022-03-07 11:23:40	2022-03-07 11:23:40
5862	156	110	80g	2022-03-07 11:23:40	2022-03-07 11:23:40
5863	156	224	240g	2022-03-07 11:23:40	2022-03-07 11:23:40
5864	156	261	2枚	2022-03-07 11:23:40	2022-03-07 11:23:40
6924	332	356	100g 小ボウル2人分	2022-10-24 09:20:17	2022-10-24 09:20:17
6925	332	87	1本（半分:アサイーとミキサー、半分:トッピング）	2022-10-24 09:20:17	2022-10-24 09:20:17
6926	332	4	100ml	2022-10-24 09:20:17	2022-10-24 09:20:17
6927	332	357	適量	2022-10-24 09:20:17	2022-10-24 09:20:17
5258	302	8	適量	2022-02-17 12:46:03	2022-02-17 12:46:03
5259	302	284	適量	2022-02-17 12:46:03	2022-02-17 12:46:03
6928	332	176	適量	2022-10-24 09:20:17	2022-10-24 09:20:17
6929	332	88	4個くらい	2022-10-24 09:20:17	2022-10-24 09:20:17
7010	126	211	小さじ2	2022-11-07 11:33:39	2022-11-07 11:33:39
7011	126	242	小さじ1/2	2022-11-07 11:33:39	2022-11-07 11:33:39
7012	126	275	1個	2022-11-07 11:33:39	2022-11-07 11:33:39
7013	126	42	1個	2022-11-07 11:33:39	2022-11-07 11:33:39
7014	126	277	小さじ2	2022-11-07 11:33:39	2022-11-07 11:33:39
7031	82	136	100g	2022-11-07 11:37:22	2022-11-07 11:37:22
5275	287	52	60g 2人分	2022-02-17 12:52:22	2022-02-17 12:52:22
5276	287	316	2パック	2022-02-17 12:52:22	2022-02-17 12:52:22
5277	287	5	（白）小さじ1/2	2022-02-17 12:52:22	2022-02-17 12:52:22
5278	287	215	小さじ1	2022-02-17 12:52:22	2022-02-17 12:52:22
5279	287	293	青ネギ　小口切り	2022-02-17 12:52:22	2022-02-17 12:52:22
7032	82	143	100g	2022-11-07 11:37:22	2022-11-07 11:37:22
7033	82	244	小さじ2	2022-11-07 11:37:22	2022-11-07 11:37:22
7034	82	243	小さじ2	2022-11-07 11:37:22	2022-11-07 11:37:22
7035	82	284	小さじ2	2022-11-07 11:37:22	2022-11-07 11:37:22
7036	82	285	小さじ2	2022-11-07 11:37:22	2022-11-07 11:37:22
7037	82	8	600g	2022-11-07 11:37:22	2022-11-07 11:37:22
5293	300	125	適量	2022-02-17 13:39:46	2022-02-17 13:39:46
5294	300	275	1人分で1個	2022-02-17 13:39:46	2022-02-17 13:39:46
5295	300	156	1人分　10g	2022-02-17 13:39:46	2022-02-17 13:39:46
5296	300	284	1人分　小さじ1/4	2022-02-17 13:39:46	2022-02-17 13:39:46
5332	294	51	1/2本	2022-02-17 15:21:23	2022-02-17 15:21:23
5333	294	79	1個	2022-02-17 15:21:23	2022-02-17 15:21:23
5334	294	80	果汁小さじ1	2022-02-17 15:21:23	2022-02-17 15:21:23
5369	305	98	10粒	2022-02-17 15:44:04	2022-02-17 15:44:04
5384	166	275	2個	2022-02-18 09:19:03	2022-02-18 09:19:03
5385	166	279	できれば薄口・小さじ1	2022-02-18 09:19:03	2022-02-18 09:19:03
5386	166	134	80g	2022-02-18 09:19:03	2022-02-18 09:19:03
5387	166	116	4~8尾	2022-02-18 09:19:03	2022-02-18 09:19:03
5388	166	107	2枚	2022-02-18 09:19:03	2022-02-18 09:19:03
5397	258	317	1枚(120g)	2022-02-18 09:35:29	2022-02-18 09:35:29
5398	258	296	100cc　(水100cc)	2022-02-18 09:35:29	2022-02-18 09:35:29
5399	258	46	2枚	2022-02-18 09:35:29	2022-02-18 09:35:29
5400	258	278	小さじ1/8	2022-02-18 09:35:29	2022-02-18 09:35:29
5401	258	279	大さじ1	2022-02-18 09:35:29	2022-02-18 09:35:29
5402	258	312	小さじ2	2022-02-18 09:35:29	2022-02-18 09:35:29
5403	258	249	小さじ1	2022-02-18 09:35:29	2022-02-18 09:35:29
5404	258	319	40g	2022-02-18 09:35:29	2022-02-18 09:35:29
5416	168	75	5~6本	2022-02-18 09:41:15	2022-02-18 09:41:15
5417	168	116	中15尾(約140g)	2022-02-18 09:41:15	2022-02-18 09:41:15
5418	168	54	みじん切り5cm分	2022-02-18 09:41:15	2022-02-18 09:41:15
5419	168	211	小さじ1/4	2022-02-18 09:41:15	2022-02-18 09:41:15
6744	339	109	乾燥4g 4人分	2022-07-04 14:07:24	2022-07-04 14:07:24
5987	320	76	1/4個　2人分	2022-03-15 04:53:15	2022-03-15 04:53:15
5988	320	345	4個	2022-03-15 04:53:15	2022-03-15 04:53:15
5989	320	293	長ネギ青い部分1本分	2022-03-15 04:53:15	2022-03-15 04:53:15
5990	320	344	2枚分　湯で油抜き	2022-03-15 04:53:15	2022-03-15 04:53:15
5991	320	346	黒米を含むもの	2022-03-15 04:53:15	2022-03-15 04:53:15
5992	320	275	1/2個　（衣）	2022-03-15 04:53:15	2022-03-15 04:53:15
5993	320	210	大さじ1	2022-03-15 04:53:15	2022-03-15 04:53:15
5994	320	219	小さじ2	2022-03-15 04:53:15	2022-03-15 04:53:15
6745	339	5	いりごま　小さじ2	2022-07-04 14:07:24	2022-07-04 14:07:24
6746	339	219	小さじ1	2022-07-04 14:07:24	2022-07-04 14:07:24
6050	203	9	40g(蒸し)	2022-03-22 14:09:04	2022-03-22 14:09:04
6051	203	194	小さじ2	2022-03-22 14:09:04	2022-03-22 14:09:04
6056	118	67	2本	2022-03-22 14:09:41	2022-03-22 14:09:41
5442	107	68	4本	2022-02-18 09:50:51	2022-02-18 09:50:51
5443	107	69	2本	2022-02-18 09:50:51	2022-02-18 09:50:51
5444	107	2	小さじ8	2022-02-18 09:50:51	2022-02-18 09:50:51
5445	193	59	1個	2022-02-18 09:51:26	2022-02-18 09:51:26
5446	193	140	スライス2枚	2022-02-18 09:51:26	2022-02-18 09:51:26
5447	193	219	小さじ1/2	2022-02-18 09:51:26	2022-02-18 09:51:26
5448	193	4	40cc	2022-02-18 09:51:26	2022-02-18 09:51:26
5449	193	302	西京みそ20g	2022-02-18 09:51:26	2022-02-18 09:51:26
6057	118	250	小さじ1	2022-03-22 14:09:41	2022-03-22 14:09:41
6058	118	2	28g前後	2022-03-22 14:09:41	2022-03-22 14:09:41
6059	118	284	小さじ1	2022-03-22 14:09:41	2022-03-22 14:09:41
6063	117	9	20g	2022-03-22 14:10:53	2022-03-22 14:10:53
6064	117	14	200cc	2022-03-22 14:10:53	2022-03-22 14:10:53
6065	117	250	小さじ2	2022-03-22 14:10:53	2022-03-22 14:10:53
6073	220	40	1/2束　100g	2022-03-22 14:23:58	2022-03-22 14:23:58
5457	59	51	200g	2022-02-18 09:52:28	2022-02-18 09:52:28
5458	59	262	20g	2022-02-18 09:52:28	2022-02-18 09:52:28
5459	59	222	小さじ1	2022-02-18 09:52:28	2022-02-18 09:52:28
5460	59	264	400cc	2022-02-18 09:52:28	2022-02-18 09:52:28
5461	170	123	300g	2022-02-18 09:52:49	2022-02-18 09:52:49
5462	170	54	5cm	2022-02-18 09:52:49	2022-02-18 09:52:49
5463	170	287	小さじ1/2	2022-02-18 09:52:49	2022-02-18 09:52:49
5464	170	286	小さじ1/2	2022-02-18 09:52:49	2022-02-18 09:52:49
6074	220	109	小さじ１	2022-03-22 14:23:58	2022-03-22 14:23:58
6075	220	14	炊いて400g位	2022-03-22 14:23:58	2022-03-22 14:23:58
6091	17	21	240g	2022-04-04 10:27:03	2022-04-04 10:27:03
6092	17	140	80g	2022-04-04 10:27:03	2022-04-04 10:27:03
6093	17	285	小さじ2	2022-04-04 10:27:03	2022-04-04 10:27:03
5479	185	12	40g	2022-02-18 09:55:17	2022-02-18 09:55:17
5480	185	192	小さじ4	2022-02-18 09:55:17	2022-02-18 09:55:17
5481	185	275	1個	2022-02-18 09:55:17	2022-02-18 09:55:17
5482	185	264	100cc	2022-02-18 09:55:17	2022-02-18 09:55:17
5483	185	262	10g + 10g	2022-02-18 09:55:17	2022-02-18 09:55:17
5484	185	82	4 つ	2022-02-18 09:55:17	2022-02-18 09:55:17
5485	185	298	1/2個	2022-02-18 09:55:17	2022-02-18 09:55:17
5486	185	299	小さじ1	2022-02-18 09:55:17	2022-02-18 09:55:17
5487	127	276	小さじ2	2022-02-18 09:55:51	2022-02-18 09:55:51
5488	127	264	80cc	2022-02-18 09:55:51	2022-02-18 09:55:51
5489	127	192	小さじ2	2022-02-18 09:55:51	2022-02-18 09:55:51
5490	127	288	40g	2022-02-18 09:55:51	2022-02-18 09:55:51
5491	257	79	2個400g (紅玉)	2022-02-18 09:56:10	2022-02-18 09:56:10
5492	257	18	2本600g	2022-02-18 09:56:10	2022-02-18 09:56:10
5493	257	308	1個	2022-02-18 09:56:10	2022-02-18 09:56:10
5494	257	310	10個・シロップも1/2カップ	2022-02-18 09:56:10	2022-02-18 09:56:10
5495	257	80	レモン汁大さじ1	2022-02-18 09:56:10	2022-02-18 09:56:10
5496	257	278	少々	2022-02-18 09:56:10	2022-02-18 09:56:10
5497	257	321	大さじ1	2022-02-18 09:56:10	2022-02-18 09:56:10
5498	257	320	50g	2022-02-18 09:56:10	2022-02-18 09:56:10
6094	17	233	大さじ1	2022-04-04 10:27:03	2022-04-04 10:27:03
6095	17	172	大さじ1	2022-04-04 10:27:03	2022-04-04 10:27:03
6096	17	275	2個	2022-04-04 10:27:03	2022-04-04 10:27:03
5502	155	276	小さじ2	2022-02-18 09:56:50	2022-02-18 09:56:50
5503	155	176	小さじ4	2022-02-18 09:56:50	2022-02-18 09:56:50
5504	155	80	1/2個	2022-02-18 09:56:50	2022-02-18 09:56:50
6097	17	288	80g	2022-04-04 10:27:03	2022-04-04 10:27:03
6098	17	242	小さじ1/2 × 4人分	2022-04-04 10:27:03	2022-04-04 10:27:03
6099	17	267	小さじ2	2022-04-04 10:27:03	2022-04-04 10:27:03
6100	17	275	温泉卵4個	2022-04-04 10:27:03	2022-04-04 10:27:03
6112	323	63	2個	2022-04-25 16:48:22	2022-04-25 16:48:22
6113	323	348	大さじ1	2022-04-25 16:48:22	2022-04-25 16:48:22
6114	323	215	小さじ1	2022-04-25 16:48:22	2022-04-25 16:48:22
5767	171	218	適量	2022-03-01 11:18:50	2022-03-01 11:18:50
5768	171	41	1/3把	2022-03-01 11:18:50	2022-03-01 11:18:50
5769	171	140	2枚	2022-03-01 11:18:50	2022-03-01 11:18:50
5770	171	80	1/2個	2022-03-01 11:18:50	2022-03-01 11:18:50
5771	171	262	10g	2022-03-01 11:18:50	2022-03-01 11:18:50
5772	171	288	100cc	2022-03-01 11:18:50	2022-03-01 11:18:50
5773	171	21	150g	2022-03-01 11:18:50	2022-03-01 11:18:50
5774	171	267	大さじ2	2022-03-01 11:18:50	2022-03-01 11:18:50
5865	79	275	2個	2022-03-07 11:24:16	2022-03-07 11:24:16
5866	79	295	200g	2022-03-07 11:24:16	2022-03-07 11:24:16
5867	79	35	200g	2022-03-07 11:24:16	2022-03-07 11:24:16
5868	79	112	8個	2022-03-07 11:24:16	2022-03-07 11:24:16
5869	79	162	小さじ4	2022-03-07 11:24:16	2022-03-07 11:24:16
5870	79	224	1缶(290g)	2022-03-07 11:24:16	2022-03-07 11:24:16
5871	79	213	小さじ2	2022-03-07 11:24:16	2022-03-07 11:24:16
5872	79	176	小さじ2	2022-03-07 11:24:16	2022-03-07 11:24:16
5873	79	232	小さじ1	2022-03-07 11:24:16	2022-03-07 11:24:16
5874	79	296	240cc	2022-03-07 11:24:16	2022-03-07 11:24:16
6115	323	202	適量	2022-04-25 16:48:22	2022-04-25 16:48:22
6799	269	323	2本	2022-08-07 04:22:37	2022-08-07 04:22:37
6800	269	278	小さじ1	2022-08-07 04:22:37	2022-08-07 04:22:37
6854	344	339	1里	2022-09-04 09:45:49	2022-09-04 09:45:49
6436	103	28	400g	2022-05-05 08:57:49	2022-05-05 08:57:49
6437	103	328	80g 4人分	2022-05-05 08:57:49	2022-05-05 08:57:49
6438	103	239	小さじ1	2022-05-05 08:57:49	2022-05-05 08:57:49
6439	103	249	小さじ2	2022-05-05 08:57:49	2022-05-05 08:57:49
6440	103	42	1/2個	2022-05-05 08:57:49	2022-05-05 08:57:49
6441	103	66	30g	2022-05-05 08:57:49	2022-05-05 08:57:49
6442	103	54	20g	2022-05-05 08:57:49	2022-05-05 08:57:49
6443	103	281	8g	2022-05-05 08:57:49	2022-05-05 08:57:49
6444	103	105	2g	2022-05-05 08:57:49	2022-05-05 08:57:49
6445	103	275	4個	2022-05-05 08:57:49	2022-05-05 08:57:49
6560	141	45	200g	2022-05-24 12:26:40	2022-05-24 12:26:40
6561	141	33	20g	2022-05-24 12:26:40	2022-05-24 12:26:40
6562	141	2	小さじ4前後	2022-05-24 12:26:40	2022-05-24 12:26:40
6855	344	104	適量	2022-09-04 09:45:49	2022-09-04 09:45:49
6856	344	107	適量　薄切り	2022-09-04 09:45:49	2022-09-04 09:45:49
6857	344	111	適量	2022-09-04 09:45:49	2022-09-04 09:45:49
6653	134	35	60g	2022-07-03 07:54:28	2022-07-03 07:54:28
6654	134	207	大さじ1	2022-07-03 07:54:28	2022-07-03 07:54:28
6655	134	208	大さじ1	2022-07-03 07:54:28	2022-07-03 07:54:28
6656	134	39	60g	2022-07-03 07:54:28	2022-07-03 07:54:28
6689	154	34	1本	2022-07-04 01:35:06	2022-07-04 01:35:06
6690	154	109	乾燥4 g	2022-07-04 01:35:06	2022-07-04 01:35:06
6691	154	156	40g	2022-07-04 01:35:06	2022-07-04 01:35:06
6858	344	293	斜め薄切り（青い部分）	2022-09-04 09:45:49	2022-09-04 09:45:49
6859	344	262	適量	2022-09-04 09:45:49	2022-09-04 09:45:49
6860	344	279	適量	2022-09-04 09:45:49	2022-09-04 09:45:49
6861	314	122	日本産　3個/1人	2022-09-20 10:09:13	2022-09-20 10:09:13
6862	314	64	適量	2022-09-20 10:09:13	2022-09-20 10:09:13
6863	314	2	適量	2022-09-20 10:09:13	2022-09-20 10:09:13
6864	338	8	木綿1丁	2022-10-11 10:39:44	2022-10-11 10:39:44
6865	338	45	適量	2022-10-11 10:39:44	2022-10-11 10:39:44
6866	338	114	24g	2022-10-11 10:39:44	2022-10-11 10:39:44
6867	338	219	小さじ1/2	2022-10-11 10:39:44	2022-10-11 10:39:44
6868	338	325	たくさん	2022-10-11 10:39:44	2022-10-11 10:39:44
6997	350	336	適量	2022-11-01 02:11:09	2022-11-01 02:11:09
6998	350	54	適量	2022-11-01 02:11:09	2022-11-01 02:11:09
6999	350	364	1個	2022-11-01 02:11:09	2022-11-01 02:11:09
6187	172	256	2片　2人分	2022-04-27 01:04:19	2022-04-27 01:04:19
6188	172	103	1.5片	2022-04-27 01:04:19	2022-04-27 01:04:19
6189	172	232	大さじ4	2022-04-27 01:04:19	2022-04-27 01:04:19
6190	172	242	小さじ1.5〜2	2022-04-27 01:04:19	2022-04-27 01:04:19
6191	172	211	小さじ1.5〜2	2022-04-27 01:04:19	2022-04-27 01:04:19
6192	172	293	白ネギ　1/4本みじん	2022-04-27 01:04:19	2022-04-27 01:04:19
6193	172	215	小さじ1	2022-04-27 01:04:19	2022-04-27 01:04:19
6194	172	127	20尾	2022-04-27 01:04:19	2022-04-27 01:04:19
6195	172	275	1個	2022-04-27 01:04:19	2022-04-27 01:04:19
7038	82	245	32g	2022-11-07 11:37:22	2022-11-07 11:37:22
7039	82	242	大さじ1	2022-11-07 11:37:22	2022-11-07 11:37:22
7040	82	215	小さじ1	2022-11-07 11:37:22	2022-11-07 11:37:22
6207	80	85	1/4個	2022-04-29 13:06:31	2022-04-29 13:06:31
6208	80	38	30g	2022-04-29 13:06:31	2022-04-29 13:06:31
6209	80	34	1/4本	2022-04-29 13:06:31	2022-04-29 13:06:31
6210	80	26	20g	2022-04-29 13:06:31	2022-04-29 13:06:31
6211	80	7	10g	2022-04-29 13:06:31	2022-04-29 13:06:31
6212	80	93	2個	2022-04-29 13:06:31	2022-04-29 13:06:31
6213	80	39	15g	2022-04-29 13:06:31	2022-04-29 13:06:31
6214	80	283	小さじ1 × 4	2022-04-29 13:06:31	2022-04-29 13:06:31
6215	98	271	240g	2022-04-29 13:06:53	2022-04-29 13:06:53
6216	98	86	1個	2022-04-29 13:06:53	2022-04-29 13:06:53
6217	98	81	小さじ2	2022-04-29 13:06:53	2022-04-29 13:06:53
6218	98	82	4つ	2022-04-29 13:06:53	2022-04-29 13:06:53
7073	351	333	適量	2022-11-10 15:43:33	2022-11-10 15:43:33
7095	106	134	320g	2022-11-14 10:30:30	2022-11-14 10:30:30
7096	106	365	小さじ4	2022-11-14 10:30:30	2022-11-14 10:30:30
7097	106	62	80g	2022-11-14 10:30:30	2022-11-14 10:30:30
7098	106	61	80g	2022-11-14 10:30:30	2022-11-14 10:30:30
7099	106	44	60g	2022-11-14 10:30:30	2022-11-14 10:30:30
7100	106	38	60g	2022-11-14 10:30:30	2022-11-14 10:30:30
7101	106	67	2本	2022-11-14 10:30:30	2022-11-14 10:30:30
7115	192	8	160g	2022-11-14 10:49:08	2022-11-14 10:49:08
7116	192	250	大さじ1	2022-11-14 10:49:08	2022-11-14 10:49:08
6242	48	42	1/2個	2022-04-29 13:08:34	2022-04-29 13:08:34
6243	48	192	小さじ1	2022-04-29 13:08:34	2022-04-29 13:08:34
6244	48	223	小さじ1/4	2022-04-29 13:08:34	2022-04-29 13:08:34
6245	48	277	小さじ2	2022-04-29 13:08:34	2022-04-29 13:08:34
6246	48	240	小さじ1	2022-04-29 13:08:34	2022-04-29 13:08:34
6247	48	280	小さじ2	2022-04-29 13:08:34	2022-04-29 13:08:34
6248	48	39	80g	2022-04-29 13:08:34	2022-04-29 13:08:34
7117	192	39	80g	2022-11-14 10:49:09	2022-11-14 10:49:09
7118	192	42	1/2個	2022-11-14 10:49:09	2022-11-14 10:49:09
7119	192	365	小さじ4	2022-11-14 10:49:09	2022-11-14 10:49:09
7127	104	249	小さじ1	2022-11-15 10:26:26	2022-11-15 10:26:26
7128	104	284	小さじ1	2022-11-15 10:26:26	2022-11-15 10:26:26
7129	104	285	小さじ1	2022-11-15 10:26:26	2022-11-15 10:26:26
7130	104	27	16枚	2022-11-15 10:26:26	2022-11-15 10:26:26
7131	104	54	20g	2022-11-15 10:26:26	2022-11-15 10:26:26
7142	11	61	240g	2022-11-20 13:08:00	2022-11-20 13:08:00
7143	11	90	12g	2022-11-20 13:08:00	2022-11-20 13:08:00
6260	279	327	1個	2022-04-29 13:09:43	2022-04-29 13:09:43
6261	14	204	8g	2022-04-29 13:10:23	2022-04-29 13:10:23
6262	14	33	80g	2022-04-29 13:10:23	2022-04-29 13:10:23
6263	14	85	1/2個	2022-04-29 13:10:23	2022-04-29 13:10:23
6264	14	50	4個	2022-04-29 13:10:23	2022-04-29 13:10:23
6265	14	202	1袋(1.5g)	2022-04-29 13:10:23	2022-04-29 13:10:23
6266	14	291	56g	2022-04-29 13:10:23	2022-04-29 13:10:23
6376	326	109	適量	2022-05-02 23:08:19	2022-05-02 23:08:19
6377	326	34	適量　斜め千切り3cm	2022-05-02 23:08:19	2022-05-02 23:08:19
6378	326	283	すりおろしオニオン	2022-05-02 23:08:19	2022-05-02 23:08:19
6446	83	136	200g	2022-05-05 08:58:36	2022-05-05 08:58:36
6447	83	34	1本	2022-05-05 08:58:36	2022-05-05 08:58:36
6448	83	42	1個	2022-05-05 08:58:36	2022-05-05 08:58:36
6449	83	249	大さじ1	2022-05-05 08:58:36	2022-05-05 08:58:36
6450	83	284	小さじ1	2022-05-05 08:58:36	2022-05-05 08:58:36
6451	83	285	小さじ1	2022-05-05 08:58:36	2022-05-05 08:58:36
6452	83	244	小さじ1/2	2022-05-05 08:58:36	2022-05-05 08:58:36
6453	83	293	しらねぎ	2022-05-05 08:58:36	2022-05-05 08:58:36
6454	83	352	16g	2022-05-05 08:58:36	2022-05-05 08:58:36
6494	42	130	100g × 4切れ(切り身)	2022-05-07 23:37:15	2022-05-07 23:37:15
6495	42	326	200g	2022-05-07 23:37:15	2022-05-07 23:37:15
6496	42	73	4本	2022-05-07 23:37:15	2022-05-07 23:37:15
6497	42	74	120g	2022-05-07 23:37:15	2022-05-07 23:37:15
6498	42	109	4g	2022-05-07 23:37:15	2022-05-07 23:37:15
6499	42	220	小さじ2	2022-05-07 23:37:15	2022-05-07 23:37:15
6500	42	217	大さじ3~	2022-05-07 23:37:15	2022-05-07 23:37:15
6657	121	116	40g	2022-07-03 07:54:56	2022-07-03 07:54:56
6658	121	143	40g	2022-07-03 07:54:56	2022-07-03 07:54:56
6659	121	76	40g	2022-07-03 07:54:56	2022-07-03 07:54:56
6660	121	207	小さじ2	2022-07-03 07:54:56	2022-07-03 07:54:56
6692	158	39	40g	2022-07-04 01:37:04	2022-07-04 01:37:04
6693	158	57	40g	2022-07-04 01:37:04	2022-07-04 01:37:04
6694	158	79	1/2個	2022-07-04 01:37:04	2022-07-04 01:37:04
6695	158	283	小さじ4	2022-07-04 01:37:04	2022-07-04 01:37:04
6696	158	252	小さじ1/2	2022-07-04 01:37:04	2022-07-04 01:37:04
6935	15	104	55g 4人分	2022-10-24 09:24:13	2022-10-24 09:24:13
6936	15	111	55g	2022-10-24 09:24:13	2022-10-24 09:24:13
6937	15	107	2〜3枚	2022-10-24 09:24:13	2022-10-24 09:24:13
6938	15	3	250cc	2022-10-24 09:24:13	2022-10-24 09:24:13
6939	15	2	液体みそ大さじ2	2022-10-24 09:24:13	2022-10-24 09:24:13
7000	349	363	230g. 2人分	2022-11-01 02:11:58	2022-11-01 02:11:58
7001	349	51	1/2本	2022-11-01 02:11:58	2022-11-01 02:11:58
7002	349	45	5cm分	2022-11-01 02:11:58	2022-11-01 02:11:58
7003	349	362	220gくらい	2022-11-01 02:11:58	2022-11-01 02:11:58
7004	349	293	適量　輪切トッピング	2022-11-01 02:11:58	2022-11-01 02:11:58
7005	349	219	小さじ1/2	2022-11-01 02:11:58	2022-11-01 02:11:58
7063	347	359	適量　水で戻す	2022-11-08 10:51:34	2022-11-08 10:51:34
7064	347	275	うずらの卵	2022-11-08 10:51:34	2022-11-08 10:51:34
7065	347	76	適量	2022-11-08 10:51:34	2022-11-08 10:51:34
7066	347	330	適量　削ぎ切り	2022-11-08 10:51:34	2022-11-08 10:51:34
7067	347	51	適量	2022-11-08 10:51:34	2022-11-08 10:51:34
7068	347	136	適量	2022-11-08 10:51:34	2022-11-08 10:51:34
7069	347	211	適量	2022-11-08 10:51:34	2022-11-08 10:51:34
7070	347	217	水600ccに対し大さじ2〜　水溶き	2022-11-08 10:51:34	2022-11-08 10:51:34
7071	347	107	適量　水で戻す	2022-11-08 10:51:34	2022-11-08 10:51:34
7102	108	275	3個	2022-11-14 10:31:25	2022-11-14 10:31:25
7103	108	272	1個	2022-11-14 10:31:25	2022-11-14 10:31:25
7104	108	203	小さじ3	2022-11-14 10:31:25	2022-11-14 10:31:25
7105	108	365	小さじ2	2022-11-14 10:31:25	2022-11-14 10:31:25
7120	149	39	80g	2022-11-14 10:52:35	2022-11-14 10:52:35
7121	149	78	65g	2022-11-14 10:52:35	2022-11-14 10:52:35
7122	149	49	40g	2022-11-14 10:52:35	2022-11-14 10:52:35
7123	149	176	小さじ2	2022-11-14 10:52:35	2022-11-14 10:52:35
7124	149	80	1/2個	2022-11-14 10:52:35	2022-11-14 10:52:35
7132	282	331	生5〜6g 4人分、乾燥は適量を器に	2022-11-15 11:09:39	2022-11-15 11:09:39
7133	282	8	1/4丁	2022-11-15 11:09:39	2022-11-15 11:09:39
7134	282	219	4カップ	2022-11-15 11:09:39	2022-11-15 11:09:39
7144	11	265	40g	2022-11-20 13:08:00	2022-11-20 13:08:00
7145	11	100	12g	2022-11-20 13:08:00	2022-11-20 13:08:00
7146	11	39	20g	2022-11-20 13:08:00	2022-11-20 13:08:00
7147	11	49	20g	2022-11-20 13:08:00	2022-11-20 13:08:00
7148	11	42	1個	2022-11-20 13:08:00	2022-11-20 13:08:00
\.


--
-- Data for Name: recipe_tags; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.recipe_tags (id, recipe_id, tag_id, created_at, updated_at) FROM stdin;
705	149	8	2022-11-14 10:52:35	2022-11-14 10:52:35
707	11	1	2022-11-20 13:08:00	2022-11-20 13:08:00
233	256	5	2022-02-22 10:09:57	2022-02-22 10:09:57
14	293	5	2022-02-09 02:59:07	2022-02-09 02:59:07
461	95	8	2022-05-01 16:00:25	2022-05-01 16:00:25
465	326	6	2022-05-02 23:08:19	2022-05-02 23:08:19
234	256	3	2022-02-22 10:09:57	2022-02-22 10:09:57
235	256	8	2022-02-22 10:09:57	2022-02-22 10:09:57
594	334	47	2022-07-05 12:32:35	2022-07-05 12:32:35
471	321	6	2022-05-05 08:45:51	2022-05-05 08:45:51
474	83	10	2022-05-05 08:58:36	2022-05-05 08:58:36
475	83	8	2022-05-05 08:58:36	2022-05-05 08:58:36
595	334	6	2022-07-05 12:32:35	2022-07-05 12:32:35
29	152	1	2022-02-13 05:36:44	2022-02-13 05:36:44
129	294	5	2022-02-17 15:21:24	2022-02-17 15:21:24
131	294	1	2022-02-17 15:21:24	2022-02-17 15:21:24
132	304	6	2022-02-17 15:21:49	2022-02-17 15:21:49
246	310	6	2022-02-28 03:33:41	2022-02-28 03:33:41
248	310	3	2022-02-28 03:33:41	2022-02-28 03:33:41
249	310	1	2022-02-28 03:33:41	2022-02-28 03:33:41
250	310	8	2022-02-28 03:33:41	2022-02-28 03:33:41
616	314	3	2022-09-20 10:09:13	2022-09-20 10:09:13
251	311	1	2022-02-28 08:21:50	2022-02-28 08:21:50
320	316	6	2022-03-01 13:44:34	2022-03-01 13:44:34
617	338	3	2022-10-11 10:39:44	2022-10-11 10:39:44
252	312	5	2022-02-28 11:53:27	2022-02-28 11:53:27
253	312	1	2022-02-28 11:53:27	2022-02-28 11:53:27
321	316	3	2022-03-01 13:44:34	2022-03-01 13:44:34
322	316	8	2022-03-01 13:44:34	2022-03-01 13:44:34
145	305	5	2022-02-17 15:44:04	2022-02-17 15:44:04
627	325	6	2022-10-24 09:37:11	2022-10-24 09:37:11
628	325	2	2022-10-24 09:37:11	2022-10-24 09:37:11
629	325	9	2022-10-24 09:37:11	2022-10-24 09:37:11
510	42	9	2022-05-07 23:37:15	2022-05-07 23:37:15
73	302	6	2022-02-17 12:46:03	2022-02-17 12:46:03
511	42	8	2022-05-07 23:37:15	2022-05-07 23:37:15
512	177	6	2022-05-11 02:46:14	2022-05-11 02:46:14
78	287	6	2022-02-17 12:52:22	2022-02-17 12:52:22
513	177	8	2022-05-11 02:46:14	2022-05-11 02:46:14
630	325	8	2022-10-24 09:37:11	2022-10-24 09:37:11
631	325	43	2022-10-24 09:37:11	2022-10-24 09:37:11
522	94	10	2022-05-24 12:23:29	2022-05-24 12:23:29
523	94	43	2022-05-24 12:23:29	2022-05-24 12:23:29
530	276	8	2022-05-24 12:25:40	2022-05-24 12:25:40
163	166	8	2022-02-18 09:19:03	2022-02-18 09:19:03
340	45	6	2022-03-07 11:19:14	2022-03-07 11:19:14
90	300	6	2022-02-17 13:39:46	2022-02-17 13:39:46
531	276	43	2022-05-24 12:25:40	2022-05-24 12:25:40
341	308	1	2022-03-07 11:19:43	2022-03-07 11:19:43
167	258	8	2022-02-18 09:35:29	2022-02-18 09:35:29
342	156	8	2022-03-07 11:23:40	2022-03-07 11:23:40
343	79	8	2022-03-07 11:24:16	2022-03-07 11:24:16
170	168	8	2022-02-18 09:41:15	2022-02-18 09:41:15
344	58	8	2022-03-07 11:25:02	2022-03-07 11:25:02
100	303	6	2022-02-17 14:18:14	2022-02-17 14:18:14
533	141	43	2022-05-24 12:26:40	2022-05-24 12:26:40
346	137	8	2022-03-07 11:26:56	2022-03-07 11:26:56
538	140	6	2022-05-24 12:34:29	2022-05-24 12:34:29
539	140	3	2022-05-24 12:34:29	2022-05-24 12:34:29
175	107	6	2022-02-18 09:50:51	2022-02-18 09:50:51
540	140	8	2022-05-24 12:34:29	2022-05-24 12:34:29
348	148	8	2022-03-07 11:28:03	2022-03-07 11:28:03
541	140	43	2022-05-24 12:34:29	2022-05-24 12:34:29
176	107	8	2022-02-18 09:50:51	2022-02-18 09:50:51
177	193	8	2022-02-18 09:51:26	2022-02-18 09:51:26
542	324	8	2022-06-06 11:43:05	2022-06-06 11:43:05
180	59	1	2022-02-18 09:52:28	2022-02-18 09:52:28
181	59	8	2022-02-18 09:52:28	2022-02-18 09:52:28
182	170	8	2022-02-18 09:52:49	2022-02-18 09:52:49
558	134	10	2022-07-03 07:54:28	2022-07-03 07:54:28
559	134	46	2022-07-03 07:54:28	2022-07-03 07:54:28
188	185	8	2022-02-18 09:55:17	2022-02-18 09:55:17
189	127	8	2022-02-18 09:55:51	2022-02-18 09:55:51
190	257	8	2022-02-18 09:56:10	2022-02-18 09:56:10
192	155	8	2022-02-18 09:56:50	2022-02-18 09:56:50
193	298	2	2022-02-19 05:22:00	2022-02-19 05:22:00
194	298	3	2022-02-19 05:22:00	2022-02-19 05:22:00
195	298	8	2022-02-19 05:22:00	2022-02-19 05:22:00
200	307	6	2022-02-19 06:01:36	2022-02-19 06:01:36
291	313	2	2022-03-01 10:56:13	2022-03-01 10:56:13
292	313	9	2022-03-01 10:56:13	2022-03-01 10:56:13
293	313	1	2022-03-01 10:56:13	2022-03-01 10:56:13
206	306	6	2022-02-19 10:09:54	2022-02-19 10:09:54
207	306	5	2022-02-19 10:09:54	2022-02-19 10:09:54
365	319	2	2022-03-09 02:06:25	2022-03-09 02:06:25
209	306	1	2022-02-19 10:09:54	2022-02-19 10:09:54
294	313	8	2022-03-01 10:56:13	2022-03-01 10:56:13
214	281	6	2022-02-20 04:29:41	2022-02-20 04:29:41
366	317	6	2022-03-13 08:37:54	2022-03-13 08:37:54
216	281	3	2022-02-20 04:29:41	2022-02-20 04:29:41
217	281	8	2022-02-20 04:29:41	2022-02-20 04:29:41
367	317	2	2022-03-13 08:37:54	2022-03-13 08:37:54
222	157	1	2022-02-20 14:19:32	2022-02-20 14:19:32
225	309	1	2022-02-21 05:46:23	2022-02-21 05:46:23
226	309	8	2022-02-21 05:46:23	2022-02-21 05:46:23
298	171	9	2022-03-01 11:18:50	2022-03-01 11:18:50
372	320	3	2022-03-15 04:53:15	2022-03-15 04:53:15
373	320	8	2022-03-15 04:53:15	2022-03-15 04:53:15
374	285	8	2022-03-20 13:13:44	2022-03-20 13:13:44
386	203	1	2022-03-22 14:09:04	2022-03-22 14:09:04
387	299	1	2022-03-22 14:09:22	2022-03-22 14:09:22
388	299	8	2022-03-22 14:09:22	2022-03-22 14:09:22
389	118	1	2022-03-22 14:09:41	2022-03-22 14:09:41
390	315	1	2022-03-22 14:10:37	2022-03-22 14:10:37
391	315	8	2022-03-22 14:10:37	2022-03-22 14:10:37
392	117	6	2022-03-22 14:10:53	2022-03-22 14:10:53
393	117	1	2022-03-22 14:10:53	2022-03-22 14:10:53
395	220	1	2022-03-22 14:23:58	2022-03-22 14:23:58
401	17	9	2022-04-04 10:27:03	2022-04-04 10:27:03
402	17	8	2022-04-04 10:27:03	2022-04-04 10:27:03
406	323	6	2022-04-25 16:48:22	2022-04-25 16:48:22
416	80	10	2022-04-29 13:06:31	2022-04-29 13:06:31
417	98	10	2022-04-29 13:06:53	2022-04-29 13:06:53
586	339	6	2022-07-04 14:07:24	2022-07-04 14:07:24
423	48	10	2022-04-29 13:08:34	2022-04-29 13:08:34
426	279	10	2022-04-29 13:09:43	2022-04-29 13:09:43
427	279	6	2022-04-29 13:09:43	2022-04-29 13:09:43
428	279	1	2022-04-29 13:09:43	2022-04-29 13:09:43
429	14	10	2022-04-29 13:10:23	2022-04-29 13:10:23
599	342	3	2022-07-11 11:33:47	2022-07-11 11:33:47
602	269	6	2022-08-07 04:22:37	2022-08-07 04:22:37
436	261	10	2022-04-29 13:48:04	2022-04-29 13:48:04
603	269	1	2022-08-07 04:22:37	2022-08-07 04:22:37
606	340	47	2022-08-30 10:57:42	2022-08-30 10:57:42
607	340	9	2022-08-30 10:57:42	2022-08-30 10:57:42
610	343	6	2022-09-02 09:33:03	2022-09-02 09:33:03
611	343	3	2022-09-02 09:33:03	2022-09-02 09:33:03
613	345	6	2022-09-02 09:44:43	2022-09-02 09:44:43
469	301	6	2022-05-05 08:45:07	2022-05-05 08:45:07
470	301	3	2022-05-05 08:45:07	2022-05-05 08:45:07
472	103	10	2022-05-05 08:57:49	2022-05-05 08:57:49
473	103	9	2022-05-05 08:57:49	2022-05-05 08:57:49
476	327	6	2022-05-05 09:00:52	2022-05-05 09:00:52
478	331	6	2022-05-05 10:12:37	2022-05-05 10:12:37
615	344	6	2022-09-04 09:45:49	2022-09-04 09:45:49
620	346	6	2022-10-11 14:07:25	2022-10-11 14:07:25
622	332	5	2022-10-24 09:20:17	2022-10-24 09:20:17
623	332	9	2022-10-24 09:20:17	2022-10-24 09:20:17
624	332	1	2022-10-24 09:20:17	2022-10-24 09:20:17
626	15	6	2022-10-24 09:24:13	2022-10-24 09:24:13
636	348	5	2022-10-31 08:44:04	2022-10-31 08:44:04
637	348	9	2022-10-31 08:44:04	2022-10-31 08:44:04
638	348	3	2022-10-31 08:44:04	2022-10-31 08:44:04
639	348	1	2022-10-31 08:44:04	2022-10-31 08:44:04
514	318	6	2022-05-11 02:48:00	2022-05-11 02:48:00
515	318	2	2022-05-11 02:48:00	2022-05-11 02:48:00
516	318	5	2022-05-11 02:48:00	2022-05-11 02:48:00
517	318	8	2022-05-11 02:48:00	2022-05-11 02:48:00
532	289	43	2022-05-24 12:26:04	2022-05-24 12:26:04
545	333	6	2022-06-28 11:45:35	2022-06-28 11:45:35
546	333	8	2022-06-28 11:45:35	2022-06-28 11:45:35
548	335	6	2022-06-29 15:22:44	2022-06-29 15:22:44
647	350	6	2022-11-01 02:11:09	2022-11-01 02:11:09
648	350	2	2022-11-01 02:11:09	2022-11-01 02:11:09
560	121	46	2022-07-03 07:54:56	2022-07-03 07:54:56
564	96	45	2022-07-03 07:56:33	2022-07-03 07:56:33
565	283	1	2022-07-04 00:29:19	2022-07-04 00:29:19
568	84	47	2022-07-04 01:34:48	2022-07-04 01:34:48
569	84	6	2022-07-04 01:34:48	2022-07-04 01:34:48
570	154	47	2022-07-04 01:35:06	2022-07-04 01:35:06
571	158	10	2022-07-04 01:37:04	2022-07-04 01:37:04
572	158	45	2022-07-04 01:37:04	2022-07-04 01:37:04
573	161	45	2022-07-04 01:38:09	2022-07-04 01:38:09
649	349	6	2022-11-01 02:11:58	2022-11-01 02:11:58
650	65	6	2022-11-07 11:33:12	2022-11-07 11:33:12
576	336	1	2022-07-04 01:44:33	2022-07-04 01:44:33
651	65	43	2022-11-07 11:33:12	2022-11-07 11:33:12
578	337	47	2022-07-04 01:59:51	2022-07-04 01:59:51
579	44	47	2022-07-04 02:07:03	2022-07-04 02:07:03
580	52	45	2022-07-04 02:08:12	2022-07-04 02:08:12
652	126	6	2022-11-07 11:33:39	2022-11-07 11:33:39
660	153	6	2022-11-07 11:36:15	2022-11-07 11:36:15
661	82	6	2022-11-07 11:37:22	2022-11-07 11:37:22
674	347	6	2022-11-08 10:51:34	2022-11-08 10:51:34
675	347	5	2022-11-08 10:51:34	2022-11-08 10:51:34
676	347	9	2022-11-08 10:51:34	2022-11-08 10:51:34
677	347	3	2022-11-08 10:51:34	2022-11-08 10:51:34
678	347	1	2022-11-08 10:51:34	2022-11-08 10:51:34
681	351	6	2022-11-10 15:43:33	2022-11-10 15:43:33
682	351	3	2022-11-10 15:43:33	2022-11-10 15:43:33
693	109	6	2022-11-14 10:29:53	2022-11-14 10:29:53
694	109	44	2022-11-14 10:29:53	2022-11-14 10:29:53
695	109	1	2022-11-14 10:29:53	2022-11-14 10:29:53
696	106	10	2022-11-14 10:30:31	2022-11-14 10:30:31
697	106	44	2022-11-14 10:30:31	2022-11-14 10:30:31
698	106	1	2022-11-14 10:30:31	2022-11-14 10:30:31
699	108	6	2022-11-14 10:31:25	2022-11-14 10:31:25
700	108	44	2022-11-14 10:31:25	2022-11-14 10:31:25
701	341	44	2022-11-14 10:34:41	2022-11-14 10:34:41
702	192	10	2022-11-14 10:49:09	2022-11-14 10:49:09
703	192	3	2022-11-14 10:49:09	2022-11-14 10:49:09
704	192	44	2022-11-14 10:49:09	2022-11-14 10:49:09
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.recipes (id, user_id, name, body, recipe_category_id, menu_id, howto_id, recipe_country_id, mainsub_id, season_id, image_path, image_path2, is_easy, is_favorite, is_refresh, is_healthy, is_caloryoff, created_at, updated_at) FROM stdin;
6	1	ほうれん草とヨーグルトのカレー	1　チキンカレーの残りに水気をよく絞ったほうれん草・調味料Cを加えてよく混ぜ、強火で5分煮詰める。ローリエを除き調味料Dを加えなじませる。\\r\\n2　塩こしょう少々で味をととのえる。器に盛り付ける。	54	2	0	8	1	\N	VLBjBzTN2Las8Fq82IgVX5zeSBpBhEnzF444KbBn.jpg	\N	0	0	0	0	0	2021-11-04 07:26:35	2021-12-28 14:38:39
264	1	薬膳キムパプの陰陽巻き	まきす	47	63	0	1	41	\N	4OJENX11mqOThbJ6gIRfUxXRB9NI259IwUVfyfZW.jpg	57bO8cMXppNXnYgkoZbh54FtE1d7sPxRCvnSFgx2.jpg	0	0	0	0	0	2021-12-29 07:22:32	2021-12-29 07:24:52
16	1	キャラメル豆乳プリン	1　ボウルに卵を割り入れ、よく溶きほぐす(A) 。別のボウルに調製豆乳・砂糖を入れ、よく混ぜ溶かす(B)。\\r\\n2　BにAとバニラオイル8ふりを加えて混ぜ、ぬらした茶こしでこして器に注ぐ。\\r\\n3　鍋に湯を張り、沸騰させる。火を止めざるを入れ、2を入れる。\\r\\n4　フタをし、強火で2〜3分加熱する。目安:表面の色が変わるくらい。\\r\\n5　弱火または保温する。10分くらい。プリンに竹串を刺し、液体が出てこなければ火を止める。\\r\\n6　粗熱を取り冷蔵庫で冷やす。豆乳プリンにキャラメルシロップをかける。(1人分のキャラメルシロップ小さじ1)	54	4	5	1	5	\N	n6GjVhSqcydVxf7z5rNNCnfkVa7cbKIuErkn7wMG.jpg	\N	0	0	0	0	0	2021-11-04 12:33:32	2021-12-28 14:45:03
10	1	スパイシーチキン	1　鶏手羽中は手羽先の関節のところの切り口を上にして、骨と肉の間にあるスジをキッチンバサミできる。筋を切った部分の肉を押し下げる。\\r\\n2　内側の肉が表側になるようにめくって裏返す。細い骨は抜き取る。チューリップ状。\\r\\n3　ボウルに鶏肉漬け込み用Aを入れ混ぜる。鶏肉を加え漬け込む。20分くらい。鶏肉の汁気を軽く除き、片栗粉小さじ8~をまぶして軽く握り、形をととのえる。\\r\\n4　160度の油に入れて、火が通るまで揚げる。5分位。バットに取り出し、油を切る。	57	3	0	2	1	0	hXcI1p3oN8yuLqPhCHzIMXwraCRDMyFSEBiF8Zsv.jpg	zVO9zXgdMSgpUQz8zqh3GaXyRf5877G0oWXWG3EO.jpg	0	1	1	0	0	2021-11-04 09:37:21	2022-02-08 12:56:14
1	1	黒酢酢豚	1　豚肩ロース薄切り肉を肉下味用で味付け。\\r\\n2　片栗粉小さじ4を加えてもみ込む。軽く握り丸める、1人3個。\\r\\n3　かぼちゃは種ワタを除き、一辺が8cm、厚さ5mmの薄切り。1人2〜3切れ。れんこんは皮をむき、厚さ5mmの輪切り。または半月切り。1人2〜3切れ。\\r\\n4　赤パプリカ・ピーマンは種を除き乱切り。(それぞれ1人2〜4切れ)\\r\\n5　鍋にあん用の調味料をあわせ、よく混ぜ、混ぜながら加熱。弱火〜中火。沸騰したら中火で30秒〜1分加熱。\\r\\n6　かぼちゃ・れんこん・赤パプリカ・ピーマンを170度の油で揚げる。\\r\\n7　6をあんに加える。\\r\\n8　豚肉に片栗粉小さじ4をまぶし、170度の油に入れ、徐々に温度をあげながら、6分程じっくりと揚げる。\\r\\n9　8をあんに加えて混ぜる。器に盛り付ける。	57	1	0	3	1	2	2rvbliruRTNfx7bZbwYOJj047tytRzssf2IgwDxm.jpg	\N	0	0	1	0	0	2021-11-04 01:18:44	2022-02-08 13:12:32
2	1	きゅうりの浅漬け	1　きゅうりは厚さ5mmの輪切り。\\r\\n2　きゅうりを立て塩に漬ける。10分くらい。\\r\\n3　ボウルに水気を絞ったきゅうりを入れ、味付け用を加え和える。\\r\\n4　器に盛り付ける。	53	1	0	1	38	0	7XO7bs1bEBXEmV1V5lVshwWSoa7ROyhBL8c5XQwb.jpg	\N	0	0	1	0	0	2021-11-04 01:28:57	2022-02-08 13:19:08
3	1	中華コーンスープ	1　鍋に卵以外の材料・調味料を入れてよく混ぜる。\\r\\n2　火にかけ混ぜながら、とろみがつくまで加熱。\\r\\n3　卵は1個よくときほぐす。\\r\\n4　3を静かに流し入れ、火を通し軽く混ぜる。\\r\\n5　火を止め器に分入れる。	52	1	0	3	3	0	ZZpNTHQz1WmgaQ85pu89Kpb8bP6ZeJZ9B1gcjDwR.jpg	\N	1	0	1	0	0	2021-11-04 01:35:16	2022-02-09 02:57:18
8	1	マンゴーラッシー	1.ボウルにプレーンヨーグルトを入れる。\r\n2.牛乳を少しずつ加えて混ぜる。\r\n3.グラスにマンゴージャムを分入れ、2を注ぐ。	53	2	0	8	5	0	iIjqB0hJdX0Lxd6eNtznZAyYOsXE4kYfKtw7k2Ef.jpg	\N	1	0	0	0	0	2021-11-04 07:55:28	2022-02-10 05:14:10
21	1	洋梨のクラフティ	1　洋梨(缶)は汁気を除き、厚さ2〜3mmの薄切り。\\r\\n2　ボウルに卵を割り入れ、泡立たないようにコシを切り、砂糖大さじ2を加えて混ぜる。\\r\\n3　生地用をふるい入れ、よく混ぜる。\\r\\n4　牛乳を加え混ぜる。生クリーム・バニラオイルを加え、さらに混ぜる。\\r\\n5　ココットに生地を流して、洋梨をのせ天板にのせてオーブンで焼く。電気230度12分・ガス220度12分\\r\\n6　受け皿にのせ、粉糖をふるう。\\r\\n＊オーブンに予熱を入れておく。電気230度12分・ガス220度12分	9	5	2	2	5	2	oAy86aG5PUNvoysTcj8hTQ5O0AZmNAaPYpAEC7Ih.jpg	\N	0	1	0	0	0	2021-11-04 13:39:25	2022-02-10 05:19:21
276	1	おでん	おでんの具材表あり。\r\nセブンイレブンおでんのたれを濃いめに溶かして、具材が水面から出ないようにぐつぐつ煮込む。\r\n鍋止めで温度が下がるとともに具材に味が染み込むので、1日前から作ると良し！	57	61	0	1	38	4	6Yy1Qw85o8vOWshRaGT6h79u6tLXciezZYXYfrRF.jpg	8hzde4MrJK5nZZMSaLedbFtUTO06uyq5UICJL35X.jpg	0	1	1	1	0	2022-01-01 06:11:46	2022-02-08 13:17:36
289	1	なめこおろし	1.鍋にお湯を沸かし、なめこを加えて30秒ほどゆでます。\r\n2.ボウルに水気を切った1を入れ、めんつゆに加えて粗熱を取ります。\r\n3.大根は皮をむいてすりおろし、水気を切ります。\r\n4.大葉は軸を切り落とし、千切りにします。三つ葉でも大丈夫です。\r\n5.器に盛り付け、2をめんつゆごとかけ、4をのせて完成です。	52	61	0	1	38	0	MIYEoLjVQHa9LsNkDmkplaLTsdMALC3j5ZA4iNi7.jpg	\N	1	0	0	1	0	2022-01-25 04:18:59	2022-05-24 12:26:04
5	1	チキンカレー	1　鶏もも肉は皮を除き、余分な水気・脂肪を除き、2cm角くらいに切り、塩こしょうをしてなじませてから、マヨネーズで下味をつける。\\r\\n2　玉ねぎは根元を除き、繊維に逆らった薄切り。ほうれん草は根元の泥を流水の下でしっかり洗い流す。\\r\\n3　茹で湯にほうれん草を根元・葉の順に入れ3分程茹でる。冷水にとり水気を絞る。根元を除き、長さ2cmに切る。\\r\\n4　鍋に玉ねぎ・サラダ油小さじ1を入れて炒める。強火10分前後、焦げ注意。飴色になったら粗熱を取る。\\r\\n5　香り付け用を加えて熱し、弱火で香りを引き出す。鶏肉をマヨネーズごと加えて、焼き色をつけるように加熱する。\\r\\n6　調味料Aを加えて強火10分で煮詰める。調味料Bも加える。\\r\\n7　塩小さじ1/8・黒こしょう少々で味を整える。チキンカレーの全体の2/3量を器に盛り付ける。(チキンは全て盛り付ける)	9	1	0	8	1	\N	mFJy6bqB2uf2D8R2JgyPurtEkrijzsOpsVHbd5Sm.jpg	\N	0	0	0	0	0	2021-11-04 07:08:51	2021-12-29 07:42:24
18	1	マスタードチキングリル	1　鶏もも肉は余分な水分・脂肪を取り除き、厚みがあれば開き、塩こしょうで下味をつける。\\r\\n2　かぶは茎を1cm残して切ってよく洗い、皮付きのまま8等分に切る。ボウルにマスタードソース用を入れ混ぜる。マスタードソースです。\\r\\n3　フライパンにオリーブオイル小さじ1を入れ、鶏肉を皮面から入れる。空いてる所にかぶを加えて火をつけ、かぶを時々返しながら、鶏肉に焼き色がつくまで焼く。\\r\\n4　鶏肉に焼き色がついたら裏がえし、かぶに塩こしょう各少々をふる。\\r\\n5　天板にクッキングシートを敷いて、四隅をひねり、かぶ・鶏肉の皮面を上にして並べ、マスタードソースを塗る。\\r\\n6　オーブンで焼く。電気230度12分・ガス220度12分くらい。皿に鶏肉を盛り付けかぶを添える。	57	5	2	2	1	\N	6OsrOMemIKSg3I34d5VlH5ADCKBeAqB7W7Z6TjDr.jpg	fIkggw7F1aGgyouiGIT2drMsSUx5MsE0MtgSMlUy.jpg	0	1	0	0	0	2021-11-04 13:04:10	2021-12-29 07:43:24
12	1	まるごとマロンケーキ	1　チョコレートシロップはラップに計量・卵は室温に戻し、よく溶きほぐす。\\r\\n2　ボウルにバターを入れて混ぜ、砂糖大さじ4を加え、クリーム状になるまですり混ぜる。卵を3〜4回に分けて加え、その都度よく混ぜる。\\r\\n3　ラム酒を加え混ぜる。薄力粉をふるい入れ、切り混ぜる。紙型(マフィン型)に分け入れる。\\r\\n4　中央に栗の渋皮煮を埋め込む。空気抜きをして天板にのせる。\\r\\n5　オーブンで焼く。電気180度20分・ガス170度20分。竹串を刺し、焼けているかを確認し粗熱を取る。マロンケーキです。\\r\\n6　皿にチョコレートシロップで蜘蛛の巣などを描き、紙型を外したマロンケーキを盛り付け、ココアパウダーをふるう。\\r\\n\\r\\n＊バターは室温に戻す。栗の渋皮煮は汁気を除いておく。オーブンに予熱・電気180度20分・ガス170度20分	49	3	2	2	5	3	4wEBS7ex9vTgd37LHPAfhjtd1MizvEkiaE0BKbmi.jpg	\N	0	0	0	0	0	2021-11-04 10:02:33	2022-02-08 13:36:01
71	1	和風ジャーマンポテト	1　じゃが芋は皮をむき、厚さ2mmの半月切りにし、水に5分~さらし水気を切る。\\r\\n2　菜の花は根元を除き、長さを半分に切る。ベーコンは幅1cmに切る。\\r\\n3　フライパンにサラダ油小さじ1を熱し、じゃが芋・菜の花・ベーコンを入れ、ジャガイモが透き通ってくるくらいまで炒める。\\r\\n4　味付け用を加え、からめるように炒め、塩少々で味をととのえる。器に盛り付ける。	3	16	0	1	2	1	zSzPHvjASDnOV8JjRdx7qP557hPWGSycWtb9zG7T.jpg	\N	1	0	1	0	0	2021-11-06 15:51:29	2022-02-09 08:23:49
20	1	焼ききのこサラダ	1.しめじは石づきを除き、小房に分ける。まいたけは根元を除き小房に分ける。プチトマトはヘタを除いて洗い、縦4等分に切る。\r\n2.フライパンにオリーブオイル大さじ1を熱し、しめじ・まいたけを入れ、香ばしい焼き色をつけるように焼く。塩こうじを加えからめる。\r\n3.皿にグリーンリーフ・トレビスを盛り付け、きのこ・プチトマトをバランスよくのせる。ドレッシングをかける。\r\n＊1人分ドレッシング(キューピーごま油&ガーリックドレッシング)小さじ1/2。	52	5	0	1	2	3	Vx24l1139tGqRtWvtP05VLF7QCeZg40oWUoe3rUk.jpg	\N	1	0	1	0	0	2021-11-04 13:15:06	2022-02-09 08:28:44
28	1	海老のタルタルグリル	1　海老は立て塩・真水の順に洗い、ヒゲを切り、竹串で背ワタを除く。\\r\\n2　もう一度立て塩・真水の順に洗い、(足の部分を特によく洗う)、水気をよく除く。　\\r\\n3　腹を下にし、頭に近いところから、尾の方を1節残したところまで切り開き、余分な水気を除き、形をととのえる。\\r\\n4　クッキングシートを敷いた天板に海老を並べ、切り開いた部分にタルタルソースをのせる。\\r\\n5　オーブンで焼く。電気230度10分・ガス220度8分くらい\\r\\n6　皿に盛り付け、パセリをふる。\\r\\n\\r\\n＊ オーブン予熱必要;  電気230度10分・ガス220度8分くらい	45	7	2	1	42	\N	yKyIU4hbKntXWQ268rxWPCToGDyU5z32MN2aLIiz.jpg	\N	0	0	0	0	0	2021-11-04 23:01:00	2021-12-29 08:17:55
30	1	かまぼこのクリームチーズサンド	1　青じそは軸を除く。クリームチーズは4等分に切る。かまぼこ紅は下1cmくらいを残して、切り込みを入れる。\\r\\n2　かまぼこの切り込みに、青じそ・クリームチーズを挟む。ピンクペッパーを飾る。皿に盛り付ける。	45	7	0	1	1	\N	hPIkuZuIpx3qNGWodVMgXpJD1HLeICZl9v5iTl8C.jpg	\N	1	0	0	0	0	2021-11-04 23:10:52	2021-12-26 00:32:48
29	1	紅芯大根のゆずこしょう甘酢	1　紅芯大根は皮をむき、厚さ2mmのいちょう切り。ボウルに入れて塩小さじ1/8をふっておく。20分くらい。\\r\\n2　ボウルに調味酢・ゆずこしょうを入れて混ぜる(味付け用A)。水気をよくしぼった紅芯大根を加えて混ぜ、味をなじませる。\\r\\n3　紅芯大根の汁気を軽く切り、器に盛り付ける。	45	7	0	1	38	\N	Tf60EzAI85HJ6mbkySZLuhhOWYfkVQXuJhq9jBE2.jpg	\N	1	0	1	0	0	2021-11-04 23:06:21	2021-12-28 13:10:06
36	1	牛肉のステーキ~レモンバターじょうゆ仕立て~(1人分分量)	1　今回は1人分の材料です。牛ステーキ肉は筋を両面切り、余分な脂肪があれば除き、(焼くとき再利用)、30分室温に戻す。塩小さじ1/8・黒こしょう少々で味を付ける。\\r\\n2　バター8g（1人分）は室温に戻し、ラップで包み、円形にととのえ、冷蔵庫で冷やす。レモンは少々の塩でこすり洗して、輪切りを1枚取り残りは絞る。（1人分）\\r\\n3　ブロッコリーは小房に分け、ため水の中で振り洗いをし、茎は根本と固い部分を除き、乱切り。\\r\\n4　じゃが芋は皮を剥き、食べやすい大きさに切る。1人3切れ。耐熱容器に入れてラップをふんわりとかける。\\r\\n5　電子レンジで加熱。600w1人分で約1分30秒、2人分で2分30秒。取り出し調味料Aを加え混ぜる。\\r\\n6　フライパンにオリーブオイル小さじ1/2を熱し、ブロッコリーを入れて強火で焼く。焼き色がついたら水を入れてフタをし、1分くらい蒸し焼きにする。塩少々をふり取り出す。\\r\\n7　6のフライパンにオリーブオイル小さじ1/2・あれば牛脂を熱し、牛肉を表になる面から入れ焼く。強火2分~.\\r\\n　レア：盛りつける面2分〜→返して1分〜\\r\\n　ミディアム：盛り付ける面2分〜→返して2分〜\\r\\n　ウェルダン：盛り付ける面2分〜→返して3分〜\\r\\n8　牛肉を返し裏面も中火で1分くらい焼く。\\r\\n9　両面焼き色がつき、好みの火通りになったらアルミホイルで包み、温かいところで保温する。3分~\\r\\n10　カップにソース用Bを入れて混ぜる。ラップをせずに電子レンジで加熱。1人分600w30秒、4人分で1分45秒くらい。ソースです。\\r\\n11　10にステーキの肉汁を加え、混ぜる。皿にステーキ・ブロッコリー・ガーリックポテトを添える。\\r\\n12　ステーキの上に輪切りのレモン・バターをのせる。ソースをかける。	52	9	3	2	1	\N	Z3qrwOAHqDV4j3OvHHqxKfJUXrqFT9daomequGAy.jpg	PvhJ8RBbPdiNkXBIQHj6fu8bJVFthl4mzl3Ea2oV.jpg	1	1	0	0	0	2021-11-05 06:55:55	2021-12-29 07:43:59
31	1	関東風雑煮	1　鶏もも肉は余分な水分・脂肪を除き、酒小さじ1・塩小さじ1/8で下味をつける。10分位。\\r\\n2　人参は皮をむき、梅抜き型で抜く。(梅人参)。抜いた周り(かげ)も使用。みつ葉は根元を除き、長さ2cmに切る。\\r\\n3　鍋に調味料A・鶏肉・人参を入れて加熱する。アクを抜きながら火を通す。調味料Bで味をととのえる。\\r\\n4　椀に汁を少し入れ、人参のかげ・焼いた角もちを入れ、汁と共に鶏肉を均等に分け入れる。梅人参をのせ、みつ葉を添える。	45	7	0	1	40	4	88aMRq0ck0cZsT8Rr7zRCNScaOOhAWzh67rcYs4k.jpg	\N	1	0	0	0	0	2021-11-04 23:18:55	2022-02-08 13:59:43
48	1	トマトドレッシングのサラダ	1　グリーンリーフは食べやすい大きさにちぎり、水にさらし水を切る。トマトはヘタを除いて洗い、1cmの角切り。\\r\\n2　ボウルにトマト・砂糖・岩塩を入れ5分くらい置きマリネする。ドレッシング用材料Aも加え、混ぜる。\\r\\n3　皿にグリーンリーフを盛り付け、トマトドレッシングをかける。	3	11	0	2	2	0	lPY9JcoEj7jjilXxxYTlzUXbdX9IN8SjFTmyYslj.jpg	\N	1	0	0	0	0	2021-11-05 11:04:32	2022-02-09 08:14:17
33	1	マッシュルームと温泉卵のサラダ	1　グリーンリーフ・トレビスは食べやすい大きさにちぎり、水にさらし水気を切る。\\r\\n2　紅芯大根は皮を剥き、厚さ2mmのいちょう切りにし、水にさらし(10分くらい)水気を切る。マッシュルームは薄切り。\\r\\n3　皿にグリーリーフ・トレビス・紅芯大根を彩りよく盛り付け、マッシュルームを散らし、温泉卵を真ん中にのせる。ドレッシングAをかける。	3	8	0	2	2	0	hB7kLAsbywQYo7lzOPDbbigwWOKQIGb1AsXtixZS.jpg	\N	0	0	0	0	0	2021-11-05 06:15:07	2022-02-09 08:19:05
34	1	ヴィシソワーズ	1　じゃが芋はは皮をむき、芽があれば除き、厚さ7mmの半月切り、または、いちょう切りにして水にさらし、水気を切る。玉ねぎは根元を除き、\\r\\n　   繊維に逆らった2~3mmの薄切り。セロリは筋を除き、2~3mmの斜め薄切り。\\r\\n2　鍋にバター10gを入れて加熱し、半分くらい溶けたら、玉ねぎ・セロリを加えしんなりとするまで炒め、じゃが芋を加え全体に油がまわるように炒める。\\r\\n3　スープ素Aを加え、ひと煮立ちさせてアクを除き、じゃが芋が柔らかくなるまで加熱する。途中アクが出たらのぞく。\\r\\n4　火を止めて粗熱を取り、ローリエを取り出し、滑らかになるまでブレンダーにかける。ボウルに移す。\\r\\n5　水道水にあてて冷まし、盛り付ける。直前まで冷蔵庫で冷やす。\\r\\n6　冷蔵庫から出したての冷たい牛乳を加え、混ぜる。器に盛り付け、パセリをふる。	12	8	0	2	3	\N	l7mlyw08uQhzf2fskAIXeRf1FTcOnFUxEw9JQvdI.jpg	\N	0	0	0	0	0	2021-11-05 06:27:20	2022-01-23 10:32:44
37	1	クラムチャウダー(1人分)	1　あさりは塩水(水250ccに塩小さじ1/2)につけてアルミホイルなどでフタをして冷暗所に置き、砂出しをする。流水の下でこすり洗いし、殻の汚れを落とし水気を切る。\\r\\n2　ベーコンは幅1cmに切る。カップにあさりと切ったベーコン・スープ素A全てを加え混ぜる。\\r\\n3　ラップをふんわりとかけ、あさりの口が開くまで電子レンジで加熱。600w1分~。\\r\\n4　ラップをはずす。	52	9	3	2	3	\N	so4mZ02fAczz080bHbYfNOeQWoGXTox5kJc0tMRn.jpg	\N	1	0	0	0	0	2021-11-05 07:04:03	2021-12-28 14:48:31
39	1	グリーンサラダ	1　グリーンリーフは食べやすい大きさにちぎり、水にさらし水気を切る。セロリは筋を除き斜め薄切り。\\r\\n2　皿にグリーンリーフ・セロリを盛り付ける。ドレッシングをかける。	52	9	0	2	2	\N	6uhwZPXEaoE7NrBVCb59OzBGfKIaQaI6oe9FLthe.jpg	\N	1	0	1	0	0	2021-11-05 07:08:58	2021-12-29 06:28:32
43	1	圧力調理バッグで時短チャーシュー	1　豚バラ塊肉は長さを半分に切る。脂肪の部分が外側に来るように、弓形に丸めてたこ糸で形をととのえながら、しばる。竹串で数カ所穴を開ける。\\r\\n2　それぞれの調理バッグに万能だれ小さじ4を入れ、豚肉を加えてよくもみ込み、下味をつける。10分くらい。\\r\\n3　白ねぎは長さ5cm位に切り、周りの白い部分を千切りにし、水にさらしておく、白髪ねぎです。芯の部分はみじん切り・加熱後たれに使用。\\r\\n4　調理バッグを耐熱皿にのせる。それぞれ電子レンジで加熱。600w6分~。加熱が終わったらそのまま庫内で蒸らす。\\r\\n5　開封し皿に取り出し、タレが熱いうちに白ねぎ(みじん切り)を加えて混ぜ、そのまま粗熱を取る。\\r\\n6　たこ糸を外し、丸い形を生かして薄切りにする。さらに盛り付け、白髪ねぎをこんもりと盛り、お好みでラー油をかける。\\r\\n\\r\\n＊ 調理バッグ1枚で2人分を加熱する。	9	10	1	1	1	\N	6PJDykqVGCzMRwgjhfagNYNM8jStNmaJ8L96SHnQ.jpg	3MZeyWNhoQGNPdQOULvI01nrzuRD10gc7XPEvO9e.jpg	0	0	0	0	0	2021-11-05 10:15:15	2021-12-29 07:44:19
278	1	わかめごはん	1.わかめ（乾燥）はミルミキサーに入れ、粗めにかける（15秒〜）\r\n2.ボウルに温かいごはん、わかめ、白いりごま、和風だしの素を入れ、切り混ぜる。\r\n3.ラップをかけ、蒸らす（5分〜）。器に盛り付ける。	53	99	0	1	41	\N	\N	\N	1	1	1	0	0	2022-01-01 16:19:12	2022-01-01 16:19:12
99	1	韓国風ザクザクチキン&ヤンニョムチキン	1.ボウルに鶏手羽元用練り粉A・鶏もも肉用練り粉Bをそれぞれ混ぜ合わせる。\\r\\n2　鶏手羽元は余分な水分を除き、骨に沿って切り込みを2本入れ、塩を小さじ1/4をもみこむ。鶏もも肉は余分な水分・脂肪を取り除き厚みを均一に開き、食べやすい大きさに切る。8切れ。\\r\\n3　ビニール袋に下味用Cを入れよく混ぜる。鶏手羽元・鶏もも肉を加えてよくもみ込み、なじませる。\\r\\n4　フライパンにヤンニョムだれDを入れ、軽く煮詰める。筋が残るくらい。\\r\\n5　鶏手羽元の汁気を軽く除き、Aをつけ、160度の油で7分位揚げる。バットに取り出し5分くらい休ませる。\\r\\n6　鶏もも肉の汁気を軽く除き、Bをつけ160度の油で4分位揚げる。バットに取り出し5分くらい休ませる。\\r\\n7　5・6を180度の油で色良く揚げる。20秒くらい。バットに取り出し油を切る。\\r\\n8　鶏もも肉をヤンニョムだれに加えからめる。\\r\\n9　皿にヤンニョムチキン・ザクザクチキンを盛り付ける。ヤンニョムチキンに白炒りごま(4人で小さじ1/2)をふる。	54	23	0	3	1	\N	yPoX7N4GgY2GhtHYlg6lC4JZ3ei3V792ESlwT6l2.jpg	\N	0	0	0	0	0	2021-11-08 07:41:47	2021-12-29 07:58:06
44	1	ザーサイとカブの豆乳みそ汁	1　カブは茎の付け根から切り、皮をむき、厚さ5mmのいちょう切り。茎と葉は長さ3cmにきる。\\r\\n2　鍋にザーサイ・かぶ・水300ccを入れてひと煮させる。かぶの茎・葉を加えて加熱する。\\r\\n3　火が通ったら調製豆乳240ccを入れて温め、みそ顆粒を加え、ひと混ぜし火を止める。椀に注ぎ入れる。	53	10	0	1	40	4	2oPm6TQOJuBDSnvdZTaGOJrbDnkvxGfHWBeWnaMH.jpg	\N	1	0	1	1	0	2021-11-05 10:20:12	2022-02-08 13:58:05
54	1	チーズタッカルビ	1　鶏もも肉は余分な水気・脂肪を除き、1人4切れに切る。玉ねぎは根元を除き、幅1cmのくし形切り。\\r\\n2　ビニール袋に合わせ調味料Aを入れて混ぜ、鶏肉を加えてもみ込み、下味をつける。10分~\\r\\n3　フライパンにごま油(濃口)小さじ1を熱し、玉ねぎを入れて透き通るまで中火~強火で炒める。\\r\\n4　玉ねぎを端に寄せ、汁気を切った鶏肉を皮面を下にして加え焼き色がつくように加熱し、火を通す。ビニール袋の残った合わせ調味料Aを加え、煮からめる。\\r\\n5　火を止めピザ用チーズ60gをのせ、フタをして予熱で溶かす。\\r\\n6　フタを取り、全体をざっくりと混ぜ、お好みでコチュジャンを加えて混ぜる、さらに盛り付ける。	54	13	0	3	1	\N	O4qh2miIUG6pDsUvz351FpxgPEu1Y5okoi9xYbfE.jpg	X4KyRWUWeA4vpcDu2zlIKkonFsrOAn0IMcfTkxep.jpg	0	0	0	0	0	2021-11-06 05:20:47	2021-12-29 07:44:32
55	1	5種ナムルのビビンバ	1　春菊は茎から葉を外し(上の方の柔らかい部分は茎も使用すると良い)、長さを半分にちぎり、水にさらし水気を切る。\\r\\n2　わかめ乾燥は鶏がらスープの素を加えた水Aで戻し(5分くらい)、水気を切る。たくわんは千切り。\\r\\n3　セロリは筋を除き、斜め薄切り。さきいかは太ければさく。紫キャベツは葉は丸めて千切り、芯は薄切りにしてから千切りにし、塩小さじ1/8を加えて混ぜる。10分くらい。\\r\\n4　①ボウルに春菊・鶏ガラスープの素小さじ1/4を入れてなじませ、ごま油(濃口)小さじ1を加え和える。\\r\\n5　②ボウルにわかめ・ごま油小さじ1を入れ和える。\\r\\n6　③ボウルにたくわん・白炒りごま小さじ1・ごま油小さじ1を入れ和える。\\r\\n7　④ボウルにセロリ・さきいか・調味酢小さじ2をいれ和える。10分~。\\r\\n8　⑤ボウルに水気を絞った紫キャベツ・調味酢小さじ2を入れ和える。10分~。\\r\\n9　皿にご飯を盛り付け、5種ナムルをバランスよく盛り付ける。温泉卵をのせコチュジャンを添える。	54	13	0	3	41	\N	DEVeSbpL51ZqaQNbhezbSTBu2u3mJdCMIroMGy4e.jpg	\N	0	0	0	0	0	2021-11-06 05:32:11	2021-12-29 07:13:48
53	1	チョコバナナパフェ	1　バナナは皮付きのまま長さ5cmくらいの斜め切り、1人2切れ。いちごはヘタを除いて洗い、縦半分に切る。\\r\\n2　カステラは4 等分に切る。チョコレートクリームの材料を合わせて、8分立てにする。チョコレートクリームです。\\r\\n3　チョコレートシロップ小さじ2*はラップに計量。ミントの葉は洗い水気を除いておく。\\r\\n4　グラスにコーンフレークを入れ、カステラをちぎりながら加える。\\r\\n5　チョコレートクリームをのせ、皮を剥いたバナナ・イチゴを飾る。\\r\\n6　チョコレートシロップ(1人小さじ1/2)*をかけ、ミントの葉を飾る。	54	12	0	2	5	\N	hnif6dxaG4WWOUxkegUmvpHk0ONW3wNOVLirPjXW.jpg	\N	0	0	0	0	0	2021-11-06 02:33:49	2021-12-28 15:18:02
69	1	レンジで作る洋風つくね	1　ビニール袋に合い挽き肉・塩小さじ1/4黒こしょう少々・玉ねぎ・パン粉小さじ8・水小さじ8を入れ、粘りが出るまでよくこねる。12等分にする。\\r\\n2　調味液Aを合わせた耐熱ボールにペーパーを浸し、手に水をつけて4を丸めながら加え、ペーパーを被せ、調味液を上からかけてまんべんなく湿らせる。電子レンジで加熱。600W6分くらい。＊ 耐熱用ボウル1つで2人分を加熱。\\r\\n3　取り出してペーパーを軽く絞って取り除き、からめて冷ます。器にグリーンリーフ(洗った後水気をしっかりと除いておく)を敷きつくねを盛り付ける。	54	16	3	1	1	\N	g2Bh25yz4N7pv3LLxVVd7E9u4osn7SHgWFxlHsQV.jpg	rAa2823zP5Lu69WzDcsLLi2HooJUx2rO1xL0okd6.jpg	0	0	0	0	0	2021-11-06 15:38:56	2021-12-29 07:56:10
52	1	スモークサーモンのサラダ	1　スモークサーモンは1人4切れくらいに切る。グリーンリーフ・トレビスは食べやすい大きさにちぎり、水にさらし水気を切る。セロリは筋を除き、斜め薄切り。\\r\\n2　皿にグリーンリーフ・トレビス・セロリを盛り付け、スモークサーモンをのせる。ドレッシングをかける。\\r\\n  \\r\\n＊ ドレッシング;  キューピーレモンドレッシングは1人小さじ1。	3	12	0	2	2	0	X6tHRi6jRWvo57rpR4ZntWVWv3yREYrzlZ8VoBrq.jpg	\N	1	0	0	0	0	2021-11-06 02:27:15	2022-07-04 02:08:12
51	1	オニオングラタンスープ	1　玉ねぎは根元を除き、繊維に逆らった薄切り。鍋にオリーブオイル小さじ1を熱し、玉ねぎ・塩小さじ1/8を入れ、飴色になるまで炒める。中火~強火10分。\\r\\n2　水・コンソメ(スープ素A)を加え、5分加熱。塩・黒こしょう少々で味をととのえる。\\r\\n3　クッキングシートを敷いた天板にバゲットをのせ、ピザ用チーズをのせる。オーブンで焼く。電気230度5分。ガス220度5分~。\\r\\n4　器にオニオンスープを盛り付け、3のチーズバゲットをのせる。黒こしょう少々を振る。\\r\\n\\r\\n＊ オーブン予熱必要	12	12	2	2	3	4	lv6MLLzPuIiXXlAlPidyXe6J32zrS3a3ilxvvqEv.jpg	XlotCq1tWlKtQeGxYO3hObd62tmstkSQwMKeU2B3.jpg	1	0	0	0	0	2021-11-06 02:23:01	2022-02-08 14:02:45
62	1	珈琲プリン	1　インスタントコーヒーは①②それぞれ作る。ボウルに卵を割り入れ、よくときほぐす。\\r\\n2　別のボウルに生地Aを入れよく混ぜ溶かし、①のコーヒー液を入れる。卵液を加えて混ぜ、ぬらした茶漉しでこして器に注ぐ。\\r\\n3　鍋に湯を張り、沸騰させ、火を止め、ザルを入れ、2を並べてフタをし、強火で2~3分加熱し、弱火または保温する。10分~。竹串を刺し液体が出てこなければ、粗熱を取り冷蔵庫で冷やす。\\r\\n4　鍋に砂糖大さじ2を入れ、水小さじ1を加え、全体をよく湿らせてから火にかける。中火~強火。全体がカラメル色になるまで加熱。この時木べら等で混ぜない。\\r\\n5　濃いカラメル色になったら火を止め、②のコーヒー液を加える。手早く鍋をゆすり、再び弱火にかけカラメルを均一に溶かす。器に入れて粗熱を取り、冷蔵庫で冷やす。\\r\\n6　生クリームは盛り付け直前に、8分立てにする。珈琲プリンにのせ、5をかける。	54	14	5	2	5	\N	HtEFoxQW4sWUGrqFFXR5DdUJz9ZoSg8Sgm5mhDpo.jpg	gjlZce5Tt6FrA95breBgqsbotZ7SDHOq6BpYnYgp.jpg	0	0	0	0	0	2021-11-06 06:50:34	2021-12-28 15:18:54
56	1	卵と海苔のスープ	1　卵はよくときほぐす。鍋に水480~520cc・鶏ガラスープの素小さじ2を入れひと煮立ちさせる。\\r\\n2　卵を流し入れてひと混ぜし、塩小さじ1/8・白こしょう少々で味をととのえる。\\r\\n3　火を止め、ごま油濃口小さじ1/2を入れてひと混ぜする。器に分入れ、きざみ海苔を加え、白炒りごまをふる。\\r\\n      1人分がきざみ海苔1g・白炒りごま小さじ1/4。	52	13	0	3	3	\N	BSYwSIzQZykVnWjWtgcnZKjc6JZCvQc0CwdXm0CT.jpg	\N	1	0	0	0	0	2021-11-06 05:38:56	2021-12-28 14:49:56
58	1	フォアグラハンバーグステーキ	1　玉ねぎは細かいみじん切り、パン粉は牛乳大さじ4を加え、湿らせる。卵はよくときほぐす。\\r\\n2　じゃが芋は皮をむき、芽を除き、厚さ5mmの半月またはいちょう切り。水にさらす。5分~。水気を切ってかぶるくらいの水を加えて火にかけ、竹串がスッと通るくらいの柔らかさになったら、湯を切って塩小さじ1/4を加え\\r\\n　  再び火にかけて鍋をゆすり、粉をふかす。\\r\\n3　火を止め熱いうちにゴムベラやすりこ木でつぶし、牛乳40ccを加え、切り混ぜる。再び加熱し、焦さないように混ぜながら、ひと煮立ちさせる。火をとめてトリュフオイル小さじ1を加えて混ぜる。\\r\\n4　ボウルに合い挽き肉・黒こしょう少々・マスタード小さじ2を入れ、粘りが出るまでよくこねる。玉ねぎ・湿らせたパン粉A・卵1個を加え、さらに均一になるまでこね4等分にする。\\r\\n5　手に水をなじませ、4を空気抜きしながら小判型に整え、中央を少し窪ませる。フライパンにサラダ油小さじ1を熱し、両面に焼き色をつける。\\r\\n6　余分な脂を除き、火を止めマデラ酒40ccを加えて再度加熱しアルコール分を飛ばし、フタをして蒸し焼きにする。中火2分~.\\r\\n7　ハンバーグソースBを加え、2/3量位になるまで煮詰める。強火2分~。皿にハンバーグを取り出しソースに水溶き片栗粉Cを様子を見ながら加えて加熱し、とろみをつける。\\r\\n8　フォアグラの両面に岩塩・黒こしょう各少々をし、加熱直前に薄力粉をまぶす。余分な粉は叩いて落とす。フライパンにサラダ油小さじ1/2を熱し、中火~強火で焼く。焼き色がついたら火を少し弱め、裏面も焼く。\\r\\n9　ペーパーを敷いたバットに取り出す。ハンバーグにソースをかけ、フォアグラをのせ、マッシュポテトを添える。ピンクペッパー(1人2粒)・セルフィーユを飾る。	57	14	0	2	1	0	O304toLudItxV9i1oc06Iq57iBULX25OH2iVFG8l.jpg	\N	0	1	1	0	0	2021-11-06 06:24:01	2022-02-08 13:01:28
124	1	焼き小籠包	1　ボウルに生地A(水は様子を見ながら少しずつ)を入れ大きく混ぜる。そぼろ状になってきたらボウルの中でまとまるまで軽くこねる。\\r\\n2　台に出してこねる。2分〜。なめらかになったらきじを丸めてラップで包み、室温で生地を休ませる。20分〜。\\r\\n3　ボウルに豚挽肉、調味料B(水は後で少しずつ)を入れ粘りが出るまで混ぜる。\\r\\n4　水40ccを少しずつ加えて均一になるまで混ぜる。ラップをかけ冷蔵庫で冷やす。\\r\\n5　生地を直径2cmくらいの棒状にして、12等分にし、切り口を上にして打ち粉(強力粉小さじ2〜)をまぶしながら手のひらで押さえ丸く広げる。\\r\\n6　綿棒を使って直径10cm位の円形に伸ばす。中央を少し厚く、周りを薄くする。打ち粉をしてラップをかける。\\r\\n7　皮を台の上にのせ、皮の中央にたねをのせ、生地の一箇所をたねにかぶせて上をつまむ。親指を外さずに、人差し指で外の生地をたぐり寄せ\\r\\n　 親指の生地につけてつまむ。\\r\\n8　これを繰り返して1周する。中央に穴が開かないように閉じる。フライパンにサラダ油を熱し、小籠包を並べて皮に香ばしい焼き色をつける。\\r\\n9　水を加えてフタをし、水分がなくなるまで蒸し焼きにする。3分〜。皿に盛り付け別皿に合わせた酢小さじ1・きざみしょうが小さじ1/2(1人分)を添える。	9	29	0	3	1	0	xH5DTppRIBnjkcngVCXACzqPr4WN4LJzGkjpVnq5.jpg	8qkwjVYXVQ3luCIr4mmxtnBRcG2CtKXvQ5p3ixsn.jpg	0	1	1	0	0	2021-11-09 13:02:47	2022-02-08 13:07:36
61	1	グリーンサラダ	1　グリーンリーフ・トレビスは一口大にちぎり、水にさらし水気を切る。きゅうりはピーラーで薄切りにし、巻く。残りは千切り。\\r\\n2　人参は皮をむき、ピーラーで薄切りにし巻く。残りは千切り。キウイフルーツは皮をむき、半月切り。\\r\\n3　皿に千切りにしたきゅうり・人参・グリーンリーフ・トレビスを盛り付ける。きゅうり・人参・キウイフルーツを飾り、ドレッシング(1人小さじ2)をかける。\\r\\n\\r\\n＊ ドレッシング;  キューピーコブサラダドレッシング	3	14	0	2	2	0	LjnLNUi3nrMNxk9cxsvTxxZlugphX9FGG2diEKg5.jpg	8PR5IPTQRmINPZ5DF1lgHwtrc96gt24zDq3pZ2lS.jpg	0	0	0	0	0	2021-11-06 06:39:35	2022-02-09 07:40:17
76	1	菜の花とアボカドのエッグサラダ	1　菜の花は根元を除き、長さを半分に切る。熱湯600ccに塩小さじ1/8より少々でさっと茹で、ザルにあげて冷まし、粗熱を取って水気を絞る。\\r\\n2　上記1に酢小さじ1・残りの塩を加え、冷蔵庫から出したての卵を静かに入れる。最初の2~3分は混ぜながら中火で、6分加熱する。水にとり、冷めたら水につけながら殻を剥く。\\r\\n3　味付け用Aの入ったボウルに菜の花・キャベツを加えてざっくり混ぜる。アボガドは果肉をくり抜いて加え、混ぜる。\\r\\n4　皿にこんもりと盛り付け、半熟ゆで卵半分に割り、盛り付ける。	3	17	0	2	2	\N	QB7T79rzrHf9hZeqjea0rjHG7VQ0XltCU4D2BNqI.jpg	\N	0	0	0	0	0	2021-11-06 17:22:20	2021-12-07 13:38:49
70	1	海老と青じその春巻き	1　海老は殻付のままで塩・真水で洗う。背ワタを除き、尾と第一関節を残して、殻をむき、立て塩A・真水で洗い、水気を除く。春巻きの皮は斜め半分に切る。\\r\\n2　青紫蘇は軸を除く。春巻きの皮の中央に青じそ・海老を尾をだして置き、きざみしょうがをのせる。周囲にのりをぬり、巻く。巻き終わりを下にして置く。\\r\\n3　フライパンにサラダ油小さじ4を熱し、春巻きの閉じ目を下にして入れ、転がしながら全体に香ばしい焼き色がつき、火が通るまで揚げ焼きにする。ペーパーを敷いたバットに取り出す。器に盛り付ける。	51	16	0	1	1	0	TKMafQM3kIcfMZPHYmiEYW7qDFHHKwEkCRQBIUes.jpg	XgjWIefKyePu6bjFTSExe5RM08dR8kHnoohIr0Je.jpg	1	1	1	0	0	2021-11-06 15:46:54	2022-02-08 13:07:07
72	1	切り干し大根のゆかり甘酢	1　調味酢小さじ4・ゆかり小さじ1は混ぜ合わせる。ゆかり甘酢です。切り干し大根30gはさっと水で洗い、水に10分~漬ける。\\r\\n2　水気を絞り、耐熱皿に広げ、ラップをかけずに電子レンジで加熱する。600W2分くらい。\\r\\n3　温かいうちにゆかり甘酢に加え、5分くらい漬ける。器に汁気を切って盛り付ける。	52	16	3	1	38	1	5INGyhOuRaCzWHtQyVRbenm33xNeDuOqtQHfqdCk.jpg	\N	1	0	1	0	0	2021-11-06 15:56:27	2022-02-08 13:21:00
73	1	卵焼き	1　ボウルに卵を割りほぐし、水小さじ2・砂糖小さじ2・塩少々を加え、よく混ぜる。フライパンにサラダ油小さじ1/2を熱し、卵液を流し入れ、半熟状になるまで大きく混ぜる。両端を折りたたんで長さ10cmにし巻く。\\r\\n2　ラップに取り出し形をととのえ、冷ます。4等分に切る。器に盛り付ける。	53	16	0	1	38	0	wDDts1qbU8I8gDeBCKmkCLn7lJ9dlQ14S2H1FdFw.jpg	\N	1	1	1	0	0	2021-11-06 15:59:22	2022-02-08 13:21:15
68	1	桜ごはん	1　焼き海苔は長さを活かして半分に切る。桜の花の塩漬けは、塩を水でさっと洗い、水気を除く。\\r\\n2　鍋にご飯用材料Aと桜の花の塩漬け4個を入れ、フタをし加熱。強火で。沸騰したら弱火にして10分炊き、10分蒸らす。ラップの上に焼き海苔を置き、桜ごはんを1/4量のせ、左右はギリギリまで奥は1cm空けておく。\\r\\n3　焼き海苔の端を持って、半分に折りたたみ、、ラップの上からしずく型に整える。ラップを外し5等分に切る。器に花びらの形に盛り付け、桜の花の塩漬けを飾る。	51	16	0	1	41	1	tnpt4l5AFZznwJsbvtLlozyWwmU0pLTOmC4jfAj8.jpg	SKljDy47vMgiUTgbBkHd9AJBN4rrGX2KSvFF4BrK.jpg	0	0	1	0	0	2021-11-06 15:28:08	2022-02-08 13:50:43
123	1	マンゴーミルク	1　器にマンゴーを盛り付け、コンデンスミルクをかける。\\r\\n2 　ミントの葉を飾る。	52	28	0	4	5	2	vSYKBf7xFFRuqYbclLFnkmsTHSdOR14s5FuQrxTu.jpg	\N	1	1	1	0	0	2021-11-09 12:50:17	2022-02-10 05:13:21
67	1	抹茶豆乳ババロア	1　粉ゼラチンは、使う直前に湯(50~60度)40ccに振り入れとかす。\\r\\n2　生クリームは6分立てにする(ホイップクリーム)。ボウルにホイップクリーム用Aを入れて混ぜる。\\r\\n3　調製豆乳160ccを少しずつ加えて混ぜ、溶かしたゼラチンを加えて混ぜる。\\r\\n4　ホイップクリームを2~3回に分けて加え、切り混ぜる。\\r\\n5　器に分入れ、冷蔵庫で冷やし固める。\\r\\n6　抹茶豆乳ババロアに生クリームをかけ、茹で小豆をのせる。\\r\\n      生クリームは1人分が小さじ1。茹で小豆は4人で60g。	12	15	0	1	5	1	gkb7RM6QIJmIjg0jFB9Bhp4fxzSTIzxurUa7MmG0.jpg	\N	0	0	0	0	0	2021-11-06 10:39:50	2022-02-10 05:18:07
74	1	桜餅	1　色素を少量の水で溶く。黒こしあんは4等分にして丸める。\\r\\n2　白玉粉に分量の水70ccの半量を加え、ときのばす。薄力粉40gをふるい入れ、砂糖小さじ4・残りの水を加えよく混ぜる。\\r\\n3　溶いた色素を様子を見ながら加え、薄いピンク色に着色し、カップに2等分にする。\\r\\n4　フライパンにサラダ油小さじ1/2を熱し、2の生地を流し入れ、フライパンを傾けながら直径16cmくらいに伸ばす。表面が乾いたら裏返し、さっと焼く(2枚)。\\r\\n5　生地を半分にきって、黒こしあんをのせ、円錐状に巻く。\\r\\n6　クッキングシートで包み、器に盛り付ける。	51	16	0	1	5	1	6wSSab231tOpT6MKX8uogLN0KpabAWutSxhJeamv.jpg	B4LLLKLDcFy58HwMQLfLQOvulRHHYAZ5HOxv8Swp.jpg	0	1	1	0	0	2021-11-06 16:07:36	2022-02-10 05:18:37
182	1	ビーフカツサンド	1　牛肩ロースは使う10分前くらいに室温に出し、余分な水分を除き、1人1切れにして筋を切り、包丁の背でたたいて形を整える。\\r\\n2　塩小さじ1/2・ココアバター小さじ1で下味をつける。薄力粉大さじ4に水大さじ4前後を加え混ぜる(練り粉)。\\r\\n3　食パンはみみの部分を切り、6枚分はチョッパーに入れ、粗く刻む。残りの2枚分はグリーンサラダに使用。\\r\\n4　牛肉に練り粉、パン粉(食パンより6枚分)の順に衣をつける(5分以上置いておく)。\\r\\n5　180度くらいの油であげる。(2分以上・ミディアムレアに仕上げるため、高温で一気に表面を上げる)。バットに取り出し、油を切る。(余熱で火を通す、2分以上)。\\r\\n6　天板に食パンを並べ、オーブンで焼く。(電気で230度12分〜/ガス210度12分)。\\r\\n7　焼き色が綺麗についた面を外側にし、内側にマスタードを塗る。(8枚全て)。\\r\\n8　ビーフカツの片面のみにウスターソースをしっかりとつけ、汁気を切り、7にのせ、もう1枚でサンドする。\\r\\n9　ビーフカツのはみ出た部分を切る。3等分に切り、切り口を上にして盛り付ける。	54	54	2	2	1	\N	Xj7UUcd2pdwdTO3JJ9ASyRmWZeu86p5t0q0UGApO.jpg	vYNQLP2YxeOyzHwjERIq6u1Aow2QOxLjFXLMWFrH.jpg	0	0	0	0	0	2021-12-08 13:46:21	2021-12-29 08:04:39
78	1	オレンジのパンナコッタ	1　オレンジは塩少々でこすり洗いをし、皮の上下を切り落とし、皮を除く。(白い部分と薄皮も。)\\r\\n2　薄皮と果肉の間に包丁を入れ、果肉を外し、薄皮の果汁を絞る。果肉は砂糖小さじ2を加えマリネする。\\r\\n3　鍋に生地Aを入れひと混ぜし、ひと煮立ちさせる。沸騰したら弱火にし、1分前後煮詰める。\\r\\n4　オレンジの皮以外をボウルに移し、粗熱を取り、粉ゼラチン小さじ2を加えてとかす。\\r\\n5　器に分入れ、冷蔵庫で冷やし固める。\\r\\n6　パンナコッタに2をのせ、ミントの葉を飾る。	54	17	0	2	5	\N	2C3fVK20zw00yA6ozE3wYu5l27tTrYYHhapvzDAH.jpg	\N	0	0	0	0	0	2021-11-06 17:39:30	2021-12-28 15:25:58
85	1	杏仁プリン	1　粉ゼラチン小さじ2は使う直前に湯40cc(50~60度)に振り入れ溶かす。(ゼラチン液)。シロップAもクコの実12粒を加え作る。\\r\\n2　牛乳に砂糖を加え、混ぜ溶かす。\\r\\n3　ゼラチン液を加えて混ぜる。\\r\\n4　生クリーム40g・アーモンドエッセンスを加えて混ぜる。\\r\\n5　器に分入れ、冷蔵庫で冷やし固める。\\r\\n杏仁プリンにシロップAをかけ、クコの実を飾る。\\r\\n\\r\\n＊. 牛乳は使用する10分前に室温に戻しておく。	57	19	0	3	5	\N	ylRJfo9WTkSFpQ0aV21J6jP6YilUJZIqOXW3zzZI.jpg	\N	1	1	1	0	0	2021-11-07 16:15:58	2021-12-28 15:29:07
89	1	ストロベリースパークリング	1　粉ゼラチンは使う直前に湯(50~60度)20ccに振り入れ、溶かしておく(ゼラチン液)。\\r\\n2　いちごはヘタを除いて洗い、白い部分を切り、縦4等分に切る。\\r\\n3　ボウルにいちごジャム40g・ストロベリーリキュール小さじ2を入れて混ぜる。\\r\\n4　ゼラチン液を加えて混ぜる。\\r\\n5　冷蔵庫で冷やし固める。\\r\\n6　グラスに崩した5・いちごを分入れ、サイダー1人100ccを注ぐ。\\r\\n\\r\\n＊  サイダーは使う直前まで冷やしておく。	54	20	0	2	5	\N	MiNvJzuKkxzpTK1TQVnGFaITN0tuHhurtWpgmq5X.jpg	\N	0	0	0	0	0	2021-11-08 02:21:28	2021-12-28 15:32:05
84	1	黄金チャーハン	1　ボウルに卵2個を割りほぐし、卵用Aを加えて混ぜ、ご飯を加えて切り混ぜる。\\r\\n2　フライパンにサラダ油小さじ2を熱し、1を加える。強火でパラパラになるまで炒める。塩少々を加えて切り混ぜる。\\r\\n3　フライパンの中央を開け、醤油小さじ1/2を加え全体をさっと炒める。皿に盛り付ける。\\r\\n\\r\\n＊  2人分ずつ作る。表示は2人分。	52	19	0	3	41	0	QMymsSRHrmuBV6g8GXhavfbvo54CjpgXmUuJwYmW.jpg	whPHMVA17b2PqE2afFY2SDjm5L6ljdsFrzgrhlWP.jpg	1	1	1	0	0	2021-11-07 16:07:55	2022-02-08 13:51:57
81	1	いちごのスノーボールクッキー	1　ボウルに粉糖小さじ2・いちごパウダーを混ぜ合わせる。いちごシュガーAです。ビニール袋にバターを入れ、クリーム状になるようにもむ。\\r\\n2　粉糖を加え、さらにもんで混ぜる。薄力粉小さじ10・アーモンドパウダー大さじ1をふるいながら加える。\\r\\n3　ビニール袋に空気を入れて振り、バター全体に粉類をまぶしながらもんで混ぜる。\\r\\n4　全体がしっとりとまとまってきたら、生地を集めて5等分にし、丸める。クッキングシートを敷いた天板に並べる。\\r\\n5　オーブンで焼く。電気170度12分・ガス160度12分。焼き上がったクッキーの粗熱をとる。\\r\\n6　ほんのり暖かいうちに、1のいちごシュガーをまぶす。器に盛り付ける。\\r\\n\\r\\n＊. 表示材料は1人分。オーブン予熱必要。	9	18	2	2	5	4	HRUivSMLsnVogT4EX5FnfS2gaVK8KuzYDxhE8Pml.jpg	lE9E793Xdh7iLs0tlW1S95vIeSyhYKpjZDWQE1QY.jpg	0	1	0	0	0	2021-11-07 14:51:04	2022-02-10 04:19:03
86	1	肉バルのラクレットプレート~豚肉のハニーロースト&ミートボール~	1　ベーコンはみじん切り。玉ねぎはみじん切り。ウインナー4本は熱湯に入れて火を止めフタをして温める・3分~。\\r\\n2　豚肩ロース塊肉は、使用10分前に室温に戻し、竹串で穴を開ける。塩小さじ1/2・黒こしょう少々をすり込む。10分~。マリネ用Aを入れ、豚肉を加えて10分~マリネする。\\r\\n3　フライパンにオリーブオイル小さじ1/2を熱し、マリネした豚肉の表面を色良く焼く。(1面につき中火~強火1分~)。アルミホイルを敷いた天板にのせ、オーブンで焼く。\\r\\n4　豚肉に竹串を刺し、透明な液体がでれば焼き上がり。そのままアルミホイルに包み、豚肉を5分~保温する。\\r\\n5　ボウルに合い挽き肉・ベーコン・塩小さじ1/4・黒こしょう少々を入れ、粘りが出るまでよくこねる。牛乳で湿らせたパン粉・玉ねぎを加えてこねる。\\r\\n6　4等分にする。一塊をさらに3等分にして丸め、フライパンに入れてから加熱し始め、転がしながら全体に焼き色をつける。\\r\\n7　余分な脂を除き、水40cc・コンソメ小さじ1/2を加えフタをし、中まで火を通す。中火3分~。\\r\\n8　フタを外し、ソース用味付けBを加え煮詰める。中火5分~。味見をし塩少々・黒こしょう少々で味をととのえる。4を切り分け、ミートボール・ウインナーとともに彩りよく盛り付ける。\\r\\n9　アルミホイルに残った肉汁はボウルに移し、上澄の脂を除き、ソースとしてかける。フライパンにラクレットチーズを入れ、中火で加熱して溶かし、ミートボールにかける。\\r\\n＊  パン粉は牛乳を加え湿らせておく。オーブン予熱必要。	54	20	2	9	1	\N	wSZJiw610hrDrftbvn5w7ldSP2Z18XFrsUKk8koP.jpg	\N	0	0	0	0	0	2021-11-07 16:35:13	2021-12-29 07:57:29
188	1	ガーリックポークステーキ	1　豚肩ロース肉は繊維の多い部分は切り込みを入れ、両面筋を切り、塩小さじ1/8・黒こしょう少々で下味をつける。にんにくは皮を除き、繊維に逆らった薄切りにし、芯を除く。\\r\\n2　フライパンにニンニク・オリーブオイル小さじ2を入れ、過熱する(中~強火1分~)。表面がきつね色になり、カリッとしてきたらペーパーを敷いたバットに取り出す(ガーリックチップス)。\\r\\n3　豚肉に薄力粉小さじ4をまぶし、盛り付ける面から入れて焼き(中火5分~)、焼き色がついたら裏返し、火が通るまで焼く(弱火)。\\r\\n4　火を止め、フライパンの余分な脂を除き、合わせ調味料Aを加える。\\r\\n5　再び火をつけて煮からめ、火を止め、バター10gを加えてからめる。\\r\\n6　皿にポークステーキを盛り付けソースをかける。ガーリックチップスを散らし、イタリアンパセリを飾る。	52	55	0	2	1	\N	mUSueCtnRitlGxj6rsKtqg4w7l5ItBwnMnvmVRiV.jpg	\N	1	1	1	0	0	2021-12-09 08:40:06	2021-12-29 08:04:58
92	1	ガーリックライス	1　ニンニクは皮を除き繊維に逆らった薄切りにし、芯を除く。合わせ調味料Aを混ぜ合わせる。\\r\\n2　フライパンににんにく、オリーブオイル小さじ4を入れ、弱火〜中火8分の後、中火から強火1分で加熱(ガーリックオイル)。表面がきつね色になりカリッとしてきたら取り出す、ガーリックチップスです。\\r\\n3　ボウルにご飯・ガーリックオイルの半量を入れ、切り混ぜる。熱した2のフライパンに加え炒める。\\r\\n4　中央を開け、1の調味料Aを加え、さらに混ぜ合わせる。\\r\\n5　皿にガーリックライスを盛り付け、ガーリックチップスをちらす。\\r\\n\\r\\n＊. コメは洗米吸水(30分~)後、水を加えて炊いておく(1人120g)。	12	21	0	2	41	\N	VrNMBRZ7TwqXMC4xN4ED4Vw0fNPmxwt1Io1VvPWd.jpg	\N	0	0	0	0	0	2021-11-08 02:47:31	2021-12-29 07:15:32
88	1	オニオンサラダ	1　紫玉ねぎは、根元を除き、繊維に逆らった極薄切り。水にさらして水気を切る。皿にグリーンリーフとともに盛り付け、ドレッシングを1人小さじ1かける。\\r\\n\\r\\n＊  ドレッシング;　キューピーオリーブオイル&オニオンドレッシング	3	20	0	2	2	\N	9JlbTZdO9cO8Tm7aquqCpPlBsFwr6qQahzRzUmiT.jpg	\N	1	0	1	0	0	2021-11-08 00:55:15	2021-12-07 14:02:18
91	1	十勝若牛のステーキディッシュ	1　牛ステーキ肉は筋を両面切り、余分な脂肪を除き、30分ほど室温に戻す。塩小さじ1/4こしょう少々で下味をつける。\\r\\n2　大根は輪切り(1人1切れ)にし皮をむく。片面に隠し包丁を入れる。\\r\\n3　パセリは洗って水気を切り、葉のみつむ。小松菜は根元を除きざく切り。\\r\\n4　プチトマトはヘタを除いて、洗い、1カ所切り込みを入れ熱湯で10秒ほど加熱し水にとり湯むきする。\\r\\n5　ミキサーにパセリ・小松菜・ソースを入れ、滑らかになるまでミキサーにかける。レモングリーンソースAです。\\r\\n6　フライパンにオリーブオイル小さじ1/2を入れ、大根を盛り付ける時上になる面から焼き、両面色よく焼く。味付けBを加え、フタをし蒸し焼きにする。\\r\\n　  強火2分〜。火通りを確認しバットに取りだす。\\r\\n7　フライパンにオリーブオイル小さじ1/2を熱し牛肉を入れて焼く。中〜強火2分。返して裏面も中火で1分ほど焼く。\\r\\n8　両面焼き色がつき、好みの火通りになったらアルミホイルに包み、温かいところで3分〜保温する。食べやすい大きさに切る。\\r\\n9　皿にレモングリーンソースを敷き、ステーキ・大根・プチトマトを盛り付ける。	52	21	0	2	1	\N	4NVZqQjI8dfxml7ZkhD6vd5EJb8Ny6PzgGnmlrZo.jpg	\N	0	1	0	0	0	2021-11-08 02:35:10	2021-12-29 07:57:44
274	1	牛肉のデミボロネーゼ	作り方画像あり！オリジナルフライパン。\r\n\r\n1.玉ねぎは根元を除き、ざく切り。セロリはザク切り。人参は皮をむき、ザク切り。\r\n2.にんにくは皮をむきザク切りにし、玉ねぎ、セロリ、人参ともにチョッパーで、みじん切り。\r\n3.牛バラ薄切り肉は1cm角に切り、塩コショウで下味をつける。\r\n4.鍋に4人でバター10gを熱し、半分溶けたら香味野菜を入れてじっくり炒める（弱〜中火10分）\r\n5.④を端に寄せ、牛肉に薄力粉4人で小さじ2をまぶして加え、ほぐしながら炒め合わせる。トマトペースト小さじ２を加えてさっと炒め合わせる。\r\n6.火を止め、赤ワイン小さじ4を加え、再び火をつけアルコール分を飛ばす。\r\n7.合わせ調味料Aを加え、ひと混ぜして煮詰める（弱〜中火10分〜）\r\n8.ローリエを取り出し、塩黒胡椒で味を整える。水気をしっかり切ったリングイネをソースに加えて和える。\r\n9.皿に盛り付ける。ソースを上から盛り、生クリームをかける。	57	97	0	2	43	\N	a8ya6ju1llD6rkWMROG9r0l1IbnYHbF4nsjaL4W3.jpg	XTRgduK9UtozyeptSRxPFNDZTGZLrKvpZZzYOlfK.jpg	0	0	0	0	0	2021-12-30 15:44:57	2022-01-11 15:10:24
100	1	チーズキンパ	1　焼き海苔は長さを活かして半分に切る。スライスチーズは巻く。\\r\\n2   ボウルに味付け用Aを入れよく混ぜる。ごはんを加え切り混ぜる。\\r\\n3　ラップの上に焼き海苔を縦長に置き、ごはんを左右はギリギリ、奥は1cmくらいあけて広げる。巻終わりにごはんを2〜3粒つける。\\r\\n4　手前にキムチ・チーズを置き、芯にして巻く。ラップでしっかりと形をととのえ、巻き終わりを下にし、なじませる。\\r\\n5　ラップを外しぬらしたペーパーで、包丁を1回ずつ拭きながら、4等分に切る。それぞれラップで包み、耐熱皿に載せる。\\r\\n6　電子レンジで加熱する。600w40秒。皿に盛り付ける。	47	23	3	3	41	\N	KxRWCgJ2sSlZ7d2IAggODLGIp6Us5d1LI9pO6G8W.jpg	rPIDEWf7G1vX19VFEVYAQfv1D319hEPX13MZqjVw.jpg	0	0	0	0	0	2021-11-08 07:48:26	2021-12-29 07:16:26
97	1	バジルチキンサラダ	1　鶏もも肉は余分な水気・脂肪を除き、厚みを均一にする。下味Aで下味をつけバジルをまぶす。\\r\\n2　にんにく8gは皮芯を除き、潰しておく。グリーンリーフ・トレビスは食べやすい大きさにちぎり、水にさらし水気を切る。\\r\\n3　ブラックオリーブは汁気を切り、4等分に輪切り。\\r\\n4　フライパンににんにく・オリーブオイル小さじ1を入れ、香りを出すように弱火で加熱する。\\r\\n5　鶏肉の皮面を下にして入れ、余分な脂があれば除きながら、両面を香ばしく焼く。\\r\\n6　皿に、グリーンリーフ・トレビス・ブラックオリーブ・5を盛り付ける。エキストラバージンオリーブオイル(1人小さじ1)をまわしかけ、岩塩少々をふる。	3	22	0	2	1	\N	t6n0lAeFaMjKhtmpWgsyVL98BcaZv7qDbEP4P6vN.jpg	\N	1	1	0	0	0	2021-11-08 06:40:43	2021-12-07 14:17:34
101	1	わかめの炒めドレッシングサラダ	1　わかめは水で戻し水気を切る。フライパンにドレッシングを小さじ1/2熱し、ちりめんじゃこを入れカリッとするまで炒める。\\r\\n2　ちりめんじゃこを端に寄せ、わかめを加え、水分を飛ばすように炒める。ドレッシング大さじ2を加えて炒め合わせ、粗熱を取る。\\r\\n3　皿にグリーンリーフを盛り付け、わかめの炒めドレッシングをのせる。\\r\\n\\r\\n＊　ドレッシング;  キューピーごま油&ガーリックドレッシング	3	23	0	3	2	\N	Qwc8aKd1AAAxmgaeKXDSSwHQyqLJcBLbMSN5phjs.jpg	HcPvMeodXuEFtLoiPtqiGiCeBMMygJAnfj2623wi.jpg	0	0	0	0	0	2021-11-08 07:53:07	2021-12-07 14:21:29
117	1	炒り黒豆のごはん	1　黒豆は洗って水気を切り、鍋で乾煎りする。中火8分。\\r\\n2　鍋に塩麹・水220ccを入れ混ぜる。水気を切った米を入れる。\\r\\n3　表面を平らにならし、黒豆をのせフタをして火にかける。\\r\\n4　沸騰したら火を弱めて10分くらい炊く。炊き上がったら10分くらい蒸す。\\r\\n5　器にこんもり盛り付ける。	52	27	0	1	41	0	27zbVdHUfASJlsT1oIBIIH3S2mylB91ugThvx6gY.jpg	\N	1	0	1	1	0	2021-11-08 14:26:51	2022-02-17 10:10:51
98	1	キウイヨーグルト	1　プレーンヨーグルトはペーパーで包み、ザルとボウルで水切りをする。30 分位。水切りヨーグルトです。\\r\\n2　キウイは皮をむき、厚さ5mmのいちょう切り。\\r\\n3　ミントの葉は洗って水気を切り、葉のみ摘む。\\r\\n4　ボウルにキウイフルーツ・エルダーフラワーコーディアル小さじ2を入れミントの葉をちぎりながら加える。\\r\\n5　マリネし冷蔵庫で冷やす。\\r\\n6　器に水切りヨーグルト・5を盛り付ける。	53	22	0	2	5	0	9G4Kceclox2KFBGv3jEiQrmK64y7ozj5JlGr7txu.jpg	\N	1	1	1	1	0	2021-11-08 06:45:54	2022-02-10 04:20:54
265	1	ストウブ鍋で丸ごと玉ねぎスープ	★疲労回復に必要なビタミンB1。玉ねぎに含まれるアリシンはそのビタミンB1と結びついて働きを持続させる効果がある。\r\n\r\n★アリシンは加熱に弱い物質だが、油と一緒に調理すると、分解されにくくなる。シチューなどの煮込み料理に使う時、水から入れて煮込むよりは、油でいったん炒めてから入れる方が効果的です。\r\n\r\n玉ねぎは1/2に切ってから形が崩れないように軽く油で焼き色をつけてから使用すると、アリシンが加熱しても分解しづらい。\r\n水280ccとコンソメ、破裂しないよう切り込みを入れたウインナーと、ローレルを、下側に十字の切り込みを入れた皮をむいた玉ねぎと一緒に弱火で35〜40分程度蓋をしたストウブ鍋で煮込む。\r\n上から緑色の刻んだスナップえんどうなどと一緒に盛り付けて召し上がる。	52	60	38	2	3	\N	ilRYpDYgmuBykKXp8Ea8jUm65cHlYv0iUNuHlKE0.jpg	\N	1	1	1	1	0	2021-12-29 11:35:36	2021-12-29 12:00:42
112	1	ターメリックライス	1　鍋に米・水・ターメリック・塩小さじ1/8を入れひと混ぜし表面を鳴らす。\\r\\n2　フタをしてたく。沸騰まで強火、沸騰後弱火10分〜。さらにターメリックライスを山高に盛り付ける。\\r\\n3　器にスープカレーを分け入れ、野菜・豚しゃぶを盛り付ける。	54	26	0	8	41	\N	GOZ8evL5shC1OyuUnx7uEidSCEpMPHSnY7JSm6D3.jpg	\N	0	0	0	0	0	2021-11-08 10:47:46	2021-12-29 07:32:09
111	1	豚しゃぶのスープカレー/ターメリックライス	1　玉ねぎは根元を除き、みじん切り。にんじんは皮をむき、半分は輪切り、4枚はトッピング用。残りはペースト用で薄切り。\\r\\n2　カボチャは種子ワタをとり、薄切り(1人2枚)、オクラはヘタの部分を切り落とし、ガクの周りの硬い部分をとり、1箇所切り込みを入れる。\\r\\n3　ナスはへたを除き、縦4等分。ごぼうはピラーを使いリボン状に切る。\\r\\n4　鍋に鍋に鶏スープ材料をいれ沸騰させる。火を弱め豚肉を重ならないようにいれ加熱。火の通ったものからボウルに取り出す。スープは取っておく。(鶏スープ)。\\r\\n5　鍋にサラダ油小さじ2を熱し玉ねぎ・塩・人参を入れる。玉ねぎは飴色になるまで、人参は柔らかくなるまで加熱。この人参は取り出し水100mlを加えブレンダーでペースト状にする(人参のペースト)。\\r\\n6　5の鍋に調味料Aを加え、弱火で香りが出るまで炒める。調味料Bを加え香りが出るまで中火1分くらい炒める。\\r\\n7　人参のペースト調味料Cを加え弱中火で10分〜加熱する。\\r\\n8　フライパンにサラダ油小さじ2を熱しカボチャ・人参・オクラ・ナスを色良く焼き、焼けたものから取り出す。\\r\\n9　ごぼうは耐熱皿に乗せ、サラダ油小さじ1を加えて混ぜ電子レンジで加熱。600w6分。蒸気を除きチップスにする。	54	26	0	8	1	\N	DHQhTnkJtxKIJdvCRagfIKhBfRWwxjatqCYv805a.jpg	vJBjblkaHaZRIPUTGDPObGqZZgCqYqggy4WN8kXf.jpg	0	0	0	0	0	2021-11-08 10:43:43	2021-12-29 07:59:03
114	1	アボカドとトマトのサラダ	1　アボガドは縦半分に切り、種を除く。トマトはヘタを除いて洗い、くし形切り。さらに斜め半分に切る。　\\r\\n2　グリーンリーフは食べやすい大きさにちぎり、水にさらし水気を切る。ボウルにドレッシングを入れて塩を溶かしマヨネーズを加え均一に混ぜる。(調味料A)　\\r\\n3　アボガドの果肉をくり抜いて加え、トマトと一緒にざっくりと和える。皿にグリーンリーフ・トマト・アボガドをもりつける。	3	26	0	4	2	\N	a5daS8FIzQGqpKIYXvFpb1HfJ8vPT9ELP1uM6Uw0.jpg	\N	0	0	0	0	0	2021-11-08 10:59:51	2021-12-07 14:43:07
113	1	グリルチキンウイング	1　鶏手羽中は余分な水気を除き、ボウルに入れウイング調味料Aをいれよく混ぜる。10分〜置いておく。\\r\\n2　ウイング調味料Bをよく混ぜ1の鶏手羽中に衣としてつける。アルミホイルをひいた天板に並べ上からアルミホイルをかける。\\r\\n3　オーブンで加熱。電気200℃30分〜。ガス190℃30分〜。盛り付ける。	54	26	2	8	1	\N	lfuAXYYuaKOh9ik6AsjOLFFsbHKku2gOsSIdTkVB.jpg	\N	0	0	0	0	0	2021-11-08 10:54:09	2021-12-29 07:59:21
107	1	オクラとみょうがの冷たいみそ汁	1　オクラはヘタの部分を切り落とし、ガクの周りの硬い部分をむき、塩少々でこすり、塩付のまま熱湯で茹でる。粗熱を取り厚さ1mmの小口切り。\\r\\n2　みょうがは根元を除き、縦半分に切り、斜め薄切り。水にさらし水気を切る。ボウルにみそ液体小さじ8・水480ccをいれ混ぜ、冷蔵庫で冷やす。\\r\\n3　お椀にオクラ・みょうがを分けいれ、2の冷たい味噌汁を注ぐ。	53	25	0	1	40	2	w7sFAivn7Q7eoZpS59UTrZ35Xeu2ff7PJqpgksx4.jpg	KR2q12TSYz6rlSaQ7zs75qVmdtCuYK7gxc3Bb40n.jpg	1	1	1	0	0	2021-11-08 09:09:09	2022-02-08 13:56:33
105	1	白いたまごプリン	1　ボウルに卵白4個分とたまごプリン素Aを入れ、泡立てないようにしっかりと卵白を牛乳に散らしながら混ぜる。\\r\\n2　上記をぬらした茶こしでこして器に注ぐ。　　　　\\r\\n3　鍋に湯をはり沸騰させる。火を止めザルを入れて上記の器を並べる。\\r\\n4　蓋をし強火で4分加熱する。(軽く揺すり揺れ方が変わってくるまで)、弱火または保温で10分〜加熱する。\\r\\n5　プリンに竹串を刺し、液体が出てこなければ火を止めあら熱を取り冷蔵庫で冷やす。\\r\\n6　たまごプリンあんをかける。抹茶小さじ1/2をふるい黒みつ小さじ4をかける。(4人分)。	54	24	5	1	5	0	7727w6BpDAgZuVy9lvFl2l5UZQAhhDtz7eJWcYg2.jpg	\N	0	0	0	0	0	2021-11-08 08:53:49	2022-02-10 05:19:51
266	1	大根菜の漬物	大根菜は30gあたり、78mgのCaを含む、不足しがちなカルシウムを補ってくれるありがたい豆皿です！\r\n\r\n1.大根葉はみじん切りにし、ジッパー付き保存袋に入れて塩を入れてよく揉みこみ、冷蔵庫で30分程おきます。\r\n2.水気を絞り、器に盛り付けてトッピングの材料を散らしてできあがりです。	52	61	0	1	38	\N	S6UItsa89XIQBKvTy7TEPQ2CGtD2HYKHVVKC6vOh.jpg	\N	1	0	1	1	0	2021-12-29 13:49:53	2021-12-29 13:52:45
122	1	牛肉とミントのサラダ	1　グリーンリーフは一口大にちぎり、水にさらし水気を切る。紫玉ねぎは根元を除き、繊維に沿った薄切りにし、水にさらし水気を切る。\\r\\n2　牛肩ロース薄切り肉120gは幅5〜6cmに切る。鍋に熱湯を沸かして弱火にして入れる。色が変わるまでさっと茹でざるにあげ水気を切る。\\r\\n3　ボールにライム1/2個の果汁を搾り、調味料Aを入れよく混ぜる。サラダ油小さじ1を加えさらによく混ぜる。\\r\\n4　グリーンリーフ・紫玉ねぎ・牛肉を加え、和える。皿に盛り付けミントの葉をちらす。\\r\\n\\r\\nミントはタイ語でバイサラネー。タイではきゅうりやキャベツと同様に野菜の感覚でも食べられる。	3	28	0	5	2	\N	me8QjCS5pW3nTs07YEQbZqxyzdoFYLBjf3ucqjmp.jpg	\N	0	0	0	0	0	2021-11-09 12:47:50	2021-12-13 09:31:19
116	1	スコッチエッグ・アスパラフライ	1　パン粉大さじ8は牛乳大さじ4を加えしとらせる(練り粉)。薄力粉大さじ8を水大さじ6~と合わせる。\\r\\n2　グリーンアスパラガスは根元を1cmくらい切り、した1/3位の硬い皮をピーラーでむき、はかまの部分を除き、長さを半分に切る。　　\\r\\n3　水菜は根元を除き、アガサ4cmに切る。レモンは塩でこすり洗いし、4等分のくし形切り。\\r\\n4　鍋に熱湯を沸かし、酢小さじ1塩小さじ1/8をいれ冷蔵庫から出したての卵を静かに加える。最初の2〜3分は混ぜながら茹でる。再沸騰後7分。水に取り皮を剥く。\\r\\n5　ボウルに合い挽き肉・塩麹を入れ粘りが出るまでよく混ぜる。1の練り粉を加えよく混ぜる。4等分する。\\r\\n6　手に水を馴染ませ5を空気抜きし、直径12〜14cmくらいの楕円形に広げ、ゆで卵を乗せ空気を抜きながら成形する。\\r\\n7　グリーンアスパラガス・6の順に練り粉・パン粉とつける。\\r\\n8　170〜180度の油でアスパラガスを(1分~)揚げる。バットに取り出し油を切る。160〜170度の油にスコッチエッグをいれ温度を徐々に上げながら(5分~)揚げる。\\r\\n9　皿に水菜プチトマトを盛り付けドレッシング(1人小さじ1)をかける。スコッチエッグを盛り付けソース・レモンを添える。ソース; トマトケチャップ・ウスターソース各大さじ2を合わせておく。	54	27	0	2	1	\N	ehItHl5dttf9nFf9E5BgWuB4rbEpsbBaIbighRQN.jpg	mLtnXqKN0ytv1r5NWj6C4R43OWxkaimbOf0WbXRR.jpg	0	0	0	0	0	2021-11-08 14:01:15	2021-12-29 08:00:02
267	1	大根菜のごはん	大根菜30gで78mgのカルシウムを含む。\r\n\r\n大根菜はみじん切りにして、塩揉みをして、白いりごまと共にご飯に混ぜて頂く。	52	61	0	1	41	\N	EZGwg5gdWc1r12oEcP9nORRqRAuGBLMNMC2BdqEV.jpg	\N	1	1	1	1	0	2021-12-29 14:00:42	2021-12-29 14:02:51
118	1	揚げなすのみそ汁	1　ナスはヘタを除き、乱切り。一人4切れ。170度くらいの油で揚げる。\\r\\n2　火が通ったものからパットに取り出し、油を切る。\\r\\n3　鍋にみそ汁の味付けAを入れて加熱し沸騰したらナスを加え軽く温める。\\r\\n4　火を弱め、味噌を溶き入れる。きざみしょうがを加える。器に盛り付ける。	53	27	0	1	40	2	wOzO1DkpXBvo8HXeJcOsQK3enIc93BNrBiExEStU.jpg	\N	0	1	1	0	0	2021-11-08 14:31:07	2022-02-08 13:58:55
119	1	抹茶くるみわらび餅	1　胡桃は余熱なしのオーブンでローストし、食べやすい大きさに砕く。電気170度8分。ガス160度8分。\\r\\n2　抹茶大豆粉Aを作る。ここからトッピング用Bに小さじ1を取り、砂糖小さじ2を加える。\\r\\n3　耐熱容器にわらび餅Cを入れざっと混ぜ、水を少量加えて均一に溶きのばし、残りの水を加えて混ぜる。\\r\\n　 ラップをふんわりかけてレンジで加熱する。600w1分。\\r\\n4　一部が半透明になったら混ぜ、胡桃を加えて混ぜる。ラップをふんわりとかけ電子レンジで加熱。600wで1分。全体に透明感があり、均一になったら混ぜる。\\r\\n5　パットに抹茶大豆粉を半量ふるい、4を取り出す。上から残りの抹茶大豆粉を振るう。\\r\\n6　人肌程度に冷めたら、1人3〜4切に切り分ける。器に盛り付け、トッピング用の抹茶大豆粉を振りかける。	51	27	3	1	5	2	bZMQ69jDFbFdYFgDShlKPx8WcqpdtmeVWhOKqIGs.jpg	Y2NAL6JaewgSvtDPOmvz0eTtBPHH2Smyw77zQDH0.jpg	0	0	1	0	0	2021-11-08 14:43:08	2022-02-10 05:17:41
134	1	エスニックサラダ	1　玉ねぎは根元を除いて薄切りにし、10分〜水にさらす。水気を切る。グリーンリーフは食べやすい大きさにちぎり、水にさらし水気を切る。\\r\\n2　ボウルにドレッシング用Aを混ぜ玉ねぎ・ツナ(ノンオイルタイプ1缶70g)も加え和える。\\r\\n3　グリーンリーフを加え、ざっくりと和える。皿に盛り付ける。	3	31	0	4	2	2	9jVV3lLoOQmiRi1NON2aPqqraFvcWfGn8GetDjYR.jpg	\N	1	1	1	0	0	2021-11-09 15:54:30	2022-04-29 13:47:36
131	1	甘酒クリームコーヒーゼリー	1　粉ゼラチン小さじ2は湯(50~60度)40ccに振り入れ、溶かす。\\r\\n2　ボウルにインスタントコーヒー・フロストシュガー各小さじ4、水160ccを入れよく溶かす。\\r\\n3　溶かしたゼラチンを加えよく混ぜる。\\r\\n4　器に分入れ、冷蔵庫で冷やし固める。\\r\\n5　ボウルに生クリーム60gを入れ、8分立てにする。甘酒小さじ4を少しずつ加え混ぜる。甘酒クリーム。\\r\\n6　4に甘酒クリームをかける。お好みでフロストシュガー(1人小さじ1/2)をかける。	54	30	0	1	5	\N	cMFXEmf8YJCanLk3GqTaHFj5TWx7tPVRow7tvEbF.jpg	\N	1	0	1	0	0	2021-11-09 14:49:51	2021-12-28 15:39:21
125	1	ラーズーチー~鶏のから揚げ甘辛四川炒め~	1　チョウテンガンシンジャオは、ぬらして硬くしぼったペーパーで汚れを拭き、縦半分に切りヘタたねを取り除く。\\r\\n2　鶏もも肉は余分な脂肪・水気を除き、厚みを均一にし、一口大に切る。一人4切れ。ボウルに入れ塩小さじ1/4・黒こしょう少々を加えてもみこみ調味料Aを加えてさらにもみ込む。\\r\\n3　鶏肉は揚げる直前に片栗粉大さじ6をまぶし160度〜170度の油に入れじっくりと揚げる。5分位。油の温度を180度に上げ、更に揚げる。1分位。バットに取り出し油を切る。\\r\\n4　フライパンに1・調味料Bを入れてじっくりと加熱、弱火で香りを出す。3を加えてよく混ぜ、砂糖小さじ1/2を表面にかけて混ぜる。\\r\\n5　火を止めて酒小さじ2を鍋肌から加え再度火をつけて手早く混ぜる。\\r\\n6　わけぎを加えて混ぜる。さらに盛り付け。	57	29	0	3	1	0	VvUfzHYEqPmFZkAZmniQceI3X9ylceERoqO2NZg9.jpg	eDbRoFHJrhPghVJAcXSAyNeWaqhBweiaL8VoUKzg.jpg	0	1	1	0	0	2021-11-09 13:58:53	2022-02-08 13:03:42
130	1	焼き枝豆のみそ汁	1　枝豆は使用直前まで冷凍しておく。鍋に枝豆を入れ、加熱する。強火。\\r\\n2　香ばしい焼き色が付いたら、水600~640ccを加えて煮る中火5分。\\r\\n3　火を弱め、みそ顆粒小さじ4を加え、一混ぜする。器に注ぎ入れる。	53	30	0	1	40	2	oCYmvasr489jsOkCBZLKsf2PoK2erHvu2Zv2KRu8.jpg	\N	1	1	1	0	0	2021-11-09 14:41:18	2022-02-08 13:59:20
126	1	トマトと卵のスープ	コショウは入れすぎないのがポイントだよ⭐︎\r\n\r\n1.トマトはへたを除いて洗いくし形切り。さらに斜め半分に切る。一人4切れ。鍋に調味料Aを入れてよく混ぜ火にかける。\r\n2.混ぜながらとろみがつくまで加熱し、卵を流し入れ一混ぜする。トマトを加えて温める。\r\n3.火を止め、酢小さじ2を加えて一混ぜする。器に分け入れる。\r\n\r\n栄養素チェック済み	52	29	0	3	3	2	PrMVikla7SZgLo0mdD2HdSPTeEjCkHtduydaO9FF.jpg	51PThtebsr4mFLTXIj62lLxgyE3yJzrloAd7iRDO.jpg	1	1	1	1	0	2021-11-09 14:05:30	2022-02-08 14:06:46
129	1	枝豆とたたききゅうりのサラダ	枝豆の旬は夏、6月〜9月が収穫のピークです。偶然にもビールがおいしい時期とピッタリですが、早く収穫できるように品種改良したというのが実際のようです。\r\n\r\n1.芽ひじき4gはさっと洗って汚れを流し、新しい水をたっぷり注いで戻す。ザルで水気を切る。\r\n2.水菜は根元を除き、長さ5cmに切る。枝豆(冷凍)は熱湯でさっと茹でる。\r\n3.枝豆さやから取り出す。きゅうりはすりごきで叩き、ヘタを除き、食べやすい大きさに割る。\r\n4.耐熱容器にひじき・ドレッシング大さじ2を入れ、ラップをせずに電子レンジで加熱する。600w1分\r\n5.そのまましばらく置き、粗熱を取る。ボウルに水菜・枝豆・きゅうり・ひじきドレッシングを入れ和える。\r\n6.器にこんもりと盛り付ける。\r\n＊. ドレッシング  ;　キューピーテイスティドレッシング黒酢玉ねぎ	3	30	0	1	2	2	1v2o9XUKo3tjvH2tHxkifUpDDzrscBVAxiB9E2Jb.jpg	\N	1	1	1	0	0	2021-11-09 14:38:06	2022-02-09 08:27:47
133	1	鶏肉のピーナッツグリル	マレーシア→クアラルンプール。サテはインドネシア、マレーシアなどの東南アジア諸国で広く食べられている串焼き料理。\\r\\n1　鶏もも肉は余分な水気・脂肪を除き、厚みを均一に開き、ナンプラーを10分もみ込む。\\r\\n2　ボウルにピーナッツダレの素を入れよく混ぜる。\\r\\n3　天板にクッキングシートをひいて4隅をねじる。\\r\\n4　鶏肉を皮面を上にして並べ、ピーナッツダレを盛る。\\r\\n5　オーブンで焼く、電気220度15分・ガス210度15分。\\r\\n6　器に盛り付ける。	57	31	2	6	1	\N	CLfLcqReMOR3WyuPtEV7MKbG7haTMSjyFTgO3KMk.jpg	\N	1	1	0	0	0	2021-11-09 15:49:17	2021-12-30 14:48:17
136	1	手打ちうどん~明太チーズかま玉&トマトだしつゆ~	1　辛子明太子は薄皮を除く。トマトはヘタを除いて洗い、横半分に切る。たねを除き(つゆに使用)、1cmの角切り。\\r\\n2　ライム1個は塩少々でこすり洗いし、横半分に切り、半量は果汁を絞り(つゆ用）、残りはスマイルカットにする(飾り用)。\\r\\n3　ボウルにうどん生地Aを入れて軽く混ぜ(2つのボールにそれぞれ強力粉薄力粉合わせて160gずついれて2玉のうどん固まりを作る)、水65~70ccを回し入れ(様子を見ながら)、大きく混ぜそぼろ状にする。\\r\\n4　まとまったら台の上に出し3分位こねる。生地を丸めラップで包み室温で休ませる。30分程。\\r\\n5　ひとつの生地を2等分にし、棒状にして打ち粉(片栗粉小さじ4~)をまぶしながら伸ばす。目安;30×10cm前後の長方形。\\r\\n6　伸ばした生地に打ち粉をまぶして数回折り、端から幅5〜6mmに切る。バットにのせラップをかける。\\r\\n7　ボウルにちぎったスライスチーズ2枚・調製豆乳40cc・だしじょうゆ小さじ2を入れる。\\r\\n8　ボウルにトマトの種・つゆBを入れて混ぜ、冷蔵庫で冷やす。(トマトだしつゆ)。別のボウルにトマト・砂糖小さじ1を入れ和える。\\r\\n9　打ち粉をはらいながら、熱湯2Lにうどんをほぐし入れ、再沸騰してから10〜12分茹でる。ざるに上げ、半量は水気をよく切る。(明太チーズかま玉用)。\\r\\n10　残りは流水で冷やしながら、ぬめりを洗い流し水気をよく切る。(トマトだしつゆ用)。\\r\\n11　7に9を加えてよく混ぜ、器に分け入れる。温泉卵1人1個・辛子明太子(4人で40g)・きざみ海苔(4人で2g)をのせる。\\r\\n12　別の器に10を分入れ、トマトだしつゆの1/4を注ぐ。トマトマリネを盛り付け、ライムを飾り、エキストラバージンオリーブオイル(1人小さじ1/2)をかける。\\r\\n＊　うどん生地は2人分ずつで作業。	57	32	0	1	41	2	1VpelZhZByow2CtERoqWevpVGOgYqCdC8TExAj51.jpg	fm0mwBmkbNYyv1bqdlzcqXs1Q6QzMAVnH5MzId9l.jpg	0	1	1	1	0	2021-11-09 20:59:42	2022-02-08 13:49:31
143	1	海老コーン天むす/カラフルチキンボール/ふわふわハムたまチーズ	1　海老つけだれA(だし醤油・水各大さじ1)を耐熱容器に入れ、ラップをせずに電子レンジで加熱する。(600w30秒)焼きのりは短い方をいかして8等分に切る。\\r\\n2　ボウルにむき海老・コーン・天ぷら粉大さじ4を入れ、からめる。水50cc前後を加え混ぜる。\\r\\n3　170度の油に1/8量ずつ入れ、あげる(1分〜）たれAにさっとくぐらせ、あみをのせたバットに取り出す。\\r\\n4　ボウルにご飯・塩小さじ1/8を入れ切り混ぜる。ラップにご飯を1/8量のせてくぼみを作り、海老コーン天をのせ、半分見えるように三角形に握る。\\r\\n 　 残りも同様に作る。\\r\\n5　手前に交差させるように焼き海苔を巻く。盛り付ける。\\r\\n\\r\\n1　ビニール袋に鶏ひき肉・チキンボール用Bを入れてよく混ぜ、8等分する。\\r\\n2　ボウルにぶぶあられ40gを入れ、6を加えぶぶあられを全体にまぶす。手のひらで優しく転がし、丸く形を整える。160度の油に入れる。\\r\\n3　火がとおるまで揚げる。4分〜。バットに取り出し油を切る。竹串に2個ずつさす。\\r\\n\\r\\n1　卵1個は良く溶きほぐし、卵液用Cを加え、混ぜ合わせる。はんぺんは厚みを半分に切る。ロースハムは半分に切る。\\r\\n2　青じそは軸を除く。スライスチーズは半分に折る。はんぺん1枚の上にロースハム・青じそ・スライスチーズをのせ、残りのはんぺんで包む。\\r\\n3　卵焼き器にサラダ油小さじ1/2を熱してなじませ、卵液を入れる。具をのせたはんぺんを半分より奥におく。\\r\\n4　周囲の卵液をよせ、はんぺんを手前に返し形を整え、ラップで包み、形を落ち着かせる。4等分に切る。盛り付ける。	48	34	0	1	41	0	lvO9k2IsmHfdiaSX0ageEqBJniS3MFp1goJJ8ZXR.jpg	CJ3HJBoXyFt6rQaf8VgfhofZOjNlRLnZL2Iido6M.jpg	0	1	1	0	0	2021-11-09 23:27:45	2022-02-08 13:51:04
157	1	かぼちゃのみそ汁	1 かぼちゃは種・ワタを除き、1.5cm角に切る。鍋に水480~530cc・しょうゆこうじ小さじ2・かぼちゃを入れカボチャが柔らかくなるまで加熱する。(沸騰後弱火5分~)。\\r\\n2 火が通ったら、火を弱めみそを溶き入れる。椀に注ぎ入れる。	53	37	0	1	40	3	h5R3QwC2sSq4WWBqWkCqbjvhbyYWrDGLql9mIkIS.jpg	cJDXf0NQ004MY0e4e03jhC2lzm6eElIjscK3Fxl6.jpg	1	1	1	1	0	2021-11-10 02:38:24	2022-02-08 13:57:11
138	1	みたらし団子	1　ボウルに白玉粉60g・砂糖小さじ2を入れざっと混ぜ、調製豆乳40ccを少しずつ加え、耳たぶくらいの硬さにする。(水分が足りない場合は水小さじ1~を加えて調整。)\\r\\n2　8等分にし、丸める。\\r\\n3　たっぷりの熱湯に入れ、浮いてきてから4分位茹で水に取る。\\r\\n4　鍋にタレの材料Aを入れよく混ぜ、混ぜながら加熱し、とろみをつける。沸騰後30秒くらい。\\r\\n5　粗熱を取り、器に分け入れる。	51	32	0	1	5	1	ZMM8fKLFKyKw14V5K86GV3au4N8RKq0oSJK1LLyL.jpg	\N	1	1	1	0	0	2021-11-09 21:29:12	2022-02-10 05:14:33
175	1	レンジで!もやしと豆苗の豚巻きレンジ蒸し	2人前　豆苗は余ったら中華スープに卵と一緒に入れる\r\n1.豆苗は根元を切り落とす。\r\n2.豚バラ肉にもやしと1をのせ、塩こしょう少々をふり、手前から巻く。\r\n3.耐熱皿にのせて、ふんわりトラップをかけ、600wの電子レンジで5分、豚バラ肉に火が通るまで加熱する。\r\n4.Aを混ぜ合わせる。\r\n5.ラップを外し4をかけて完成。	52	41	3	1	1	0	VxynNMuZHYxAgipFwJoDrNQAvOL8ZEzbelV9e3ms.jpg	\N	1	0	1	0	0	2021-11-11 01:23:50	2022-02-13 11:08:42
270	1	タイ	タイ料理で特徴的なハーブは、①ホムデーン（別名：アカワケギ）タイ語で『ホム』は『玉ねぎ』。『デーン』は『赤』という意味です。見た目は紫色の小さな玉ねぎという印象ですが、辛さと香りが強いのが特徴。②レモングラス　③バナナの葉（別名：バイトン）など。\r\nタイは、東南アジアに位置する立憲君主制国家。首都はバンコク都。東南アジア諸国連合（ASEAN）加盟国、通貨はバーツ、人口6,891万人（2017年）である。\r\n2014年にプラユット将軍率いる国軍が軍事クーデターを起こし、従来の憲法（2007年憲法）と議会を廃止して実権を掌握して以降、軍事独裁政権が継続している。	54	61	0	5	0	\N	HXbpJfu3U7z9RBkpEbWcoef154ryFRrpurNoqNOj.jpg	\N	0	0	0	0	0	2021-12-30 15:02:26	2022-01-23 11:19:25
146	1	紅芯大根の甘酢漬け	1　紅芯大根は皮をむき厚さ2〜3mmのいちょう切りにし、塩小さじ1/8をまぶしてなじませる。10分くらい。\\r\\n紅芯大根の水気を絞る。調味酢小さじ4を加え、5分ほどつける。汁気をしっかりと除き、グリーンリーフとともに盛り付ける。	53	34	0	1	38	\N	1qbFwpyIK8ZGQd6ZPAvlakV4kwKNg15iVdP1Uw0C.jpg	yfDW6vPrFAxuCFAPZkOQtgBWASSbuoghlIKkAB4Q.jpg	1	0	1	0	0	2021-11-09 23:47:23	2021-12-28 14:31:41
142	1	季節の水菓子	1　ぶどうは皮付きのまま洗い、水気を切る。皿に盛り付ける。\\r\\n2　りんごは塩少々でこすり洗いし、放射状に4等分に切り、芯を除いて皮をむき、半分に切る。\\r\\n3　水にさっと通し水気を切る。皿に盛り付ける。	53	33	0	1	5	\N	Eolesp2yaDWKKJbOzkjgBoQDNs5RbhcLRLfysjvU.jpg	\N	1	1	1	0	0	2021-11-09 21:53:19	2021-12-28 15:38:22
144	1	ズッキーニの焼きナムル	1　ズッキーニは厚さ2mmの輪切り。フライパンにごま油小さじ1を熱し、ズッキーニを入れ焼き色がつき、しんなりとするまで炒める。\\r\\n2　味付け用に、きざみにんにく小さじ1/2・塩小さじ1/8を入れ、さっと炒める。盛り付ける。	52	34	0	1	38	2	mOmKKTepPKPTTBfDaGRruBiaWzQkHsl7G08c31rA.jpg	1AYBMy3yFA99MVimfu2kYB0RpYiPsdl5KntW7InQ.jpg	1	1	1	0	0	2021-11-09 23:36:42	2022-02-08 13:19:39
141	1	大根のみそ汁	1　大根は皮をむき、長さ7〜8mmのいちょう切り。水菜は根元を除き長さ4cmに切る。\\r\\n2　鍋に大根・水520~560cc・和風だしの素小さじ1/2を入れ加熱。大根が柔らかくなったら水菜を入れてさっと火を通す。\\r\\n3　火を止め味噌小さじ4前後を加え、一混ぜする。椀に分け入れる。	53	33	0	1	40	0	nGpqSorjhiVN4hAhmQsDqSo0x6NmcxKtntrLUKbc.jpg	\N	1	1	1	0	0	2021-11-09 21:51:06	2022-05-24 12:26:40
153	1	海老チリ春巻き	1 むき海老は背ワタがあれば除いて洗い、水気を除く。塩・白胡椒各少々で下味をつける。耐熱皿に味付け用aを入れ混ぜる。\\r\\n2 むき海老を加えて混ぜ、ラップをふんわりとかけ、電子レンジで加熱する。(600w 2分30秒~)。取り出し全体を混ぜる。バットに取り出し広げて冷ます。\\r\\n3 卵はよく解きほぐし、塩少々を加えて混ぜる。フライパンにサラダ油小さじ1を熱し卵を入れて混ぜながら加熱し、裏返して全体に火を通す。バットに取り出し広げて冷ます。\\r\\n4 皮のざらざらしている面(裏)を上にして、斜めに置く。中央よりやや手前に、2・3を横長に載せる。手前の皮を折り、縁全体に＊のりを手早く塗る。左右の皮を折り畳む。(長さ12cm位)。\\r\\n5 空気が入らないようにして巻いていく。巻き終わりを下にしておく(乾燥しないようにラップをかける)。170~180度の油に巻き終わりを下にして入れ、きつね色になるまで揚げる。2分~\\r\\n6 バットに取り出し、立てかけるようにして油を切る。皿に盛り付ける。\\r\\n\\r\\n\\r\\n＊ のり : 薄力粉小さじ2と水こさじ1~を混ぜてのりを作っておく。	9	36	0	3	1	0	jkyy5iFGAiiZAVLeoWhuWyhcBEoJ4w5BWXZlfjSJ.jpg	\N	0	1	1	0	0	2021-11-10 01:41:43	2022-02-11 14:31:17
271	1	マレーシア	マレーシアは、東南アジアに位置し、マレー半島南部およびボルネオ島北部からなる連邦立憲君主制国家。首都はクアラルンプール。イギリス連邦加盟国のひとつ。タイ、インドネシア、ブルネイと陸上の国境線で接しており、シンガポール、フィリピンと海を隔てて近接する。ASEANの一員。	54	61	0	6	0	\N	OwfAATULAyXQ8u6JdCWl36GZzmaq1F9nePTAlCx7.jpg	\N	0	0	0	0	0	2021-12-30 15:07:04	2021-12-30 15:07:04
163	1	カレーパン	1　玉ねぎ・にんじん・にんにく・しょうがはそれぞれみじん切りにする。\\r\\n2　フライパンにサラダ油をひいて、挽肉を炒める。火が通ってきたらニンニクと生姜を入れ、香りが出たら玉ねぎとにんじんも加えて炒める。\\r\\n3　2にカレー粉小さじ2を入れて軽く炒めたら水を加えて10分ほど煮込み、汁気が少し残る程度になったら火を止めて、刻んだ市販のカレールー(40g)を混ぜる。カレールーが溶けたら、再び火をつけ、軽く炒めたら容器に入れて覚まし、4等分にする。\\r\\n4　ボールにぬるま湯(40度・80cc)・砂糖・ドライイーストを合わせ混ぜ、そのまま5分ほどおく。\\r\\n5　ボウルに強力粉と塩2gを合わせ混ぜてから4・溶き卵・溶かしバターを加えゴムベラで混ぜる。まとまってきたらボウルから出して取り出して滑らかになるまでこねる。\\r\\n6　5をボウルに入れてラップをし、40度で30~40分ほど発酵させる。(1次発酵)。2倍程度に膨れたら、ガス抜きをして4等分にして丸め、ラップを被せてそのまま10分休ませる。(ベンチタイム)。\\r\\n7　6を麺棒で15 × 12cmの楕円形に伸ばし、3をのせてつつむ。硬く絞った濡れ布巾を被せ、40度で20分ほど発酵させる。(2次発酵)。\\r\\n8　7の表面にはけで溶き卵(生地塗り用)を塗ってパン粉をつけ、170度の油で3~4分揚げる。(片面ずつ1分半~2分)。	9	45	0	\N	\N	\N	BQmMSHzPd26soFaWAa4fnhue5hFHPfMmCAz7hDBV.jpg	\N	0	1	0	0	0	2021-11-10 08:16:11	2021-11-28 12:10:39
272	1	ベトナム	ベトナムは、東南アジアのインドシナ半島東部に位置する社会主義共和制国家。ベトナム共産党による一党独裁体制下にある。首都はハノイ。東南アジア諸国連合（ASEAN）加盟国。人口約9,936万人（2021年）。通貨はドン。\r\n国土は社会主義陣営のベトナム民主共和国（北ベトナム）と資本主義陣営のベトナム共和国（南ベトナム）に分裂。ベトナム戦争（第二次インドシナ戦争）を経て南ベトナムの政権が崩壊し、1976年に統一国家としてベトナム社会主義共和国が成立した。	54	61	0	7	0	\N	zhPWl9KoUSAb9myYZ2REpiybIpUr8I2vlMM7rwKH.jpg	\N	0	0	0	0	0	2021-12-30 15:11:08	2021-12-30 15:12:00
161	1	とろーり卵のチーズブレッド~ハチャプリ~ハロウィンサラダ	1 耐熱容器にイカ墨ソース60g・片栗粉小さじ1/2を入れよく混ぜ合わせ電子レンジで加熱する。(600w 1分~・ソース)ボウルに強力粉を計量し他の材料aを入れる。\\r\\n2 ボウルの中のイーストめがけて牛乳180ccを加え、しっかりと全体を混ぜる。全体がひとかたまりになってきたら、サラダ油大さじ1を加え、粉っぽさがなくなるまで混ぜる。水分が足りない場合は適宜水を加える。小さじ1前後。\\r\\n3 台の上に取り出しムラがなくなるまでこね、丸めてボウルに入れ、ラップをかける。大きめのボウルに42~43度の湯を張り、浮かべてラップをし、ふきんをかけて発酵させる。30分~。\\r\\n4 1.5~2倍近くまで大きくなったら、台の上に取り出して4分割し、軽く丸め直す。打ち粉(強力粉小さじ2)を全体にまぶし、閉じ目を上にし12cmくらいの円形にのばす。\\r\\n5 中心に向かった上下から数回生地を折り、両端の3~4cmをしっかりと閉じる。ソースをのせる部分を3~4cmひろげ、クッキングシートを敷いた天板にのせる。\\r\\n6 広げた部分にソースを広げる。ラップをかけて発酵させる。オーブン発酵40度15分~。\\r\\n7 室温に取り出し、そのまま室温発酵。オーブン予熱。電気230度12~15分。ガス220度8~10分。ピザ用チーズを1/4 量ずつのせる。\\r\\n8 オーブンで焼く。(電気230度12~15分。ガス220度8~10分)。残り2分で取り出し、溶けたチーズの上に卵黄をのせる。もう一度オーブンで焼き皿に盛り付ける。\\r\\n\\r\\n9 ムースフィルムのシールをはがし、つなげる。かぼちゃは種・ワタを除き薄切り。(1人2枚)\\r\\n10 フライパンにサラダ油小さじ1を熱し、かぼちゃを並べて焼く。焼けたものから取り出し粗熱を取る。\\r\\n11 スライスチーズは半分に切り、ムースフィルムを使って、お好みの形に切り抜く。竹串を使い、ソース（イカ墨の)で目・鼻・口を描く。\\r\\n12 皿にグリーンリーフ・トレビス・かぼちゃ・チーズおばけを彩りよく盛り付け。ドレッシングをかける(1人小さじ1)。	9	38	2	2	41	3	pW8EuKiiPXHHPIjhmJewFh5A4FgWMdULTiJrLTzT.jpg	COT4zQem2eoSFeOptLgAwOC3ohwJ3SdlcsuPXHn9.jpg	0	1	1	0	0	2021-11-10 03:43:33	2022-02-08 13:28:27
286	1	あおさとあさりのバタースープ	1.鍋にあおさ、バター以外の全ての材料を入れ、蓋をして中火にかける。\r\n2.煮たったら、火を止めて器に入れる。あおさ、バターをのせる。	52	61	0	3	3	0	1RoJ6BlGnDSsoeDVFgKtN8O67w6foDGM9aYD4aM8.jpg	\N	1	1	1	1	0	2022-01-24 12:48:09	2022-02-08 14:02:01
162	1	ウフアラネージュ	1 器に少々の水を入れ、全体をぬらす。ボウルに卵白を入れ(4個分)泡立てる。\\r\\n2 少し泡立ってきたら、砂糖を2~3回に分けて加え、しっかりと角が立つくらいまで泡立てる。4等分にする。\\r\\n3 器に入れゴムベラでしっかりと押さえつける。1人ずつ電子レンジで加熱する。600w15~25秒。\\r\\n4 器のふちからはみ出るくらいに盛り上がってきたら、皿に取り出し粗熱を取る。\\r\\n5 鍋にラズベリージャム60g・水40ccを入れて加熱し、軽く煮詰める。とろみがついてきたら粗熱を取る。\\r\\n6 メレンゲの上に5・チョコレートシロップをかける。(4人で20g)。	49	38	3	2	5	\N	wECrfs6fwdVIoqTRH1SO5MgjyoyqmzFC4VsesLqv.jpg	\N	0	0	0	0	0	2021-11-10 03:51:04	2021-12-28 15:36:24
173	1	ジューシー鶏の唐揚げ	２人前\\r\\n\\r\\n1　取りもも肉を一口大に切る。\\r\\n2　袋に入れ調味料Aで下味をつける。\\r\\n3　水分がなじんだらマヨネーズを加える。マヨネーズ大さじ2\\r\\n4　15分~30分つけおく。\\r\\n5　衣を作る。片栗粉30g・小麦粉20g\\r\\n6　サラダ油を鍋に入れて170度に温める。菜箸を油の中に入れて箸全体から小さめの泡が出てくると170度前後の目安です。茶色く焼き色がつくまで上げたら一旦取り出して、3分ほどバットの上で休ませる。\\r\\n7　油の温度を190度まであげる。箸全体から大きめの泡が勢いよく上がってくれば190度の目安です。\\r\\n8　2度目を揚げたら完成。	57	40	0	1	1	0	afGL0fH96Z2qEpeD5i4tcgJzq1ypXdUBlSs0QTif.jpg	\N	0	1	1	0	0	2021-11-11 01:07:38	2022-02-08 12:55:25
174	1	やみつきピリ辛きゅうり	1人前\\r\\n\\r\\n1　きゅうりはヘタを切り落とし、網目状にピーラーで皮を剥き、1cm幅に切る。\\r\\n2　ボウルに1を入れ、塩ひとつまみをふりもみ込む。10分ほどおき水分を出す。\\r\\n3　ジップ保存袋に水気を切った2・Aを加えよくもみ込む。冷蔵庫で30分漬け込む。\\r\\n4　味が馴染んだら、器に盛り付け完成。	52	41	0	1	38	0	AOyIcv8ZuKiTqwMrMr8i2g8tbNu2KdNbG79uEW0V.jpg	\N	1	0	1	0	0	2021-11-11 01:14:20	2022-02-08 13:20:32
159	1	カスタードアップルパイ	1 冷凍パイシートは使用する5分くらい前に室温に戻し、フォークで数カ所穴を開け4等分に切る。\\r\\n2 りんごは塩少々でこすり洗いし、4等分のくし形切りにして皮付きのまま芯を除く。繊維にそってさらに3~4等分の薄切り。\\r\\n3 ボウルにカスタードクリームパウダー小さじ4・甘酒大さじ2を入れ混ぜる。\\r\\n4 クッキングシートを敷いた天板にのせ、冷凍パイシートの左右7mmくらい内側に3を乗せ広げる。\\r\\n5 りんごを斜めにバランスよく重ねて並べる。オーブンで焼く。(電気230度15分~・ガス220度15分~)\\r\\n6 粗熱を取る。りんごジャムのこしを切り、りんごの表面に塗る。皿に盛り付ける。	57	37	2	2	5	3	1np0ZRFHVOVorL5FbuUswHKAQ6UKyzrs6v99k48J.jpg	\N	1	1	0	0	0	2021-11-10 02:58:58	2022-02-10 04:20:33
273	1	スペイン	スペインは、南ヨーロッパのイベリア半島に位置し、同半島の大部分を占める議会君主制国家。首都はマドリード。スペイン本土以外に、西地中海のバレアレス諸島やアルボラン海のアルボラン島、大西洋のカナリア諸島、北アフリカの飛地領土のセウタとメリリャを有している。\r\n\r\n民主化されたスペインは1982年に北大西洋条約機構（NATO）に加入、同年の1982年スペイン議会総選挙により、スペイン社会労働党 (PSOE) からフェリペ・ゴンサレス首相が政権に就き43年ぶりの左派政権が誕生した。1986年にはヨーロッパ共同体（現在の欧州連合）に加入。1992年にはバルセロナオリンピックを開催した。一方、国内問題も抱えており、スペインはバスク地域分離運動のETAによるテロ活動に長年悩まされている。	54	61	0	9	0	\N	s6G6TX8kxYIKzPTggZqUyRAoUasEKJVb21GERXXk.jpg	\N	0	0	0	0	0	2021-12-30 15:19:44	2021-12-30 15:19:44
184	1	アップルピクルス&グリーンサラダ	1　リンゴは芯を除き、1cmの角切り。セロリは筋を除き、斜め薄切り。セロリの葉は幅5mmに切り、リンゴと共にボウルに入れて塩小さじ1/4を振る。\\r\\n2　耐熱皿に味付け用Aを入れ、電子レンジで加熱する(600w30秒~)。リンゴ・セロリの葉全体に回しかけ、漬ける(10分~)。\\r\\n3　食パンのみみは1cmの角切りにし、ボウルにドレッシング(小さじ2)と共に入れ、よく混ぜる。クッキングシートをひいた天板に広げ、オーブンで焼く(電気230度12分~/ガス210度12分~)。\\r\\n4　皿にグリーンリーフ・トレビス・セロリを彩りよく盛り付け、クルトンを散らし、ドレッシング(1人小さじ1)をかける。別の器に盛り付けたアップルピクルスを添える。\\r\\n\\r\\n市販のドレッシング使用：キューピーオリーブオイル&オニオンドレッシング	3	54	0	0	2	\N	1EUIttfmNt0xUF5femz6Z0IfQmzmKk0drJzkRwsv.jpg	\N	0	0	0	0	0	2021-12-08 14:50:17	2021-12-11 04:17:26
181	1	魚介のクリームパスタ	魚介類はオリーブオイルで炒める。パスタソースを合わせて、フライパンに加える	57	45	0	2	43	\N	\N	\N	1	1	0	0	0	2021-11-29 08:07:05	2021-12-29 06:18:55
164	1	アジのたたき	アジは青魚です！\r\n1　アジを下処理し、3枚におろす。全ての骨を取り除いて皮を剥ぎ、5mm幅の細切りにする。\\r\\n2　小ネギは小口切りにし、生姜は皮を剥いておろす。\\r\\n3　まな板の上に1と2を一緒にして混ぜる。包丁で軽く叩いて大葉を敷いた器に盛り付ける。	57	46	0	1	42	2	81zmsNokxw5z1rzTZ8o9iMDrB0uhr1HYeb3cGCP0.jpg	\N	1	1	0	1	0	2021-11-10 08:23:20	2022-06-26 09:27:26
183	1	ワンポットナポリタン	1　スパゲティは半分くらいの長さに折り、バットに入れ、浸るくらいの水を加えて置いておく(10分)。玉ねぎは根元を除き、繊維に沿った薄切り。\\r\\n2　ウインナーは細い輪切り。ピーマンはヘタ・種を除き、繊維に沿った薄切り。\\r\\n3　フライパンに水気を切ったスパゲッティ・玉ねぎ・ウインナー・マシュルーム・コーン・ソースAを入れ、フタをし加熱する（強火)。\\r\\n4　沸騰したら均一に混ぜる。火を弱め、蓋をし、パッケージの時間より2分前後長めに加熱する。蓋を取りピーマンを加え、水分を蒸発させるように炒める。(強火1分~)。\\r\\n5　蓋をし蒸らす(1~2分)。ローリエを取り出し、皿にこんもりと盛り付ける。	52	54	0	2	43	\N	QpfwfTtAS5yM7EwXouw4kxt2R7wEc1KBFbvQAPJz.jpg	pgHtKbIN0DtJdWvtfH0zfDQsZzdtq5vt1eg7ft5a.jpg	1	0	0	0	0	2021-12-08 14:30:42	2021-12-29 06:19:26
178	1	ほったらかし肉じゃが	2人分\\r\\n\\r\\n1 　鶏肉とじゃがいもは3cm大に切る。玉ねぎは1cm幅のくし形に切る。\\r\\n2 　鍋に全ての材料・調味料Aを入れて中火にかける。煮たったらフタを少しずらしてのせ、弱火の中火で15分煮る。	52	60	0	1	1	4	9hyX8H8BNUsIJ1BS1gFxr5iFHMkF86GGYk5TKbjh.jpg	\N	1	0	1	0	0	2021-11-17 06:45:33	2022-02-08 13:02:18
176	1	基本のポークソテー	2人前\\r\\n\\r\\n1　豚肉の赤身と脂身の間に4~5箇所切り込みを入れて筋を切る。\\r\\n2　豚肉の両面に軽く塩こしょうして小麦粉適量をまぶしたら、サラダ油大さじ1を熱したフライパンで両面にこんがりと焼き色がつくまで中火でソテーし、最後にしょうゆ大さじ1/2を回し入れて火を止める。\\r\\n3　酒を回し入れて、フタをして弱火で蒸しても良い。\\r\\n4　食べやすい大きさにカットし、グリーンリーフとプチトマト・レモンを飾った皿に盛り付け、最後にパセリ少々を振りかけて完成。	52	43	0	1	1	0	CzoZ44Adc16Oes7lQjPNRmXBhk2HOeqz59dfp4aT.jpg	\N	1	0	1	0	0	2021-11-11 01:31:34	2022-02-08 13:06:17
169	1	鶏肉のトマト煮込み(カチャトゥーラ)	余ったトマトソースは、パスタに使えます！→レシピあり！\r\n1　鶏もも肉は12切れにカットし、(1切れ40g程度)塩こしょう各少々する。玉ねぎとにんにくはみじん切りにする。\\r\\n2　鍋にオリーブ油適量(多めに)をひいて肉を炒める。肉に軽く焼き色がついたらにんにくを加え、香りが出たら玉ねぎも加えて、透明感が出るまで炒める。\\r\\n3　2にトマトの水煮400g・赤ワイン50cc・ローリエ・オリーブ水煮・コンソメの素大さじ1・砂糖小さじ1~2・水1カップを入れて軽く塩こしょうを少々する。フタをして沸いたら弱火にし、時折混ぜながら40分以上煮込む。\\r\\n4　3にバター20gを加えて溶かし混ぜ、必要に応じて塩こしょうをし、器に盛る。上から生クリームを適量回しかけて刻んだパセリを振る。	57	51	0	2	1	0	yOmsIz3QIpQvEBepNzK65RmOHUNaxTrA4FRas03p.jpg	\N	0	1	1	1	0	2021-11-10 11:30:36	2022-02-08 13:11:58
263	1	りんごのスムージー	りんごは皮をむいて、角切り。かぼちゃは皮をむいて水で煮て柔らかくなったものを、ココナッツミルクと一緒に適宜、水や氷を足してミキサーにかける。ホイップクリームは甘味付けはハチミツやメープルシロップ、アガペーシロップで。	53	61	0	2	5	3		\N	0	1	0	1	0	2021-12-29 06:52:10	2022-02-10 05:15:55
186	1	シーフードトマトクリームドリア	1　ベーコンは幅1cmに切る。玉ねぎは根元を除き、繊維に沿った薄切り。シーフードミックス(冷凍)は解凍し、余分な水気を除き、(塩少々・黒こしょう少々)で下味をつける。\\r\\n2　鍋にバター20gを溶かし、ベーコン・玉ねぎを入れ、しんなりとするまで炒める(中火3分~)。端に寄せシーフードミックスを加える。\\r\\n3　焼き色をつけるように焼く。火を止め白ワイン40ccを加え、蓋をして再び火をつけ、蒸し焼きにする(中火~強火2分位)。\\r\\n4　シーフードミックスを取り出し、蒸し汁がなくなるまで炒め合わせる。薄力粉小さじ8を加えて炒める(1分位)。\\r\\n5　トマトペースト大さじ1を加えて炒め合わせる。牛乳480ccを少しずつ加えて溶きのばす。\\r\\n6　コンソメ小さじ1を加え、軽くとろみがつくまで加熱する。塩少々、黒こしょう少々で味を整える(トマトクリームソース)。\\r\\n7　ボウルにご飯、バター10g、塩少々、黒こしょう少々を入れて、切り混ぜる。グラタン皿に分け入れる。\\r\\n8　トマトクリームソースをかけ、シーフードミックス・ピザ用チーズ40gをのせる。\\r\\n9　天板にのせ、オーブンで焼く(電気230度12分~/ガス220度12分~)。受け皿にのせ、イタリアンパセリを散らす。	57	55	2	2	42	\N	tFXqTovU73wUhnWTetfbez2bpx80Om3ruK0FF5n3.jpg	\N	0	0	0	0	0	2021-12-09 02:12:56	2021-12-29 07:38:48
191	1	フリットミスト	下準備\\r\\n●(塩小さじ1・クミンパウダー小さじ1/2)はよく混ぜておく(クミン塩)。●レモン1/2個は塩でこすり洗いし、4等分のくし形切り。\\r\\n\\r\\n1　れんこん80gは皮をむいて、縦4等分に切り、水にさらし水気を除く。ブロッコリー80gは長さを生かして8 等分に切り、ため水で振り洗いし、水気を除く。\\r\\n2　ビニール袋に鶏ひき肉80g・Bを入れよく混ぜる。れんこんの片面に天ぷら粉小さじ1をまぶす。ビニール袋の端を切り、1/4量ずつ絞って塗り広げ形を整える。\\r\\n3　天ぷら粉60g・マヨネーズ小さじ4を合わせ、無調製豆乳80ccを少しずつ加えよく混ぜる。水小さじ1/2~を加え\\r\\n濃度を調整する(衣)。ブロッコリーの花穂に衣をつけ、170度の油で揚げる(1分~)。バットに取り出し油を切る。\\r\\n4　れんこんボートに衣をつけ、170度の油で揚げる(4分~)。バットに取り出し油を切る。皿にフリットを盛り付け、クミン塩・レモンを添える。	9	56	0	1	2	\N	JuWTfLUBuKqfTAwI4P16dl7CPCaiUs9NHavGD8Fx.jpg	AgvA29Hr2WIa3hwK97OhsObseEGXmU0eaUOWEm8I.jpg	0	1	0	0	0	2021-12-10 01:44:11	2021-12-11 06:50:24
23	1	トマトのポトフ~チーズバゲット	余ったソースは、パスタに使えます！→レシピあり！\r\n1　鶏手羽元は水気を抜く。じゃが芋は皮をむき、芽があれば除き、4等分に切る。\r\n2.玉ねぎは根元を残して1/2個を4等分のくし形切り。スライスチーズは長さを活かして、4等分に切る。\r\n3.クッキングシートをのせた天板に、バゲットをのせ、スライスチーズをのせる。オーブンで焼く。電気200度5分・ガス190度5分。パセリをふる。チーズバゲットです。\r\n4.圧力鍋に鶏手羽元・じゃが芋・玉ねぎ・スープ素Aを入れる。\r\n5.専用のフタをし、強めの中火にかける。安全ロックピンが上がり、蒸気が出てきたら弱火にして加熱する。10分。\r\n6.火を止め、安全ロックピンが下がったら、フタを開け、ローリエを除いて塩少々・黒こしょう少々で味をととのえる。\r\n7.器にトマトのポトフを盛り付け、パセリをふりかけたチーズバゲットを添える。＊ オーブンの予熱・電気200度5分・ガス190度5分\r\n★綺麗に盛り付けるコツとしては、バゲットがなければ、生クリーム、パセリをまわしかけると綺麗に！	12	6	1	2	3	4	HTvnrLElyEERTLTKC4yZsHSvWYUUkezE4R2s4k0P.jpg	\N	1	1	1	1	0	2021-11-04 14:50:33	2022-02-08 14:07:17
187	1	紅芯大根のレモンサラダ	1　グリーンリーフは食べやすい大きさにちぎり、水にさらし、水気を切る。紅芯大根は皮を剥き、厚さ2~3mmのいちょう切り。\\r\\n2　ボウルにグリーンリーフ・紅芯大根を入れ、エキストラバージンオイル小さじ2を入れ、ざっくりと和える。\\r\\n3　レモン果汁小さじ1・岩塩少々・黒こしょう少々を加え、さらにざっくりと和える。器に盛り付ける。	3	55	0	0	2	0	kutvn5gunVOCkmwbSQps8j9XQiBLgZoXzQYFQ41e.jpg	\N	1	0	0	0	0	2021-12-09 08:31:29	2022-02-09 08:29:23
275	1	いちご大福	2個分のレシピです。時間かかります。\r\n1.鍋に白玉粉、砂糖、水は少しずつ加えてよく溶きのばし、さらにサラダ油も加えて混ぜる。中火にかけてゴムベラで混ぜながらしっかりと練る（目安は3〜4分）→電子レンジ600wで1分→混ぜる→再度レンジで600w1分でもいいです！\r\n2.①を片栗粉の上に落として2等分する。\r\n3.いちごをあんこで包み、さらに②で包む	48	45	3	1	5	1	\N	\N	0	0	1	0	0	2021-12-31 06:10:22	2022-02-10 04:19:35
197	1	とろとろ卵のサラダ	市販のドレッシング：キューピークリーミィ野菜ドレッシング\\r\\n\\r\\n1　グリーンリーフ60g・トレビス20gは食べやすい大きさにちぎり、水にさらし、水気を切る。\\r\\n2　皿にグリーンリーフ・トレビスを盛り付け、中央に温泉卵(1人1個)をのせる。ドレッシング(1人小さじ1)をかける。	3	57	0	0	2	\N	Pgq96YTJbUovbaSmRbywNy4Zof2w90Q8gKtSi97W.jpg	\N	1	0	0	0	0	2021-12-10 10:09:55	2021-12-11 04:40:38
196	1	トマトのオニオンスープ	1　玉ねぎは根元を除き、繊維に逆らった薄切り。\\r\\n2　ベーコンは幅1cmに切る。\\r\\n3　鍋にオリーブオイル小さじ1を熱し、玉ねぎ・ベーコン・きざみにんにく小さじ1を入れ、玉ねぎがきつね色になる位まで炒める(中~強火5分位)。\\r\\n4　トマトソース200gを加え、煮詰める(強火3分位)。\\r\\n5　水280cc・コンソメ小さじ1を加え、煮る(中火5分)。\\r\\n6　塩少々・こしょう少々で味を整える。\\r\\n7　器に盛り付け、粉チーズ(1人小さじ1/2)・パセリ少々をふる。	52	57	0	2	3	\N	9427HEVm6YQAldHY3WjoU1kneLPAWNol4PnI9nZh.jpg	\N	1	0	0	0	0	2021-12-10 10:04:01	2021-12-28 13:17:51
148	1	フレッシュポルチーニのクリームパスタ	1　にんにく8gは皮・芯を除き、つぶす。ベーコンは幅1cmに切る。\\r\\n2　玉ねぎは根元を除き、繊維に沿った薄切り。\\r\\n3　スパゲティはアルデンテに茹でる。茹で湯は塩大さじ1を入れる。\\r\\n4　フライパンににんにく・オリーブオイル小さじ1を熱し、(弱火)、香りがしてきたらベーコン・玉ねぎ・バター8gを加えて炒める。\\r\\n5　玉ねぎが色付いてきたら、ボルチーニ茸を加え、しっかり炒める。強火５分。\\r\\n6　牛乳120ccを少しずつ加え、旨みをこそげ落とすように軽く煮詰める。\\r\\n7　ソース具材Aを加え、ひと煮立ちさせる。\\r\\n8　水気を切ったスパゲティを加え、ソースをからめるように合わせ、塩少々で味をととのえる。\\r\\n9　器に盛り付ける。	49	35	0	2	43	3	DsGoqyLuQeXUwC54VJB9LnKtoEWLFMGj0QyAMvLI.jpg	2t5zALsXBkMO7CEK3VibtiZv1IcYskYPrqoW0og6.jpg	0	1	0	0	0	2021-11-10 00:17:51	2022-02-08 12:41:08
290	1	即席トマトパスタ	青の洞窟のポモドーロパスタソースを使います！\r\n1.肉を炒めてから、パスタソースをパスタに絡めて、粉チーズ、パセリをたっぷりかける。	52	61	0	2	43	0	I2RqLXMFq9ADuYSXOK23iFJ5Ky5feM3ATpxGDONo.jpg	\N	1	1	1	0	0	2022-01-31 06:07:22	2022-02-08 12:42:38
154	1	わかめとザーサイの和え物	ザーサイがない時は、すりおろしオニオンドレッシングでワカメと千切りのきゅうりのみ味付けする！\r\n\r\n1 きゅうりは厚さ5mmの輪切り。ボウルに入れて塩小さじ1/8をし、10分くらい全体になじませる。水分が出てきたら、手で揉み水気を絞る。\\r\\n2 わかめは水で戻し(5分位・戻し時間はパッケージ参照)、水気を切る。味付きザーサイは千切り。\\r\\n3 ボウルにきゅうり・わかめ・ザーサイを入れ、ごま油小さじ1を加えてよく和える。皿に盛り付ける。	52	36	0	1	38	0	kHSm2tnGRRBLEfybrcNGP1JXu3ONRlNp2i9Q08ky.jpg	\N	1	1	1	0	0	2021-11-10 01:47:54	2022-05-02 23:09:26
201	1	オレンジ栗きんとん	1　さつま芋は皮を厚めにむき、厚さ1cmの半月切り、または、いちょう切りにし、たっぷりの水にさらして水気を切る。\\r\\n2　くちなしの実はお茶パックに入れ、軽くたたいて割る。鍋にさつま芋・かぶる位の水・くちなしの実を入れ、弱火にかける。沸騰したらやや火を弱め、竹串がスッと通るまでゆでる(8分~)。\\r\\n3　水気を切り、くちなしの実を取り出す。さつま芋の粗熱を取り、チョッパーに入れなめらかになるまでかけ、水飴を加え、再度チョッパーにかける(10秒前後)。\\r\\n4　刃をはずし、オレンジジャムを加え、切り混ぜる。皿に盛り付け、栗の甘露煮を飾る。	45	58	0	1	38	\N	AIketBMn5uQMmt915oWmgqz2lVmilRrbfaHcFtqm.jpg	c0XeroBFhzIThrqKXkg7U7uZDTgZ2xzKXYJkQV8b.jpg	0	1	1	0	0	2021-12-10 13:42:54	2021-12-28 14:24:14
200	1	海老の香味焼き	1　えび(有頭)は立て塩・真水の順に洗い、ヒゲを切り、竹串で背ワタを除く。もう1度立て塩・真水の順に洗い(足の部分を特によく洗う)、水気を除き、腹部に切り込みを入れる。\\r\\n2　フライパンに海老・Aを入れ、なじませる。火をつけ、エビに火が通るまで加熱する(中~強火)。はねるようであれば蓋をする。\\r\\n3　火を止め、レモンの果汁小さじ1・薄口醤油小さじ1/2を加え、からめる。皿に盛り付ける。	45	58	0	1	1	\N	B7mnUttctlNyPPExl97OOU0cggApgj7AEpxhQqBK.jpg	XQvuI36KigxLkBTtD0Eb3kkHYcxnvf0xVRyPNsIO.jpg	1	0	0	0	0	2021-12-10 13:31:52	2021-12-26 00:05:10
202	1	紅白なます	★千切りに15分かかります！漬け込みに合計30分！\r\n★酢とレモン果汁入っているので、体にいい！\r\n★レモン果汁は生のものを使用するとワンランク上のおいしさ！\r\n★余りはバクダン丼\r\n1　大根・人参は皮をむき、繊維に沿った薄切り。マッチ棒よりやや細い位の斜めの千切り(なます切り)。ボウルに入れ、塩をして軽く混ぜ、なじませる(10分位)。\\r\\n2　ボウルに調味酢大さじ2・レモンの果汁小さじ1を入れ水気をよくしぼった大根・人参を加えよく混ぜ合わせ、漬ける(20分~)。\\r\\n3　途中上下を返す。皿に盛り付ける。	45	58	0	1	38	\N	FHh5iHo8ZSfY5pm3lh8IL7Ur8k3acPiJU9HI3kY2.jpg	jaElngeIkQp61adHClYqS87ojo5uYDvgeXkismNY.jpg	0	1	1	1	0	2021-12-10 13:54:41	2021-12-28 14:12:05
208	1	バーニャカウダ	バーニャカウダはイタリア北部、ピエモンテの郷土料理。バーニャはソース、カウダは温かいという意味がある。\\r\\n1　にんにくは皮・芯を除き、大きいものは横半分に切る。\\r\\n2　ルッコラは根元・硬い茎を除き、長さを半分に切る。セロリは筋を除き、棒状に切る(4~8本)。\\r\\n3　紅芯大根は皮をむき、薄い半月切り、または、いちょう切り。黄パプリカはヘタ種を除き、長めの乱切り。\\r\\n4　鍋ににんにく・牛乳200ccを入れ、にんにくが柔らかくなるまで加熱する(沸騰後弱~中火20分前後)。＊水分がなくなったら水を足す。加え過ぎ注意。\\r\\n5　にんにくと牛乳に分ける。にんにくをボウルに移し、滑らかになるまでしっかりつぶす(硬い部分があれば除く)。アンチョビペースト小さじ1を加え、均一になるまで混ぜる。\\r\\n6　皿に野菜を彩りよく盛り付ける。器に8を分け入れ、オリーブオイル(1人小さじ1/2)をかけ、添える。	3	59	0	2	2	\N	84eNMn6jUhyMGKl6fnMq0C1jf49CIwz5ZUMran4w.jpg	WoNO3Jk3f4PjQorwP00amPDIhygB8brSPkyiV4Ch.jpg	1	0	0	0	0	2021-12-11 03:22:17	2021-12-13 09:36:46
213	1	トルティージャ	いわゆるスペイン風オムレツ。ちなみにトルティーヤとトルティージャは別の食べ物。	12	61	0	9	1	\N	C1BhtiK29nN2Ex9CpUftYuPdqBFnTuSSeo3BhjYP.jpg	\N	0	0	0	1	0	2021-12-13 09:15:55	2021-12-29 08:06:38
212	1	ピンチョス	スペイン語で爪楊枝や刺すという意味があり、小皿料理であるタパスの中でも、小さくカットしたパンの上に具材が乗っていたり、爪楊枝でさしてあるフィンガーフード全般をピンチョスと呼んでいます。	9	61	0	9	2	\N	6Q1ZY7kigwlE8KsSQtCEYHYzAjbuT3LilKQEY5J4.jpg	\N	0	0	0	0	0	2021-12-13 09:14:30	2021-12-16 04:28:12
203	1	メープル黒豆	1　耐熱皿に黒豆40g・メープルシロップ小さじ2を入れ、混ぜる。ラップをふんわりとかけ、電子レンジで加熱する(600w1分20秒~)。\\r\\n2　ラップを密着させてかけ、そのままおく(鍋止め)。器に盛り付ける。	45	58	3	1	38	4	EWXw9aTaEOMh0AmGoUGAVxjVmKijNSqD3PADG6bN.jpg	oMza15jBMatD5hOsHKJGvWDy82RmJaFFGHmFBngW.jpg	1	1	0	1	0	2021-12-11 00:14:54	2022-02-08 13:20:08
204	1	市田柿のサワークリーム巻き	1　干し柿はヘタを除き、縦に切り込みを入れて開き、種があれば除く。サワークリームは1 × 4cm位の4等分。干し柿にサワークリームをのせて包む。\\r\\n2　形を整える。冷蔵庫で冷やす。3等分に切り、皿に盛り付ける。	45	58	0	1	5	4	eaan7IMuMNZeb83Bz3cSZMtNH0ABQ5ZemgvHiSNY.jpg	CSet6BlYTpJJyGwbQbHuPS7lFYHh1wgnMyInCzP3.jpg	1	0	0	0	0	2021-12-11 00:20:22	2022-02-10 05:17:20
214	1	ソパ・デ・アホ	アホとはスペイン語でニンニクのことです。スペインでは風邪を引いたかなと思ったら、ニンニクパワーたっぷりのソパ・デ・アホを作って飲む人が多いと言います。	54	61	0	9	3	\N	XMXBeHkRhL58yj0wNdmqdRH1RFqDwD6blyoDreGK.jpg	\N	0	0	0	0	0	2021-12-13 09:19:47	2021-12-28 14:38:04
223	1	おせち	作り方	45	63	0	1	0	\N	U7uSiJ72RF6nvJR5BF4ZhipNAfSJ2tOe6YRyajVp.jpg	\N	0	0	0	0	0	2021-12-22 05:50:25	2021-12-29 06:46:55
220	1	小松菜とわかめの混ぜごはん	1.小松菜は葉と茎に分け、それぞれ細かく刻む。乾燥わかめは水に5分ほど浸して戻し、しっかり水気を切って細かく刻む。	52	60	0	1	41	0	dw6htEJsp7WyYeFiW9Jq3ZnJaAccxClTDQJoJq7G.png	\N	1	1	1	1	0	2021-12-13 13:57:07	2022-03-22 14:23:58
217	1	アヒージョ	※作り方画像あり。\\r\\nスペインのバルでは定番な存在。オリーブオイルとニンニクで食材を煮込んだ料理のことで、「タパス」と呼ばれるスペイン南部の伝統的な小皿料理の一つです。厳密にはアヒージョとはスペイン語で「小さなニンニク」や「刻んだニンニク」を表す言葉でしかなく、料理のことをさす場合は「食材名＋アヒージョ」となります。	12	61	0	9	42	\N	rYMUakq9Zv62v110a4cR9wH4vtbbMf0BpiUidNR4.jpg	Ve8wi8XF7D902saIgPgEw4CLnM8ZThRckZRpSdjs.jpg	0	0	0	0	0	2021-12-13 10:52:45	2021-12-29 07:08:29
211	1	ガスパチョ	冷たいスープ	9	61	0	9	3	2	3UPFqKZBfSaX7gBbZsz0bwHZIVFaYH7d1hL2RV44.jpg	\N	0	0	0	0	0	2021-12-13 09:10:59	2022-02-08 14:03:04
165	1	はまぐりの潮汁	1　はまぐりは流水で殻どうしを擦りながら洗う。\\r\\n2　鍋に1・昆布1~2枚・水3カップ・酒50ccを入れて弱火~中火にかけ、アクが出たらアクを取る。\\r\\n3　殻が全て開いたら、はまぐりを取り出し、塩少々とうま味調味料で味をつける。\\r\\n4　器にはまぐりを入れ、吸い地を張り、きざんだ三つ葉を入れる。\\r\\n\\r\\n＊　三つ葉の代わりにカイワレ菜を使っても良い。具に花麩を入れても良い。	48	47	0	1	3	1	VtdcmIXUDo5AN36BQ0KPxjXOgatV4ewTc2dufsMp.jpg	\N	0	1	0	1	0	2021-11-10 10:00:56	2022-02-08 14:07:41
218	1	プッタネスカ（娼婦風パスタ）	レシピ画像あり。\r\n1.オリーブ水煮とニンニクは4〜5枚のスライスにする。\\r\\n2.フライパンにオリーブ油をひき、弱火で1のにんにくをじっくりと炒める。にんにくの香りが立って薄く色がついてきたら、種を取った赤唐辛子とアンチョビを入れ、さらにケッパーとオリーブの水煮を加えて炒める。\\r\\n3.２にトマトの水煮、コンソメの素、砂糖、塩、胡椒をする。\\r\\n4.３にゆでたパスタを加え混ぜ、味を整えてから器に盛り付け、刻んだパセリをふる。\\r\\n\\r\\n※好みで具材に魚介、ツナ、ベーコン、ナス、玉ねぎなどを入れたり、粉チーズをかけても良い。	57	45	0	2	43	\N	LlFzzgGQ2Dm3KB0IFRVRIXHB0oKRbVCezXvAIs65.jpg	YAkf5Z411oZv71y2IXhTi6QcFMCGYSDklTyRkhDJ.jpg	0	1	0	0	0	2021-12-13 13:22:42	2021-12-29 06:22:10
283	1	かぼちゃのポタージュ	1.かぼちゃは種を取り、皮をむいてから電子レンジにかけて火を通す。\r\n2.玉ねぎは薄くスライスし、バターでしんなりするまで炒める。\r\n3.（1と2）をミキサーに入れ、洋風だしを少しずつ加えながら混ぜていく。なめらかになったら、鍋で牛乳を加えてさらに混ぜる。\r\n4.（3）を鍋に移して火にかけ、塩コショウで味をつける。沸いたら火を止めて器に盛り、上から生クリームをかけて刻んだパセリをふる。	49	45	0	2	3	3	OScbNz8yiqFq1zz11ckwhdXugsxPyXo5lOduoNOd.jpg	\N	0	1	1	1	0	2022-01-23 15:59:21	2022-02-08 14:03:46
121	1	チャゾー~ベトナム風揚げ春巻き~	1　タケノコはみじん切り。\\r\\n2　緑豆春雨20gは熱等に浸してもどし(3分くらい)ざるにあげ水気を切り、幅1cm位のざく切り。\\r\\n3　むき海老は背ワタがあれば除き、粗みじん切りにし、粘りが出るまで叩く。\\r\\n4　ボウルにむき海老・豚ひき肉40gを入れ、よく混ぜる。筍・緑豆春雨・調味料Aを加え混ぜる。\\r\\n5　ライスペーパー4枚はキッチンバサミで半分に切る。ライスペーパーの孤の中央を重ねて、水にさっとくぐらせる。\\r\\n6　濡らして硬く絞ったペーパー（紙）に乗せ、ペーパーで水気を抑える。手前に1/4量のたねを乗せる。\\r\\n7　手前を一巻きし、両端を内側に折る。長さ10cm。空気が入らないようにくるくると巻く。\\r\\n8　170度くらいの油で揚げ色がつくまでカラリと揚げる。3分〜。\\r\\n9　バットに取り出し油を切る。器に盛りつけスイートチリソース(1人小さじ1/2)をかける。	57	28	0	7	1	0	zjTf0APoymzXyEwRg1tHRem7ogH75iewdFYYofvi.jpg	FS2evaqXf6kr3NbjZihuBNqjXTrCzXejWePhdUj8.jpg	0	1	1	0	0	2021-11-09 12:39:26	2022-02-08 12:59:18
219	1	早)ねばねばバクダン丼	★マグロの漬け込みに時間かかります！\r\n★前日のなますが余った時にやるといいかも！\r\n★なますの千切りに15分プラス塩揉み10分、酢で20分かかります！\r\n1.マグロはボールに入れ、ごま油小さじ１、醤油小さじ１をかけてラップをかけて１時間ほど冷蔵庫で漬け込みます。ご飯は炊いておく。\\r\\n2.なますはABCの21.12Bメニューを参考に大根200g,人参20gを塩揉みして10分間置いて、レモン果汁小さじ1と酢大さじ2のタレに20分漬け込んでおく。\\r\\n3.長芋は皮を剥いてすりおろしておく。\\r\\n4.オクラは板ずりしてさっと茹でて、輪切りにしておく。\\r\\n5.ご飯の上にマグロ、オクラ、なます、メカブ、長芋、刻みのり、納豆の順で並べ、真ん中に、卵黄を乗っける。上からだし醤油などをかけて召し上がる。	57	61	0	1	41	0	SdcEFDQJYqRUglXo9tmd65i6diL5p9nFtubbjOO6.jpg	\N	1	1	0	1	0	2021-12-13 13:36:13	2022-02-08 13:50:16
205	1	みぞれ雑煮	下準備　電気230度6分~ガス220度6分~　\\r\\n\\r\\n1　大根は皮をむき、タイミングを見計らってすりおろし、水気を軽く切る。みつ葉は根元を除き、長さ4cmにきる。\\r\\n2　角餅はタイミングを見計らってクッキングシートを敷いた天板にのせ、予熱を入れたオーブンで焼く(電気230度6分~ガス220度6分~)。\\r\\n3　鍋にAを入れて混ぜ、混ぜながら加熱する。椀にあんを少し入れ、角もちをのせる。\\r\\n4　残りのあんをのせ、大根おろしをのせる。みつばを飾り、お好みで七味唐辛子をふる。	45	58	2	1	40	4	nmSrM53f54KU6lI4GaPSUIQhb1uWh2zhZyNqX1of.jpg	\N	0	1	0	1	0	2021-12-11 00:29:25	2022-02-08 13:58:26
259	1	茶碗蒸し	茶碗蒸し	45	63	5	1	1	\N	\N	\N	0	1	1	1	0	2021-12-26 00:47:50	2021-12-26 00:47:50
282	1	あおさ汁	1.あおさはサッと水洗いし、水気を切っておく。豆腐は1cm角のさいの目に切る。\r\n2.鍋に和風だしとを入れて火にかけ途中から豆腐も入れる、沸いたら醤油大さじ1と塩少々で味をつける。ひと煮立ちさせたらショウガ汁（好みで）を少し垂らして、乾燥のあおさを入れた器にスープを盛る。	52	45	0	1	3	2	YCXz6em9nl3tA6ynIe06KrdAXwhuO0NputD0F0Mt.jpg	\N	1	1	1	1	0	2022-01-23 15:44:27	2022-11-15 11:09:39
180	1	ズッキーニのパイピッツァ	4人分\\r\\n\\r\\n1 　耐熱ボウルにバター10g・薄力粉10gを入れ電子レンジで加熱(500w約1分)、泡立て器でよく混ぜる。\\r\\n2 　牛乳100ccの半量を加え混ぜ、電子レンジで加熱(500w約1分)。取り出し残りの牛乳を加え混ぜ再びレンジで加熱(500w約1分)。よく混ぜ塩・黒こしょうで味を整える。\\r\\n3 　天板にクッキングシートを敷き、冷凍パイシートを乗せ、周囲1.5cmを残し2を塗る。\\r\\n4 　玉ねぎ・ベーコンを全体にのせ、ズッキーニを重ねて並べ、塩・黒こしょうを少々・粉チーズ小さじ2　をふりオーブンで焼く。(230度・約20分)\\r\\n5 　器に盛り付け、パルメザンチーズ適量を削り全体に散らす。\\r\\n\\r\\nオーブン予熱230度・冷凍パイシートは使用する5分前に室温に戻し、フォークで全体に穴を開け、2枚を5mm重ねて並べ指で押してなじませ、つなぎ合わせておく。	9	61	2	2	41	\N	1eMdpk3lJu3HCgXX6JPtsxaBaTkToesvLd9albQN.jpg	FXCQc6kFm56MaMzxKZPGLB2nvH6robqxlNoHxyBS.jpg	0	0	0	0	0	2021-11-17 07:18:29	2021-12-29 08:19:12
199	1	豚の角煮	★煮卵を加えても美味しいです！その場合は煮汁を多めに入れると卵も浸かって味が染みやすいです。最後、煮汁がどのくらい残っているかによって、オイスターソースの量を工夫します。1日経つと煮卵に味も染み込みやすいです。\r\n1　落としブタを作る。(作り方画像参照)\\r\\n2　しょうがは皮付きのままよく洗い、薄切り。豚バラ塊肉は1人2切れに切る。鍋に豚肉・調味酢小さじ2を入れ、水分がなくなるまでもみ込む。\\r\\n3　脂身を下にして並べ、火をつけ、余分な脂を除きながら、全体に香ばしい焼き色をつける(中火)。\\r\\n4　しょうが・Aを加え、沸騰したらアクを除き、落とし蓋をして煮る(沸騰後弱~中火20分~)。\\r\\n5　落とし蓋を取り、上の脂をすくいとる。オイスターソース小さじ2を加え、煮詰める(中~強火5分位)。\\r\\n6　皿に盛り付ける。	45	58	0	1	1	4	ojStSgAwuGiZKoFMelGiHnURCTY3TYIjW6Rwf8tg.jpg	jGquKdmSa37CXNAwnaihAeMDXzeyvdQBc6w7S8CW.jpg	0	1	0	0	0	2021-12-10 10:28:03	2022-02-08 13:09:18
277	1	サムゲタン風スープ	スープは多めにつくって、余ったスープは翌日、じゃがいもを加えて、とろとろ本格参鶏湯スープが出来上がります！\r\n4人分のレシピです。ストウブ鍋で2人分とかでもいいかも！\r\n1.鶏手羽中は余分な水気を除き、骨と骨の間に包丁を入れ、半分に切る。白ねぎは厚さ1cmの小口切り。青い部分は薄い小口切り。\r\n2.もち米は洗米、吸水（60分）後、水気を切る。クコの実12個は水に浸して戻し（5分くらい）水気を切る。\r\n3.鍋に手羽中、ごま油小さじ1、塩を入れ混ぜる。スープA、もち米大さじ2、白ネギ（白い部分）を加えて加熱する。\r\n4.沸騰したらアクを除き煮る（普通の蓋なし鍋で弱〜中火20分）。塩で味を整える。\r\n5.器に盛り付け、白ネギ（青い部分）をのせ、クコの実を飾る。	57	100	38	3	3	4	I9sHv0nLm4hKm6qoRWhn2D2nGul4vqHjsFrqycBp.jpg	\N	1	1	1	1	0	2022-01-01 15:46:27	2022-02-08 14:05:12
284	1	余り物サムゲタンの栄養たっぷりとろとろスープ	余ったサムゲタン風スープにじゃがいもを2cm四方くらいの大きさの厚さ1mmのスライスにして、小さじ1程度の塩こうじと一緒にじゃがいもが柔らかくなるまで煮詰める。\r\n\r\n味が濃くなって、じゃがいものデンプンでとろみがついた美味しい本格参鶏湯スープが出来上がります！	52	61	0	3	3	4	6I0krKEolHtiLpKqREgr5zr43J34s8Wm4yw6NJSC.jpg	\N	0	1	1	1	0	2022-01-24 00:53:53	2022-02-09 02:58:22
260	1	三の重　煮物	煮物	45	63	0	1	2	4	0DUVwC1dkAS10zpGGGFmG8muyHBpCORgaM538wHh.jpg	\N	1	1	1	1	0	2021-12-26 00:59:50	2022-02-09 08:23:03
35	1	ショコラケイク	1　薄力粉大さじ4・ココアパウダー小さじ2は合わせてふるう。\\r\\n2　ボウルに卵を割り入れ、コシを切り、少し泡立ててから砂糖を2~3回に分けて加え、リボン状になるまで泡立てる。\\r\\n3　1を加え、やや粉っぽさが残る位まで切り混ぜる。\\r\\n4　牛乳を加えて切り混ぜ、紙型に分け入れ、軽く空気抜きをする。\\r\\n5　天板にのせて焼く。電気180度12分、ガス170度12分。竹串で焼き上がりを確認し、粗熱をとる。\\r\\n6　型から外して皿に裏返して置きココアパウター小さじ1/2(4人分)をふるう。ホイップクリーム・ジャム(4人分で20g)を盛り付けミント(1人1つ)の葉を飾る。	12	8	2	2	5	\N	KD9wTEh36lqSxsqstYpHdXb5pCTkc4SUr0jKCJgZ.jpg	\N	0	0	0	0	0	2021-11-05 06:36:58	2021-12-28 12:13:52
210	1	★トナカイチョコプリン	耐熱容器3個分（オンラインなら動画あり）\\r\\n1.ミルクチョコレート（50g）を細かく刻む\\r\\n2.ボールに卵黄1個分、砂糖を入れて混ぜる。\\r\\n3.鍋に牛乳、生クリームを入れて弱火で熱し、小さな泡が立ってきたら火からおろす。\\r\\n4.３の鍋にチョコレートを加えて混ぜ溶かし、2のボールに少しずつ加えながら混ぜる\\r\\n5.耐熱容器にこしながらプリン液を流し入れる。\\r\\n6.フライパンに耐熱容器を並べ、耐熱容器の1/3量が浸かる量の熱湯を注ぎ、蓋をして弱火で15分間熱して冷やす。\\r\\n7.チョコペン、マーブルチョコで顔を作り、チョコ菓子でツノを作り、アーモンドで耳を作る。	12	96	0	2	5	4	9p3MkXFUwiOweJkPwSjBS4b2AWeAcW0oNQbOVeTr.jpg	\N	0	0	0	0	0	2021-12-13 08:59:39	2022-02-10 05:09:56
285	1	セロリとエビの塩麹スープ	セロリはすじを取って斜め薄切り。エビは背ワタを取って食べやすい大きさに切る。\r\n\r\n1.鍋にエビとセロリ、蒸し炒めAを入れ、ぴっちり蓋をして強火で3分蒸し炒めにする。\r\n2.セロリの葉（有れば）、豆腐、スープの素Bを加え、煮たったら中火にして2分ほど煮る。\r\n\r\nエビ100gあたり1150mgのコラーゲン\r\n1人25gあたり288mgのコラーゲン\r\nコラーゲン必要量5000〜10000mg	52	61	0	2	3	0	aLkrDjMEsaCha024zOp2jlNgJnd2JMHY5rME80tA.jpg	\N	1	1	1	1	0	2022-01-24 12:23:55	2022-03-20 13:13:44
25	1	ホワイトムース~ベリーソース仕立て	1　粉ゼラチンは使う直前に湯40cc(50~60度)にふり入れ、溶かす。(ゼラチン液)。生クリームは7分立て（落ちた生クリームの跡が少し残るくらい）にする。(ホイップクリーム)。\\r\\n2　ジャム40g・フランボワーズリキュール小さじ1は混ぜ合わせる。(ベリーソース)。\\r\\n3　ボウルにムース素Aを入れてよく混ぜる。\\r\\n4　ゼラチン液を加えよく混ぜる。\\r\\n5　ホイップクリームを2〜3回に分けて入れ、切り混ぜる。冷蔵庫で冷やし固める。\\r\\n6　皿にすくった5・ベリーソースを盛り付ける。ラズベリーを砕いて散らし、ブルーベリー・ミントの葉を飾る。\\r\\n\\r\\n＊ プレーンヨーグルト・サワークリームは使用する10分前に室温に戻しておく。	12	6	0	2	5	4	JU31kNC5XGUAc3d0RKm7LHjn4FrYXsIVBglySWtg.jpg	8Vm33d90yV6vtTjEoD9t3bOzGxkJBbWJqk6HOEUY.jpg	1	1	0	0	0	2021-11-04 15:15:30	2022-02-10 05:12:18
4	1	黒ごまプリン	1　粉ゼラチンは湯に振り入れ、溶かす。シロップ具材を混ぜ合わせ、クコの実を加える。\\r\\n2　牛乳にフロストシュガー小さじ2を加え、混ぜ溶かす。\\r\\n3　ボウルに黒煉ごまを入れ、2を少しずつ加え溶きのばす。\\r\\n4　溶かしたゼラチンを加えて混ぜ、生クリーム40gを加えて混ぜる。\\r\\n5　器に分入れ冷蔵庫に入れて冷やし固める。\\r\\n6　黒ごまプリンにシロップをかけ、クコの実を飾る。	48	1	0	3	5	\N	ANnQuTToYcDThfz5SrFS8waoh8n6Grw3QIQpzgbm.jpg	\N	0	0	0	0	0	2021-11-04 02:01:02	2021-12-29 06:24:36
77	1	カマンベールチーズのパーネ	1　天板にクッキングシートを敷き、ピザ用チーズを4 等分し、8cmくらいのリング状におく。ボウルにパンたね材料Aを計量し、イーストめがけて仕込み水を加え、しっかりと全体を混ぜる。\\r\\n2　全体がひとかたまりになってきたら、オリーブオイル小さじ4を加え、粉っぽさがなくなるまで混ぜる。台の上に取り出し、ムラがなくなるまでこねる。\\r\\n3　4分割する。生地をそれぞれ10cmくらいの円形に広げ、カマンベールチーズをのせ、生地を寄せて包み、閉じ目をしっかりと止める。＊ カマンベールチーズは4等分に切っておく。\\r\\n4　閉じ目を下にして、ピザ用チーズの上に置き、発酵させる。40度35分~。一度室温に取り出し、そのまま室温発酵。オーブンに予熱を入れる。電気230度12~15分・ガス220度8~10分\\r\\n5　オーブンで焼く。電気230度12~15分・ガス220度8~10分。皿に盛り付ける。	54	17	2	2	5	\N	A67iXbI5GRZEB7Pyjd87B6CNH6qna3Kz8MjaeiPu.jpg	\N	0	0	0	0	0	2021-11-06 17:33:26	2021-12-29 07:39:43
135	1	グレープフルーツゼリー	1　鍋に半量のグレープフルーツジュース(160ccの半量)・砂糖小さじ4を入れる。\\r\\n2　火にかけて温める。\\r\\n3　粉ゼラチン大さじ1を入れ混ぜ溶かす。\\r\\n5　残りのグレープフルーツジュースを加え混ぜる。\\r\\n6　器に分入れ、冷蔵庫で冷やし固める。\\r\\n7　5にグレープフルーツジュース小さじ2(1人分)をかけミントを飾る。	52	31	0	2	5	\N	qAiukSNebC8lia9uke9Z50XBgXEV07sCjFU11uhM.jpg	\N	1	0	1	0	0	2021-11-09 16:00:51	2021-12-28 12:52:11
57	1	ゆず茶のケーキ	1　ボウルに卵を割ほぐし、砂糖を加えてすり混ぜる。\\r\\n2　牛乳40cc・ごま油(白)小さじ8を加え、その都度混ぜる。\\r\\n3　生地用Aを合わせてふるい入れ、滑らかになるまで混ぜる。\\r\\n4　紙型に分入れ、空気抜きをして天板にのせる。\\r\\n5　ゆず茶40gをのせオーブンで焼く。電気180度18分。ガス170度15分~。\\r\\n6　皿に盛り付ける。\\r\\n\\r\\n＊ オーブン予熱必要	54	13	2	3	5	\N	zTXOhcJYUX9LJkCvcziwk64K5fXS150HBUQwCkHG.jpg	\N	0	1	0	0	0	2021-11-06 05:45:32	2021-12-29 06:25:16
41	1	バラのクレープ	1　カップに薄力粉大さじ１・砂糖小さじ1を入れてざっと混ぜ、卵・バニラオイルを加え、ダマがなくなるまでよく混ぜる。\\r\\n2　牛乳大さじ1を加えよく混ぜる。フライパンにバター2gを入れて熱し、焦がさないように溶かす。生地に加え混ぜる。\\r\\n3　色素・水少々は混ぜ合わせ色素液とする。色素液を2に適量加え、混ぜる。\\r\\n4　ペーパーでバターをなじませ、生地を混ぜてから流し入れ、均一に広げて焼く。クレープの縁がチリチリとして色がつき、焼き色がついたら返す。反対の面も10秒ほど焼きバットに取り出しラップをかけ、粗熱を取る。\\r\\n5　カップにカスタードクリームパウダー小さじ1・牛乳小さじ2を入れよく混ぜる。クレープの半面にカスタードクリームを塗り、半分に折りたたむ。円錐状になるようにふんわりと巻き、長さを半分に切る。\\r\\n6　5の上部の口が広い方の巻きをほどき、下部を芯にして上部をふんわりと巻きつける。皿にクレープをのせて形をととのえる。ジャム小さじ1・ミントの葉1枚を飾る。	9	9	0	2	5	1	iKz72Uu4MB4oUzq2bdvW2vd5Lt2q7vbqXfC6lekr.jpg	PrLIWiAgx2dJljQXRztjVHxNaQPnhXepSQrtv6Zg.jpg	0	1	1	0	0	2021-11-05 09:50:59	2022-02-10 05:10:31
110	1	フルーツ和ポンチ	1　羊羹は1本を8等分にする。\\r\\n2　ミックスフルーツ缶は汁気を切る。\\r\\n3　1・２を器に盛り付けメープルシロップ1人小さじ1をかける。	52	25	0	1	5	2	LbGsnOagoa1MfaAsox8IE7ANUoMm3XEm97XirnyZ.jpg	\N	1	0	1	0	0	2021-11-08 10:23:53	2022-02-10 05:11:23
45	1	アップルサイダーゼリー	1　ミントの葉は洗って水気を切っておく。\\r\\n2　りんごジャムは器に分け入れる。\\r\\n3　粉ゼラチン小さじ2は使う直前に湯(50~60度・40cc)にふり入れ、溶かす。ゼラチン液です。\\r\\n4　サイダーにゼラチン液を入れ混ぜる。\\r\\n5　器に分け入れ、冷蔵庫で冷やし固める。\\r\\n6　サイダー小さじ4をかけ、ミントの葉を飾る。(サイダー小さじ1が1人分)	52	10	0	1	5	0	zOsXXaSyIYiT2dG8Z139bQLLO3PXOdq3HFJjzxW5.jpg	\N	1	1	1	0	0	2021-11-05 10:26:42	2022-02-18 09:54:51
198	1	いちごのマリトッツオ	★クリームチーズで作るホイップなので、あっさりしていていい。砂糖も少なめでチーズも摂れて、デザートなのに身体にもいい。\r\n\r\n下準備　クリームチーズは室温に戻しておく。生クリームは泡立ちにくくなるので、直前まで冷蔵庫で冷やしておく。\\r\\n★いちごは高ければ、オレンジジャムを使用しているので、みかんをカットしてのせても良い。\\r\\n★パンはロールパンでも、レーズンパンでも良い。丸く、小さいパンが、クリーム少なくてよくてオススメ。\\r\\n★パンやフルーツを切るのは包丁以外にナイフとフォークのナイフでもいいので、包丁なしでも手軽に作れる。\\r\\n1　ロールパンは斜めに切り込みを入れる。いちごはヘタを除いて洗い、縦4等分の薄切り。\\r\\n2　ボウルにクリームチーズ40g・砂糖小さじ1を入れ、なめらかになるまでよく混ぜる。\\r\\n3　生クリーム80gを少しずつ加え、9分立てにし、しぼり袋に入れる。\\r\\n4　ロールパンの切り込みを開き、奥中央にオレンジジャムを1/4量ずつ入れる。\\r\\n5　しぼり袋の先を3cm位切り、切り込み全体にしぼる。切り口を整える。\\r\\n6　クリームにいちごを貼り付ける。皿に盛り付け、粉糖をふるう。	52	57	0	2	5	\N	ltofcJ0wSRhGKFfBevAm1QrMGdsoVJRJuynEXwKV.jpg	\N	1	1	1	1	0	2021-12-10 10:16:29	2021-12-28 12:58:28
24	1	グラスディップサラダ	1　紅芯大根は皮をむき、1人1枚の半月切りにし、半分くらいまで斜めに切り込みを入れる。黄パプリカはヘタ・種を除き、長めの乱切り。\\r\\n2　かぶは茎を1cmくらい残して切り、根元をよく洗い、8等分に切って皮を剥く。きゅうりは縦4等分にし、さらに斜め半分に切る。1人2切れ。\\r\\n3 　辛子明太子は薄皮を除き、ほぐす。ボウルにサワークリームを入れ、混ぜて滑らかにする。牛乳小さじ1を加えよく混ぜる。\\r\\n4　辛子明太子を加え更に混ぜる。\\r\\n5　器に4を入れ、野菜をバランスよく盛り付ける。\\r\\n\\r\\n＊ サワークリームは使用する10分前に室温に戻しておく。	52	6	0	2	2	\N	S7jSdkkvIrPAnDcClQ0HfT3WqOynvIu07kQ933NF.jpg	\N	1	0	0	0	0	2021-11-04 14:58:56	2021-12-28 13:08:20
209	1	オレンジマフィン	下準備　●材料(サワークリーム以外)は室温に戻しておく。●卵はよく溶きほぐしておく。●オーブンに予熱　電気180度15分~ガス170度15分~\\r\\n\\r\\n1　いちごはヘタつきのまま洗って、水気を除き、アルコール消毒する。\\r\\n2　ボウルにバター40g・砂糖大さじ4を入れ、白っぽくなるまで混ぜる。\\r\\n3　卵を少しずつ加えて、その都度混ぜ、粉類Aをふるい入れて切り混ぜる。\\r\\n4　均一になったら、紙型(マフィン型)に均等に分け入れ、空気抜きをする。\\r\\n5　天板に並べてオレンジジャム小さじ4をのせ、オーブンで焼く。(電気180度15分~ガス170度15分~)。\\r\\n6　粗熱が取れたら皿にのせ、サワークリームをのせ(4人で20g)、いちごを飾る。	9	59	2	2	5	\N	x3dHkI03ntBxI4MK8WcpISkZhaBXuIEcBhYtZJec.jpg	\N	0	0	0	0	0	2021-12-11 03:39:03	2021-12-29 06:25:54
189	1	りんごのジュレ	1　粉ゼラチン小さじ2は使う直前に、湯40ccに振り入れ溶かす。\\r\\n2　ボウルに、(水160cc・フロストシュガー大さじ2・レモンの果汁小さじ1)を入れ混ぜる。\\r\\n3　溶かしたゼラチンを加え混ぜる。\\r\\n4　器に分け入れて、冷蔵庫で冷やし固める。\\r\\n5　ジュレにりんごジャム1人小さじ2をのせる。	52	55	0	2	5	0	TNhjkDn2nKRBHZJc8Bst909bf35xCnBdiB638swO.jpg	\N	1	0	0	0	0	2021-12-09 09:02:05	2022-02-10 05:15:32
137	1	豚竜田揚げのサラダ仕立て	1　豚ロース薄切り肉は長さを半分に切り、サラダ下味Aで下味をつける。\\r\\n2　ゴーヤーは流水の下でたわしでこすり洗いし、水気を切る。筒状のままスプーンで種・ワタを除き、暑さ2〜3mmの輪切り。水菜は根元を除き長さ4cmに切る。\\r\\n3　グリーンリーフは食べやすい大きさにちぎり、水にさらし水気を切る。黄ズッキーニは暑さ2〜3mmの輪切り。\\r\\n4　160度くらいの油にゴーヤを入れ徐々に温度を上げながら、色良く揚げる。6分くらい。パットに取り出し油を切る。\\r\\n5　片栗粉大さじ4〜をまぶした豚肉を広げながら170度位の油に入れ、温度を上げながらカリッとするまで揚げる。5分〜。パットに取り出し油を切る。\\r\\n6　皿に水菜・グリーンリーフ・黄ズッキーニ・ゴーヤ・豚肉を盛り付け、ドレッシング(1人小さじ1)をかける。\\r\\n＊市販ドレッシング　キューピーテイスティドレッシング黒酢玉ねぎ	57	32	0	1	1	2	M041j3lVI8wa5dHFR5rnTKJHgb6gnAzIBynjbilz.jpg	\N	0	1	1	1	0	2021-11-09 21:23:09	2022-02-08 13:09:40
127	1	ライチプリン	1　粉ゼラチン小さじ2は使う直前に湯40ccに振り入れ、溶かす(ゼラチン液)。シロップも作る。40cc湯に砂糖小さじ2を混ぜる。\\r\\n2　ライチ飾り用4個は汁気を切り、縦半分に切る。\\r\\n3　ミキサー(ミル)にライチ8個・砂糖小さじ2・牛乳80ccを入れ、なめらかになるまで回す。\\r\\n4　ボウルに移し、ゼラチン液を加えて混ぜ、生クリーム40gを加えて更に混ぜる。\\r\\n5　器に分入れ、冷蔵庫で冷やし固める。\\r\\n6　ライチプリンにシロップをかけ、ライチ飾り用を飾る。	57	29	0	3	5	2	mEMHNtfwBBWesNZRFXe4uDzAfWiDmSGuayGTTtq3.jpg	\N	0	1	1	0	0	2021-11-09 14:11:13	2022-02-10 05:15:04
257	1	りんごの栗きんとん	1　りんごは皮をむいて、4等分のくし形に切り芯を取り除き、5mm幅の薄切りにする。さつまいもは4cm幅に切り、皮を厚めにむいて10分ほど水にさらす。くちなしの実はお茶パックやさらしなどに包んで、木べらでつぶす。レーズンはぬるま湯に5分ほど浸し、ペーパータオルでふく。\r\n2　鍋にりんご・レモン汁・グラニュー糖を入れて混ぜ30分ほどおく。グラニュー糖が溶け、リンゴの水分が出てきたら弱目の中火にかけ、時々混ぜながら透明になり、しんなりするまで10分ほど煮る。\r\n3　りんごと別の鍋にさつま芋、ひたひたの水、くちなしの実を入れて火にかけ、竹串がスッと刺さるくらいまでゆでる。ゆで上がったらゆで汁を150ml取り置いておく。さつま芋をブレンダー(マッシャーなどでも良い)でよく潰したら、栗の甘露煮のシロップ、ゆで汁を加えてなめらかになるまで混ぜる。\r\n4　3に甘露煮・レーズン・2を加えて混ぜる。弱火の中火にかけて、5分ほどゴムベラで練り混ぜ、塩で味を整える。	45	63	0	1	5	4	\N	\N	0	1	0	0	0	2021-12-26 00:44:36	2022-02-10 05:16:18
49	1	塩キャラメルミルフィーユ	1　冷凍パイシートは、使用する5分前に室温に戻し、フォークで数カ所穴を開ける。縦4等分に切り、長さを3等分に切る。(1人3切れ)\\r\\n2　クッキングシートを敷いた天板に冷凍パイシートを並べる。牛乳小さじ1を塗る。\\r\\n3　アーモンドスライスをのせ、オーブンで焼く。電気220度10分・ガス210度8分\\r\\n4　ボウルに塩キャラメルクリームAを入れ、滑らかになるまでよく混ぜる。塩キャラメルクリームです。\\r\\n5　皿にパイ・キャラメルクリームを組み立てる。\\r\\n6　キャラメルシロップ小さじ1/2をかけ、粉糖小さじ1/8をふるう。(1人分)	9	11	2	2	5	\N	qJiBVC2yqcwmONB2sH4fbc0xUzK2Ncr8Q2JJljNv.jpg	QiEtWiYvFPpjoHS5rDxLtbDTnevBBIBZmgR0sNVe.jpg	0	1	0	0	0	2021-11-05 11:21:54	2021-12-29 06:24:55
194	1	硬めの焼きプリン	下準備　　①オーブン予熱：電気160度20分~ガス150度20分~　②湯を沸かしておく。\\r\\n\\r\\n1　ボウルに卵2個を割り入れよく混ぜる。\\r\\n2　鍋にAを入れ、沸騰直前まで温める。\\r\\n3　火からおろした2に1を少しずつ加え、その都度よく混ぜ、バニラオイルをふり、混ぜる。\\r\\n4　天板に布巾を入れたバットをのせココットを置く。ぬらした茶漉しでこしながらプリン生地を分け入れる。\\r\\n5　ココットに湯が入らないように湯を2cmくらいはる。オーブンで焼く(電気160度20分~ガス150度20分~)。\\r\\n6　冷水で粗熱を取り、冷蔵庫で冷やす。プリンにキャラメルシロップをかける(1人小さじ1/2)。	54	56	2	1	5	\N	irc7PsSbolVZCdQ51j0o99ANbpvlQ84XhsdbPyCQ.jpg	\N	0	1	0	0	0	2021-12-10 07:47:11	2021-12-29 06:25:35
151	1	さつま芋のモンブラン	1　さつま芋は皮付きのままよく洗い、厚さ7〜8mmの輪切りを4枚とり(土台用)、残りは皮を厚めに向き、\\r\\n　　輪切り(芋クリーム用)・水にさらし水気を切る。\\r\\n2　鍋に湯を張り(ざるが浸からない程度)沸騰させる。火を止めクッキングシートを敷いたザルを入れ、\\r\\n　  さつま芋を並べてフタをし、強火で蒸す。火通りを確認し取り出す。\\r\\n3　皮付きの4枚はボウルに入れ、ラム酒小さじ1・砂糖小さじ2を振りかける。土台用です。残りのさつま芋は温かいうちに裏漉し。\\r\\n4　裏ごししたさつま芋に砂糖小さじ2~4を加え、均一に混ぜる。完全に冷めたら冷たい生クリーム(芋クリーム用)40gを3〜4回に分けて入れ、均一に混ぜる。絞り袋に入れる。\\r\\n5　皿にさつま芋を1枚のせ、＊ホイップクリームを1/4量のせる。しぼり袋の先を5〜7mm切る。\\r\\n6　5の上に絞る。ココアパウダー(4人で小さじ1/2)をふるう。\\r\\n\\r\\n＊　ホイップクリームの準備 : 生クリーム(土台用)40gは、砂糖小さじ1/2を加え、8分立てにしておく。	57	35	5	2	5	3	gE0CoH1FbbWFhAFBhm1gO8Jff8Re2bjpqwisstdP.jpg	\N	0	1	0	0	0	2021-11-10 00:41:25	2022-02-10 05:08:43
261	1	セビーチェ	ペルー料理\r\n\r\n1　ボウルにマリネ液の材料を全て入れ、よく混ぜる。材料を全て加え、マリネする(10分~)。\r\n2　海老（殻付)は立て塩(水500ccと塩大さじ1)真水で洗い、竹串で背ワタを除き、もう一度立て塩真水で洗い、水気を除く。耐熱容器に入れ酒をふりかけラップをふんわりとかけ、電子レンジで加熱する(600w1分~)。粗熱を取り、殻を全て除く。\r\n3　赤パプリカはヘタ・種を除き、繊維に沿って薄切り。\r\n4　セロリは筋を除き、斜め薄切り。\r\n5　アボガドは縦長に持ち、包丁を中央の種に当てぐるりと1周し、果肉を2つに割る。種・皮をとり、果肉を1cmの角切り。\r\n6　レモンは塩でこすり洗いをし、輪切り2枚を切り分け、残りは皮をすりおろし、果汁を絞る(大さじ1前後)。輪切りのレモンはいちょう切り。\r\n7　器に彩りよく盛り付ける。	57	61	0	0	2	2	VELjzHnymm2ywx1pknPGCO4pNYwuLdzxRCTJxBO4.jpg	\N	0	1	1	1	0	2021-12-26 01:16:13	2022-04-29 13:48:04
47	1	ホタテのサフランリゾット	1　ほたて貝柱は余分な水気を抜き、ほたて味付けで下味をつける。にんにくは皮・芯を除きみじん切り。玉ねぎもみじん切り。\\r\\n2　ほたて貝柱の両面に薄力粉をまぶす。余分な粉は叩いて落とす。フライパンにオリーブオイル小さじ1を熱し、ほたて貝柱を入れ両面さっと香ばしく強火で焼き、取り出す。ホタテのソテーです。\\r\\n3　同じフライパンににんにく・オリーブオイル小さじ2・16gの半量のバターを入れ、香りが出るまで加熱する。弱火で。玉ねぎを加え色付いてくる手前まで中火で加熱する。\\r\\n4　米を加え、米が透き通るまで炒める。中火~強火で。一度火をとめ、白ワイン40ccを加えアルコール分をとばす。\\r\\n5　スープAを200cc(米にかぶるくらい)加え、時々混ぜながら加熱、中火で5~8分くらい。水分がなくなってきたら、スープを100ccずつ2~3回に分けて加え、アルデンテに仕上げる。\\r\\n　（中火。スープを加えてから合計16〜18分)\\r\\n6　火を止め、残りのバター(8g)、粉チーズを加え、岩塩黒こしょう各少々で味をととのえる。皿に盛り付け、ホタテのソテーをのせセルフィーユを重ねる。\\r\\n\\r\\n＊ 鍋に水・サフラン・コンソメを入れて火にかけ、温めておく。(スープA)\\r\\n     水600~640cc・コンソメ小さじ2・サフラン24本	9	11	0	2	41	\N	PObypACXCCDTwRNq7UCizzNuSneJR5pZ0BwJBmlh.jpg	\N	0	0	0	0	0	2021-11-05 10:55:39	2021-12-29 06:33:33
87	1	あさりとレモンのパエリア	1　玉ねぎはみじん切り。トマトはヘタを除いて洗い、1cm角の角切り。レモンは塩少々でこすり洗いし、表皮のみすり下ろし、1人一切れのくし形切り。\\r\\n2　にんにくは皮・芯を除き、みじん切り。アサリは塩水用水につけてアルミオイルなどでフタをして、冷暗所に置き砂出しをする。流水の下でこすり洗いし、殻の汚れを落とし水気を切る。\\r\\n3　フライパンにあさり・白ワイン40ccを入れ、フタをして貝の口が開くまで加熱。ぬらして硬く絞ったペーパーを敷いたザルに取り出す。取り出した蒸し汁に水・ターメリック小さじ1/4を加えて400~440cc(スープ用A)とする。\\r\\n4　3のフライパンの水気を除き、オリーブオイル小さじ2・にんにく12gを入れ、良い香りがするまで弱火でじっくり炒める。玉ねぎを加え少し色づくまで炒める。\\r\\n5　米を加え、透き通るまでしっかりと炒める。3のスープ用Aにスープ用Bを加え均一に混ぜて表面をならし、水分がほぼなくなるまで加熱する。\\r\\n6　トマト・レモンの表皮・アサリを均一にのせ、フタをして炊く。弱火10~12分。\\r\\n7　火を止め10分~蒸らす。フタを外し強火で再加熱し(1分位)、余分な水分を飛ばす。\\r\\n8　全体を一混ぜし、皿に彩りよく盛り付け、パセリ少々を振り、レモンを添える。\\r\\n\\r\\n★パエリアコツ★〜失敗例から学ぶ〜\\r\\n1.味が薄い→塩を多めに加える\\r\\n2.ごはんが固い→しっかり炒めて、2人分でも水250ccでなく300ccくらいの多めの水で沸騰させる\\r\\n3.焦げた→最後水分飛ばすために強火で炒めるとき、裏返しながら炒める。蒸らし中は中火でなく弱火\\r\\n4.貝の中にごはんが入っている→アサリを取ってからご飯をかき混ぜ、アサリは最後盛り付ける時まで戻さない！	9	20	0	9	41	\N	vOM7IQsbXxzbqh42j1cdORSTnQFXAwfCVW384fxH.jpg	\N	0	0	0	0	0	2021-11-07 16:51:55	2021-12-29 06:34:50
32	1	ロブスターのビスク風パスタ	1　ニンニクは皮・芯を除きみじん切り。玉ねぎもみじん切り。\\r\\n2　ロブスターは解凍して水気を除き、背ワタがあれば除く。頭の付け根あたりからフォーク・指を入れ身を外す。殻もダシにする。捨てない。\\r\\n3　フライパンにバター10gを入れて熱し、半分くらい溶けたら、殻を加えみそなどを取り出しながら香ばしく焼く。\\r\\n4　香りがしてきたら、むき身を加えてさっと焼き、一度火を止め白ワインを加えて加熱し、アルコール分を飛ばす。むき身は取り出す。\\r\\n5　水240ccを加え、みそなどを潰しながら強火で5分ほど煮る。ザルでこす。ロブスタースープです。殻は盛り付けに使用。\\r\\n6　同じフライパンにバター10gを溶かし、にんにく12g・玉ねぎ240gを加えしんなりとするまで炒める。薄力粉大さじ2を加え、粉気がなくなるまで炒める。\\r\\n7　トマトペーストを加えて炒め合わせる。(ロブスタースープ＋水)(= 200cc)を加えてのばし、軽くとろみがつくまで加熱する。\\r\\n8　生クリーム・ハーブ&スパイスミックス調味料(調味料A)を加え、ひと煮立ちさせ、味見をして塩で味をととのえる。塩小さじ1/8~。\\r\\n9　スパゲティを加えて混ぜる。皿に盛り付け、殻を飾る。(茹で湯; 熱湯1.5L・塩大さじ1)	12	8	0	2	43	\N	aUFovaZTSmepbgSuVkI5opSUDpBVhAt67i3REqxe.jpg	\N	0	0	0	0	0	2021-11-05 06:05:32	2021-12-29 07:13:06
291	1	ごぼうポタージュ	1.ゴボウはたわしで洗い、1/2本は斜め薄切りか、ささがきにして酢水にさらし、残りはチップス用にピーラーで縦にスライスする。\r\n2.鍋に油をひき、玉ねぎ、ゴボウを炒める。ごぼうが透き通ってきたら塩を加えてしんなりするまで炒める。\r\n3.ブイヨンを注ぎ入れ、ごぼうに火が通るまで煮て冷ます。ミキサーに移し、豆乳、白練りごま、白味噌と一緒になめらかになるまで撹拌する。\r\n4.鍋に戻し入れ、濃度が濃いようなら豆乳と水（分量外）を足して伸ばし、沸騰させないよう弱火で温め直したら完成。	54	61	0	2	3	4	zB8S56qKvjN5PlOVthD7iB78eYJhCiH70B2R6xR0.jpg	\N	0	0	1	1	0	2022-02-08 09:33:28	2022-02-08 14:04:34
293	1	豚汁	豚汁を作る。	57	61	0	1	3	4	SFcJikz8Zq0vKlKGOEwN5ePfZLUICPIvxG1qgphR.jpg	\N	0	0	1	1	0	2022-02-08 12:22:01	2022-02-09 02:59:07
7	1	チーズクルチャ&ターメリックライス	1　スライスチーズは4つ折りにする。インスタントドライイースト小さじ1/2は仕込み水A(42度〜43度)80ccに入れ、砂糖ひとつまみ(生地用砂糖から)を加えひと混ぜして5分くらい置き、予備発酵させる。\\r\\n2　ボウルに生地用Aを入れて、ざっと混ぜ、予備発酵させた仕込み水Bを加え混ぜる。仕込み水を調節しながら加え混ぜる。ある程度まとまってきたらサラダ油小さじ2を混ぜる。\\r\\n3　台の上に出し、生地の表面が滑らかになるまでこねる。生地を4分割にし、丸め直してラップをかけ生地を休ませる。5分くらい。\\r\\n4　閉じ目を上にして8cm位の円形に薄くのばし、チーズをのせてつつみ、しっかり閉じ目を閉じる。上から押さえて10cm位の円形にのばす。\\r\\n5　サラダ油小さじ2を入れたフライパンに閉じ目を下にして、乾燥させないように蓋をして発酵させる。室温で5分くらい。\\r\\n6　蓋を取り加熱する。閉じ目の面に香ばしい焼き色がついたら、裏返し両面をよく焼く。(中火〜強火4分前後。返して中火3分前後)\\r\\n7　蓋をし、すきまから水40ccを加えて、強火1分蒸し焼きにする。\\r\\n8　米を洗い30分吸水後、水気をよく切り、水160cc・ターメリックを加えて蓋をして炊く。沸騰後弱火10分。火を止め蒸らす。10分くらい。\\r\\n9　こんもりと盛り付けたターメリックライスに、チーズクルチャを立てかける。	9	2	0	8	41	\N	jEPoFUwybaVCen26oIfUnUF7voNpeAfWxFtJmQy4.jpg	\N	0	0	0	0	0	2021-11-04 07:52:53	2021-12-29 07:10:54
9	1	手打ちニョッキのグラタン	1　ベーコンは幅1cmに切る。カマンベールチーズは4等分に切る。\\r\\n2　じゃが芋は皮を剥き、芽を除いて1cm角に切り、5分位水にさらす。水気を切る。鍋にじゃが芋・じゃが芋がかぶるくらいの水を入れて、加熱。\\r\\n3　竹串がすっと通るくらいの柔らかさになるまで茹でて、湯を捨てて、再度火にかけて粉ふき芋にする。\\r\\n4　ボウルに入れ、熱いうちに切るようにつぶす。ニョッキ用材料Nを加え、切り混ぜる。均一に混ざったら、ひと塊にまとめる。\\r\\n5　消毒した台の上に取り出し、滑らかになるまでこねる。生地を4等分する。40cmくらいにのばし、長さ2cmくらいに切る。\\r\\n6　タイミング見計らい、塩大さじ1を加えた熱湯1.5Lを用意しニョッキを茹でる。浮き上がってきてから1分くらい。水気を切ってグラタン皿に分け入れる。\\r\\n7　フライパンにベーコンを入れてから加熱し、炒める。牛乳・生クリームを加えて加熱し、沸騰したら軽く煮詰める。中火5分くらい。\\r\\n8　火を止めて粉チーズ・塩を加えて味をととのえ、ニョッキにチーズソースAをかける。\\r\\n9　カマンベールチーズをのせオーブンで焼く。電気230度15分・ガス220度15分くらい。受け皿にのせパセリをふる。\\r\\n\\r\\n＊オーブン予熱　電気230度15分~・ガス220度15分~	49	3	2	2	41	4	c7UWMxcyuxxRQS1yfjsjiSmnuXXZpTLTkPKhLtPC.jpg	uKfqoIY84PmHSwAs0oX9J8xqa82igFhuwfA6YpN4.jpg	0	1	0	0	0	2021-11-04 09:27:41	2022-02-08 13:49:56
288	1	キャロットラペ	1.にんじんはスライスしてから、千切りにし、塩を入れてよく揉んで10分おき、水気をよくしぼります。\r\n2.ボウルに(A)を入れ、にんじん、レーズンを入れてさらに混ぜたらトッピングにパセリやイタリアンハーブなど緑色のものを盛り付ける。冷蔵庫で冷やして完成です。	53	61	0	2	38	\N	eFfHyIrMrMKyvvuubaMuldFtCFocPWEAlbNTTxU8.jpg	\N	0	0	1	0	0	2022-01-25 04:13:19	2022-01-25 04:13:19
65	1	キャベツのかきたまみそ汁	1　キャベツは葉と芯に分け、芯は薄切り・葉は丸めて幅5mmの千切り。\\r\\n2　鍋に水480~520cc・和風だしの素小さじ1を入れ、ひと煮立ちさせる。ボウルに卵を割りほぐす。\\r\\n3　キャベツを加えて混ぜる。鍋に加えて火を通す。1分~。\\r\\n4　火を弱め味噌を加え、一混ぜする。器に分け入れる。	53	15	0	1	40	1	i2sf6yuZiE3ocWdYfjOz6MkIqlUuHx6VR4YjC6wI.jpg	\N	1	0	1	0	0	2021-11-06 10:20:43	2022-02-08 08:37:21
292	1	コーヒーシフォン	インスタントコーヒー以外の全ての材料と水60ccを耐熱ボールに入れて、良く混ぜ、最後にインスタントコーヒーを加えてさらに良く混ぜる。600w2分半でレンジで加熱する。\r\n容器から出して出来上がり。	52	61	3	2	5	0	fbvHAlndOf1MNDbQwHodWMf70oKFaIAFrRxQhHEj.jpg	\N	1	0	0	0	0	2022-02-08 12:07:07	2022-02-08 12:18:04
94	1	パイナップルとキャベツのコールスロー	1　キャベツは細切りにし、塩小さじ1/8をしておく、10分くらい。\\r\\n2　パイナップルは汁気を切り、粗みじん切り。ボウルに入れ酢小さじ2でマリネする。\\r\\n味付け用Aを加えよく混ぜる。水気をしぼったキャベツを加え、よくあえて混ぜる。10分くらい。\\r\\n3    器に盛り付ける。	57	21	0	2	2	2	zYMZWDJrb6KuiaZddGLXe9LYVg6bm2JJWHAmrY14.jpg	\N	1	1	1	0	0	2021-11-08 03:00:23	2022-04-29 13:48:42
66	1	あさりと春野菜の酒蒸し	あさりの旬は春と秋といわれていますが、とくに4月から5月にかけては産卵を控えて身がふっくらして、旨みが豊富になるおいしい季節です。\r\n\r\n1　あさりは塩水Aにつけて、アルミホイルなどでフタをして冷暗所に置き、砂出しをする。流水の下でこすり洗いをし、殻の汚れを落とし水気を切る。\r\n2.菜の花は根元を除き、長さ2〜3等分に切る。スナップえんどうはヘタ・筋を除き、斜め半分に切る。\r\n3.鍋にあさり・酒大さじ1を入れてフタをし、口があくまで酒蒸しにする。\r\n4.あさりの口がひらいたら、菜の花・スナップえんどうを加えてフタをし、さっと火を通す。\r\n5.味見をし薄ければ、塩少々で味をととのえる。器に盛り付ける。	52	15	0	1	42	1	KLSi4SwBDSq747QrndGK9WjTJ3GlNpbJz8ikypmL.jpg	\N	1	1	1	0	0	2021-11-06 10:26:27	2022-02-08 12:28:29
256	1	カブポタージュ　pin	調理時間　　20分\r\n①カブは厚めに皮をむき、一口大に切る。玉ねぎは、粗微塵切りする。\r\n②鍋にオリーブオイルを入れ、玉ねぎに塩を半分（小さじ1/2)加えて炒める。玉ねぎがしんなりしたらカブと残りの塩を加えてさらに炒める。\r\n③カブの表面が透明になったら水とコンソメを加えて煮る。\r\n④カブがやわらかくなったら、泡立て器でカブを崩す（あればブレンダーなどで撹拌する）。牛乳を加える。器に盛り、ドライパセリで円を描いてリースにし、まわりにピンクペッパーとオリーブオイルを散らす。	12	96	38	2	3	4	uQxwPzPzqswYkXbAAhgQLolfbqaObJlnMu786qMV.jpg	\N	1	1	1	1	0	2021-12-25 23:23:49	2022-02-08 12:34:06
281	1	とろとろ白菜と卵のスープ	1.白菜は葉をざく切りにし、芯は1〜2cmの細切りにする。\r\n2.鍋にサラダ油をひいて火にかけて（1）を炒める。白菜がしんなりしたら中華だしを加えて蓋をし、30分以上煮る（煮詰まった分は中華だしか水を足す）\r\n3.（2）の白菜が柔らかくなったら水溶き片栗粉でとろみをつけ、塩、コショウで味をととのえる。\r\n4.（3）を軽く沸いた状態にし、よく溶いた卵を全体に流し入れる。卵が固まったらごま油をたらす。\r\n5.（4）を器に盛り付け、刻んだ小ネギをのせ、好みで粗挽き胡椒をふる。\r\n\r\n冬場はしょうがやうどん入れて食べても良い！	52	45	0	3	3	4	RHXouXspXJMzFc3e0y8D38a9BtYoRRRTwU35N4rx.jpg	\N	1	1	1	1	0	2022-01-23 15:11:35	2022-02-08 13:34:19
95	1	飲むチーズケーキ	Caは意外と多くはなく、1杯で1日の必要量の10%程度。しかしVAが意外と多く、20%。VDは10%。\r\n脂質が多いため、1〜2杯まで。\r\n\r\n1　パイナップルは水気を切り、1枚を4等分に切る。(1人2切れ)\r\n2　ボウルに生クリームを入れ、6分立てにする。ホイップクリームです。\r\n3  別のボウルにクリームチーズ・フロストシュガーを入れ、クリーム状になるまで混ぜる。4　牛乳を少しずつ加え、均一になるまで混ぜる。\r\n5　チーズクリームAを加えてさらに混ぜる。\r\n6　グラスにチーズクリーム・ホイップクリーム・フルーツグラノーラ・パイナップル・ブルーベリージャムを盛り付け、ミントの葉を飾る。	9	21	0	2	5	0	zxnrl8FtzgHdq84IOKasVvX2qCBpNstgFUEj4Ig7.jpg	7Og2ei7jRldyfRccOVKXhxmVYsdsM4FY2jhe1Mfb.jpg	1	1	0	0	0	2021-11-08 03:10:55	2022-05-01 16:00:25
171	1	牡蠣とほうれん草のレモンクリームパスタ	不足:VD,VCのみ\r\nVB12は835%、Cuは113%、Znは144%。\r\n\r\n1　牡蠣150gは水洗いして熱湯でさっと湯通しし、冷水に落とす。水気をしっかりと拭き取り、塩少々こしょう少々して小麦粉を適量まぶす。\\r\\n2　ほうれん草は熱湯から塩茹でし、水に落としてから水気を搾る。ベーコン2枚は1cm幅に切る。\\r\\n3　レモン1/2個は黄色の皮の部分(2cm × 5cm程度の面積)を薄く削いでから千切りにし、果肉は絞っておく。\\r\\n4　フライパンにオリーブオイルを引き、ベーコンとスライスにしたにんにくを炒める。にんにくの香りが出たら、バターと牡蠣を加えてさらに炒める。\\r\\n5　4に水100cc、生クリーム100cc、粉チーズ大さじ2、コンソメの素大さじ1/2、千切りにしたレモンの皮を加えてひと煮立ちさせる。\\r\\n6　5に茹でたパスタを入れて塩こしょう少々で味を整える。最後に搾ったレモン汁(目安は小さじ2)を加えて手早く混ぜて器に盛る。	57	52	0	2	43	4	kW8Fc9vXSfEe7PYoZ6JYCQlTRq6GBOcJx90oxYDF.jpg	TbPhNnPjWMVrJJ93XIEnXWpg43CRPIzSlJiyY2LQ.jpg	1	1	0	1	0	2021-11-10 20:53:36	2022-03-01 11:18:50
96	1	2種のパスタ~アマトリチャーナ&冷製たらこレモン~	1　ベーコンは幅1cmに切る。にんにくは皮・芯を除きつぶす。（ア）\\r\\n2　玉ねぎは根元を除き、繊維に沿った薄切り。たらこは薄皮を除く。（ア・冷）\\r\\n3　ディルは洗って水気を切り、飾り用に少しとりわけ、残りの葉はちぎり茎はみじん切り。スモークサーモンは長さを活かして半分におり、端から巻き、バラの花の形にととのえる。（冷）\\r\\n4　スパゲティ全量はタイミングを見計らい茹でる。半量はとりわけ、残りは水で冷やし、水気をしっかり切る。\\r\\n5　鍋にベーコン・にんにく・オリーブオイル小さじ1を入れ、弱火で加熱する。にんにくがきつね色になり始めたら粗くつぶす。（ア）\\r\\n6　玉ねぎを加えてしんなりとするまで炒める。ソース用Aを加えて混ぜる。（ア）\\r\\n7　牛乳を少しずつ加えながら混ぜ、中火2分位煮詰める。（ア）\\r\\n8　スパゲティを加えてよくからめ、味見をし、塩黒こしょう各少々で味をととのえる。\\r\\n9　ボウルにたらこ・ディル・ソースBを入れて混ぜる。ラップをかけ冷蔵庫で冷やす。（冷）\\r\\n10　ここにスパゲティを入れてよくからめる。\\r\\n11　皿にアマトリチャーナを盛り付け、粉チーズをかける。\\r\\n12　冷製たらこレモンを盛り付け、スモークサーモン・ディルを飾る。（冷）	54	22	0	2	43	2	bIWS1XTkJF5WdjoFdE5gsrowdCbOYxlpYxKm2z1e.jpg	l03RllLG1oxjhqgdsOkqIu0Z4Cts9GWd8Awa2Izr.jpg	1	1	1	0	0	2021-11-08 06:33:11	2022-02-08 12:38:58
280	1	余り物トマトソースで作るスパゲッティ	★『トマトポトフ』や『鶏胸肉のトマト煮込み』などの肉や野菜のビタミンB群達や旨みが豊富に溶け込んだ余り物のスープを応用して、パスタを作りましょう！余った大豆ミートも使用できます！\r\n★2人分のレシピです！\r\n1.塩を入れたお湯でパスタを茹でる。残り時間3分で根本の固い鞘を剥いた3cmくらいに切ったアスパラガスを入れて茹でる。茹で汁は大さじ1分残しておく。\r\n2.牛肩ロース薄切り肉は1〜1.5cmくらいに刻む。\r\n3.サラダ油を引いて、牛肩ロース薄切り肉を炒めて、色が変わったら大豆ミートを加えて軽く強火で炒める。\r\n4.火を弱めて余ったトマトソースをおたま2杯分くらい加えて加熱し、コンソメを2人分で小さじ1/2程、粉チーズを適量加えて味を調整する。\r\n5.火を止めずに水気を切ったパスタと残った茹で汁を大さじ1程加えて良く混ぜる。\r\n6.盛り付けて上から粉チーズをかけたら出来上がり！	52	61	0	2	43	0	V42Ir4IyqnaHhcqNIkZYaCgdil7dDUU0fS4RRkJd.jpg	\N	1	1	1	1	0	2022-01-17 04:28:12	2022-02-08 12:42:03
132	1	プーパッポンカリー~ソフトシェルクラブと卵のカレー炒め~	1　ソフトシェルクラブ4匹(160g位)は立て塩・真水の順に洗い、水気を除き、腹の部分を半分に切る。\\r\\n2　玉ねぎは根元を除き、繊維に沿って幅2〜3mmに切る。セロリは筋を除き、幅1cmの斜め切り。\\r\\n3　赤パプリカはヘタ・種を除き、幅2〜3mmの薄切りにし、長さを半分に切る。卵はよくときほぐし、カレールーAを加えてよく混ぜる。(卵液)\\r\\n4　フライパンにサラダ油大さじ１を熱し、ソフトシェルクラブを入れ両面を香ばしく焼く。\\r\\n5　ソフトシェルクラブを端に寄せ、玉ねぎ・刻みにんにく小さじ2を入れ、しんなりとするまで炒める。\\r\\n6　セロリ・赤パプリカ・カレー粉小さじ1を入れ、さっと炒める。ルーBを加えて混ぜ、ひと煮立ちさせる。\\r\\n7　具材を端に寄せ、空いているところに卵液を入れ、大きく混ぜて火を通す。\\r\\n8　全体を大きく混ぜ合わせ、セロリの葉を加え、さっと混ぜて火を止める。\\r\\n9　器にご飯を盛り、彩りよく8を盛り付ける。\\r\\n\\r\\nセロリの葉 ;　適量8gほど必要。	57	31	0	5	42	2	p8gYskcerIycdU5agdtGARGQ4gqpp5OcvZMIxOgF.jpg	xCeDongAju5HdWqf0YpCROSz0meSbIgf4b4x3T2u.jpg	0	1	1	0	0	2021-11-09 15:42:33	2022-02-08 12:46:45
179	1	海老とブロッコリーの搾菜あんかけ	2人分\\r\\nむき海老とブロッコリーに桃屋の味付け搾菜をたっぷり合わせて、彩りの良い手軽な炒め物を作ります。	52	60	0	3	42	0	8ZIVXOlrBSAqmJa0NPbSHDHxU1mYPQxwKkumhzCb.jpg	\N	1	0	1	0	0	2021-11-17 06:56:02	2022-02-08 12:47:27
46	1	真鯛のポワレ~サルサヴェルデ仕立て~	鯛は年中食べられますが、真鯛の旬は、年に2回訪れます。それは「春」と「秋」です。\r\n\r\n1　鯛は余分な水気を除き、ウロコがあれば除き、腹に沿って皮面に切り込みを2箇所入れ、岩塩小さじ1/4黒こしょう少々で下味をつける。\\r\\n2　人参は皮をむき、長さ8mmの輪切りまたは半月切り(1人2~3切れ)。かぶは葉付きのまま4等分に切り、茎の付け根をよく洗い皮をむく。\\r\\n3　ブロッコリーは小さめの小房に分け、ため水の中で振り洗いし、茎は根元と固い部分を除き、小房と同じ大きさの乱切り。\\r\\n4　フライパンにオリーブオイル小さじ1を熱し、人参かぶを入れ、焼き色をつける。両面に焼き色がついたら、水を加えてフタをし、水分がなくなるまで蒸し焼きにし取り出す。\\r\\n5　鯛の表面に出てきた水気を拭き、表面全体に薄力粉をつけ余分な粉を落とす。4のフライパンにオリーブオイル小さじ2を足し、皮面から加熱。中~強火5分。\\r\\n6　皮面にしっかりと焼き色がついたら、余分な脂があれば除き、身の部分も焼く。中火2分くらい。\\r\\n7　鍋に水160cc・コンソメ小さじ1/2を入れひと煮立ちさせる。ブロッコリーを加え柔らかくなるまで加熱。弱火4分〜。ざるに上げ粗熱を取る。茹で汁も取っておく。\\r\\n8　ミキサーにブロッコリー・茹で汁小さじ2・半量の生クリームを入れ、滑らかになるまで15秒ほど回す。残りの生クリームを加え、2~3回まわす。\\r\\n9　岩塩・黒こしょう各少々で味をととのえる。サルサヴェルデです。皿にサルサヴェルデ・鯛・野菜を盛り付ける。エキストラバージンオリーブオイル小さじ1/2をかけ岩塩少々を振る。	12	11	0	2	42	1	BHG4K7nSaiNX0qXgp25vNnHh4uqvpDmdPmZ8j1WH.jpg	\N	0	0	0	0	0	2021-11-05 10:41:44	2022-02-08 12:49:34
295	1	梅しらすご飯	全ての材料を混ぜる	53	61	0	1	41	1	DMv45JMFPNEsJxOHqEyeLQuROanDxrLwJIyDtBpG.jpg	\N	1	1	1	0	0	2022-02-13 04:48:20	2022-02-13 04:48:20
75	1	うにトマトクリーム仕立てのロールキャベツ	1　キャベツは熱湯でしんなりするまで1~2分ゆでる。バットにあげ広げて冷ます。芯をそぎ取り巻きやすくする。削ぎ取った芯は包む時一緒に入れる。\\r\\n2　玉ねぎはみじん切り。にんにくは皮・芯を除き、潰す。ボウルにうにクリーム材料Aを入れよく混ぜる。\\r\\n3　ボウルに合い挽き肉・塩小さじ1/8・黒こしょう少々・ナツメグ少々・卵1個・玉ねぎが均一になるように混ぜる。8等分する。\\r\\n4　キャベツの内側を上にして、芯の方を手前に広げる。たねを俵型にし、キャベツの手前に横長に置き、キャベツの芯をのせる。手前片側だけを折って包み、奥へと転がす。\\r\\n5　折り畳んでいない反対側をたねに詰める。鍋に、にんにく・オリーブオイル小さじ1を入れて火にかける。弱火3分〜。にんにくの良い香りがしてきたら、木べらで潰す。\\r\\n6　スープ用材料Bを加え、ひと煮立ちさせ、アクが出たら除く。\\r\\n7　火を止めて、ロールキャベツの巻き終わりを下にして並べ、フタをして強火にかける。沸騰したら中火にして加熱する。\\r\\n8　フタを取り、煮汁をロールキャベツにかけながら、中火~強火で5分程、煮詰める。うにクリームを加え、弱火で2分ほど軽く煮る。\\r\\n9　ローリエを取り出し、ロールキャベツを器に盛りつけ、ソースを分け入れる、パセリを振る。	54	17	0	2	1	0	bstDUNso74RCwvUO6OufwKZDp3LzgfheZJEw4VTO.jpg	\N	0	0	0	0	0	2021-11-06 16:22:27	2022-02-08 12:54:33
128	1	すき焼き丼	1　牛肩ロース薄切り肉400gは大きければ半分に切る。白ねぎ80gは長さは4cmくらいに切る。1人2本。\\r\\n2　しめじ80gは石づきを除き、小房に分ける。水菜120gは根元を除き、ながさ4〜5cmに切る。\\r\\n3　鍋に酒みりん各大さじ2を入れ、火にかける。沸騰まで中火、弱火にして1分加熱。\\r\\n4　割り下Aを作る。\\r\\n5　鍋にサラダ油小さじ1を熱し、白ネギを入れて焼く。\\r\\n6　両面焼き色がしっかりついたら、端に寄せ、牛肉を加えて焼く。\\r\\n7　焼き色がついたら割り下・しめじを加えて煮る。\\r\\n8　牛肉を端に寄せ、水菜を加えてさっと煮る。器にご飯を盛り、すき焼きを彩りよく盛り付ける。\\r\\n9　真ん中をくぼませ、温泉卵をのせ、お好みで七味唐辛子少々をふる。	52	30	0	1	1	0	MJnl2H9l6bYThaZZ2hBtsQh75iEKTonZ1BKbKX7B.jpg	\N	1	1	0	0	0	2021-11-09 14:22:14	2022-02-08 12:55:45
27	1	スペアリブの香味みそ焼き	1　スペアリブは余分な水分を除く。ビニール袋に調味料Aを入れ、よく混ぜ合わせ、スペアリブを加えてよくもみ込み漬け込んでおく。10分くらい。\\r\\n2　クッキングシートを敷いた天板にスペアリブを並べ、オーブンで焼く。電気230度20分・ガス220度16分くらい。皿にスペアリブを盛り付ける。\\r\\n\\r\\n＊ オーブン予熱必要 電気230度20分・ガス220度16分くらい。	45	7	2	2	1	4	kg5SUK2eT4bXzOqMCwIZnPbuPOo0mfFGMg4FDHQZ.jpg	\N	0	0	0	0	0	2021-11-04 22:54:58	2022-02-08 12:56:39
160	1	チキンとかぼちゃのガーリッククリームシチュー~シュクメルリ~	1 鶏ももは余分な水気・脂肪を除き、一口大に切り、塩小さじ1/4・黒こしょう少々で下味をつける、(1人4切れ)。にんにくは皮・芯を除き潰す。\\r\\n2 カボチャは種・ワタを除き、4cm角くらいに切る。片栗粉小さじ2・水小さじ4は合わせる。(水溶き片栗粉)\\r\\n3 鍋ににんにく・サラダ油小さじ1を入れ加熱する。(弱火)。香りがしてきたら火を強め、鶏肉を皮面を下にして加え焼く。香ばしい焼き色がついたら、脂を除き、裏返して肉の面も焼く。\\r\\n4 や黄色がついてきたらかぼちゃも加え、炒め合わせる。余分な脂を除き、火を止め酒を加えて、アルコール分を飛ばし蓋をして火を弱め、蒸し焼きにする。5分~。\\r\\n5 かぼちゃに火が通ったら、牛乳320cc・コンソメ小さじ1を加え弱火で煮る。沸々と沸騰してきたら味見をし、塩小さじ1/8・黒こしょう少々で味を整える。\\r\\n6 水溶き片栗粉(片栗粉小さじ2＋水小さじ4)を加え、全て入った火を強め、粉に火を通す。30秒~。皿に彩り良く盛り付けパセリをふる。	49	38	0	2	1	3	XJ0V14w8gEP9DbXHf6HCGuwEh58zbURNbMJLju2Z.jpg	\N	0	1	1	0	0	2021-11-10 03:14:36	2022-02-08 12:58:07
268	1	チキンと野菜の蒸し煮	ストウブ鍋レシピ。2人分のレシピです。たくさん野菜も摂れます。\r\n\r\n1.鶏もも肉の両面に塩をふる。皮をむき、玉ねぎは4つ割に、人参は乱切り、じゃがいもは4つ割りにする。ミニトマトはへたをとり、ブロッコリーは小房に分ける。\r\n2.鍋にオリーブオイルを入れて中火にかけ、薄く煙が出るまで温める。鶏肉を皮目から入れ、焼き色がついたら裏返し、3分ほど加熱したら一度取り出す。\r\n3.②の鍋に玉ねぎ、人参を入れ、焼き目がつくまで中火で加熱したら、上に②で焼いた鶏肉、じゃがいもを乗せて、蓋をする。蓋の隙間から蒸気が出たら蓋を開けてひと混ぜし、再び蓋をして極弱火（IHの場合は弱火)で30分加熱する。\r\n4.火を止め、しばらくそのまま置く（予熱調理）。鍋が冷めてきたら、ミニトマトとブロッコリーを入れひと煮立ちさせ、黒胡椒をかける。	52	61	38	2	1	4	XKSd6VqO5JZCDDN8V4Cbh758xe9jZcWPAIKYLqFt.jpg	\N	1	0	1	1	0	2021-12-30 04:17:02	2022-02-08 12:58:35
63	1	チキン南蛮~たくあんタルタル添え~	1　鶏もも肉は、余分な水分脂肪を除き、厚みがあれば均一にし、竹串またはフォークなどで皮面に穴を開け、塩小さじ1/2・黒こしょう少々をもみ込む。衣用の卵はよくときほぐし、衣用の材料Aと混ぜ合わせる。\\r\\n2　南蛮酢Bを合わせて混ぜる。卵1個は茹で卵用Cで沸騰後10分茹で、水にとって冷まし、皮をむく。茹で卵完成。\\r\\n3　たくわんはみじん切り。トマトはヘタを除き洗ってくし形にし、さらに斜め半分に切る、1人2切れ。\\r\\n4　フライパンにサラダ油小さじ4を熱し、鶏肉に衣をつけて皮面から入れ、強火6分くらい焼く。\\r\\n5　焼き色がついたら裏返し、余分な脂を除きながら、火が通るまで中火で6分焼く。\\r\\n6　ボウルにたくわんタルタル用の酢小さじ1・砂糖小さじ1・塩小さじ1/8・黒こしょう少々を混ぜ溶かし、玉ねぎを加えてあえる・5分~。ゆで卵の白身を加え、粗みじんに潰す。\\r\\n7　黄身を加えて潰しざっくり混ぜる。たくわん・マヨネーズを加えざっくりと混ぜる。たくわんタルタルソース完成。\\r\\n8　皿に水菜・トマト・レモンを盛り付ける。チキンを南蛮酢にさっとくぐらせ盛り付ける。\\r\\n9　残りの南蛮酢・たくわんタルタルソースをかける。	57	15	0	1	1	0	qByjszWGWTDJZcAhoooS3A7fwxnQQvSHDmPR3pjz.jpg	\N	0	1	1	0	0	2021-11-06 10:11:33	2022-02-08 12:58:55
156	1	デミグラス煮込みチーズハンバーグ	1 玉ねぎ(ハンバーグ用)160gは根元を除き、ザク切りにし、チョッパーで細かいみじん切り。玉ねぎ80g(ソース用)は根元を除き繊維に沿った薄切り。\\r\\n2 しめじは石づきを除き、小房に分ける。まいたけは根元を除き、小房に分ける。ボウルに合い挽き肉・合わせ調味料aを入れ、粘りが出るまでよくこねる。\\r\\n3 玉ねぎ・湿らせたパン粉(パン粉大さじ4に甘酒40ccを加え湿らせておく)・卵を加え、均一になるまでさらにこねる。4等分にして空気抜きをし、直径12cmくらいの小判形に整え、中央を少し凹ませる。\\r\\n4 フライパンにサラダ油小さじ1を熱し、ハンバーグを入れ、両面を焼き固める(強火)。火を止め酒大さじ2を加えてアルコール分を飛ばしながら、鍋底をこそげ落とす。\\r\\n5 別の鍋にサラダ油小さじ1を熱し、ソース用玉ねぎを入れ、しんなりとするまで炒める。しめじ・まいたけを加えてさっと炒める。\\r\\n6 味付け用bを加えて混ぜ加熱する。(中火)。4に加え、蓋をし加熱(沸騰後弱火 10分~)\\r\\n7 蓋を取り、ソースにとろみがつくまで煮詰める。(中~強火)。味見をして、塩こしょう各少々で味を整え、火を止める。\\r\\n8 ハンバーグにスライスチーズをのせる。蓋をして余熱で溶かす。器に盛り付けパセリを振る。	57	37	0	2	1	0	rduBvd0iCYTg6FIVx4bLWWk1giBRrX8kbeJe3Z2B.jpg	wqKZVPcmsuVh5WBBjeU8J8mNUNkzSVGxBXARmSjG.jpg	0	1	1	0	0	2021-11-10 02:15:47	2022-02-08 12:59:39
207	1	ドフィノワ~じゃが芋のグラタン	下準備　オーブンに予熱　電気230度25分~ガス220度25分~\\r\\n\\r\\n1　ボウルにバーニャカウダに使用した牛乳 + 牛乳合わせて320cc・ナツメグ少々を入れ、よく混ぜる(ソース)。じゃが芋は皮をむき、厚さ2mm位の輪切り(水にはさらさない)。\\r\\n2　グラタン皿にじゃが芋の1人分の半量を並べる。コンソメ(1人小さじ1/4)をふり、ピザ用チーズ(4人で80g)の半量をのせ、残りのじゃが芋を並べる。残りのピザ用チーズをのせる。\\r\\n3　ソースをかけ、天板に並べてオーブンで焼く。(電気230度25分~ガス220度25分~)。受け皿にのせる。	9	59	2	2	1	4	gZffHEKxZ8HNCoWV5KL6CTjkXJ7IcO9dNgCXLSab.jpg	UOVy60W4x73Cdj3e2n6V6XvIjOLV2ULzhZPS2nHl.jpg	1	0	0	0	0	2021-12-11 03:16:39	2022-02-08 13:00:01
195	1	ハニーマスタードローストチキン&ローズマリーポテト	下準備　オーブン予熱　電気230度20分~ガス220度18分~\\r\\n\\r\\n1　骨付き鶏もも肉は余分な水気・脂肪を除き、ついていれば足先を切り落とし、骨に沿って切り込みを入れ(2本)、関節にも切り込みを入れる。\\r\\n2　ローズマリーは長さを4等分に切る。じゃが芋はよく洗い、皮付きのまま一口大の乱切り(1人3切れ)。\\r\\n3　ハーブ&スパイスミックス調味料小さじ1、オリーブオイル小さじ2、ローズマリー1枚でマリネする(15分~)。\\r\\n4　ハニーマスタード大さじ2・醤油小さじ2を混ぜ合わせる(マスタードソース)。\\r\\n5　ビニール袋にAを入れてよく混ぜ、骨つき鶏もも肉を加えてよくもみ、なじませる(15分~)。\\r\\n6　天板にクッキングシートを敷き、四隅をねじる。軽く汁気を切った骨つき鶏もも肉を皮面を上にして並べる。\\r\\n7　マスタードソース大さじ2を塗る。隙間にじゃが芋を下味ごと並べる。\\r\\n8　オーブンで加熱する(電気230度20分~ガス220度18分~)。\\r\\n9　焼き上がったら竹串を刺し、火通りを確認する(透明な肉汁ならOK)。皿に8を盛り付ける。	12	57	2	2	1	4	p3GSpko9XXv8CBxVfq56ODZnAoBqTx3dhq1raBUW.jpg	l5gPjHmTQF1qwRfN0oAz9CjdcNJjqUlF7wPIQbdD.jpg	1	1	0	0	0	2021-12-10 08:04:01	2022-02-08 13:00:53
50	1	ボロネーゼのラザニア	1　玉ねぎは根元を除きザク切り。セロリは筋を除きザク切り。にんじんも皮をむきざく切り。にんにく10gは皮芯を除く。\\r\\n2　チョッパーに1を入れ、みじん切りにする。合い挽き肉は塩小さじ1/4・黒こしょう少々をもみ込み、下味をつける。\\r\\n3　バター20gは室温に戻し、薄力粉小さじ2・ココアバター小さじ1/2と混ぜ合わせる。（ココアバター)。市販のホワイトソースに牛乳80ccを少しずつ加えて混ぜて、伸ばす(ホワイトソース)。\\r\\n4　ラザニアは塩大さじ1・オリーブオイル小さじ1/2を入れた熱湯1.5Lで2分茹で、水気を切る。\\r\\n5　フライパンにオリーブオイル小さじ2を熱し、玉ねぎ・セロリ・人参・にんにく・塩小さじ1/8を入れ、半量くらいになるまで焦がさないように炒める。中火~強火10分位。\\r\\n6　野菜を端に寄せ、フライパンにオリーブオイルを小さじ1/2を足し、合い挽き肉を加え、全体に香ばしい焼き色がつくまで焼き固め、ほぐしながら強火5分くらい炒める。\\r\\n7　火を止め赤ワインを加え、再度加熱してアルコール分を飛ばしながら強火で炒める。ソースAを加え、強火3分くらい煮る。\\r\\n8　ココアバターに7を少量加えて溶きのばし、7に加え、強火1分くらい加熱する。塩小さじ1/8・黒こしょう少々で味をととのえる。ボロネーゼソースと言います。\\r\\n9　グラタン皿にボロネーゼソース(1)をスプーン1杯敷いて、ラザニアを半分敷き、(1)をスプーン1杯くらいのせて広げる。ホワイトソース(2)をスプーン半分くらいかける。\\r\\n10　ラザニアを折りたたみ、(1)・(2)→ラザニア半分→(1)・(2)と重ねる。\\r\\n11　ラザニアを折りたたみ、残りの(1)・(2)をかけ、ピザ用チーズをのせる。\\r\\n12　天板にのせオーブンで焼く。電気230度10分。ガス220度10分~。受け皿にのせパセリをふる。	12	12	2	2	1	4	TsDMYC9RFXld8uJ735cYpNsb1SKJnrVXA8fHIIRg.jpg	mXV6k301hhdGEAdfmjcOeBMhIH2vSrLuDNnKcEh3.jpg	0	0	1	0	0	2021-11-06 02:17:02	2022-02-08 13:02:41
310	1	かぼちゃの煮物黄金比	1.かぼちゃはホクホク感が大事なのと小さいと味が染み過ぎて濃くなりがちなので(°∇°;)なるべく大きく切ってね♪\r\n2.鍋に黄金比率の煮汁を入れ強火にかけ沸騰したら大きめに切ったかぼちゃを入れ強めの中火にし、クッキングシートで落とし蓋をします。\r\n3.煮汁量が1/3程度に無くなるまで煮詰めてね♪火の通りに不安があれば、そのままま3分余熱放置でホクホクになるょ♡\r\n4.ホクホク✿かぼちゃの煮物の出来上がり	52	61	0	1	38	3	AqZDcQk5g8zRy6GfDceBTN8bgnf8wy0Ej7DvWeWk.jpg	\N	1	1	1	1	0	2022-02-22 10:24:26	2022-02-22 10:25:55
26	1	伊達巻き寿司	レシピは4人分、2本分、1本6切れのレシピです。\r\n\r\n1 　きゅうりは厚さ2mmの輪切りにし、ボウルに入れて塩小さじ1/8をふり、10分くらい置き、水気を絞る。かに風味かまぼこは軽くほぐし、幅1cmに切る。\\r\\n2　温かいご飯に調味酢をまわしかけ、しゃもじで切り混ぜ、うちわであおぎながら冷ます。きゅうり・かに風味かまぼこを加えてまぜ、2等分する。それぞれラップにのせて包む。\\r\\n3　卵焼き器の横幅に合わせて棒状に形をととのえる。(寿司飯)。ミキサーカップに卵・ちぎったはんぺん・きび砂糖・みりん・醤油を入れ、滑らかになるまで回す・30秒。(味付け調味料A)\\r\\n4　熱してサラダ油小さじ1/2をなじませた卵焼き器に生地を半量流し入れる。アルミホイルでフタをして、弱火8分位焼く。中心まで火が通り(竹串で確認)、表面が乾いてきたら火を止める。\\r\\n5　ラップに焼き面を上にしてのせ、ラップをかけて粗熱を取る。ラップを外して手前に寿司飯をのせる。\\r\\n6　ラップの手前を持ち上げ、寿司飯を押さえながら巻き、巻きすで、巻く。1〜2分置き、形をととのえる。\\r\\n7　形が落ち着いたら、1本を6等分に切る。(1回切るごとに包丁を調味酢でぬらしたペーパーで拭く)。皿に盛り付ける。	45	7	0	1	1	4	iFsDUlAjpLLj1tGWU3JS8tgPGSgyCL7m5M9eIqN9.jpg	LYyfMcDKoNOwKcg1zfxkbTyefjifse2EyIvaJutb.jpg	0	0	1	0	0	2021-11-04 22:44:50	2022-02-08 13:05:25
82	1	四川風麻婆豆腐	1 豚バラ薄切り肉は粗みじん切り。白ネギ40gは縦に十字の切り込みを入れ、薄切りにし2等分する。\\r\\n2　トウチはみじん切り。青花椒はすべてミキサーカップに入れ粗めにかける。\\r\\n3　テンメジャン具材A(ネギは半量の20g)と2を入れ、良い香りがするまで弱火~中火3分で炒める。\\r\\n4　1の豚バラ薄切り肉・豚ひき肉を加え、しっかりと強火で炒め、火を通す。\\r\\n5　合わせ調味液Bを加えてひと煮立させる。\\r\\n6　残りの白ねぎ・水気を切った豆腐を大きめの一口大にすくって加え、強火3分で加熱する。\\r\\n7　豆腐が温まったら、(鍋の中で豆腐が踊る感じ)水溶き片栗粉(片栗粉大さじ1・水大さじ2)を加えとろみをつける。\\r\\n8　火を止めごま油小さじ1を加え、豆腐を崩さないように混ぜる。\\r\\n9　器に盛り付け、お好みでラー油小さじ1・青花椒小さじ1(4人分)をかける。	57	19	0	3	1	0	So62Fqc67lU1MWCLH5HrC3Fe48Kb48wNwEZ7Ttcq.jpg	wP2luN1jjdpYE0Ofygk2YUz646v5MtSNmgwYpFf9.jpg	0	1	1	0	0	2021-11-07 15:08:08	2022-02-08 13:05:52
158	1	りんごと春菊のサラダ	春菊の旬は冬です。\r\n11月頃から2月頃に掛けて多く市場に出回ります。\r\nりんごの旬な時期は11月頃～12月頃といわれています。\r\nスーパーで1年中みかける品種ですが、収穫は10月頃から始まります。\r\n\r\n1.グリーンリーフは食べやすい大きさにちぎり、水にさらし、水気を切る。春菊は茎から葉を外し、長ければ食べやすい長さに切り、水にさらし、水気を切る。\r\n2.りんごは塩少々でこすり洗いし、皮付きのまま芯を除き、厚さ7~8mmのいちょう切り。水にさっとさらし、水気を切る。\r\n3.ボウルにドレッシング(キューピーレモンドレッシング)小さじ4・ゆずこしょう小さじ1/2を入れ混ぜる。グリーンリーフ・春菊・りんごを加え、和える。\r\n4.皿に彩りよく盛り付ける。	57	37	0	1	2	3	I2A2SOrhEXtrLT1qG0WVKwoUFRrHxBK9AQ1us8Ve.jpg	xEOHGzhkgtoTcJOssNhVCyvUkYtB39JdbzTmxYbt.jpg	0	1	1	0	0	2021-11-10 02:46:09	2022-02-09 08:22:24
206	1	牛肉のワイン煮込み	下準備　片栗粉・水は合わせておく(水溶き片栗粉B)。セルフィーユは洗って水気を除いておく。\\r\\n\\r\\n1　牛肩ロース塊肉は余分な水気を除き、1人2切れに切り、(塩小さじ1/4・黒こしょう少々)で下味をつける。玉ねぎは根元を除き、繊維に逆らった薄切り。\\r\\n2　フライパンにサラダ油小さじ1を熱し、玉ねぎを入れて色付くまで炒める。\\r\\n3　圧力鍋にサラダ油小さじ1/2を熱し、牛肉を入れて表面を香ばしく焼き、余分な脂は除く。\\r\\n4　牛肉全体に焼き色がついたら火を止め、余分な脂を全て除く。マディラを加え、鍋底についた旨味をこそげ落とすように混ぜる。\\r\\n5　上記A・2の玉ねぎを加えて沸騰させる。アクがあれば除く。\\r\\n6　専用の蓋をし、強めの中火にかけ、安全ロックピンが上がり、蒸気が出てきたら弱火にして加熱(加圧)する(25分)。\\r\\n7　安全ロックピンが下がったら、蓋を開け、上の脂があれば除く。ローリエを取り出し、塩少々・黒こしょう少々で味を整える。\\r\\n8　水溶き片栗粉Bを加えて加熱し、とろみをつける。\\r\\n9　皿にワイン煮込みを盛り付ける。セルフィーユを添える。	12	59	1	2	1	4	SMLNg89xbbrX1kIPNhkxLrj6ZHqLFk6D7izupgp2.jpg	1KEB47WUwx63q0BvrDk8Xw2JZl6UIggSAJ6qFtLh.jpg	0	1	0	0	0	2021-12-11 00:43:33	2022-02-08 13:08:11
83	1	雲白肉~ウンパイロー~	1　豚バラ薄切り肉は、長さを半分に切る。きゅうりは長さを半分に切り、ピーラーで薄切りにし(1人6~8枚)残りは千切り。\\r\\n2　トマトはヘタを除いて洗い、縦半分に切り繊維に沿った厚さ5mmの薄切り。白ネギ40gは長さ5cm位に切り、周りの白い部分を千切りにし、水にさらし水気を切る。白髪ねぎです。芯の部分は潰す。\\r\\n3　フライパンに甜麺油のための準備Aを入れ、よく混ぜてから加熱。沸騰後弱火3分。粗熱をとる。甜麺油です。\\r\\n4　鍋に白ねぎ用B湯を沸かし、酒・白ねぎの芯を入れる。最沸騰後弱火にし、豚肉を4~5枚ずつ広げて加え、さっとくぐらせ火を通す。\\r\\n5　ザルに取り出して軽く水切りをし、温かいうちに豚肉全体に塩小さじ1/4を振ってなじませ、ごま油小さじ1を回しかけ常温で冷ます。\\r\\n6　皿にきゅうり・トマト・豚肉を盛り付け、白髪ねぎを乗せる。3の甜麺油をかけ、お好みでラー油・青花椒各小さじ1/2をかける。\\r\\n\\r\\n＊  青花椒塩はすべてミキサー(ミル)カップに入れ、粗めにかけておく。	57	19	0	3	1	2	ZhF206B5doBjjjW6r4kmWdvWe0DwIYGfpTf09IW9.jpg	DUoPMrEWdfwQvGnb2kYJEh2UUJ76DyWbb2YIBd4O.jpg	1	1	1	0	0	2021-11-07 16:00:37	2022-02-08 13:10:05
150	1	鶏肉のトマト煮込み	1　鶏もも肉は余分な水気・脂肪を除き、塩小さじ1/4・黒こしょう少々で下味をつける。にんにくは皮・芯を除き、つぶす。\\r\\n2　スライスチーズは角を折り、並べて加熱し、油が抜けてくるまで焼く。沸騰して穴が開き、油がにじんできたら寄せながら丸く形をととのえる。\\r\\n3　触ってもよれなくなってきたら、裏返して焼く。両面色よく焼けたら、バットに取り出す。\\r\\n4　フライパンににんにく・オリーブオイル小さじ1を弱火で加熱。香りがしてきたら皮面から鶏肉を加え、中火で両面焼き色がつくまで焼く。\\r\\n5　カットトマト400g・塩小さじ1/8・黒こしょう少々を加え、皮面を上にして中火5分〜煮る。\\r\\n6　皿に鶏肉のトマト煮込み・チーズガレット・サワークリーム(4人で60g)を盛り付ける。イタリアンパセリを飾り、エキストラバージンオリーブオイル(1人小さじ1/2)をかける。	57	35	0	2	1	4	e5CzNm0dgAi9lN8djl9hPQrfaONm877mm3abBmxt.jpg	\N	0	0	1	0	0	2021-11-10 00:31:54	2022-02-08 13:11:33
258	1	鯖寿司	1　ボウルにご飯・がりしょうが40g・青じそ・塩小さじ1/8を入れて混ぜる。\r\n2　硬くしぼったさらしをかけて蒸らす。\r\n3　ラップ(30cm×30cm　1枚)で2を棒状に握る(香りごはん)。\r\n4　*つめ* 鍋に醤油大さじ1・みりん小さじ2・酒小さじ1を入れとろみがつくまで煮詰める(中火3分~)。\r\n5　クッキングシートを敷いた天板に、揚げ網をのせ、その上にさばをのせて、オーブンで加熱。(電気オーブン200度20分・ガスオーブン190度15分~)。成形まで粗熱を取っておく。\r\n6　ラップの上に、焼き鯖を皮面を下にして置く。\r\n7　香りごはんをのせ、ラップで包む。\r\n8　1回切るごとに包丁を、ぬらしたペーパーで拭きながら、切り込みを入れた部分を切り分ける。切るときはラップをしたまま。\r\n9　腹身の白い部分を手前にして盆に盛り付ける(1人3切れ)。\r\n10　焼き鯖寿司につめを塗る。	45	63	2	1	42	4	VAtIidi9EsEdhuq40aOOWb7ZXLBRt8UeLZQavUun.jpg	\N	0	1	1	0	0	2021-12-26 00:46:43	2022-02-08 13:13:56
190	1	5種のてまり寿司	下準備\\r\\n●米は洗米・吸水(30分~)後水気を切り、水を加えて炊いておく。1人120g。●豚バラ薄切り肉は長さを半分に切り、黒こしょう少々で下味をつけておく。●青じそは肉・鯛用全て軸を除き、縦半分に切っておく。●スモークサーモンは長さを半分に切っておく。●卵液を作っておく。ボウルに(卵1個・砂糖小さじ2・塩小さじ1/8)を入れよく混ぜておく。●(塩小さじ1・クミンパウダー小さじ1/2)はよく混ぜておく。●レモンは塩でこすり洗いし、4等分のくし形切り。\\r\\n\\r\\n1　あわせ酢Aを作る。そこから小さじ1を紅椿用に分けとる。鯛はそぎ切りにし、塩麹小さじ1をぬりラップを密着させてかけ、10分くらいなじませる。\\r\\n2　紅芯大根は皮を剥き、スライサーで薄いいちょう切りにする。塩少々をまぶしてなじませ(10分位)、水気を絞る。ボウルに(紅芯大根・あわせ酢)を入れ、なじませる(10分~)。\\r\\n3　残りの合わせ酢をしゃもじを伝わらせて、ご飯全体に回しかけ切り混ぜる。全体になじんだら、あおりながら切り混ぜる。4等分にし、ぬらして硬く絞ったさらしをかけ蒸らす。1/4量をそれぞれ5等分にし丸く形を整える。\\r\\n4　ラップに豚肉・青じそ・寿司飯の順にのせ、豚肉を巻きつける。しっかりと丸く握り、形を整える。フライパンにサラダ油小さじ1/2を熱し、巻き終わりから入れて、転がしながら全面に焼き色をつける。余分な油を除きBを加えて混ぜ、煮からめる。\\r\\n5　ラップに鯛の塩麹漬け・青じそ・寿司飯の順にのせ、しっかり丸く握り、形を整える。ラップにサーモン・寿司飯をのせ、しっかりと丸く握り、形を整える。\\r\\n6　白みそ(西京味噌)20gに生クリーム20gを少しずつ加えて混ぜ、角がしっかりと立つ位まで混ぜる(白みそデップ)。ラップを外し水気を軽く切った2を孤の方が上になるように上半分、全面に巻き付け、しっかりと丸く握り形を整える。\\r\\n7　フライパンにサラダ油小さじ1/2を熱し、余分な油を除き卵液を流し入れ、全体に広げる。ふちが乾いてきたら裏返してさっと焼き、取り出す。丸抜き型3号で抜く(20枚)。残りはみじん切り(紅椿に使用)。\\r\\n8　ラップに抜いた7(5枚)を少しずつ重ねて円状に載せ、寿司飯をのせ、しっかりと丸く握り形を整える。皿に4・5・紅椿・卵を乗せる。サーモンに白みそデップをのせ、黒こしょう少々を振る。紅椿にみじん切りにした卵を、たまごにとびこ(4人で2g)を飾る。醤油(1人小さじ1/2)を添える。	48	56	0	1	41	0	44nPtHzLxNfqtVRTOAMK3ARpFNyRdlIdOS1c3g2g.jpg	yaAtBlG1ZIvzyWhbUh76C6rqggzb1yZlbNmEU6iM.jpg	0	1	1	0	0	2021-12-09 13:34:12	2022-02-08 13:44:45
109	1	小松菜のごま和え	1　小松菜は根元の土を洗い流し、熱湯(塩少々加える)で湯で水にとり色止めする。根元揃えて水気をしぼる。\r\n2.根元を長さ4cmに切り絞る。ボウルに味付けAをいれて混ぜる。\r\n3.小松菜を加えてよく和える。器に盛り付ける。 \r\n＊　ドレッシング;  キューピー深煎りごまドレッシング\r\n\r\nほうれん草1回生で65g 1/4束の場合\r\n★VA: 227.5/700μg/day 推▲\r\n★VD:0 /5.5μg/day 推\r\n★VE: 1.37/6.0mg/day 推\r\n★VK: 175.5/150μg/day 目安◎\r\n★C: 0/100mg/day 推\r\n★B1: 0.07/1.1mg/day 推\r\n★B2:0.13/ 1.2mg/day 推\r\n★B6: 0.09/1.2mg/day 推\r\n★B12:0/ 2.4μg/day 推\r\n★I: 2/130μg/day 推\r\n★Fe: 1.3/10.5mg/day 推\r\n★Cu: 0.07/0.8mg/day 推\r\n★Zn: 0.46/8mg/day 推\r\n★Ca: 31.9/650mg/day 推\r\n★葉: 136.5/240μg/day 推▲\r\n★Na: 7.0g/day 目標	52	25	0	1	38	4	AJIsP3qLp8IZMvwg6gOOZKBy1ZDxH5aJj9NVNmUY.jpg	\N	1	1	1	0	0	2021-11-08 10:21:04	2022-02-20 04:04:51
120	1	ガパオライス	余ったたけのこは、中華スープや肉団子スープの挽肉に細かく刻んで混ぜても良い！\r\n\r\n1　筍は薄切りにして長さを半分に切り、幅1cmにする。赤黄パプリカはヘタ種を取り除き、幅5mmの薄切りにし長さを半分に切る。\\r\\n2　バジルの葉8g(茎も含む)は葉と茎に分け、葉はそのまま、茎は小口切り。ライム(1/2個)は塩でこすり洗いし、スマイルカットにする。一人一切れ。\\r\\n3　フライパンに赤唐辛子サラダ油各小さじ1を入れ、香りが出るまで炒める。中火。\\r\\n4　豚挽肉を加え、表面を焼き固めてからほぐし、刻みニンニク小さじ1を加えてそぼろ状になるまで炒める。強火。\\r\\n5　余分な脂を除き、筍を加え炒める。パプリカを加えてさっと炒める。\\r\\n6　調味料Aを加え、汁気が少なくなるまで炒める。\\r\\n7　バジルの葉を2〜3cmにちぎりながら茎とともに加え炒める。\\r\\n8　卵はカップに1個ずつ割り入れる。フライパンにサラダ油大さじ1を熱し、卵を入れ加熱する。好みの焼き具合まで。白身がつながっていれば切り離す。\\r\\n9　器に盛り付け、目玉焼きを乗せライムを加える。	57	28	0	5	41	2	ojZ2GsFHkhycCWBu6rwk3S56V5QStiOseUK8pzt3.jpg	\N	0	1	1	0	0	2021-11-09 12:29:58	2022-02-08 13:45:41
152	1	サクサクとろーり五目おこげ	1 ボイルほたて・むき海老は塩・白こしょう各少々で下味をつける。豚バラ薄切り肉は幅4cmに切り、塩・白こしょう各少々で下味をつける。\\r\\n2 赤・黄パプリカはヘタ種を除き、乱切りに(1人各2切れ)。チンゲン菜1株(100g位)は根元を除き、茎は2×4cm位、葉はザク切りにし、茎葉に分ける。\\r\\n3 鍋にサラダ油小さじ1を熱し、ボイルほたて・むき海老を入れ焼く。焼けたものからバットに取り出す。\\r\\n4 同じ鍋にサラダ油小さじ1を足し、豚肉・きざみしょうが小さじ2を入れ、色が変わるまで炒める。(強火)\\r\\n5 赤・黄パプリカ・青梗菜の茎・きくらげ4gを加え、全体に油がなじむまで炒める。合わせ調味料aを加えひと煮立ちさせる。\\r\\n6 チンゲン菜の葉・3を加え、もうひと煮立ちさせる。\\r\\n7 水溶き片栗粉(片栗粉小さじ4を水小さじ8で溶く)を加えて混ぜ、とろみをつける。火を止めごま油小さじ1を加え、一混ぜする。\\r\\n8 おこげを割る。200度の油におこげをいれ揚げる。(30秒~ 1度に6枚まで。)バットに取り出し油を切る。\\r\\n9 器に7を分け入れる。お好みで酢をかける。1人小さじ1/2。別の器におこげを盛り付ける。\\r\\n\\r\\n\\r\\n\\r\\n＊乾燥おこげ : 4枚(14 × 5cm・140g位)	57	36	0	3	41	4	sp7FhQ4bqb6T3Q9sAgcyI9iPUAWgKmNWUFkOJ5zC.jpg	LQKDpsfvdK8xyY90R9Cv7hKIoTgELwzdTuf3rfPK.jpg	0	1	1	1	0	2021-11-10 01:26:37	2022-02-08 13:46:21
170	1	シジミの中華スープ	1　しじみは砂抜きをしたら殻と殻を擦り合わせ流水で洗う。\\r\\n2　長ネギ5cmは縦に切り込みを入れて、外側の薄い皮と内側の部分に分ける。外側のねぎは繊維に沿って細かく千切りにし、しばらく水につけて水気を切る。(白髪ねぎです)。内側のネギは小口切りにする。小ネギも小口切りにする。(適量)\\r\\n3　鍋にごま油少々を引いて、生姜とにんにくを炒める。香りが出たら、しじみを加えてさらに炒め、殻が開き出したら、中華だし4カップを注ぐ。\\r\\n4　3のしじみが全て開いたら、しょうゆ・塩・こしょう少々で味付けをし、小口切りした長ネギを入れラー油適量を垂らしてひと煮立ちさせる。\\r\\n5　4を器に盛り付け、白髪ねぎ・小ネギ・糸唐辛子をトッピングする。	48	52	0	3	3	0	8XYWks3Q72Wqhs8MUTfVgAl0G8izkNcWVfkOxHCH.jpg	\N	1	1	0	1	0	2021-11-10 11:49:14	2022-02-08 14:05:49
215	1	★クリスマスのアイシングクッキー	携帯お気に入り\r\nクッキー型：クリスマスツリー、星型など★\\r\\nアイシングとは？：粉砂糖と卵白や水を練り混ぜて作った砂糖衣のことで、クッキーやカップケーキなどのお菓子の表面にかけたり、絞り出してデコレーションします。食用色素を使って着色し、カラフルなデコレーションをすることもできます。\\r\\n1.下準備：天板にクッキングシートを敷く。薄力粉、ベーキングパウダーは合わせてふるう。バターは常温に戻す。\\r\\n2.クッキー生地：ボールにバターを入れてなめらかになるまで混ぜ、砂糖を加えて白っぽくなるまで混ぜる。\\r\\n3.卵黄を加えて混ぜ、バニラエッセンスを加えて混ぜる。合わせてふるった薄力粉、ベーキングパウダーを加えて粉気がなくなるまでさっくりと混ぜ、手でひとまとめにする。\\r\\n4.生地をラップではさみ、めん棒で3〜4mmの厚さに伸ばして、冷蔵庫で1時間程度冷やす。お好みのクリスマスツリーや星形などの型でくり抜き、天板に並べる。\\r\\n5.170℃に予熱したオーブンで15〜20分ほど焼き、冷ます。\\r\\n6.アイシング：ボールに卵白を入れて混ぜる。別のボールに粉砂糖を入れて混ぜた卵白を少しずつ加えてその都度なめらかになるまでよく混ぜる。\\r\\n7.3等分にし、それぞれ食用色素を入れて混ぜ、色を付ける（緑、黄色）１つはそのまま残す（白）\\r\\n8.コルネ：長方形のクッキングシートを対角線に切って、三角形を作り、1番長い辺の中心を頂点としてコルネの先がとがるように調節しながら巻く。上部を内側に折り込み、さらに折り畳む。計3個作る。\\r\\n9.コルネにアイシングを小さじ2入れて、上部を折り畳み、先を少し切る。同様に3個用意する。残りのアイシングは少量の水で伸ばす。\\r\\n10.クッキーの仕上げ：コルネに入れたアイシングでクッキーを縁取り、内側に少量の水で伸ばしたアイシングを塗る。\\r\\n11.表面を少し乾かし、アイシング（白）で模様をつける。皿にお好みのトッピング（アザランやトッピングシュガー）をして乾かす。残りも同様にお好みに仕上げる。	12	96	2	2	5	4	klkCXwHyQJ5hY3lsAo8wQd8WepQirgAtOWjzMUgM.jpg	\N	0	0	0	0	0	2021-12-13 09:57:28	2022-02-10 04:21:35
185	1	グレープフルーツのクレープ	1　グレープフルーツ(ルビー)は半月切りを中央から4枚取り、2等分にし、8切のいちょう切りにする(飾り用)。残りの皮の黄色の部分のみをすりおろし、果汁を絞る。\\r\\n2　ボウルに粉Aを入れ、ざっと混ぜ、卵を加えてダマがなくなるまでよく混ぜる。牛乳100ccの1/4量を加えよく混ぜる。残りの牛乳・コアントローを加えて溶きのばし、溶かしたバターを加えて焼く直前まで置く。\\r\\n3　焼く直前に、1人分ずつ容器に分ける。温めたフライパンの表面を油(バター)の染みたペーパーでしっかり拭き、生地を一度混ぜてから流し、均一に広げて焼く。\\r\\n4　ふちがチリチリとして色がつき、下の面に焼き色がついたら持ち上げて返す。10秒くらい焼き、焼き色をつける。まな板にうつし粗熱をとる(残りの生地も同様に焼く)。\\r\\n5　クレープを焼いた後のフライパンに、バター10gを溶かし、(グレープフルーツの果汁 + 水)合わせて80cc・砂糖小さじ4・皮を入れて少し煮詰める(3分~)。火を止めてコアントロー小さじ1を加える。\\r\\n6　4を半分に切り、扇形に端から丸め、2つずつ盛り付ける。温かい5をかけて飾り用グレープフルーツを2切れ・洗って水気を除いたミントの葉を飾る。	9	54	0	2	5	2	olfAbvqG6kbZzA5S46FY1JVmVH93IJwBkxd1wUOC.jpg	\N	0	1	0	0	0	2021-12-08 14:53:41	2022-02-10 04:22:46
115	1	ココナッツミルクラッシー	1　なべに半量の牛乳を温める。\r\n2.ココナッツミルクパウダーを加えて溶かす。\r\n3.はちみつを加えて均一に混ぜる。\r\n4.ボールにプレーンヨーグルトをいれ、3の残りの牛乳を少しずつ加えて混ぜる。\r\n5.冷蔵庫で冷やす。\r\n6.グラスに注ぎ入れる。	52	26	0	8	5	0	kI2JHLVquFjs5czW8LCZVwu2BqBGPCZ2ahyDZrJx.jpg	\N	1	0	0	0	0	2021-11-08 11:02:13	2022-02-10 05:08:22
102	1	トゥカロン~韓国風マカロン~	1　ボウルにマカロンミックス40gを入れ、水を加え、軽くなじませる。粉っぽさがほぼ見えなくなったら、角がしっかりと立つ硬さまで泡立てる。マカロンAをふるい入れて切り混ぜる。\\r\\n2　ボウルの側面にこすりつけるようにしながら滑らかにする。(マカロナージュ)半分に分けそれぞれに色素(赤・青)を加え一混ぜする。\\r\\n3　それぞれしぼり袋に入れ、先端を1cmくらい切り、クッキングシートを敷いた天板にしぼる。直径6cm各4つ。\\r\\n4　天板の裏側を軽くたたいて空気抜きをし、オーブンの下段に入れ焼く。焼き上がったらオーブンから取り出し、天板にのせたまま冷やす。\\r\\n5　ボウルにメレンゲ用Bを入れて泡立て、メレンゲを作る。別のボウルにバターを入れ、白っぽくふんわりとするまで、よく混ぜる。\\r\\n6　Bメレンゲにバターの入ったボールを2〜3回に分けて加えその都度よく混ぜる。マカロン(赤)にバタークリームをのせ、周囲にラズベリーをちぎりながらつける。上にマカロン(青)をのせる。皿に盛り付ける。	48	23	2	3	5	1	p6BV0AACu6O4gP3bwJJquNQTtv7fUfd8qmbhWK2w.jpg	E8CyNW7CkDdo4gmo5eJsIFqRRbXCcLkH4tClDTZs.jpg	0	0	0	0	0	2021-11-08 08:08:44	2022-02-10 05:09:28
216	1	★ピスタチオアイスクリーム	4人分\\r\\n1.下準備：ピスタチオペーストは常温に戻しておく。\\r\\n2.ボールにピスタチオペーストを入れ、牛乳を4回に分けて加え、その都度ゴムベラで押し付けるようにして馴染ませ、よく混ぜる。（ピスタチオミルク）\\r\\n3.別のボールに卵黄、砂糖1/2量（30g）を入れて白っぽくふんわりするまで混ぜる。ピスタチオミルクを少しずつ加え、その都度よく混ぜる。鍋に入れる。\\r\\n4.鍋を弱火で常に混ぜながら2〜3分熱し、とろみがついたら火からおろす。粗熱が取れたら、底に氷水を当てて、混ぜながらしっかり冷やす（ピスタチオ生地）\\r\\n5.別のボールに生クリーム、残りの砂糖（30g）を入れて柔らかいツノがたつまで泡立てる。ピスタチオ生地に3回に分けて加え、その都度さっくり切るように混ぜる。\\r\\n6.バットに流し入れ、冷凍庫で2時間以上冷やす。スプーンで全体を混ぜて空気を含ませ、さらに2時間以上冷やし固める。器に盛り、ピスタチオをのせる。	12	96	0	2	5	2	PXGn2marO8ryi38oaEWMROpTzMMlxijQHYybOxfR.jpg	\N	0	0	0	0	0	2021-12-13 10:31:25	2022-02-10 05:10:55
147	1	ブルーベリー大福	1　羊羹は長さを半分に切って折り、ひと塊にする。\\r\\n2　耐熱ボウルに白玉粉用Aを入れて混ぜ、水を少しずつ加える。。ダマが残らないように溶きのばす。ブルーベリージャム小さじ4を加え混ぜる。\\r\\n3　ラップをふんわりとかけ、電子レンジで加熱する。600w1分〜。一部ぷくっと半透明の餅状になったら全体を混ぜる。\\r\\n4　再度ラップをふんわりとかけ、電子レンジで加熱する。600w1分〜。全体に透明感があり、均一なもち状になったら、全体を混ぜる。\\r\\n5　バットに大さじ1の半量の片栗粉をふるい4を移す。残りの片栗粉をふるい、触れる温度になったら均一な厚みになるよう広げ、(12cm×10cm)、粗熱を取り4等分にする。\\r\\n6　5を軽く広げ、中央に羊羹をのせて丸く包む。クッキングシートで包み盛り付ける。	51	34	3	1	5	1	yQynRmoJrB68z6eag6ThnwvfzrlDOsMwzK1uqFTu.jpg	\N	1	1	1	0	0	2021-11-09 23:53:38	2022-02-10 05:11:52
262	1	きんぴらごぼう	2人分のレシピです。\r\n所要時間:25〜30分 千切り15分\r\n★炒め煮とは？\r\n煮物手法のひとつで、材料を油で炒めてから「だし汁」を加え、酒、醤油、みりんなどで味つけする調理法です。材料を炒めてから煮ると旨味が逃げず、油を使うことでコクのある料理に仕上がります。\r\n\r\n準備.\r\nごぼうは皮をこそげ落としておきます。にんじんは皮をむいておきます。ごぼうは酢水に5〜10分さらしておきます。\r\n1.ごぼうとにんじんは千切りにします。\r\n2.フライパンにごま油をひいて中火で熱し、1を入れて炒めます。\r\n3.にんじんがしんなりしたら水50ccを入れ、蓋をして中火で煮ます。\r\n4.火が通ったら蓋を外し、調味料Aを加えて中火で炒め合わせます。汁気がなくなったら火から下ろします。\r\n5.器に盛り付け、白いりごまを散らして完成です。\r\n6.ゆず胡椒（チューブ）を少々混ぜても◎	53	61	0	1	38	4	CQ2SyW6YrbepT0PPfYBzS5Py8XjyWbup0McF4VP4.jpg	\N	0	1	1	1	0	2021-12-29 06:51:19	2022-02-11 01:56:15
296	1	豆苗ふわたまスープ	4人分\r\n1. 豆苗は根元を切り、２ｃｍ幅に切る。椎茸はスライスする。\r\n2.鍋にスープＡを入れて火にかけ、沸騰したら、（１）の豆苗、しいたけを加える。\r\n3. ひと煮立ちしたら、溶き卵を回し入れて、ゆっくりとかき混ぜる。	52	61	0	3	3	0	a7hxcugZRo6kdZoPDUBT6EsFuCvqm1wEdik9wZjA.jpg	\N	1	1	1	0	0	2022-02-13 11:06:53	2022-02-13 11:06:53
59	1	キャロットポタージュ	作り方画像あり。\r\n1.人参は皮をむき、縦半分に切り、斜め薄切り。（薄っぺらく）鍋にバターを入れて加熱し、バターが半分くらい溶けてきたら、人参・塩を加えて炒める。鍋が温まるまで強火・弱火15分~。\r\n2.にんじんの量が半分くらいになったら、水120cc、コンソメ小さじ1を加え、水分がほぼ無くなるまで煮る。弱火5分~。火を止め粗熱を取る。\\\r\n3.人肌くらいの温度まで下がったら、ミキサーカップに入れ、牛乳を少量加え(400ccのうち少量)ピューレ状にする。\r\n4.人参のピューレを鍋に移し、ミキサーカップに残りの牛乳の半量を入れ、攪拌させる。\r\n5.鍋の人参のピューレにミキサーカップの牛乳・残り全ての牛乳を加えて均一に混ぜる。\\r\\n6　温めて味見をし、塩小さじ1/4・黒こしょう少々で味を整える。器にポタージュを注ぎ、パセリを振る。	12	14	0	2	3	0	qzp9oW3uWAHfW4GDA54hoCHzBtsuNk0KfTYOIQ7w.jpg	QWbl4b1t1nyQi3dqBGSEzB4shlTZMRJucmLLHk7F.jpg	0	1	1	1	0	2021-11-06 06:26:23	2022-02-13 05:11:27
297	1	サーモンと芽キャベツのフリカッセ	作り方画像あり\r\n1.鮭は塩を振って5分おき、両面の水気を除く。薄力粉を薄くまぶす。\r\n2.芽キャベツは縦半分に切る\r\n3.マッシュルームは縦半分に切り、大きなものは十字に4等分する\r\n4.スキレットにオリーブオイルをひき、中火で熱し、生鮭を皮面から焼く。両面こんがり焼いたら一度取り出す。\r\n5.スキレットに火を止めてから白ワインを加え、3分中火で熱して1/2量になるまで煮詰める。牛乳を加え、混ぜてから生クリーム、塩胡椒を加える。\r\n6.芽キャベツ、マッシュルームを加え、弱めの中火で5分煮詰めて、生鮭を加える。弱目の中火でソースを鮭に回しかけながら、さらに2分煮込む。\r\n7.バターを加え、溶けたらディルを飾る。	54	61	0	2	42	1	N8wBvOsUWt9LKcfie4xEcGd1KWYl7LIiT6Klgwtv.jpg	bO8Key3OQIFs35y6dXUpBDyeriozCzefuyOZ6ov0.jpg	0	0	0	0	0	2022-02-14 07:28:50	2022-02-14 07:53:32
298	1	和風あんかけオムライス	★2104Aオムライス、2104Bチャーハンの作り方を参考にして作る\r\n★あんは余ったらあんかけなすに利用すると良い！\r\n\r\n〜下準備〜\r\n★ごはんを炊いておく\r\n★卵をカバー用とチャーハン用で溶かしておく。\r\n\r\n〜チャーハン〜\r\n★ごはんを炊いて、大きめのボールに2人分の卵2個、刻んだザーサイ22g、市販の刻みしょうが小さじ1/2、塩少々を加えて混ぜ、熱々のごはんを加えて混ぜる。\r\n熱々のフライパンにサラダ油をひき、木ベラを2本使って切り混ぜる。加熱途中でじゃこも投入して炒める。和風オムライスのため、パラパラより少ししっとりめで火を止めて蓋をしておく。\r\n\r\n〜あんと卵カバー〜\r\n★あんと卵カバーを同時に作る。\r\nあんは小さい鍋に2人分のめんつゆ（2倍濃縮）100mlと水300ml、オイスターソース小さじ2を加えておく。\r\n★卵カバーはボールに1人分の卵1.5個に牛乳大さじ1、塩少々を加えて混ぜておく。フライパンにサラダ油と多めのバターを溶かし入れ、フライパンは熱々に熱しておく。\r\n★あんは火をつけ、沸騰したら水溶き片栗粉を小さじ2〜加える。\r\n★カバーは、熱々のフライパンに卵液を加え、菜箸をつかって混ぜ、ふわとろオムライスにする。\r\n★1回ごとにフライパンは焦げ付くので洗う！\r\n\r\n〜トッピング〜\r\n★深めのうどん皿にじゃこチャーハンを山型に盛り付け、卵をかぶせる。トッピングの大根おろし、刻みねぎ、刻みのりをちらし、あんを全体にたっぷりかける。	9	61	0	1	1	0	cfnhMggk4QcpfeBynTab3MieEH2cmzBl7uBIzPdn.jpg	\N	0	1	1	1	0	2022-02-14 11:05:40	2022-02-19 05:22:00
301	1	白だしうどん	★刻みのりが意外と栄養素多い\r\n★常備品:冷凍うどん、乾燥わかめ、ごま、刻みのり、レモン、白だし\r\n★豚の薄切り肉を麺を茹でた後のお湯で湯がいて入れるとVB1も摂れて栄養が増える！\r\n\r\n特に、ごま、乾燥わかめ、刻みのりは手の届く範囲にあると便利\r\n\r\n★VA:     69 /700μg/day 推↓↓\r\n★VD:     0/5.5μg/day 推↓↓\r\n★VE:     0.37/6.0mg/day 推↓↓\r\n★VK:     15.2/150μg/day 目安↓↓\r\n★C:      5/100mg/day 推↓↓\r\n★B1:    0.07/1.1mg/day 推↓↓\r\n★B2:     0.09/1.2mg/day 推↓↓\r\n★B6:      0.04/1.2mg/day 推↓\r\n★B12:    1.74/2.4μg/day 推→◎\r\n★I:         70/130μg/day 推→◎\r\n★Fe:     0.82/10.5mg/day 推↓↓\r\n★Cu:     0.12/0.8mg/day 推↓↓\r\n★Zn:     0.34/8mg/day 推↓↓\r\n★Ca:     13.8/650mg/day 推↓↓\r\n★葉:     42/240μg/day 推↓↓\r\n★Na:    0.27/ 7.0g/day 目標◎	45	1	0	1	41	0	Vm1F7uV6L0NPCv9GtLAG0YEw2QYdqN1J8WBQURNT.jpg	\N	1	1	0	0	0	2022-02-17 10:04:11	2022-02-21 06:08:18
299	1	和風あんかけなす	★和風あんかけオムライスの余ったあんを使用すると良い。\r\n\r\n1.あんは鍋にめんつゆ50ccに水150ccを溶かして沸騰したら水溶き片栗粉を小さじ1〜加えてとろみをつける。\r\n2.なすは皮側に縦、横と切り込みを入れ、素揚げする。\r\n豆腐は食べやすい大きさにカットする。\r\n3.沸騰したあんに豆腐と素揚げしたなすを加えて、味が馴染むまで煮る。	9	61	0	1	38	0	nypTLQ75vdRtsl67R67GraEc6VLs6k9hm1gKOff4.jpg	8wR3rKyn24h0SLo8cvKcLDat5mZPCAK9Dtz7IVae.jpg	1	1	0	0	0	2022-02-15 11:01:42	2022-03-01 13:04:52
279	1	みかん	1日2個のみかんは健康の素！VA,C補給。\r\n1個より2個が良い。\r\n閉経後の骨粗鬆症を予防するβクリプトキサンチンをたくさん含むのはこのみかんくらい！血中滞留時間が長く、冬場に大量にとれば、夏場ももつ。\r\n動脈硬化予防効果や、発ガン予防、美肌を保つためにヒアルロン酸合成を活性化する効果もある！\r\nクエン酸で疲労回復も望めます！\r\nめんどくさければ、とりあえずみかん(^^)\r\n【値段】57円/1個\r\n\r\n★VA:     69 /700μg/day 推↓↓ 2個で140μg\r\n★VD:     0/5.5μg/day 推↓↓\r\n★VE:    0.3 /6.0mg/day 推↓↓\r\n★VK:     0/150μg/day 目安↓↓\r\n★C:      24.8/100mg/day 推↓↓ 2個で50mg\r\n★B1:    0.07/1.1mg/day 推\r\n★B2:     0.02/1.2mg/day 推\r\n★B6:      0.04/1.2mg/day 推\r\n★B12:    0/2.4μg/day 推\r\n★I:         0/130μg/day 推\r\n★Fe:     0.08/10.5mg/day 推\r\n★Cu:     0.02/0.8mg/day 推\r\n★Zn:    0.08/ 8mg/day 推\r\n★Ca:    11.25/ 650mg/day 推\r\n★葉:     0/240μg/day 推\r\n★Na:     0/7.0g/day 目標	52	61	0	1	2	0	aN8wfGkQtMyKOXEubA8LPAKd4849enkUGpBjI8Ud.jpg	\N	1	1	1	1	0	2022-01-11 03:06:02	2022-02-17 14:44:00
302	1	豆皿豆腐　98	刻み生姜としょうゆをかけて頂く。\r\n\r\n★VA:      /700μg/day 推\r\n★VD:     /5.5μg/day 推\r\n★VE:     /6.0mg/day 推\r\n★VK:     /150μg/day 目安\r\n★C:      100mg/day 推\r\n★B1:    1.1mg/day 推\r\n★B2:     1.2mg/day 推\r\n★B6:      1.2mg/day 推\r\n★B12:    2.4μg/day 推\r\n★I:         130μg/day 推\r\n★Fe:     10.5mg/day 推\r\n★Cu:     0.8mg/day 推\r\n★Zn:     8mg/day 推\r\n★Ca:     650mg/day 推\r\n★葉:     240μg/day 推\r\n★Na:     7.0g/day 目標	52	1	0	1	0	0	Ra4SWwkBKOAU9p5lOYK5WKV025ToKF24hVeeoGpK.jpg	\N	1	0	0	0	0	2022-02-17 10:59:41	2022-02-17 12:46:03
287	1	キムチ納豆	1.ボウルに納豆を入れて軽く混ぜる。キムチ、白いりごま、付属のたれ、ごま油を加えてよく混ぜる。\r\n2.器に盛り、細ねぎをちらす。\r\n\r\n付属のタレやごま油は材料を全て入れてから、後から加えて混ぜるのがコツ！\r\n青ネギをちらすと色合いが鮮やかになる！\r\n\r\n【値段】\r\n56/30g（キムチ）＋33/30g（納豆）＝89円/回\r\n\r\n★VA:   5.4/700μg/day 推↓↓\r\n★VD:   0/5.5μg/day 推↓↓\r\n★VE:    0.3/6.0mg/day 推↓↓\r\n★VK:     204/150μg/day 目安↑◎\r\n★C:      7.2/100mg/day 推↓↓\r\n★B1:    0.04/1.1mg/day 推↓↓\r\n★B2:     0.21/1.2mg/day 推↓↓\r\n★B6:      0.13/1.2mg/day 推↓↓\r\n★B12:    0/2.4μg/day 推↓↓\r\n★I:         0/130μg/day 推↓↓\r\n★Fe:     1.17/10.5mg/day 推↓↓\r\n★Cu:     0.18/0.8mg/day 推↓↓\r\n★Zn:     0.66/8mg/day 推↓↓\r\n★Ca:     0.18mg/650mg/day 推↓↓\r\n★葉:     36/240μg/day 推↓↓\r\n★Na:     0.26/7.0g/day 目標　◎	52	60	0	3	38	0	A40Qa3etH45ReYbwvBnpVZEUoDOLSen7EY0rqyGj.jpg	\N	1	1	0	1	0	2022-01-25 03:53:22	2022-02-17 12:52:22
341	1	汁なし坦々うどん	1.小松菜は根元を切り落とし、茎は1cm幅に、葉は1cm角に切ります。えのきは石づきを切り落として1cm幅に切ります。\r\n2.フライパンを中火で熱し、油をひかずに豚ひき肉を入れて炒めます。色が変わってきたら、1と(A)を入れて炒め合わせます。\r\n3.豚ひき肉に火が通り、全体に味がなじんだら火から下ろします。\r\n4.うどんを盛り付けた器に3と半熟卵をのせ、小ねぎを散らします。お好みでラー油と「深煎りごまドレッシング」を追加でかけて完成です。\r\n\r\n〜コツ・ポイント〜\r\n・肉みそはごはんにのせてもおいしいですよ。\r\n・今回は油をひかずに調理していますが、ご使用のフライパンにあわせて、サラダ油やごま油をひいてからお作りください。	52	61	0	1	41	2	xWgnIWvimcK53Dyynw6HU8YIocWWe311KIJmCC3r.jpg	\N	1	0	0	0	0	2022-07-05 12:25:28	2022-07-05 12:25:28
300	1	じゃこチャーハン	★2104Bチャーハンの作り方を参考にして作る\r\n★ちりめんじゃこは開封後、冷凍庫で1ヶ月もつ。常備しておくと便利！\r\n★じゃこはしらすの10倍のCaとVDを含む\r\n★常備品:卵、ちりめんじゃこ、ザーサイ\r\n\r\n〜下準備〜\r\n★ごはんを炊いておく（冷凍でも良し）\r\n★卵を大きめのボールに溶いておく。\r\n\r\n〜チャーハン〜\r\n★ごはんを炊いて、大きめのボールに2人分の卵2個、刻んだザーサイ22g、市販の刻みしょうが小さじ1/2、塩少々を加えて混ぜ、熱々のごはんを加えて混ぜる。\r\n熱々のフライパンにサラダ油をひき、木ベラを2本使って切り混ぜる。加熱途中でじゃこも投入して炒める。和風オムライスのため、パラパラより少ししっとりめで火を止めて蓋をしておく。\r\n\r\n★VA:     90 /700μg/day 推↓↓\r\n★VD:    4.08 /5.5μg/day 推→◎\r\n★VE:    0.6 /6.0mg/day 推↓↓\r\n★VK:    10.2 /150μg/day 目安↓↓\r\n★C:      0/100mg/day 推↓↓\r\n★B1:    0.07/1.1mg/day 推↓↓\r\n★B2:     0.28/1.2mg/day 推↓↓\r\n★B6:      0.03/1.2mg/day 推↓↓\r\n★B12:    0.54/2.4μg/day 推↓↓\r\n★I:         0/130μg/day 推↓↓\r\n★Fe:     1.24/10.5mg/day 推↓↓\r\n★Cu:     0.21/0.8mg/day 推↓\r\n★Zn:     1.74/8mg/day 推↓↓\r\n★Ca:     150/650mg/day 推↓↓\r\n★葉:     4.8/240μg/day 推↓↓\r\n★Na:     0.88/7.0g/day 目標◎	52	61	0	1	41	0	0MsYMF44oKo0goNBT8ay9a0vfbC2QUwsHvGBwODS.jpg	\N	1	1	1	0	0	2022-02-17 09:56:19	2022-02-17 13:39:46
313	1	鹿楓堂和風ハンバーグ	不足:VC,ヨウ素,Ca\r\nかなりバランスがとれた食事。ドラマではこれにあさりと菜の花の味噌汁、白だしなすを合わせている。\r\n\r\n1.パン粉は1/2量の牛乳でしとらせておく。玉ねぎはみじん切り。\r\n2.合い挽き肉に塩小さじ1/2と胡椒のみ加えて粘り気がしっかりと出るまでよく混ぜる。\r\n3.合い挽き肉にさらにみじん切りにした玉ねぎ、しとらせたパン粉、卵1個を加えて混ぜる。\r\n4.合い挽き肉からハンバーグを形作り、空気抜きをして、中央にくぼみをつける。\r\n5.サラダ油をフライパンにしいて、強火で両面にうすく焼き色をつける。\r\n6.焼き色が両面についたら、酒大さじ2.水20ccを加えてフタをして弱火で8分ほど蒸す。\r\n7.つけだれはつけだれの材料を全て別の小さめのフライパンに加えて弱火でとろみをつける。\r\n8.トッピングに大根おろし、サラダ油で焼いたキノコ、つけだれ、13分ほど蒸したニンジングラッセ、蒸したじゃがいも、菜の花を加えて盛り付ける。\r\n9.あさりと菜の花の味噌汁を合わせると栄養バランス良く、春に旬の食材を使ったレシピになる。また、ドラマではさらにここになすを素揚げして、白だしを薄めたつゆに浸けて、しょうがを乗せた料理と合わせている	48	61	0	1	1	1	L0O1nt8usOLABGB5of8E6EpUP8azTj1YThb4f1Vy.jpg	mIXKsaHMDRJYlJsdLZZj62VaoEUcPBo66AkpukrH.jpg	0	1	1	1	0	2022-02-28 12:07:52	2022-03-01 10:56:12
14	1	ミネラルサラダ　鉄1.5mg	1　芽ひじきはさっと洗い汚れを流し、新しい水をたっぷり注いで、10〜15分戻す。ザルで水気をよく切る。\\r\\n2　ツナ缶(ノンオイルタイプ・4/5缶(56g))は汁気を切る。水菜は根元を除き、長さ4cmに切り、水にさらし水気を切る。\\r\\n3　アボガドは種皮をを除き、1cmの角切り。ラップを密着させてかける。プチトマトはヘタを除き、洗って水気を切り、縦4等分に切る。\\r\\n4　フライパンにサラダ油小さじ1/2を熱し、ひじき・ツナ・きざみしょうが小さじ1を入れて炒める。\\r\\n5　フライパンの粗熱を取り、炒め用Aを加え、汁気がなくなるまで炒める。\\r\\n6　火を止め、削りがつおを加えて混ぜ、粗熱を取る(ひじき煮)。水菜を加えざっくりと混ぜ合わせる。\\r\\n7　器に盛り付け、アボガド・プチトマトを飾り、ドレッシングをかける。\\r\\n＊ドレッシング名 : 深煎りごまゆずテイストドレッシング	57	4	0	1	2	0	s4AD52JKfImyjxQPfojUkI4g2naIJFVhoA4uh0FY.jpg	H0NKqYCCJu1E2AK5k0xpyOYqtDYvFNtjCzsdmxRf.jpg	1	0	1	0	0	2021-11-04 12:07:37	2022-03-01 12:57:05
316	1	レンジで簡単茶碗蒸し	1.ボールに卵1個を割り入れ、よくかき混ぜる。\r\n2.めんつゆ大さじ1を加える。\r\n3.水150ccをさらに加えて、よく混ぜる。\r\n4.2つの耐熱容器に分け入れて、ふんわりラップをする。\r\n5.すぐに作りたいなら、電子レンジで600w、2分45秒。\r\n綺麗に仕上げたいなら、蒸し器で強火で1〜2分、弱火で10分。	52	60	3	1	1	0	qFcSpTp0n75plqUerRqjltKbHGijWYJU4c7TnFrn.jpg	\N	1	1	1	0	0	2022-03-01 13:39:39	2022-03-01 13:44:34
317	1	VDきのこ料理	★VDたっぷりきのこを摂る方法！\r\n\r\n✔︎溶き卵＋鶏ガラスープ＋ごま油＝きのこの中華スープ\r\n✔︎鮭と一緒に炊き込みご飯\r\n✔︎たた炊飯器に切って一緒に炊くだけ\r\n✔︎焼いて串刺しなど\r\n✔︎きくらげはストウブ鍋で大根、人参とよく煮込んで白だしの煮物	52	61	0	1	3	3	prbAxmndgq5vNFZla75dgjOEKfexUcDJLY5rO4HU.jpg	\N	1	1	1	1	0	2022-03-06 11:14:06	2022-03-13 08:37:54
314	1	菜の花とあさりの味噌汁	1.あさりは砂抜きをする。殻同士を流水で擦り合わせて洗った後、50℃の塩水3%のお湯（海水と同じ塩分濃度）にザルに入れて、アルミホイルの蓋をして7分間寝かせる。\r\n2.水からあさりを和風だしとともに鍋に加えて、あさりの貝殻が開くまで加熱する。途中から丁度良い頃合いで食べやすい大きさにカットした菜の花を加えて煮る。\r\n3.アクが出てきたら取り除く。\r\n4.菜の花にも火が通ったら、火を止めて、味噌を加えたら出来上がり。\r\n\r\n◯3%の塩水の作り方\r\n500㎖の水に対し、キャップ2杯分の塩（約15g）を加える	48	61	0	1	40	1	FycAJBIDVqstiFxXBmUJ1Fcw5pjRiNpfGcuP2oz2.jpg	\N	1	1	0	1	0	2022-02-28 12:23:14	2022-09-20 10:09:13
294	1	人参りんごスムージー	★VAが不足すると薄暗い所で見にくくなり、やがて夜盲症になります。角膜や結膜上皮、皮膚や粘膜でも角質化が起こります。VA不足で皮膚や粘膜が弱くなり、感染症にかかりやすくなります。\r\n★ビタミンAの過剰症は通常の食事ではほとんど起こりません。また、β-カロテンからのビタミンAへの変換は必要に応じて厳密に調節されているため、β-カロテンによるビタミンAの過剰症は起こらないとされています。\r\n\r\n1. りんごは皮と芯を取り除いて1cmから2cmくらいの角切りに、にんじんは皮をむいて5mmくらいの半月切りにします。\r\n2. にんじん、りんごの順番でミキサーに入れ、レモン汁と水を注ぎます。スイッチを入れ、固まりがなくなるまで撹拌しましょう。\r\n3. ストレーナー（なければ目の細かいザルや、2重にしたガーゼ）で濾し、グラスに注ぎます。\r\n\r\n下にあるりんごを先に粉砕させて水分を出すことで、にんじんがスムーズに撹拌されやすくなります。変色防止のためにレモン汁を加えていますが、作り置きには向きません。\r\n\r\nできあがったらなるべく早く飲むようにしましょう。\r\n\r\n★VA: 450/700μg/day 推→◎\r\n★VD: 0/5.5μg/day 推\r\n★VE: 0.73/6.0mg/day 推\r\n★VK: 1.95/150μg/day 目安\r\n★C: 13/100mg/day 推\r\n★B1: 0.07/1.1mg/day 推\r\n★B2: 0.05/1.2mg/day 推\r\n★B6: 0.13/1.2mg/day 推\r\n★B12: 0/2.4μg/day 推\r\n★I: 0/130μg/day 推\r\n★Fe: 0.13/10.5mg/day 推\r\n★Cu: 0.11/0.8mg/day 推\r\n★Zn: 0.13/8mg/day 推\r\n★Ca: 17.55/650mg/day 推\r\n★葉: 10/240μg/day 推\r\n★Na: 7.0g/day 目標	53	61	0	2	5	4	aMFjrMi39Dcp64Kwk2K3uUQ4TfA8aqZWFq1C3P4O.jpg	\N	0	1	0	1	0	2022-02-11 09:05:13	2022-02-17 15:21:23
308	1	オリジナルバーニャカウダ	1　にんにくは皮・芯を除き、大きいものは横半分に切る。お湯を沸かし、根菜類（人参、レンコン、かぼちゃ）は茹でてキッチンペーパーで水気を切る。\r\n2　セロリは筋を除き、棒状に切る(4~8本)。\r\n3　パプリカはヘタ種を除き、先を尖らせて棒状に切る。\r\n4　鍋ににんにく・牛乳200ccを入れ、にんにくが柔らかくなるまで加熱する(沸騰後弱~中火20分前後)。＊水分がなくなったら水を足す。加え過ぎ注意。\r\n5　にんにくと牛乳をボウルに移し、滑らかになるまでしっかりミキサーつぶす(硬い部分があれば除く)。アンチョビペースト小さじ1を加え、均一になるまで混ぜる。	9	61	0	2	2	0	Wh91C1USL3bHJbnucQ439vESS7VeS6dZqOogHsgI.jpg	\N	0	0	0	1	0	2022-02-21 05:46:06	2022-02-21 05:51:26
318	1	鮭の炊き込みご飯	★豚汁や茶碗蒸しと共に！\r\n★鮭は炊飯器で炊ける、新常識！\r\n★栄養豊富そうに見えるが、VEやVB1,2,6、鉄は15%を下回る！ほうれん草や豚肉入り豚汁と合わせると良いのでは！\r\n★ サケは赤く見えるため、赤身の魚と思われがちですが、白身の魚です。 身が赤く見えるのは、カロテノイド系色素のアスタキサンチンが含まれているためです。 魚は、その筋肉中の血色素のミオグロビンの含有量により「赤身」「白身」に区分されています。\r\n\r\n1.お米を2合分とぐ。\r\n2.ごぼうはささがきして、酢水に8〜10分ほどさらす。\r\n3.釜に米、ごぼう、小さくくだいたまいたけ、しょうがチューブ5cm、和風だしの素、醤油を各小さじ2を加えて鮭を1番上に乗せて、水を具材を込みで2合のラインまで注いで、混ぜる。\r\n4.炊く\r\n5.炊き上がったら、鮭を救出して、骨を取り除き、切った三つ葉とともに混ぜる！\r\n\r\n鮭100gあたり2410mgのコラーゲン\r\n1切れ80g、1人分20gあたり600mgのコラーゲン\r\nコラーゲン必要量5000〜10000mg\r\n鮭の皮にコラーゲンが多く含まれる	52	60	0	1	41	0	j6jQVEY0Aj6txPoxVgjFmKweeUSQuhY43KLdy5Li.jpg	\N	1	1	1	1	0	2022-03-07 11:06:37	2022-05-11 02:48:00
315	1	白だしなす	1.なすは縦半分にカットし、さらに斜め半分にする。\r\n2.カットしたなすはサッと軽く素揚げ（しんなりするまで）する→油をペーパーできる\r\n3.水で薄めた白だし（煮浸し1:6〜8）に素揚げしたナスを熱いまま入れて味をなじませる。\r\n4.しょうがや小口ネギをトッピングする。	57	61	0	1	38	0	0GScs43DALbkj4UXVZ3lLhTG9RtWCGZaaUmQzkW6.jpg	\N	0	1	1	0	0	2022-03-01 10:03:55	2022-03-22 10:12:27
11	1	かぼちゃとナッツのサラダ&トマトとルッコラのサラダ	★VEは不足すると動物では不妊症や筋肉の萎縮が、人の場合ではごくまれに感覚障害や神経症状が起こります。\r\n\r\n1　グリーンリーフは食べやすい大きさにちぎる。ルッコラは根元を除き、長さを4等分に切る。一緒に水にさらし、水気を切る。\\r\\n2　トマトはヘタを除いて洗い、8等分のくし形切りにし、さらに斜め半分に切る。\\r\\n3　カボチャは種・ワタを除き、耐熱皿にのせてラップをふんわりとかけ、電子レンジで600w4分加熱。かぼちゃは一口大くらいに崩す。\\r\\n4　ボウルに味付け用Aを入れ、よく混ぜる。かぼちゃ・グリーンレーズンを加え、ざっくりと混ぜる。サワークリームを加え、さらにざっくりと混ぜる。\\r\\n5　皿に4・スパイシーチキンを盛り付け、くるみを飾る。1を盛り付け、トマトを飾りドレッシングをかける。\\r\\n\\r\\n＊くるみは予熱なしのオーブンでロースト(電気170度8分/ガス160度8分)、粗く砕いておく。\\r\\n＊ドレッシング名 : キューピーテイスティドレッシング イタリアン	52	3	0	2	38	3	LomkGpWGPlvKbAJHnmwJO0rDvTScmbnrnhJ1yL6e.jpg	\N	1	1	1	0	0	2021-11-04 09:51:08	2022-02-17 15:38:10
193	1	株とベーコンの白みそ椀仕立て	スープ（豆乳、味噌）に栄養があります！\r\n1　かぶは茎を2cmくらい残して切り、半分に切って付け根をよく洗う。皮をむき8等分のくし形切り。ベーコンは1枚を4等分に切る。\\r\\n2　鍋に水320cc・和風だしの素小さじ1/2・かぶ・ベーコンを入れて加熱し、蓋をしてかぶが柔らかくなるまで煮る。\\r\\n3　無調製豆乳40ccを加え、温める。火を弱め、白みそを溶き入れる。椀に盛り付ける。	53	56	0	1	40	0	JWfMXzNEZnZBkZ2ZA5JEzVlDC6cpMOvzr77E4Iyz.jpg	\N	1	1	1	1	0	2021-12-10 07:31:14	2022-02-18 09:51:26
305	1	ナッツ	★VEは不足すると動物では不妊症や筋肉の萎縮が、人の場合ではごくまれに感覚障害や神経症状が起こります。\r\n\r\nアーモンド10粒で3.1mg(目安量6.0mg/day）のVEが摂れる。	53	61	0	2	38	0	4oKTFzJj945oTnuWC8KcAPbfncJqJ7gSsm9P2E5h.jpg	\N	1	0	0	1	0	2022-02-17 15:42:43	2022-02-17 15:44:04
166	1	茶碗蒸し	1　鍋に和風だし2カップ・醤油・みりん各小さじ1・塩小さじ1/4~1/3を入れひと煮立ちさせる。冷めたらシッカリと溶いた卵を入れ、裏漉しでこす。\\r\\n2　むき海老と2cm程度に切った鶏肉はそれぞれ醤油少々と合わせ、下味をつけておく。椎茸はスライスする。\\r\\n3　茶碗に2の具を入れて、1の卵液を注ぐ。\\r\\n4　沸騰した蒸し器に3を入れ、強火で1~2分蒸してから、弱火で12~15分蒸す。\\r\\n\\r\\n＊　具は他にかまぼこ・鮭・白身魚・ぎんなんなどを入れても良い。蒸しあがり後に刻んだ三つ葉をのせても良い。	45	48	5	1	1	0	0serSM4Kx1YOfYL7fO9gmSitibRyzmi5GTRyEYi1.jpg	\N	0	1	1	0	0	2021-11-10 10:17:17	2022-02-18 09:19:03
168	1	アスパラと海老の塩ソース蒸し	2人分での記載\r\n1.アスパラガスは根元の硬い部分の皮をピーラーで剥き、長さ4cmの斜め切りにする。これをスチーマーに入れ、水1カップと塩少々を加える。フタをして電子レンジに3分30秒かける。取り出して水を捨てる。\r\n2.海老は背ワタを取り、片栗粉小さじ1をまぶして手で揉み、汚れと臭みをとる。それを軽く水洗いし、水気を切る。ボウルに入れて下味の調味料Aを加え、からめておく。\r\n3.2の海老を1のスチーマーに加え、フタをして電子レンジに3分かける。\r\n4.取り出して調味料Aを加え、混ぜ合わせる。再びフタをして電子レンジに2分30秒かける。	57	50	5	3	38	0	So1V7hU9lkUlLlW403vl96A1fLo30N1Jrdk7bvw5.jpg	\N	0	1	1	0	0	2021-11-10 11:11:18	2022-02-18 09:41:15
155	1	レモンティーゼリー	1 レモンは塩少々でこすり洗いし、薄めのいちょう切り。カップに入れ、はちみつ小さじ2を加えてマリネする。10分位~\\r\\n2 粉ゼラチン小さじ2は、50~60度の湯40ccに振り入れ溶かす。\\r\\n3 ボウルにストレートティー160cc・はちみつ小さじ4を入れ良く溶かす。\\r\\n4 溶かしたゼラチンを加え、よく混ぜる。\\r\\n5 器に分け入れ、冷蔵庫で冷やし固める。\\r\\n6 最後に5に1をかける。	57	36	0	2	5	0	80eF10wdBcMISddcupftfv20aC3vJwmZyGGGlHjA.jpg	\N	1	1	1	0	0	2021-11-10 01:54:54	2022-02-18 09:56:40
307	1	切れてるチーズ	チーズをお弁当に入れると栄養素補給できる\r\n\r\n★VA:26 /700μg/day 推\r\n★VD: 0/5.5μg/day 推\r\n★VE: 0.11/6.0mg/day 推\r\n★VK: 0.2/150μg/day 目安\r\n★C: 0/100mg/day 推\r\n★B1: 0/1.1mg/day 推\r\n★B2: 0.04/1.2mg/day 推\r\n★B6: 0/1.2mg/day 推\r\n★B12: 0.32/2.4μg/day 推 ▲\r\n★I: 0/130μg/day 推\r\n★Fe: 0.03/10.5mg/day 推\r\n★Cu: 0.01/0.8mg/day 推\r\n★Zn: 0.32/8mg/day 推\r\n★Ca: 63/650mg/day 推▲\r\n★葉: 2.7/240μg/day 推\r\n★Na: 7.0g/day 目標	52	61	0	2	38	0	UDl5AFgjKzgpu9lki6HXW0vQQKg7q9EWM6Oc4a64.jpg	\N	1	0	1	0	0	2022-02-19 05:52:44	2022-02-19 06:01:36
311	1	ほうれん草ナムル	1.ほうれん草を塩を加えた湯で茹でて、冷水にとり、色止めをする。\r\n2.適当な大きさに切り、水気をよく絞り、ボールに加えて味付けする。\r\n\r\n※人参はあれば千切りをかたゆでして加えても良い	58	61	0	3	38	0	zUpvKtTMSZfvjRkE2RmpLA709dZPD9uA8E5YBtJB.jpg	\N	1	1	0	0	0	2022-02-28 08:21:50	2022-02-28 08:21:50
312	1	にんじんグラッセ	1.人参は皮を剥いて適当な長さに切ったら、十字に切り、角を取る。（オリーブ剥き）\r\n2.じゃがいもは皮を剥いて、4等分に切る。\r\n3.人参とじゃがいもを蒸し器に入れて、弱火で13分〜蒸す。\r\n5.人参はバターを入れたボールに加えて、予熱でバターを溶かしてからめる。	58	61	5	1	38	0	PEHxOrXPbfyFmiTsb6iJMSDx8EI20hkytp0W2d69.jpg	\N	1	1	1	0	0	2022-02-28 11:53:27	2022-02-28 11:53:27
106	1	5種野菜と鶏肉のごま香味炒め	アントシアニン（なす）、ゼアキサンチンともに含む眼に良いレシピ！\r\n\r\n1　鶏もも肉は余計な水分・脂を取り除き、厚みは均一にし1人3切れに切る。ボウルで塩小さじ1/8を揉み込む。\\r\\n2　調味料A→Bの順番で加えてもみ込む。\\r\\n3    れんこんは皮をむき、厚さ7〜8mmの輪切り、または半月切り。一人2〜3切れ。\\r\\n4　カボチャは種ワタを取り除き、厚さ7〜8mmの薄切り。ズッキーニは厚さ7〜8mmの輪切りまたは半月切り。一人2〜3切れ。\\r\\n5　赤パプリカはへた種を取り除き、乱切り。一人2〜3切れ。ナスはへたを除き乱切り。一人3〜4切れ。\\r\\n6　フライパンにサラダ油・ごま油各小さじ2を熱し、野菜を入れて焼き、焼けたものから塩をふり(小さじ1/4)取り出す。\\r\\n7　鶏肉を皮面を下にして入れ、焼き色が付いたら返し火が通るまで焼く。中火10〜\\r\\n8　6を戻し入れ、ドレッシング小さじ8を加え炒め合わせる。\\r\\n9　皿に盛り付ける。\\r\\n\\r\\nドレッシング;  キューピー深煎りごまドレッシング	57	25	0	1	1	2	wdkvPDfBICaVWrBKRXxxAak34s99wKbKEyKefmUx.jpg	N4JudgZR4pC13hUjaJdCFqo0s1UEqLdESnop4e7I.jpg	0	1	1	0	0	2021-11-08 09:05:54	2022-03-22 14:14:58
17	1	チリトマトカルボナーラ　非鉄1.4mg	不足:VK,VC,B6,ヨウ素,Ca\r\nB1:24.5%\r\n\r\n1　ベーコン5mm角の棒状に切る。ボウルに卵を割り入れよく溶きほぐす。\r\n2.卵味付けAを加え、混ぜる。\r\n3.4等分にし、それぞれに味付けBを加え混ぜる。\r\n4.フライパンにベーコン・オリーブオイル小さじ1を入れて火にかけ脂が出てくるまで、じっくり焼く。弱火〜中火で4分位。\r\n5.ペーストCを加え、香りが出てくるまで炒め合わせる。火を止めて白ワイン大さじ1を加え、再度加熱してアルコール分を飛ばす。\r\n6.4等分にし、粗熱をとり、3に分け入れる。\r\n7.スパゲティは塩を加えた熱湯でタイミングを見計って茹でる。\r\n8.6に茹で上がったスパゲティを分入れよく混ぜる。\r\n9.器に盛り付け、温泉卵を中央にのせ、粉チーズ・黒こしょうをふる。	57	5	0	2	43	0	bHR7vmUKXYwdyIm9vV3nRVcp6KTT00EoTPOZ67yt.jpg	JGmYtojZG5ZL0BrFaHVZ01N9O1RkKSa3AHXQSase.jpg	0	1	0	1	0	2021-11-04 12:57:16	2022-03-01 11:08:15
13	1	みそしょうが焼	VB1が欠乏するとイライラ、倦怠感、食欲の低下などの症状や末梢神経や中枢神経に異常が生じ、手や足の先に痛みやしびれが出ます。膝蓋腱反射がなくなり、重症化すると心機能が低下し、心拍数の増加、手足のむくみなどの症状が表れます。最悪の場合心不全死もなり得ます\r\n主食なら玄米、肉なら豚肩ロース（生姜焼き）、野菜なら長芋がおすすめ。\r\n\r\n玉ねぎのアリシンと豚肉のVB1で疲労回復！\r\n1　豚肩ロース薄切り肉はきざみしょうが小さじ2を馴染ませる。\\r\\n2　玉ねぎは根元を除き、繊維に逆らって厚さ1cmに切る。合わせ調味料を合わせる。\\r\\n3　フライパンにサラダ油小さじ1を熱し、玉ねぎを入れ、しんなりとするまで炒め取り出す。\\r\\n4　サラダ油小さじ1を足し、両面に香ばしい焼き色をつける。アクがでていたら、余分な脂とともに除く。\\r\\n5　玉ねぎを戻し入れ、合わせ調味料を加え、中火で1分煮からめる。\\r\\n6　皿に盛り付け、雑穀ごはんを添える。	57	4	0	1	1	0	3dqOnU87YyhSJEN82F7yvibEqdKQLBUDHOmHgRI6.jpg	MklWiUubvY7ycVd98mYKiVDPS5svhFEL0L7GJRfM.jpg	0	1	0	1	0	2021-11-04 11:02:48	2022-03-01 11:44:34
79	1	ハッシュドビーフのオムライス	1　牛肩ロース薄切りは幅4cmくらいに切り、塩小さじ1/8・黒こしょう少々で下味をつける。にんにくは芯・皮を除き、つぶす。\\r\\n2　玉ねぎは根元を除き、繊維に逆らった薄切り。マッシュルームは厚さ5mmの薄切り。\\r\\n3　鍋ににんにく・オリーブオイルを入れて加熱し、弱火で香りをだす。玉ねぎ塩少々を加え、玉ねぎが少し色付くまでニンニクを潰しながら炒める。中~強火5分くらい。\\r\\n4　玉ねぎを端に寄せ、牛肉を加え少し赤みが残るくらいまで炒める。\\r\\n5　マッシュルームを加えてさっと炒め、薄力粉小さじ4を加え、さらに中火で1分位、炒める。\\r\\n6　火を止め、赤ワイン小さじ4を加えて再度加熱し、アルコール分を飛ばす。\\r\\n7　ソース用Aを加えて加熱をし、とろみがつくまで加熱する。(中火~強火5分~)。ローリエを取り除き、塩小さじ1/8・黒こしょう少々で味をととのえる。\\r\\n8　鍋にトマトライスBを入れて一混ぜし、フタをして加熱。沸騰まで強火、沸騰後弱火10分~。\\r\\n9　火を止め10分蒸らす。4等分にし皿にこんもりと盛り付ける。\\r\\n10　ボウルに卵2個を割り入れ、軽くほぐして混ぜ、卵味付けCを加え、ボウルの底に菜箸をつけながら手早く混ぜる。フライパンにオリーブオイル小さじ1/2を中火で熱し、火を強めてバター2gを溶かす。\\r\\n        ＊ 卵と卵味付けCの分量は１人分、×4必要になる。\\r\\n11　卵液を一気に流し入れ、ゆっくり卵液を混ぜる。卵がやや固まり始め、半熟状になったところで火を止め、フライパンを揺らす。\\r\\n12　９の上にのせ、ハッシュドビーフをかける。生クリーム(1人小さじ1/2)を回しかけ、パセリ少々を散らす。\\r\\n\\r\\n★オムライスコツ★\\r\\n深皿に盛ると、山型にならないのでオススメしない。\\r\\n小さい器に盛るとソースがたら〜っと広がるスペースがないのでおすすめしない。\\r\\n平な大皿がソースがタラーっと広がり、オススメ★\\r\\nフライパンの大きさと個数に限りある中で、オムライスのような一品に対してお鍋一個、フライパン2個と使い分けるような料理に対しては、どれにどれを使うかが重要になってくる。卵を焼く用の大きすぎず、小さすぎないフライパンを残しておく。\\r\\nお米を白米で炊いてしまったりしないこと！	57	18	0	2	1	0	EiJcttyhVVaLbCaiRx4jt4Hg3uS6qmCMZTk6mxVY.jpg	\N	0	1	0	0	0	2021-11-06 18:06:18	2022-03-07 11:24:16
319	1	ハンバーガー	1.パン粉大さじ4は1/2量の牛乳でしとらせておく。卵は1/2個分に分けておく。フライパンにはバターとサラダ油を多めに敷いておく。\r\n2.ハンバーグの種をを玉ねぎなしで作る。4人分で200gの合い挽き肉に塩を加えて粘り気が出るまでよく混ぜる。\r\n3.卵1/2個と牛乳でしとらせたパン粉を加え、コリアンダー、クミン多め、胡椒、を加えて練る。\r\n4.薄く形を仕上げて、空気抜きを10回程度行い、中央にくぼみをつける。フライパンで強火で焼いて焼き壁を作る。\r\n5.火を止めて少量の水と酒を加えて、再度弱火をつけて蓋をして7分〜蒸し焼きする。\r\n6.タレは材料を全て小さな鍋に加えてとろみがつくまで弱火で加熱する。必要に応じて水溶き片栗粉でとろみをつける。\r\n7.パンは半分に切って、バターとハンバーグのタレを断面に塗っておく。ハンバーグのタレはハンバーグにもつける。玉ねぎは薄くスライスして、ザルとボールに浮かべて流水で辛味をしぼりながら取る。トマトは輪切り。\r\n8.パンにハンバーグ、レタス、玉ねぎ、トマト（お好みでチーズ）を盛り付けてトッピングする。	53	61	0	2	1	0	S2zk5sP2VNui1HgJB01zAk51DuIc1I5nwstfYvD6.jpg	\N	0	1	1	0	0	2022-03-08 11:34:14	2022-03-09 02:06:25
334	1	トマトとザーサイのサラダ	★ ザーサイの塩抜き\r\n→ザーサイは瓶詰めは蓋を開けてから、2週間が期限のため、使い切るために食べ過ぎて塩分取り過ぎを防ぐために、塩抜きをして使いましょう！塩分多すぎてもトマトから水分出て行くため塩抜きオススメ！\r\n〜下準備〜\r\n1.ザーサイを流水で洗う。\r\n水気を軽く切り、包丁で薄切りにする。\r\n2.たっぷりの水に２０分から３０分つける。\r\n3.食べてみて少し塩辛いくらいで水から引きあげ、キッチンペーパーなどで水気をしっかりとる。\r\n\r\n1.トマトはヘタを取って一口大に切る。きゅうりは小さい乱切り\r\n2.ザーサイは塊や厚手のものは2〜3cmの厚さにスライスして、1cm角くらいの大きさに切り、ネギは粗みじんに切る\r\n3.トマトが入るくらいのボールにトマト、きゅうり、調味料と②のザーサイを入れて混ぜる\r\n4.いりごまを振りかけて頂く\r\n\r\n\r\n※ザーサイは味付き、塩漬けなど好みのもので。味の濃いものは水で塩抜きして使う。	52	61	0	3	2	2	KpzgaKh3zCd9KUkBbbwhCKJdgwyoujBDOXTrYpDG.jpg		1	1	1	1	0	2022-06-29 15:22:43	2022-07-05 12:32:35
320	1	お蕎麦屋さんの和風カレー	インスタレシピ！\r\n\r\n【カレー餡】\r\n1.油あげはザルに入れて、熱湯をかけて油抜きをして、クッキングペーパーで水気を拭き取る。\r\n2.鍋に水600mlと和風だし小さじ2を加えて中火で沸騰させる。\r\n3.沸騰したらカットした油あげと斜め切りのネギを加えて蓋をして弱火で2分加熱。\r\n4.調味料Aを加えて、弱火で蓋をしてさらに5分煮る。\r\n5.カレー粉大さじ1を（3）の煮汁大さじ3〜4で溶かしてから鍋に加えて混ぜる。\r\n6.水溶き片栗粉を弱火でよく混ぜながら加えて完成！\r\n\r\n【天ぷら】\r\nたけのこは1/4個を4〜6つくらいにスライスする。ふきのとうは洗って外側のガクを数枚剥いて、ガクを一枚ずつはがしてひらく。下処理したふきのとうとたけのこに薄力粉を薄くまぶし、1/2個の卵と薄力粉、冷たい水50ccをダマが残る程度に溶いた天ぷら衣をつけて、170℃の油であげる。\r\nふきのとうは花の方を下にして油に10秒ほど浮かべたら、ひっくり返して1分半ほど揚げる。\r\nたけのこは表面がカリッとするまで揚げる。	57	60	0	1	1	1	AM1tc28doNTUOr05Yryiwf4QfKJlpuZ8UjQk3aDz.jpg	JITYgZ45C17L6xoAeJorCOpHpfBMP0UcLXlU2VFQ.png	1	1	1	1	0	2022-03-15 04:19:23	2022-03-15 04:53:15
322	1	たけのこごはん	1.お米を2合分とぐ。\r\n2.たけのこは角が残るように薄くスライス。油揚げは油抜きせずに0.5cm幅で食べやすく切る。人参を小さく刻んで入れても鮮やか。桜の塩漬けは塩抜きしておく。\r\n3.炊飯器に調味料Aを加えて、2合のラインまで水を増やして、炊飯ボタンを押す。\r\n4.炊けたら、桜の塩漬けを載せて、15分蒸らしたら出来上がり。	51	61	0	1	41	1	M1mE7QRna1HV2Tf3jVINW7FKqZBUHWK1PL571xRP.jpg	\N	1	0	1	0	0	2022-03-29 14:56:24	2022-03-29 15:02:00
321	1	鶏ねぎうま塩うどん	1.肉は一口サイズ、長ネギは斜め切りにしておく。\r\n2.鍋にA水600ccと鶏がらスープの素を小さじ4を加え、強めの中火にかける\r\n3.沸騰したら、長ネギと肉を入れて中火で2〜3分煮る\r\n4.アクを取って、調味料Bを加え、冷凍うどんを入れる\r\n5.麺がほぐれたら出来上がり！器にもって、トッピングCをかけたら出来上がり！	52	60	0	1	41	0	IQAiiMQNI6GzWeUYSb3gLoEyHKwKZhDeDfWT5OiQ.jpg	\N	1	0	0	0	0	2022-03-26 12:59:13	2022-03-26 13:15:04
139	1	鯵フライ	アジは青魚です！\r\n1　天ぷら粉大さじ4と水50cc~を合わせて練り粉を作る。鯵を立て塩の中にさっとくぐらせ包丁をぬらす。\\r\\n2　両側のセイゴを取り除く。尾から頭に向かってうろこをこそげおとす。\\r\\n3　胸ビレを立てて、やや斜めに頭を落とす。内臓をかき出し、腹の中を拭く。\\r\\n4　立て塩の中で洗う。水気をしっかりと拭く、ここまでが魚の水洗い。\\r\\n5　背側から中骨に向かって包丁をあて丁寧に開く。\\r\\n6　背側から中骨に向かって包丁を入れ中骨を取る。\\r\\n7　包丁またはキッチンバサミで尻ビレと硬い部分を切り取る。\\r\\n8　包丁を寝かし、先端の部分で　腹骨をそぎ取る。塩小さじ1/8をふり10分おく。\\r\\n9　水分をペーパーで押さえ、身の面全体にマスタード小さじ4を塗る。\\r\\n10　鯵に塗り粉をつける。パン粉を押さえるようにし、しっかりとつける。\\r\\n11　170〜180度の油で揚げる、3 分くらい。パットに取り出し油を切る。\\r\\n12　皿に水菜・トマトを盛り付け、ドレッシング(1人小さじ1)をかける。アジフライを盛り付け、ウスターソース・タルタルソース各小さじ1/2(1人分)を添える。\r\n\r\nアジ100gあたり1010mgのコラーゲン\r\n1人150gあたり1500mgのコラーゲン\r\nコラーゲン必要量5000〜10000mg\r\n※アジは皮無しで計算しています	57	33	0	1	42	2	MZchmxNepx4ylccxDFih7TLBWveVHXTsMY82DXL6.jpg	iZ5uDZiCOLSUZfznFeRpWSEP2aiOHjeg3IPcP1tu.jpg	0	1	1	1	0	2021-11-09 21:40:19	2022-06-26 09:26:50
339	1	わかめごはん	1.わかめ（乾燥）はミルミキサーに入れ、粗めにかける（15秒〜）ミルミキサーがなければ、包丁で砕く\r\n2.ボールに温かいごはん、わかめ、白いりごま、和風だしを入れ、切り混ぜる。\r\n3.ラップをかけ、蒸らす（5分〜）器に盛り付ける	54	102	0	1	41	0	nUQhVXnJFryqglxbPgOiTbSDxMGJCxkkKUzFRVEX.jpg	\N	1	0	1	1	0	2022-07-04 14:07:24	2022-07-04 14:07:24
323	1	ピーマン塩昆布	•ピーマン　　2個\r\n・塩昆布　　　大さじ1\r\n・ごま油　　　小さじ1\r\n・鰹節　　　　お好みで\r\n作り方\r\n1.　ピーマンのヘタと種を取り除き、細切りにします。\r\n2.　ボウルにピーマン、塩昆布、ごま油を入れてよく混ぜます。\r\n3.　お皿に盛りつけて、上から鰹節をお好みでかけたらできあがり。	52	61	0	1	38	0	4ceY7zFWpVke5OQiasZnX1vdaWBsiT9kZ9gH132z.jpg	\N	1	0	1	0	0	2022-04-25 16:37:58	2022-04-25 16:48:22
172	1	ふんわりやわらか!簡単海老チリ	1.えびはからを取って塩と片栗粉で汚れをとり、流水で揉み洗いする 時間あれば水を切って卵白をまぶしておく\r\n2.フライパンに多めのごま油を入れて生姜のみじん切り、ニンニクのみじん切りで香りを出してから、えびを炒める→一旦えびを取り出す\r\n3.ごま油を少し捨てて、Bの水に溶かした鶏ガラ200cc目分量、豆板醤、チリソースorケチャップ、砂糖、酒を加えて沸騰させる→えびを戻し入れて、沸騰したら\r\n4.水溶き片栗粉を入れ、沸騰したら、溶いた卵1個を回し入れてあまりかき混ぜすぎずに固まるまで待つ。\r\n5.長ネギのみじん切りを回しかけて混ぜていただく	57	39	0	3	42	0	mFtKzQdBYP2LkwjZElfwMY0JlffclZAaxU6MWhpR.jpg	\N	1	1	0	0	0	2021-11-10 21:18:59	2022-04-26 11:43:28
333	1	油そば風そうめん	そうめん...3束(150g)→茹でた流水麺なら即席で\r\n●めんつゆ(2倍濃縮)...大2\r\n●ごま油...大1.5\r\n●醤油・オイスターソース...各小2　少し少なめに\r\n●砂糖・酢...各小1\r\n好みのトッピング...適量:レモン入れると美味しい\r\n\r\n•のソースをボウルに混ぜて、茹でたそうめんを加えて混ぜる。トッピングを盛り付けて出来上がり！\r\n\r\n\r\n《ポイント》\r\n【トッピング例】▶︎ゆで卵、卵黄、味玉、ハム、焼豚、蒸し鶏、ツナ、きゅうり、トマト、ねぎ、白髪ねぎ、海苔、ワカメ、メンマ、ごま、ラー油、かつお粉など♩\r\n♦︎めんつゆがストレートの場合は2倍に、3倍濃縮の場合は2/3量に、4倍濃縮の場合は1/2量にして下さい♩	52	60	0	1	41	2	dZh4KqSjxkXOuvvi3798UMWUVOIWZ8Y4NRwVOxGJ.jpg	\N	1	1	1	0	0	2022-05-20 12:35:36	2022-06-28 11:45:35
80	1	コブサラダ	1　アボガドは種・皮を除き、1cmの角切り。\\r\\n2　赤パプリカは、ヘタ・たねを除き、1cmの角切り。\\r\\n3　きゅうりは1cmの角切り。\\r\\n4　コーンは汁気を切り、熱湯を回しかけ、水気を切る。ツナ缶は汁気を切る。\\r\\n5　ブラックオリーブは汁気を切り、4等分の輪切り。グリーンリーフは食べやすい大きさにちぎる。\\r\\n6　皿にグリーンリーフを敷き、アボガド・赤パプリカ・きゅうり・コーン・ツナ・煮小豆・ブラックオリーブを1列に並べるように盛り付ける。ドレッシング(コブサラダドレッシング)もかける。\\r\\n\\r\\n＊  表示内容は1人分ずつ。	57	18	0	2	2	0	2560cacdoDJRCXrXYsthAyD0n3XWbZZWLPFg5Vat.jpg	VJkyPyw8oMbEgVkIORpgywaz21cyb1KrYzjGuqUI.jpg	1	1	1	0	0	2021-11-07 14:43:55	2022-04-29 13:06:31
324	1	水菜となすのピリッとゆず胡椒☆冷製パスタ	1.なすは１㎝角にカットして５分程度水にさらし、水分を拭き取っておく。\r\n2.水菜は３~４㎝幅にカット。プチトマトは半分に。しめじは石づきカットしてほぐす。にんにくはみじん切り。ベーコンは１㎝幅に。\r\n3.大きめのボウルに◆パスタソースを入れてよく混ぜ合わせておく。\r\n4.フライパンにオリーブオイルを熱しにんにくを炒める。香りがたったらベーコン、なす、しめじの順に炒める。\r\n5.全体に油が回り火が通ったら、塩、ブラックペッパーをふり味を整え火を止め粗熱を取る。\r\n6.３に５と２の水菜とプチトマトを入れてざっくり混ぜ合わせる。\r\nラップをして冷蔵庫で冷やす。\r\n7.パスタを袋に表示されている通りに塩ひとつまみ（分量外）入れ茹でる。\r\n茹であがったら氷水でしめ、水気をしっかり切る。\r\n8. ６に７のパスタを入れてよく和える☆→1時間程度浸ける（パスタは味が馴染みにくいので、長めにつけましょう！）\r\n9.器に盛り付けたら完成☆	57	61	0	2	43	2	7vp3n6IrYHLdyQurTkSh4iiZR8CCJ1CdamMPPVEP.jpg	\N	0	1	0	0	0	2022-04-26 13:10:53	2022-06-06 11:43:05
325	1	デミグラスチキンカツ〜大戸屋風〜	付け合わせに五穀米（もち麦）、わかめの味噌汁。\r\n五穀米は白米より、普段から不足しがちな鉄、VB1、葉酸、Ca、食物繊維、カリウムが多いため、私には向いている。\r\n\r\n1.鶏肉は脂肪を取り除き、横半分に切る。皮目を下にして置き、身の中心から左右に包丁を寝かせて入れ、厚みが1cmくらいになるように開く。\r\n2.鶏肉全体に塩小さじ1/4、こしょう少々をふり、小麦粉、溶き卵、パン粉の順にころもをつける。\r\n3.フライパンにサラダ油を高さ1cmくらいまで入れて中温（170～180℃。パン粉を少量落とすと、すぐにシュワッと音を立てて広がる程度）に熱する。鶏肉を皮目を下にして入れ、こんがりと焼き色がつくまで2～3分揚げ焼きにする。裏返してさらに2～3分揚げ焼きにし、ペーパータオルにとって油をきる。\r\n4.粗熱が取れたら食べやすく切り、おろしきですったキャベツの千切り、トマト、オニオンドレッシング、ジェノベーゼマカロニとともに器に盛って、トマトペーストを混ぜたデミグラスソース、粉チーズ、パセリをかける。	9	61	0	1	1	0	M6ojUoTI5AnEiZXgIm6GANpGUmwdUJLSOiuysmZ1.jpg	wHNlcBXDWzDhiGwvi2Evm8Vv9OVyETiovrlUevZW.jpg	0	1	1	1	0	2022-04-30 11:44:10	2022-05-01 16:11:57
326	1	わかめきゅうり	材料がない時におすすめ。ザーサイがない時に！\r\nわかめは水に戻し、少し刻む。きゅうりは斜め千切り3cmにし、塩揉みしておく。\r\nわかめときゅうりを混ぜてすりおろしオニオンドレッシングと混ぜて頂く。	52	61	0	0	38	0	\N	\N	1	1	1	0	0	2022-05-02 23:08:19	2022-05-02 23:08:19
103	1	台湾まぜそば	余り物のニラと大豆ミートは坦々うどんにまわせます♡\r\n\r\n不足:VC,ヨウ素\r\nバランスが良い。もう少しのりを増やすとヨウ素もバランス取れる。ヨウ素16.2%\r\nグルタチオンレシピであり、栄養満点レシピのとてもバランスの良いレシピ♫\r\n\r\n大豆ミートを使います！\r\n1　赤唐辛子（輪切り）小さじ1は粗く刻んで合わせ調味料Aを作る。\r\n2.トマトはへたを除いて洗い1cmの角切り。青ねぎは根元を除き小口切り。\\r\\n3　ニラは根元を除き幅7mmに切る。削りがつおは粉状に手ですりつぶす。卵は卵黄・卵白に分ける。(卵白は白い卵プリンに使用)。\\r\\n4　フライパンに豆板醤小さじ1・ごま油小さじ1を入れ熱し、香りが出たら大豆ミートを加え炒める。\\r\\n5　全体に油がなじんだら合わせ調味料Aを加えて全体に絡め水80ccを加え混ぜる。\\r\\n　 水分が飛びゆるいとろみがつくまで煮詰める。= 肉味噌\\r\\n6　中華麺はたっぷりの熱湯で茹で、ざるにあげ流水で洗い水気を切る。\\r\\n7　食べる直前に中華麺を熱湯で温め水気を切る。麺味付け調味料Bをボウルで混ぜ中華麺を入れて和える。\\r\\n8　器に中華麺を盛り付ける。中央に肉味噌・肉味噌の窪みに卵黄乗せ、周りにトマト・ニラ・青ねぎ・削りがつお・きざみにんにく・きざみ海苔をのせる。(4人分できざみにんにく小さじ2・きざみ海苔2g)。	57	24	0	3	41	2	ZankDSNpzYCzfzTbFegNQo9M4M8UWJGr2QnXiBYu.jpg	udlxj1RdyNCTV7V5pcaJ1ra7TuPzItflCWpBRJUg.jpg	0	1	0	1	0	2021-11-08 08:32:08	2022-05-05 08:57:49
327	1	ジェノベーゼパスタ	パスタを茹でて、ジェノベーゼと混ぜて、その後粉チーズを加えて混ぜる。	52	61	0	2	43	0	P8tVv7H2V3r1vSPUbSDkkygC9BVK4It2IfFQSSUe.jpg	\N	1	1	1	0	0	2022-05-02 23:12:19	2022-05-05 09:00:52
340	1	サンラータンスープ	★事前準備→前日\r\n干し椎茸と、きくらげをビニール袋に入れて給湯器のお湯を入れ水戻しします。小さい椎茸だと2時間位で戻ります。\r\n1.片栗粉大さじ1.5と水 大さじ 3入れて混ぜておきます。\r\n2.筍水煮は軽く水洗いして細切り。人参も細切り。豚バラは5cmカット。工程1で戻した椎茸、きくらげは細ぎりにします。ザーサイも細切り。\r\n3.熱した鍋にごま油を入れて、豚バラを炒め、半分色が変わったら工程2の野菜と、豆板醤6〜7cmを入れて炒める。\r\n4.水を約3カップ分入れる。醤油、鶏がらスープの素、オイスターソース、白胡椒を入れて煮立てる。\r\n※椎茸の戻し汁を入れても美味しい！\r\n5.火を弱めにして水溶き片栗粉を、混ぜながら少しずつ入れる\r\n→火を強めて溶き卵を箸をつたわせて入れる。\r\n6.お酢を最後に入れて完成。器に盛り付けてからお好みで刻みねぎ、ラー油をかける。\r\n※水溶きでも片栗粉を流す時は固まりやすいので、水道水を流しっぱなしにしながら流す！！	54	61	0	3	3	2	7RDfkQLsn4kvWHzp84L085D5KwYg7b9q33VOYEsl.jpg	\N	0	1	0	0	0	2022-07-05 10:43:16	2022-08-30 10:57:42
328	1	ぶりのからし甘酢あんかけ	ぶりやししとうは鰤の竜田揚げのレシピでも使えます！余ったときに♡\r\n\r\n1.ボウルにからし甘酢あんの材料を入れ、よく混ぜ合わせます。\r\n—切りもの、下味—-\r\n2.ブリは半分に切ります。バットに移し、下味の材料を入れ、手でよく揉み込み、ラップをかけて15分程おきます。\r\n3.長ねぎは5mm幅の斜め切りにします。\r\n4.しいたけは軸を取り、半分に切ります。\r\n5.ししとうはヘタを取り、爆発しないよう、竹串で数箇所穴を空けます。\r\n\r\n—加熱—\r\n6.片栗粉を敷いたバットに、キッチンペーパーで軽く水気を拭き取った、下味をつけたぶりを入れ、全体につけます。\r\n7.中火に熱したフライパンにごま油をひき、ぶりを入れて中に火が通るまで、7分程返しながら焼き、一度器に取り出します。\r\n8.フライパンをキッチンペーパーで軽く拭き取り、中火に熱してごま油をひき、長ネギ、しいたけを入れ、しんなりするまで中火で炒めます。\r\n9.ししとうを加え、全体に油がなじむまで中火で炒めます。\r\n10.弱火にし、ぶりを戻し入れ、1を回し入れて、全体にとろみが出るまで、木べらで大きく混ぜ合わせます。\r\n11.火を止め、器に盛り付けて出来上がりです。	54	61	0	3	42	4	8I38uSBPnvh9EEzaO8vi6bvt8BdDJlLPbVgS0gcq.jpg	\N	0	0	1	1	0	2022-05-05 08:21:18	2022-05-05 08:30:02
330	1	大豆ミートで豆乳坦々うどん	台湾まぜそばの余り物の大豆ミートとニラから作れます♡\r\n\r\n1.長ねぎは白髪ねぎにし、ボウルに入れ、水をひたひたになるまで注ぎ、5分ほどさらしたら水切りをします。\r\n2.ニラはみじん切りにします。\r\n3.耐熱ボウルに大豆ミート、2、残りの肉味噌の材料を入れ、味がなじむまで混ぜ合わせたら、ふんわりとラップをかけ、600Wの電子レンジで1分加熱します。\r\n4.別の耐熱ボウルにタレの材料を入れ、ふんわりとラップをかけ、600Wの電子レンジで2分加熱します。\r\n5.鍋にお湯を沸かし、パッケージの表記通りにうどんをゆで、湯切りをします。\r\n6.5を盛り付けた器に、4をかけ、3と1をのせ、ラー油と花椒をかけたら完成です。	57	61	0	1	41	0	o9FSY4VmV0DrjLeYYEYmcd30zgMCPv7ioB41oPeh.jpg	\N	0	1	0	1	0	2022-05-05 08:56:36	2022-05-05 08:56:36
331	1	シャキシャキもやしとゴーヤのナムル	準備.\r\n鍋に塩水を沸騰させておきます。\r\nゴーヤは種とワタを取り除いておきます。\r\n1.ゴーヤは薄切りにします。（半月切り）\r\n2.鍋にお湯を沸かしもやし、もやしとゴーヤを入れ30秒ほどゆで、湯切りします。\r\n3.ボウルに2、調味料(A)を入れ混ぜ合わせます。\r\n4.全体に味がなじんだら器に盛り付けてできあがりです。	52	61	0	1	38	2	5IdDpQz6fTH6it1vuwgvaFSYjQZSR33WNANVmiP5.jpg	\N	1	1	1	0	0	2022-05-05 10:10:27	2022-05-05 10:10:27
332	1	アサイーボウル	準備.\r\nミキサーに入れるバナナは一口大に切っておきます。\r\n1.トッピング用バナナは1cm幅に切ります。\r\n2.ミキサーに冷凍アサイーピューレ、無調整豆乳、バナナ、はちみつ少量を入れて、なめらかになるまで撹拌します。\r\n3.器に2、1、残りのトッピングの材料を盛り付けて完成です	53	61	0	2	5	2	iySpMqAhoFYzAbzJq9GtNWJN5YkjYTaQyY858IHs.jpg	a0NLENqk2y6xYGIjbSyPB0Y1p6bPo488WmLealoY.jpg	1	1	0	1	0	2022-05-06 07:01:36	2022-05-06 07:59:13
42	1	鰤の竜田揚げ&長芋わかめ天	不足:VA,VK,VCのみ。\r\n長芋にVB1や鉄、亜鉛が多いのは驚き。山芋は滋養強壮に効き、さんやくという名前で漢方処方に配合される。\r\n\r\n天然ぶりの旬の季節は、冬です。11月〜2月にかけて脂の乗ったぶりが出回ります。この時期のぶりは「寒ぶり」と呼ばれ、高値が付きます。また、ぶりは出世魚です。\r\n\r\nぶりやししとうが余ったら、ぶりのからし甘酢あんかけレシピにも使えます♡\r\n\r\nぶりは赤身魚で、ヒスチジンというアミノ酸が多いため、常温で放置しておくとヒスタミンが増加して中毒を起こしやすいため、すぐに冷蔵庫に入れる。\r\n\r\n1.ボウルに万能だれを入れよく混ぜる。\r\n2.万能だれを鰤の竜田あげ用・長芋わかめ天用・チャーシュー用に分ける。順に小さじ4・2・(チャーシュー用こさじ4×2→2袋)。長芋は皮を剥き半月切り、1人2切れ。3.鰤は余分な水分は除き、ウロコがあれば除き、1人3~4切れの乱切り。10分ほど塩小さじ1/4をしておき、水気のみ除く。ボウルに入れ万能だれで下味を10分つけておく。\r\n4.ワカメは5分くらい水に戻し、水気を切りみじん切り。ボウルにわかめと長芋わかめ天用たれを入れて混ぜ衣を作る。わかめ衣Aと言います。\r\n5.大根は皮をむき、盛り付け直前にすりおろし、水気を切る。しし唐辛子はヘタを1cmくらい残して斜めに切り、腹に1カ所切り込みを入れる。\r\n6.180度くらいの油でしし唐辛子をあげる。バットに取り出し油を切る。\r\n7.長芋にわかめ衣をつけ、170度位の油で温度を上げながら揚げる。バットに取り出し油を切る。長芋わかめ天の完成。\r\n8.鰤の汁気を切り片栗粉大さじ2〜をつけ、余分な粉をはたき、170度位の油で温度を上げながらあげる。バットに取り出し油を切る。鰤の竜田あげの完成。\r\n9.皿に鰤の竜田あげ・長芋わかめ天・しし唐辛子を彩りよく盛り付け、大根おろしを添え、ポン酢じょうゆ1人小さじ1/2をかける。\r\n\r\nブリ100gあたり1620mgのコラーゲン\r\n1人100gあたり1620mgのコラーゲン\r\nコラーゲン必要量5000〜10000mg\r\n※海洋性コラーゲンは動物性の7倍の吸収率	57	10	0	1	42	4	fjEWbUaIZnVWPlOndHPHaOTPzmvOFHRdqft1KtWz.jpg	glGBmy2HdCsN4O1qpwFTZDho004h07oahgvs30lH.jpg	0	1	1	0	0	2021-11-05 10:06:25	2022-05-07 23:37:15
177	1	香りもごちそう・酒のガリバタ醤油ムニエル	★VDが不足すると成人、特に妊婦や授乳婦では骨軟化症になります。子供では背骨や足の骨が曲がったりX脚、O脚になりやすいです。閉経後の女性の骨粗鬆症の原因になります。\r\n★魚やきくらげで豊富\r\n★ サケは赤く見えるため、赤身の魚と思われがちですが、白身の魚です。 身が赤く見えるのは、カロテノイド系色素のアスタキサンチンが含まれているためです。魚は、筋肉中の血色素のミオグロビンの含有量で「赤身」「白身」に区分されています。\r\n\r\n2人分\r\n1.にんにく1片を薄切りにする。\r\n2.キッチンペーパーで鮭の水気を切り、薄力粉大さじ1をまぶす。\r\n3.フライパンを中火で熱し、有塩バター10g・にんにくを入れる。有塩バターが溶けてにんにくの香りがしてきたら、2を加えて両面に焼き色がつくまで焼く。\r\n4.Aを加えてフタをし、弱火で6分、鮭に火が通るまで蒸し焼きにする。\r\n5.フタを開け、黒こしょう少々で味を整えたら火からおろし、付け合わせと一緒に皿に盛り付け完成。\r\n\r\n★VA:      19.44/700μg/day 推\r\n★VD:     23.76/5.5μg/day 推↑↑◎\r\n★VE:     0.94/6.0mg/day 推\r\n★VK:     0/150μg/day 目安\r\n★C:      0/100mg/day 推\r\n★B1:    0.19/1.1mg/day 推\r\n★B2:     0.11/1.2mg/day 推\r\n★B6:      0.3/1.2mg/day 推→\r\n★B12:    6.77/2.4μg/day 推↑↑◎\r\n★I:         0/130μg/day 推\r\n★Fe:     0.29/10.5mg/day 推\r\n★Cu:     0.05/0.8mg/day 推\r\n★Zn:     0.36/8mg/day 推\r\n★Ca:     7.2/650mg/day 推\r\n★葉:     9.36/240μg/day 推\r\n★Na:     0.07/7.0g/day 目標	52	44	0	1	42	3	ebKxjve0nBuzot1vayQ3My8Qvv705fXyQiHziyok.jpg	\N	1	0	1	1	0	2021-11-11 01:41:43	2022-05-11 02:46:14
140	1	手羽中と大根のスピード煮物	VB1が欠乏するとイライラ、倦怠感、食欲の低下などの症状や末梢神経や中枢神経に異常が生じ、手や足の先に痛みやしびれが出ます。膝蓋腱反射がなくなり、重症化すると心機能が低下し、心拍数の増加、手足のむくみなどの症状が表れます。最悪の場合心不全死もなり得ます\r\n主食なら玄米、肉なら豚肩ロース（生姜焼き）、野菜なら長芋がおすすめ。\r\n\r\n脾気虚は痩せ型体質の人に多い。\r\n補中益気湯などがおすすめ。薬膳なら、大根、山芋、キャベツ、レンコンなど。\r\n\r\n1　鶏手羽中は余分な水分を除く。\\r\\n2　大根は皮をむき、厚さ2cmの半月切り。\\r\\n3　圧力鍋に鶏手羽中・大根・だしAを入れフタをし強めの中火にかける。\\r\\n4　安全ロックピンが上がり蒸気が出てきたら弱火にして、加圧する、5分。\\r\\n5　安全ロックピンが下がったら、フタを開け、黒豆を加えひと混ぜする。\\r\\n6　器に盛り付ける。\r\n\r\n手羽100gあたり1150mgのコラーゲン\r\n1人3本120gあたり1800mgのコラーゲン\r\n※ただし、動物性は1/7の吸収率\r\nコラーゲン必要量5000〜10000mg	52	33	1	1	1	4	vQia8t1ZLsyHBQwr7hIYrXe7NOH4QO6Kfja5k5MN.jpg	bsPLC8PKELbCo7MQuNGQz3T2MTlnELtxBwNl2h1F.jpg	1	1	1	1	0	2021-11-09 21:47:14	2022-05-24 12:34:29
145	1	きのこのレモンソテー	きのこに含まれるビタミンDは、脂溶性のため油で炒めると吸収量が上がる\r\n\r\n1　椎茸4枚は石づきを除いて軸を外し、かさは厚さ8mmに切り、軸は半分にさく。しめじ80gは石づきを除き、小房に分ける。\r\n フライパンにごま油小さじ1を熱し上記を入れ焼く。\r\n2　焼き色がついたら裏返して焼き、全体に焼き色をつける。味付けにポン酢じょうゆ大さじ1・レモン1/2個分(塩少々でこすり洗いしたものを、厚さ2~3mmのいちょう切りに薄くスライスしたもの)を加え汁気を飛ばすように炒める。盛り付ける。	52	34	0	1	38	3	1PoriC8Z0XxaV0UWu5ovBT6F9oSeReK3MYY5BOvJ.jpg	rJNN9cCODwOQ8ZNCp7HP0UBscZAMWI7rXfA4NlTp.jpg	1	1	1	0	0	2021-11-09 23:44:34	2022-06-12 07:04:05
342	1	とろろすだち蕎麦	1.蕎麦を茹でる→冷水で冷やす。蕎麦は茹でた後早めに洗わないとまずくなる。\r\n2.長芋は皮を剥いて擦る。長芋を触った手は早く洗わないと痒くなるため注意する。\r\n3.ライムは皮をよく洗い、薄く輪切りにする\r\n4.蕎麦に麺つゆをかけ、おろした長芋とライムを盛り付けていただく。	52	61	0	1	41	2	XM6MS4Hyy6vPnOJniNPcap5ni6I1l4JFm83tq9w3.jpg	ZD79AKC9hRj8BHKSzu3GrHeajRTCO7oriJGjV44Z.jpg	1	1	1	1	0	2022-07-11 11:31:58	2022-07-11 11:31:58
108	1	桜海老とチーズの卵焼き	1　プロセスチーズは5mm角に切る。卵2個はボールに割り入れ、菜箸をボールの底につけ大きく左右に動かしコシは残してほぐす。泡立てない。\\r\\n2　プロセスチーズとAをボールにいれ混ぜ合わせる。卵焼き器をよく熱し、ペーパーにつけたサラダ油小さじ1/2を全体に広げて馴染ませる。\\r\\n3　卵液の1/2量を流し入れる。全体に広げ半熟状になったら奥から手前に折り畳むように巻く。\\r\\n4　卵焼き器の表面全体を油のついたペーパーで拭き、巻卵を奥に移動させ、手前も拭く。残りの卵液の全て可搬料を流し入れ全体に広げる。\\r\\n　 最初に巻いた卵焼きの下にも卵液を流し入れる。\\r\\n5　半熟になったら奥から手前に巻き込む。卵液が残っているならもう一度繰り返す。焼き上がったら熱いうちにラップで包み1,2分おき形を整える。\\r\\n6 　卵焼きの形が落ち着いたら、4等分に切る。皿に盛り付ける。\\r\\n\\r\\n＊　材料表示は2人分。ドレッシングはキューピー深煎りごまドレッシング。	53	25	0	1	38	0	2lCuFfs2Rgys51h5WrYW9uIo3HqWKNrF3YRbE2HM.jpg	f4eVkKQHePuqZd0NY6rmYgZgPhMAAkyssladHMzr.jpg	1	1	1	0	0	2021-11-08 09:22:35	2022-07-03 07:50:33
336	1	とうもろこしの天ぷら	1,とうもろこしは半分に割って、バラバラにならないよう厚めに削ぎ落とす\r\n2.天ぷら衣の材料をスプーンでざっと混ぜ、とうもろこしに優しく絡めて180℃の油でカラリと揚げる	52	63	0	1	1	2	\N	\N	1	1	1	1	0	2022-07-04 01:43:19	2022-07-04 01:44:33
337	1	海老とザーサイのスープ	1.むきえびは酒と白コショウで下味をつける。大根は皮をむき、繊維に沿った長さ5cmくらいの拍子切り。\r\n2.鍋に大根、ザーサイ、きざみしょうが、ごま油の炒める時Aを入れて、大根が好き通ってくるまで炒める。スープBを加えてひと煮立ちさせ、アクがあれば除き、大根に火が通るまで加熱する。\r\n3.エビの汁気を切り、片栗粉をまぶしてスープに加え、火を通す。塩、白コショウで味を整える。\r\n器に盛り付け、ラー油をかける	52	101	0	3	3	0	QujZznR3wO0iOJmhYEkotVh1Rl8E5QReTj46dJwU.jpg	\N	1	1	1	0	0	2022-07-04 01:58:25	2022-07-04 01:59:51
192	1	塩豆腐とトマトのサラダ	1　木綿豆腐は厚さを半分に切り、さらに大きさを半分に切る。木綿豆腐全体に塩麹大さじ1を塗る。\\r\\n2　ペーパーで包んで耐熱皿にのせ、ラップをせずに電子レンジで加熱する(600w2分位)。ざる + ボウルに置き上から重し(ボウルに水500cc)をし、水切りをする(30分~)。\r\n※詳しいやり方は作り方画像を参照\\r\\n3　皿にグリーンリーフ・トマト1/2個・2をちぎりながら盛り付け、ドレッシングを1人小さじ1かける。\\r\\n\\r\\n＊ドレッシング:　キューピー深煎りごまドレッシング	3	56	0	1	2	2	4bhdsGejwGmEhN3YicC56JKcv2Xv79xcfxYFNZJg.jpg	d16n4soy3mWswQfZqY4QeXOtV2L7hhySlBzdwC2v.jpg	1	1	1	0	0	2021-12-10 07:27:58	2022-11-14 10:49:08
269	1	蒸しとうもろこし	①ストウブ鍋②ABCオリジナルフライパンの2種類の作り方あり！\r\n\r\n★ストウブ鍋レシピ。とうもろこしはVB1を含み、疲労回復や、GI値も低いです。\r\n1.とうもろこしは薄皮を2〜3枚残して皮付きのまま鍋に入れ、塩をふる。\r\n2.水50ccを加え、中火にかける。沸騰したら蓋をして弱火に切り替え7〜8分加熱する。蓋をしたまま粗熱をとる。\r\n\r\n★ABCのオリジナルフライパンでは、ザルと蓋を使って、少量の水で大量のとうもろこしを1度に蒸して柔らかくする事が可能。その場合は、皮を全て剥いて、少量のお湯を沸かした上に専用のザルを敷き、その上に皮を剥いたとうもろこしを食べやすく8cmくらいにカットして並べて、蓋をして蒸す。※詳しくは作り方画像を参照。写真は白いとうもろこしで、黄色のものより甘みがあり、柔らかいピュアホワイトという品種。\r\n\r\n★VA:      /700μg/day 推\r\n★VD:     /5.5μg/day 推\r\n★VE:     /6.0mg/day 推\r\n★VK:     /150μg/day 目安\r\n★C:      100mg/day 推\r\n★B1:    1.1mg/day 推\r\n★B2:     1.2mg/day 推\r\n★B6:      1.2mg/day 推\r\n★B12:    2.4μg/day 推\r\n★I:         130μg/day 推\r\n★Fe:     10.5mg/day 推\r\n★Cu:     0.8mg/day 推\r\n★Zn:     8mg/day 推\r\n★Ca:     650mg/day 推\r\n★葉:     240μg/day 推\r\n★Na:     7.0g/day 目標	52	61	38	1	38	2	0BaET1ZLJzQMpYYvWj5U2ufzw9duTTUdRlMtJaPp.jpg	CYJHz1SRdh6UYTDWY8uwfU3cfUDpZWcJHDvIYlhp.jpg	1	0	1	1	0	2021-12-30 04:33:51	2022-08-07 04:22:37
343	1	ぶっかけうどん	適量を盛り付ける！	52	61	0	1	41	2	MP78jCLsqO5MGMjd8wcjb9nr5Mt4uAWmytdkVqqB.jpg	\N	1	1	0	0	0	2022-09-02 09:30:42	2022-09-02 09:30:42
344	1	秋のきのこと鮭のホイル焼き	ABCオリジナルフライパンがおすすめ！網を使う！\r\n1.鮭は塩胡椒をふる。\r\n2.鮭ときのこ、斜め薄切りにしたねぎ（青い部分）、バターをアルミホイルでつつみ、あらかじめ少しだし醤油をかけておく。\r\n3.フライパンに少量の水を沸騰させて、ABCオリジナルフライパンであれば、網を引く封をしたホイルを並べて蓋をして一瞬強火→弱火で12分間蒸す。\r\n4.醤油をかけて召し上がる。	52	61	0	1	42	3	w48TBq2j1lLyjkHA69TUfo64YAvF2hHxbb8py0GP.jpg	6MuWeiEy3otV5Ql0ll82Dm7rTuVRxqK9ijOb7m1b.jpg	0	0	0	0	0	2022-09-02 09:44:41	2022-09-04 09:45:49
338	1	揚げ出し豆腐	1.木綿豆腐は4等分に切って、ペーパーで包み、軽く水気を除く（10分〜）辛子明太子は薄皮を除く。\r\n2.しし唐辛子はヘタを1cmくらい残して斜めに切り、腹に1箇所切り込みを入れる。170℃の油に入れ、揚げる（30秒くらい）バットに取り出し、油を切る。\r\n3.木綿豆腐は揚げる直前に片栗粉をまぶしつける。180℃くらいの油に入れ、表面がカリッとするまで揚げる（3分〜）バットに取り出し、油を切る。\r\n4.鍋にあんの材料を入れて混ぜ、混ぜながらとろみがつくまで加熱する\r\n5.器にあんを分入れ、豆腐、しし唐辛子、大根おろし、辛子明太子を盛り付ける。\r\n\r\n——★簡易バージョン★——\r\n1.木綿豆腐を1/4に切る（水気は軽く拭く程度でOK）\r\n2.天ぷら粉は水と混ぜる\r\n3.豆腐を衣に通して揚げる（色付かなくてOK）\r\n4.めんつゆは、水:つゆ＝3:1くらいにうすめてかける\r\n5.かぼすやライムを1/4〜1/8カットで添える。	52	102	0	1	1	0	Te3DJ98LbwVDIhwa0NEoC5ZwNJ59wn4OBYXe3jKD.jpg	\N	1	1	1	1	0	2022-07-04 13:21:18	2022-10-11 10:39:44
346	1	アクアパッツァ	★あさりの砂抜きを先に済ませておくのがコツ！\r\nたらの旬は秋〜冬にかけて\r\n\r\n材料２人分\r\n生たらの切り身２切れ\r\nにんにくのみじんぎり１かけ分\r\nオリーブオイル大さじ２\r\nあさり（砂抜きしたもの）２００g\r\n★白ワイン(酒でも可)大さじ２\r\n★水大さじ２\r\nプチトマト５個\r\n塩コショウ（必要であれば）少々\r\nパセリのみじん切り（ドライでも）少々\r\n作り方\r\n1\r\nにんにくはみじん切りにしておく。プチトマトは半分にカットしておく。\r\n2\r\nアサリは砂抜きしてしっかり殻同士をこすり合わせて洗い、水を切っておく。\r\n3\r\nフライパンにオリーブオイル、にんにくのみじん切りを入れ、中弱火でじっくり香りを引き出していく。\r\n手順3の写真\r\n4\r\n香りが出たら中火にして生ダラ（味付け不要）を片面に焼き色がつくようソテーする。\r\n手順4の写真\r\n5\r\n裏返したらアサリを投入し、★を加えてふたをし、強火にする。\r\n手順5の写真\r\n6\r\nアサリの殻が開いたらプチトマトを加え、全体をゆすってなじませ、味を見て塩コショウで味を調える。\r\n手順6の写真\r\n7\r\nお皿に盛りつけ、パセリのみじん切り（ドライパセリ）を散らし、あればハーブを飾って完成！	52	61	0	2	42	3	ic5QefqIEJX4HQggioF1oxcbKBtIamExeWieuUpD.jpg	\N	1	1	0	1	0	2022-10-11 14:00:53	2022-10-11 14:06:49
22	1	ローストビーフ~玉ねぎとしょうゆこうじのソース	1　牛もも塊肉は室温に30分以上戻しておく。水気を抜き、砂糖・塩・黒こしょう(肉下味用)をもみ込み、5分ほど下味をつける。\\r\\n2　フライパンにオリーブオイル小さじ1を熱し、牛肉を香ばしく焼く。天板にアルミホイルを敷き、牛肉をのせる。\\r\\n3　オーブンで焼く。電気200度10分・ガス180度10分。牛肉をアルミホイルで包み、温かい所に置き、蒸らして中まで火を通す。(オーブンから出した時点で肉汁があればソースに加える。)\\r\\n4　蒸らし時間が終わったら、肉汁を2のフライパンに移し、再度アルミホイルで包んで、ビニール袋に入れ空気が入らないようにして口をしっかりと結ぶ。冷水で10分くらい冷やす。\\r\\n5　牛肉を焼いたアルミホイルに肉汁・玉ねぎ・しょうゆこうじ・水・黒こしょうを入れて混ぜ、とろみがつくまで加熱する。(玉ねぎとしょうゆこうじのソースA)。\\r\\n6　ローストビーフを薄くそぎ切りにし、皿に盛り合わせる。玉ねぎとしょうゆこうじのソースをかける。\\r\\n\\r\\n＊　玉ねぎはすりおろしておく。オーブンの予熱。電気200度10分・ガス180度10分\r\n\r\n*ローストビーフを美味しく仕上げるコツ*\r\n1.肉は必ず常温に戻す\r\n冷蔵庫から出した肉と常温に戻した肉では１６℃差があり、差を埋めるために長時間の加熱が必要で時間がかかります。長時間加熱されると肉の中心部は適温でも、外側は火が入りすぎて肉汁、赤みが失われてしまう。\r\n2.肉表面を高温短時間で焼く\r\n焼き鳥や焼肉がおいしい理由と一緒です。炭を使って高温で焼くからメイラード反応が起きて香ばしく、旨みがあるのです。\r\n3.徹底した温度管理を行う\r\n4.肉を休ませ余熱で火を入れる\r\n5.肉を休ませ肉汁の流出を防ぐ\r\n焼きあがったばかりの肉は中心部に肉汁が集まってそこを切り開くと肉汁は簡単に流れ出します。余熱での加熱が落ち着くと肉汁が全体へ分散し切っても流れにくい。	12	6	2	2	1	4	DBUDy6Nw3bvZXn8dBlj23IjyTTjjzcmq6VlW6oQS.jpg	QLqiLDQ0Pb95dAksYfYL5ROwQx5MYkM2gTrdyxqB.jpg	0	1	0	0	0	2021-11-04 13:51:20	2022-10-23 01:31:55
347	1	八宝菜	しいたけやキクラゲは水で戻す\r\n1.白菜を一口大の削ぎ切りにします。\r\n2.しいたけの軸を取って、薄切りにします。\r\n3.タケノコを一口大に切ります。\r\n4.人参を2cm幅の短冊に切ります。\r\n5.豚こま切れ肉を一口大に切ります。\r\n6.フライパンを中火で熱してごま油をひき、5を炒めます。\r\n7.豚こま切れ肉に火が通ったら強火にして1、2、3、4、キクラゲ、うずらの卵の水煮を加えて炒めます。\r\n8.しんなりとしてきたら水400〜500cc（600ccは入れすぎ）、鶏がらスープの素小さじ4〜を加えて中火で12分煮ます。\r\n9.にんじんがやわらかくなったらオイスターソースや砂糖で味を見て、水溶きか片栗粉を加えてとろみがついたら火から下ろします。醤油とごま油をひとかけ（←大事！）します。お皿に盛って完成です。	9	61	0	3	1	4	WmueVvD3iyfXSj0Tg7WHq6lOf40fNvcwvIqxwa63.jpg	\N	1	1	0	1	0	2022-10-31 08:44:02	2022-11-08 10:51:17
15	1	きのこの豆乳みそ汁	1　しめじは石づきを除き、小房に分け、長さを半分に切る。えのき茸は根元を除き、長さ1cmに切る。\\r\\n2　椎茸は石づきを除き、笠と軸に分け、笠・軸ともに薄切り。\\r\\n3　鍋に水250cc・しめじ・えのき茸・椎茸を入れて加熱し、火を通す。\\r\\n4　調製豆乳を加えて温め、火を弱め、みそ(液体)を加えて味をととのえる。\\r\\n5　椀に分け入れる。\r\n\r\n*1人暮らし用*\r\n—-材料—-\r\n★しめじ60g （1パック100g）★しいたけ3〜4枚\r\n★水180cc ★豆乳180cc\r\n★液体みそ小さじ4くらい\r\n（★バター★鮭→鮭のホイル焼き）\r\n※えのきは無しで作る！！\r\n✔︎余った豆乳→そのまま飲める！\r\n✔︎余ったきのこ→『秋のきのこと鮭のホイル焼き』へ\r\n\r\n\r\n*きのこを美味しく茹でるコツ*\r\nきのこの旨みは60℃～70℃辺りの温度帯をゆーっくり通過すると、きのこの旨みがどんどん引き出されていきます。\r\n★IH火力:1〜2/6目安‼️\r\nつまり。きのこをもっと美味しく食べるには、「水から」入れるのが正解。\r\n\r\nグアニル酸生成に関与する酵素は比較的熱に安定で６０～７０℃で活性が高く、一方、グアニル酸を分解する酵素は６０℃では大部分が壊れます。したがって、グアニル酸の量を増やすためには調理時に６０～７０℃の温度を与えてやることが大切です。\r\nグアニル酸は干し椎茸にしか含まれませんが、全てのキノコに含まれるうま味成分グルタミン酸が最もよく溶け出す温度も約60℃です。\r\n\r\n*乾燥きのこを美味しく戻すコツ*\r\nきのこの旨味成分グアニル酸が生まれるメカニズムは、きのこに含まれるRNA（リボ核酸）が、細胞壁の中から抽出され、これを、きのこの中に含まれる「リボ核酸分解酵素」が分解することで「グアニル酸」に変わる。\r\n\r\nRNA（リボ核酸）の抽出は、5℃前後の温度帯でもっとも効率的に行われる。\r\n水につけた乾燥きのこを冷蔵庫に保管し、できれば丸一日くらいかけてゆっくり戻すのがおすすめだ。	53	4	0	1	40	3	k6DmUGaX7ytX2x0pjUu2Vkti9iSKiQhOOauD0MjQ.jpg	\N	1	0	1	0	0	2021-11-04 12:21:33	2022-10-24 09:24:13
350	1	しらす梅ごはん	1.ご飯を炊く。ややぬるめの熱湯に20分浸けて、鍋だき10分、10分、10分すると甘味が出てさらに美味しくなる！1合180ccのお米に対して、1カップ＝200ccの水で炊けます！\r\n2.しらすを中央にのせる\r\n3.梅干しをしらすの上にのせる\r\n4.青ネギをふりかけて頂く	52	61	0	1	41	0	mcRaGRz2t1LySKJellkBDTE50ncmzmy4njPEraLi.jpg	\N	1	1	1	1	0	2022-11-01 02:08:10	2022-11-01 02:11:09
349	1	もつ煮	⭐︎豚ばら肉が100gあたり386kcalに対して、豚もつ（小腸）は171kcalと半分弱！\r\n—もつの下処理—\r\n① 塩と水でもみ洗い\r\n塩をしっかりともつ全体にもみ込み、流水で洗います。塩には臭いやぬめりも一緒に流してくれる効果がある。水洗いのときは汚れや臭いをしっかりと洗い流します。\r\n ② 牛乳に漬け込む\r\n肉の臭みとりには、牛乳がお馴染みです。まずは、ボウルに牛乳を入れ、30分～1時間程度もつを漬け込みます。次第に、牛乳がピンク色になります。しっかりと漬け込んだ後、水で牛乳を洗い流します。\r\n ③ 小麦粉をもみ込む\r\nもつを水で洗った後、小麦粉をたっぷりとまぶして、もみ込みます。最後に流水で小麦粉をしっかりと洗い流します。小麦粉に臭みが移り、水で洗い流すので、臭いが軽減されます。\r\n\r\n1ねぎは薄切りにし、水に5分さらし、水気を切る。にんじん、大根、こんにゃくは食べやすい大きさに切る。\r\n2炊飯器の内釜に、にんじん、大根、モツ、こんにゃく、☆、水300ccを入れて混ぜ、通常炊飯する。\r\n3.ネギと七味唐辛子をかけて頂く	52	61	1	1	0	4	6t9EDh4NMWEjIeiwj4AZkF1upXy6fq4gt1pNneOz.jpg	\N	1	1	0	1	0	2022-10-31 08:49:56	2022-11-01 02:11:58
351	1	和食ごはん	ごはんは炊いておく	52	61	0	1	41	0	38dbMK4Yiucugg2CZEAmhr4IVPi10NvCoGZxog6g.jpg	\N	1	1	1	0	0	2022-11-10 15:41:45	2022-11-10 15:43:33
149	1	ぶどうとレモンのサラダ	※ぶどうははちみつとレモンに1日冷蔵庫で漬けておいた方がコクが出て、美味しい(*´ー｀*)‼︎\r\n\r\n1　ぶどうは皮付きのまま洗い、繊維に逆らった薄切り。あればタネを除く。レモンは塩少々でこすり洗いし、果汁をしぼる。大さじ1位。\r\n2.ボウルにぶどう・はちみつ小さじ2を入れてマリネを作る。葡萄から水分が出てきたら、レモンの果汁大さじ1位・塩小さじ1/4・黒こしょう少々を加えて混ぜる。\r\n3.皿にグリーンリーフ・ルッコラを盛り付け、2をかける。	57	35	0	2	2	3	dDUAYMgPRpy6kpT2Qj5dD3NrmhW0zlyzmhxqKtGR.jpg	\N	1	1	1	1	0	2021-11-10 00:25:12	2022-11-14 10:52:35
104	1	ぷりぷり海老餃子	生エビで作るのと、冷凍では美味しさがかなり違うので\r\n生のエビを強くオススメします！！\r\n\r\n1　むき海老は背わたがあれば除いて洗い、水気を除く。半量はあらく刻み、残りはきざんでからたたき、包丁の腹ですりつぶす。\\r\\n2　青ねぎは根元を除き、小口切り。ビニール袋にむき海老、豚ひき肉、調味料Aを入れる。\\r\\n3　良く混ぜる。青ねぎを加えさらに混ぜる。　\\r\\n4　餃子の皮の中央にあんを1/16量ずつおき、周囲に水をつける。半分に折りたたみ、真ん中を止める。\\r\\n5　両端を中央に集めるように折りたたんで止め、形を整える。\\r\\n6　フライパンにサラダ油小さじ1を熱し、餃子を並べて焼く。　\\r\\n7　焼き色がついたら水20ccを加えて蓋をし、蒸し焼きにする。中火4分くらい。\\r\\n8　ふたを取り、水分を飛ばすように焼く。水分が飛んだらごま油小さじ1を回しかけ餃子の皮がカリッとするまで強火で焼く。\\r\\n9　皿に海老餃子を盛り付け、別皿に酢小さじ1・黒こしょう少々(1人分)を入れ添える。\r\n\r\nエビ100gあたり1150mgのコラーゲン\r\n1人25gあたり288mgのコラーゲン\r\nコラーゲン必要量5000〜10000mg	57	24	0	3	1	0	Q5xL1ENivXaAoLh5Unz1adK9KDFTzaZuuxl3kGMI.jpg	wJeAVMUHQTKUTr5QTxzcRQiRMMBvYMQs64LDb8ZA.jpg	0	1	1	0	0	2021-11-08 08:44:19	2022-11-15 10:26:26
\.


--
-- Data for Name: seasonings; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.seasonings (id, name, recipe_id, body, created_at, updated_at) FROM stdin;
1109	ぶりの下味	328	酒:大さじ1,しょうゆ:小さじ1	2022-05-05 08:30:02	2022-05-05 08:30:02
1110	からし甘酢あん	328	水100ml,酢大さじ2,ケチャップ大さじ2,砂糖大さじ1,醤油大さじ1/2,ねりからし大さじ1/2,片栗粉大さじ1/2	2022-05-05 08:30:02	2022-05-05 08:30:02
196	万能だれ	43	オイスターソース大さじ2、酒小さじ2、市販のきざみしょうが小さじ4、市販のきざみにんにく小さじ2　★混ぜ合わせ、鰤の竜田揚げ用に小さじ4、長芋わかめ天用に小さじ2取り分ける。残りはチャーシュー用に残しておく。	2021-12-29 07:44:19	2021-12-29 07:44:19
423	タレの材料A	138	水60cc・砂糖大さじ2・だしじょうゆ小さじ2・片栗粉小さじ1	2022-02-10 05:14:33	2022-02-10 05:14:33
1116	スープA	321	水600cc,鶏がらスープの素小さじ4、うどん2玉	2022-05-05 08:45:50	2022-05-05 08:45:50
440	合わせ調味料a	152	水400cc・鶏ガラスープの素・砂糖・酒各小さじ2・オイスターソース小さじ1・塩小さじ1/4・白こしょう少々	2022-02-13 05:36:44	2022-02-13 05:36:44
993	合わせ調味料	13	みそ(液体)・みりん各大さじ2・きざみしょうが小さじ4・片栗粉小さじ1/2	2022-03-01 11:44:34	2022-03-01 11:44:34
999	合わせ調味料a	156	しょうゆこうじ小さじ4・塩小さじ1/4・黒こしょう・ナツメグ各少々	2022-03-07 11:23:40	2022-03-07 11:23:40
1000	味付け用b	156	デミグラスソース240g・しょうゆこうじ小さじ2・砂糖・きざみにんにく各小さじ1	2022-03-07 11:23:40	2022-03-07 11:23:40
97	スープ素A	37	水40cc・牛乳60cc・粉チーズ小さじ1/2・コンソメ小さじ1/4・黒こしょう少々	2021-12-28 14:48:31	2021-12-28 14:48:31
246	立て塩	28	(水500cc・塩大さじ1) × 2回	2021-12-29 08:17:55	2021-12-29 08:17:55
120	シロップ用	4	湯40cc・フロストシュガー小さじ2・クコの実12粒	2021-12-29 06:24:36	2021-12-29 06:24:36
1117	調味料B	321	醤油小さじ1, 塩少々	2022-05-05 08:45:50	2022-05-05 08:45:50
1118	トッピングC	321	ごま油適量、粗挽き黒胡椒適量	2022-05-05 08:45:51	2022-05-05 08:45:51
1123	準備A	83	テンメジャン16g・しょうゆ・酒・酢・砂糖各小さじ2・ごま油・市販の刻みしょうが・市販のきざみにんにく各小さじ1・青花椒塩小さじ1/2・	2022-05-05 08:58:36	2022-05-05 08:58:36
186	鶏肉下味用	5	塩小さじ1/2・黒こしょう少々・マヨネーズ大さじ4・	2021-12-29 07:42:24	2021-12-29 07:42:24
281	合わせ調味料A	274	デミグラスソース280g、水200cc、ウスター小さじ4、コンソメ小さじ1/2、砂糖小さじ1、ローリエ1枚	2022-01-11 15:10:24	2022-01-11 15:10:24
187	加熱時使用	5	サラダ油小さじ2・市販おろしにんにく・市販おろししょうが・クミンシード各小さじ2・ローリエ1枚	2021-12-29 07:42:24	2021-12-29 07:42:24
188	調味料A	5	カットトマト400g・水300cc・コンソメ小さじ4・砂糖大さじ2	2021-12-29 07:42:24	2021-12-29 07:42:24
107	生地A	78	生クリーム60g・牛乳140cc・砂糖小さじ4	2021-12-28 15:26:20	2021-12-28 15:26:20
282	トッピング	274	生クリーム4人で20g	2022-01-11 15:10:24	2022-01-11 15:10:24
189	調味料B	5	クミンパウダー・ガラムマサラ・カレー粉各小さじ1・レッドペッパーお好みで小さじ1/4前後	2021-12-29 07:42:24	2021-12-29 07:42:24
112	ソースA	183	市販のカットトマト200g・トマトケチャップ大さじ4・調味酢大さじ1・ローリエ1枚・水80cc	2021-12-29 06:19:26	2021-12-29 06:19:26
121	塩キャラメルクリームA	49	カスタードクリームパウダー小さじ8・牛乳60cc・生クリーム小さじ4・キャラメルシロップ小さじ1・岩塩少々	2021-12-29 06:24:55	2021-12-29 06:24:55
133	スープA	47	水600~640cc・コンソメ小さじ2・サフラン24本	2021-12-29 06:33:33	2021-12-29 06:33:33
1009	サラダ下味A	137	だしじょうゆ小さじ4・酒小さじ2・市販きざみしょうが・市販きざみにんにく各小さじ1	2022-03-07 11:26:56	2022-03-07 11:26:56
1016	タレ（ハンバーグとパンに）	319	砂糖•醤油•みりん:各小さじ1、ポン酢大さじ1、バター4g	2022-03-09 02:06:25	2022-03-09 02:06:25
197	合わせ調味料A	54	しょうゆ・みりん各大さじ1・トマトケチャップ・砂糖各小さじ2・コチュジャン小さじ1・市販のおろしにんにく小さじ1/2	2021-12-29 07:44:32	2021-12-29 07:44:32
735	味付け用A	76	マヨネーズ小さじ8・粉チーズ小さじ4・塩小さじ1/8・黒こしょう・ナツメグ各少々・牛乳20cc	2021-12-07 13:38:49	2021-12-07 13:38:49
1017	油脂	319	バターとサラダ油を合わせて焼く	2022-03-09 02:06:25	2022-03-09 02:06:25
424	抹茶大豆粉A	119	抹茶小さじ1/2・大豆粉小さじ2	2022-02-10 05:17:41	2022-02-10 05:17:41
425	トッピング用B	119	抹茶大豆粉小さじ1・砂糖小さじ2	2022-02-10 05:17:41	2022-02-10 05:17:41
426	わらび餅C	119	わらび餅粉32g・砂糖小さじ8・水120cc	2022-02-10 05:17:41	2022-02-10 05:17:41
255	トッピングA	266	白いりごま適量、しょうゆ適量、かつおぶし	2021-12-29 13:52:45	2021-12-29 13:52:45
99	チョコレートクリーム材料	53	チョコレートシロップ小さじ1・生クリーム40g	2021-12-28 15:18:03	2021-12-28 15:18:03
108	シロップA	85	湯40cc・砂糖小さじ2	2021-12-28 15:29:07	2021-12-28 15:29:07
1033	みそ汁の味付けA	118	水480~520cc・塩麹小さじ1・	2022-03-22 14:09:41	2022-03-22 14:09:41
122	生地用A	57	薄力粉60g・アーモンドパウダー20g・ベーキングパウダー小さじ1/2	2021-12-29 06:25:16	2021-12-29 06:25:16
791	調味料A	114	チリパウダー小さじ1/2・塩小さじ1/8・牛乳小さじ1・マヨネーズ大さじ2	2021-12-07 14:43:07	2021-12-07 14:43:07
222	鶏スープ材料	111	水680cc・ナンプラー小さじ4・鶏ガラスープの素小さじ2	2021-12-29 07:59:03	2021-12-29 07:59:03
1068	A	172	にんにく2片・しょうが1片	2022-04-27 01:04:20	2022-04-27 01:04:20
1069	B	172	ケチャップ大さじ4・豆板醤小さじ2・酒大さじ1・塩少々•水200ml•鶏ガラ小さじ1.5〜2•チリソース少々•砂糖小さじ2	2022-04-27 01:04:20	2022-04-27 01:04:20
1100	チーズクリームA	95	プレーンヨーグルト40g・レモンの果汁小さじ2	2022-05-01 16:00:25	2022-05-01 16:00:25
223	調味料A	111	赤唐辛子・クミンシード・サラダ油各小さじ1	2021-12-29 07:59:03	2021-12-29 07:59:03
156	調味料A	32	生クリーム120g・塩小さじ1/8・ハーブ&スパイスミックス調味料小さじ1前後	2021-12-29 07:13:06	2021-12-29 07:13:06
224	調味料B	111	おろししょうが小さじ2・おろしにんにく小さじ1・カレー粉大さじ1	2021-12-29 07:59:03	2021-12-29 07:59:03
225	調味料C	111	鶏スープ＋水680cc・ココナッツミルクパウダー小さじ8・チリパウダー大さじ1・コンソメ・バジル・パセリ各小さじ1	2021-12-29 07:59:03	2021-12-29 07:59:03
163	合わせ調味料A	92	しょうゆ小さじ2・はちみつ小さじ1・塩小さじ1/4・黒こしょう少々	2021-12-29 07:15:32	2021-12-29 07:15:32
849	味付け用A	184	ローリエ1/2枚・黒こしょう小さじ1/8・調味酢40cc	2021-12-11 04:17:26	2021-12-11 04:17:26
164	米	92	4人分で、米240cc・水240cc	2021-12-29 07:15:32	2021-12-29 07:15:32
409	スープA	277	水600cc、鶏がらスープの素小さじ1、おろしにんにく•おろししょうが各小さじ1/2、塩小さじ1/8	2022-02-08 14:05:12	2022-02-08 14:05:12
414	ドレッシングA	33	1人分; トリュフオイル小さじ2・岩塩・黒こしょう各少々	2022-02-09 08:19:18	2022-02-09 08:19:18
419	マカロンA	102	アーモンドパウダー・粉糖各40g	2022-02-10 05:09:28	2022-02-10 05:09:28
420	メレンゲ用B	102	マカロンミックス20g・水小さじ2・レモンの果汁小さじ1/2	2022-02-10 05:09:28	2022-02-10 05:09:28
427	ホイップクリーム用A	67	カスタードクリームパウダー大さじ2・砂糖小さじ4・抹茶小さじ1	2022-02-10 05:18:07	2022-02-10 05:18:07
1119	肉味噌のタレ	330	酒:大さじ2,甜麺醤:大さじ2,すりおろしにんにく:小さじ1	2022-05-05 08:56:36	2022-05-05 08:56:36
432	炒め煮調味料A	262	砂糖•しょうゆ各大さじ1強 、みりん•酒 各大さじ1/2	2022-02-11 01:56:15	2022-02-11 01:56:15
442	スープA	296	鶏ガラスープの素:大さじ1,水3カップ	2022-02-13 11:06:53	2022-02-13 11:06:53
212	マリネ用A	86	オリーブオイル・はちみつ各小さじ2	2021-12-29 07:57:29	2021-12-29 07:57:29
213	ソース用味付けB	86	カットトマト200g・ウスターソース・チリパウダー各小さじ2	2021-12-29 07:57:29	2021-12-29 07:57:29
226	ウイング調味料A	113	ナンプラー・チリパウダー各小さじ2	2021-12-29 07:59:21	2021-12-29 07:59:21
227	ウイング調味料B	113	ココナッツミルクパウダー・薄力粉各小さじ2	2021-12-29 07:59:21	2021-12-29 07:59:21
94	調味料C	6	プレーンヨーグルト200g・コンソメ・砂糖各小さじ1	2021-12-28 14:38:39	2021-12-28 14:38:39
892	調味料A	122	きび砂糖大さじ1・ナンプラー小さじ2・赤唐辛子こさじ1	2021-12-13 09:31:19	2021-12-13 09:31:19
243	合わせ調味料A	188	白ワイン40cc・醤油小さじ2・砂糖小さじ1・黒こしょう少々	2021-12-29 08:04:58	2021-12-29 08:04:58
257	ピーナッツダレ	133	ピーナッツクリーム小さじ4・マスタード・ウスターソース・市販のきざみにんにく各小さじ1味にんにく	2021-12-30 14:48:17	2021-12-30 14:48:17
95	調味料D	6	クミンパウダー・ガラムマサラ・カレー粉各小さじ1・レッドペッパーお好みで小さじ1/4	2021-12-28 14:38:39	2021-12-28 14:38:39
123	A	194	無調製豆乳120cc・生クリーム40g・砂糖小さじ8	2021-12-29 06:25:35	2021-12-29 06:25:35
129	下味A	97	岩塩小さじ1/4・黒こしょう少々・バジル小さじ1/2	2021-12-29 06:31:22	2021-12-29 06:31:22
135	スープ用B	87	コンソメ小さじ1・塩小さじ1/4・黒こしょう少々	2021-12-29 06:34:50	2021-12-29 06:34:50
18	A	200	酒小さじ1・きざみにんにく小さじ1・黒こしょう少々	2021-12-26 00:05:10	2021-12-26 00:05:10
165	味付け用A	100	コチュジャン小さじ4・ごま油・しょうゆ各小さじ2・きび砂糖小さじ1	2021-12-29 07:16:26	2021-12-29 07:16:26
192	鶏肉下味用	18	塩小さじ1/4・黒こしょう少々	2021-12-29 07:43:24	2021-12-29 07:43:24
193	マスタードソース用	18	粒マスタード大さじ2・砂糖小さじ2・醤油小さじ1	2021-12-29 07:43:24	2021-12-29 07:43:24
214	レモングリーンソースA	91	レモンの果汁小さじ2・コンソメ小さじ1/4・オリーブオイル小さじ4	2021-12-29 07:57:44	2021-12-29 07:57:44
215	味付けB	91	水40cc・コンソメ小さじ1/4	2021-12-29 07:57:44	2021-12-29 07:57:44
304	スープ素A	23	カットトマト240g・水400cc・ローリエ1枚・コンソメ・砂糖・ウスターソース各小さじ2	2022-01-23 10:32:14	2022-01-23 10:32:14
311	調味料A	288	はちみつ大さじ1,りんご酢大さじ3,オリーブオイル大さじ1,黒胡椒小さじ1	2022-01-25 04:13:19	2022-01-25 04:13:19
421	白玉粉用A	147	白玉粉60g・砂糖小さじ2・水60cc~	2022-02-10 05:11:52	2022-02-10 05:11:52
70	味付け用A	29	調味酢小さじ2・ゆずこしょう小さじ1/4	2021-12-28 13:10:06	2021-12-28 13:10:06
428	生地用	21	薄力粉・アーモンドパウダー各小さじ4	2022-02-10 05:19:21	2022-02-10 05:19:21
1124	白ねぎ用B湯	83	熱湯1L・酒大さじ1	2022-05-05 08:58:36	2022-05-05 08:58:36
103	コーヒー液①	62	①インスタントコーヒー小さじ1・水小さじ2	2021-12-28 15:25:29	2021-12-28 15:25:29
104	コーヒー液②	62	②インスタントコーヒー小さじ1・水小さじ4	2021-12-28 15:25:29	2021-12-28 15:25:29
105	生地A	62	牛乳100cc・生クリーム40g・砂糖大さじ2	2021-12-28 15:25:29	2021-12-28 15:25:29
443	A	175	しょうゆ・白い炒りごま各大さじ1・鶏ガラスープの素・ラー油各小さじ1/2	2022-02-13 11:08:42	2022-02-13 11:08:42
305	スープ素A	34	水360~400cc・コンソメ小さじ1・塩小さじ1/4・黒こしょう少々・ローリエ1枚	2022-01-23 10:32:44	2022-01-23 10:32:44
124	A	209	薄力粉40g・ベーキングパウダー小さじ1/2	2021-12-29 06:25:54	2021-12-29 06:25:54
150	生地用A	7	薄力粉180g・・ベーキングパウダー小さじ1/2・砂糖大さじ2・塩小さじ1/4	2021-12-29 07:10:54	2021-12-29 07:10:54
355	調味料A	125	しょうゆ・酒・きざみしょうが小さじ各2	2022-02-08 13:03:42	2022-02-08 13:03:42
1021	調味料A	320	みりん:大さじ4,しょうゆ:大さじ3,塩:小さじ1/3,砂糖:小さじ1と1/2	2022-03-15 04:53:15	2022-03-15 04:53:15
151	仕込み水A	7	42~43°C水80cc・インスタントドライイースト小さじ2/1・	2021-12-29 07:10:54	2021-12-29 07:10:54
152	仕込み水B	7	42~43°C水小さじ2前後・	2021-12-29 07:10:54	2021-12-29 07:10:54
158	水A	55	水120cc・鶏ガラスープの素小さじ1/4	2021-12-29 07:13:48	2021-12-29 07:13:48
194	調味料A	36	市販のおろしにんにく少々、塩少々、パセリ（乾燥）少々　★電子レンジから取り出した後、絡める	2021-12-29 07:43:59	2021-12-29 07:43:59
195	ソース用B	36	1人分：レモン果汁1/8個分、（しょうゆ・みりん）各小さじ1、酒小さじ1/2、おろしにんにく少々、黒こしょう少々　★カップに入れてラップをせず電子レンジ600w30s〜、2人分なら1m〜	2021-12-29 07:43:59	2021-12-29 07:43:59
183	パンたね材料A	77	インスタントドライイースト小さじ1・砂糖大さじ2・塩小さじ1・仕込み水160cc・強力粉160g・薄力粉120g	2021-12-29 07:39:43	2021-12-29 07:39:43
205	調味液A(ボウル1つ分) × 2	69	トマトジュース80cc・水・砂糖各小さじ4・トマトケチャップ・調味酢各小さじ2・しょうゆ・片栗粉各小さじ1	2021-12-29 07:56:10	2021-12-29 07:56:10
216	練り粉A	99	米粉32g・片栗粉大さじ2・鶏ガラスープの素小さじ1/2・水50cc	2021-12-29 07:58:06	2021-12-29 07:58:06
217	練り粉B	99	米粉32g・片栗粉大さじ2・水50cc	2021-12-29 07:58:06	2021-12-29 07:58:06
218	下味用C	99	プレーンヨーグルト120g・鶏ガラスープの素・酒各小さじ2・おろししょうが・おろしにんにく各小さじ1	2021-12-29 07:58:06	2021-12-29 07:58:06
219	ヤンニョムだれD	99	水大さじ2・コチュジャン小さじ4・きび砂糖・酒・酢各小さじ2・おろしにんにく小さじ1/2	2021-12-29 07:58:06	2021-12-29 07:58:06
319	水	292	60cc	2022-02-08 12:18:04	2022-02-08 12:18:04
321	塩水A	66	水500cc・塩小さじ1	2022-02-08 12:28:29	2022-02-08 12:28:29
369	A	199	水280cc・調味酢小さじ4・酒小さじ4	2022-02-08 13:09:18	2022-02-08 13:09:18
1001	ソースA	79	デミグラスソース1缶・水280cc・ウスターソース・はちみつ各小さじ2・トマトケチャップ・コンソメ各小さじ1・ローリエ1枚	2022-03-07 11:24:16	2022-03-07 11:24:16
1002	トマトライスB	79	米240cc・トマトソース120cc・水160cc・コンソメ小さじ1・塩小さじ1/4・黒こしょう少々	2022-03-07 11:24:16	2022-03-07 11:24:16
329	立て塩	132	水500cc・塩大さじ1	2022-02-08 12:46:45	2022-02-08 12:46:45
330	カレールーA	132	チリインオイル・生クリーム各40g・ナンプラー・砂糖各小さじ2	2022-02-08 12:46:45	2022-02-08 12:46:45
331	ルーB	132	鶏ガラスープの素小さじ1/2・水60cc	2022-02-08 12:46:45	2022-02-08 12:46:45
332	調味料A	179	桃屋の味付け搾菜40g(1/2瓶)・水40cc・片栗粉小さじ1/2・黒こしょう少々	2022-02-08 12:47:27	2022-02-08 12:47:27
336	クリーム材料A	75	煉うに20g・生クリーム60g	2022-02-08 12:54:34	2022-02-08 12:54:34
337	スープ用材料B	75	水160~180cc・トマトジュース200cc・コンソメ小さじ1/2・ローリエ1枚・砂糖小さじ1・塩小さじ1/8・黒こしょう少々	2022-02-08 12:54:34	2022-02-08 12:54:34
338	調味料A	173	おろしにんにく・おろししょうが各小さじ1・しょうゆ・酒各大さじ1・塩こしょう少々	2022-02-08 12:55:25	2022-02-08 12:55:25
339	割り下A	128	酒・みりん各大さじ2・だしじょうゆ小さじ8・砂糖小さじ4	2022-02-08 12:55:45	2022-02-08 12:55:45
340	鶏肉漬け込み用A	10	醤油小さじ4・チリパウダー・酒・酢・みりん各小さじ2・コンソメ顆粒小さじ1・市販おろししょうが・市販おろしにんにく各小さじ1/2・黒こしょう少々	2022-02-08 12:56:14	2022-02-08 12:56:14
341	調味料A	27	みそ・きび砂糖・しょうゆ・酒各小さじ2・きざみしょうが・きざみにんにく各小さじ1	2022-02-08 12:56:39	2022-02-08 12:56:39
342	衣用材料A	63	卵1個・片栗粉大さじ4・水小さじ2・サラダ油小さじ1	2022-02-08 12:58:55	2022-02-08 12:58:55
343	南蛮酢B	63	酢40cc・しょうゆ・砂糖各大さじ2・赤唐辛子8切れ	2022-02-08 12:58:55	2022-02-08 12:58:55
344	茹で卵用C	63	水60cc・酢小さじ1・塩小さじ1/8	2022-02-08 12:58:55	2022-02-08 12:58:55
348	A	195	酢小さじ4・ハーブ&スパイスミックス調味料大さじ1・きざみにんにく小さじ2・オリーブオイル小さじ2	2022-02-08 13:00:54	2022-02-08 13:00:54
353	調味料A	178	水150cc・醤油みりん各大さじ2 ・砂糖大さじ1・和風だし小さじ1/3	2022-02-08 13:02:18	2022-02-08 13:02:18
354	ソースA	50	カットトマト400g・水80cc・コンソメ・砂糖各小さじ1	2022-02-08 13:02:41	2022-02-08 13:02:41
1003	味付けC	79	(牛乳大さじ1・塩黒こしょう各少々) × 4人分	2022-03-07 11:24:16	2022-03-07 11:24:16
1011	ソース具材A	148	生クリーム200g・塩小さじ1/4・黒こしょう少々	2022-03-07 11:28:03	2022-03-07 11:28:03
1022	水溶き片栗粉	320	片栗粉大さじ2に対し、水大さじ4	2022-03-15 04:53:15	2022-03-15 04:53:15
1023	天ぷら衣	320	薄力粉35g,溶き卵1/2個、冷たい水50cc  ダマが残る程度に混ぜ合わせ、170℃の油で揚げる	2022-03-15 04:53:15	2022-03-15 04:53:15
1052	調味料A	322	酒、醤油、みりん、顆粒だし:各大さじ1	2022-03-29 15:02:00	2022-03-29 15:02:00
1085	マリネ液	261	レモン果汁大さじ1・日の出新味料大さじ1・酢小さじ1・塩小さじ1/2・黒こしょう少々・レモン表皮1/2個分	2022-04-29 13:48:04	2022-04-29 13:48:04
356	調味料B	125	青花椒塩小さじ2・サラダ油小さじ4	2022-02-08 13:03:42	2022-02-08 13:03:42
360	味付け調味料A	26	きび砂糖小さじ8・みりん大さじ1・しょうゆ小さじ1/4	2022-02-08 13:05:25	2022-02-08 13:05:25
1113	うどん生地A	136	(薄力粉80g・強力粉80g) × 2人分ずつで作業　　2人分×2	2022-05-05 08:44:06	2022-05-05 08:44:06
364	立て塩A	70	(水500cc・塩大さじ2) × 2回分	2022-02-08 13:07:07	2022-02-08 13:07:07
365	生地A	124	強力粉100g・薄力粉20g・塩小さじ1/4・水55~65cc	2022-02-08 13:07:37	2022-02-08 13:07:37
366	調味料B	124	粉ゼラチン・ごま油各小さじ2・酒・砂糖・きざみしょうが・オイスターソース各小さじ1・鶏ガラスープの素小さじ1/2	2022-02-08 13:07:37	2022-02-08 13:07:37
367	水溶き片栗粉B	206	片栗粉小さじ1/2・水小さじ1	2022-02-08 13:08:11	2022-02-08 13:08:11
368	A	206	水200cc・コンソメ小さじ1・ローリエ1枚	2022-02-08 13:08:11	2022-02-08 13:08:11
1114	つゆB	136	トマトジュース200cc・水40cc・だしじょうゆ大さじ2・ライムの果汁小さじ4前後・きざみにんにく小さじ1・黒こしょう少々	2022-05-05 08:44:06	2022-05-05 08:44:06
1120	うどんのタレ	330	無調整豆乳:100ml,白ねりごま:大さじ4,しょうゆ•砂糖:各大さじ2,鶏ガラスープの素:小さじ2	2022-05-05 08:56:36	2022-05-05 08:56:36
373	豚肉下味用	1	醤油小さじ2・酒小さじ2・市販きざみしょうが小さじ1・片栗粉小さじ4	2022-02-08 13:12:32	2022-02-08 13:12:32
374	あん	1	黒酢100cc・水40cc・フロストシュガー大さじ4・醤油酒各小さじ4・片栗粉小さじ2・塩小さじ1/8	2022-02-08 13:12:32	2022-02-08 13:12:32
377	立て塩	2	水500cc・塩大さじ1	2022-02-08 13:19:08	2022-02-08 13:19:08
378	味付け	2	白だし小さじ1・市販のきざみしょうが小さじ1	2022-02-08 13:19:08	2022-02-08 13:19:08
379	A	174	鶏ガラスープの素・ごま油各小さじ1・白い炒りごま小さじ1・豆板醤小さじ1/2	2022-02-08 13:20:32	2022-02-08 13:20:32
1004	湿らせたパン粉A	58	パン粉大さじ8・牛乳大さじ4	2022-03-07 11:25:02	2022-03-07 11:25:02
411	味付け用	3	水400cc・鶏ガラスープの素小さじ2・酒小さじ2・片栗粉小さじ1・塩小さじ1/8・白こしょう少々	2022-02-09 02:57:57	2022-02-09 02:57:57
416	いちごシュガーA	81	粉糖小さじ2・いちごフリーズドライパウダー小さじ1/4・(1人分)	2022-02-10 04:19:03	2022-02-10 04:19:03
384	A	190	砂糖小さじ4・酢40cc・塩小さじ1/2	2022-02-08 13:44:53	2022-02-08 13:44:53
385	B	190	(醤油・みりん・酒)各小さじ1・練りわさび小さじ1/4	2022-02-08 13:44:53	2022-02-08 13:44:53
422	ムース素A	25	プレーンヨーグルト80g・サワークリーム40g・砂糖小さじ4	2022-02-10 05:12:18	2022-02-10 05:12:18
429	たまごプリン素A	105	フロストシュガー小さじ4・バニラオイル適量	2022-02-10 05:19:51	2022-02-10 05:19:51
388	調味料A	120	ナンプラー・きび砂糖各小さじ1	2022-02-08 13:45:57	2022-02-08 13:45:57
1005	ハンバーグソースB	58	水160cc・コンソメ小さじ1/2・砂糖・しょうゆ各小さじ2・塩・黒こしょう各少々	2022-03-07 11:25:02	2022-03-07 11:25:02
1006	水溶き片栗粉C	58	片栗粉小さじ1・水小さじ2	2022-03-07 11:25:02	2022-03-07 11:25:02
395	ニョッキ用材料N	9	強力粉100g・粉チーズ20g・塩小さじ1/4	2022-02-08 13:49:56	2022-02-08 13:49:56
396	チーズソースA	9	粉チーズ小さじ4・塩小さじ1/8	2022-02-08 13:49:56	2022-02-08 13:49:56
397	ご飯用材料A	68	米160cc・水160cc・塩少々	2022-02-08 13:50:43	2022-02-08 13:50:43
398	チキンボール用B	143	パン粉大さじ4・無調製豆乳大さじ2・マヨネーズ小さじ2・みそ・きざみしょうが各小さじ1	2022-02-08 13:51:04	2022-02-08 13:51:04
399	卵液用C	143	無調製豆乳大さじ1・砂糖小さじ2・塩少々	2022-02-08 13:51:04	2022-02-08 13:51:04
401	A	205	水400cc・薄口醤油小さじ2・酒小さじ2・みりん小さじ2・和風だしの素小さじ1・片栗粉大さじ1	2022-02-08 13:58:26	2022-02-08 13:58:26
403	調味料A	31	水480cc~520cc・和風だしの素小さじ1	2022-02-08 13:59:43	2022-02-08 13:59:43
404	調味料B	31	酒小さじ2・しょうゆ小さじ1/2・塩小さじ1/8	2022-02-08 13:59:43	2022-02-08 13:59:43
406	スープ素A	51	水520~560cc・コンソメ顆粒小さじ2	2022-02-08 14:02:45	2022-02-08 14:02:45
1024	蒸し炒めA	285	水50ml,ごま油小さじ1/2,塩ひとつまみ	2022-03-20 13:13:44	2022-03-20 13:13:44
1025	スープB	285	鶏ガラスープの素大さじ1/2,酒大さじ1,塩麹小さじ1,水300ml	2022-03-20 13:13:44	2022-03-20 13:13:44
1035	調味料A	220	和風だしの素小さじ1,	2022-03-22 14:23:58	2022-03-22 14:23:58
1053	卵味付けA 4人分	17	卵2個に対し、塩小さじ1/8・黒こしょう小さじ1/2・生クリーム80g	2022-04-04 10:27:03	2022-04-04 10:27:03
1054	味付けB	17	1人分; 豆板醤小さじ1/2・粉チーズ小さじ2	2022-04-04 10:27:03	2022-04-04 10:27:03
1055	ペーストC	17	きざみにんにく小さじ2・トマトペースト大さじ1	2022-04-04 10:27:03	2022-04-04 10:27:03
1056	盛り付け用	17	1人分; 温泉卵1個・粉チーズ小さじ1/2・黒こしょう少々	2022-04-04 10:27:03	2022-04-04 10:27:03
1080	炒め用A	14	みりん小さじ2・白だし小さじ1	2022-04-29 13:10:23	2022-04-29 13:10:23
1081	ドレッシング	14	キューピー深煎りごまゆずテイストドレッシング	2022-04-29 13:10:23	2022-04-29 13:10:23
1115	うどんつゆ	301	白だし45ml、お湯310ml	2022-05-05 08:45:07	2022-05-05 08:45:07
1121	合わせ調味料A	103	刻んだ輪切り赤唐辛子小さじ1、砂糖・酒・オイスターソース各こさじ2・だしじょうゆ小さじ1・片栗粉小さじ1/2	2022-05-05 08:57:49	2022-05-05 08:57:49
1122	麺味付け調味料B	103	ごま油小さじ2・オイスターソース・だしじょうゆ・鶏ガラスープの素各小さじ1・黒こしょう少々	2022-05-05 08:57:49	2022-05-05 08:57:49
1126	調味料A	331	ごま油:小さじ2,鶏ガラ:小さじ1/2,塩コショウ:小さじ1/4,砂糖:小さじ1/4	2022-05-05 10:12:37	2022-05-05 10:12:37
1132	万能だれ	42	オイスターソース大さじ2、酒小さじ2、市販のきざみしょうが小さじ4、市販のきざみにんにく小さじ2　★混ぜ合わせ、鰤の竜田揚げ用に小さじ4、長芋わかめ天用に小さじ2取り分ける。残りはチャーシュー用に残しておく。	2022-05-07 23:37:15	2022-05-07 23:37:15
1133	わかめ衣A	42	万能だれから小さじ2、薄力粉大さじ2、片栗粉大さじ1、水小さじ4を混ぜ合わせる、刻んだわかめをまぜる。	2022-05-07 23:37:15	2022-05-07 23:37:15
1134	A	177	酒・みりん・しょうゆ大さじ1	2022-05-11 02:46:14	2022-05-11 02:46:14
911	水分A	294	水100cc、レモン果汁小さじ1	2022-02-17 15:21:24	2022-02-17 15:21:24
1137	味付け用A	94	マヨネーズ小さじ4・塩小さじ1/8・黒こしょう少々	2022-05-24 12:23:29	2022-05-24 12:23:29
1077	ドレッシング用材料A	48	酢小さじ2・粒マスタード小さじ1・エキストラバージンオリーブオイル小さじ2	2022-04-29 13:08:34	2022-04-29 13:08:34
1142	おでんのスープ	276	セブンイレブンおでんの素を濃いめに溶かして具材が水面から出ないようにする	2022-05-24 12:25:40	2022-05-24 12:25:40
1143	味付け	289	めんつゆなど	2022-05-24 12:26:04	2022-05-24 12:26:04
925	下味A	168	しょうがのしぼり汁小さじ1/2・酒小さじ1/2・塩少々	2022-02-18 09:41:15	2022-02-18 09:41:15
926	調味料A	168	長ねぎ(みじん切り)5cm分・鶏ガラスープの素小さじ1/4・酒大さじ1・砂糖・片栗粉各小さじ1/4・塩こしょう各少々・	2022-02-18 09:41:15	2022-02-18 09:41:15
1145	だしA	140	水260cc・しょうゆ(まろやか)・酒各大さじ2・みりん・砂糖各大さじ1・和風だしの素小さじ1	2022-05-24 12:34:29	2022-05-24 12:34:29
1147	2人分パスタソース	324	◆オリーブオイル大さじ2◆ゆず胡椒小さじ１◆めんつゆ(3倍濃縮タイプ）小さじ2 ◆生姜(すりおろし)ふたかけ	2022-06-06 11:43:05	2022-06-06 11:43:05
1148	立て塩	139	(水1Lに塩大さじ2) × 4　4尾分。	2022-06-26 09:26:50	2022-06-26 09:26:50
1150	そうめんタレ	333	●めんつゆ(2倍濃縮)...大2 ●ごま油...大1.5 ●醤油・オイスターソース...各小2 ●砂糖・酢...各小1	2022-06-28 11:45:35	2022-06-28 11:45:35
935	粉A	185	薄力粉40g・砂糖小さじ4	2022-02-18 09:55:17	2022-02-18 09:55:17
936	トッピング	298	大根おろし、輪切りの青ネギ、刻みのりをちらす	2022-02-19 05:22:00	2022-02-19 05:22:00
937	あん	298	めんつゆ（2倍濃縮）100ml、水300ml、オイスター小さじ2     沸騰後:水溶き片栗粉小さじ2〜	2022-02-19 05:22:00	2022-02-19 05:22:00
941	スープの素	286	白だし、酒:各大さじ1.5  水450ml	2022-02-20 04:30:43	2022-02-20 04:30:43
943	ブイヨン	291	1カップ	2022-02-20 04:31:48	2022-02-20 04:31:48
1155	ドレッシング用A	134	スイートチリソース・マヨネーズ各大さじ1	2022-07-03 07:54:28	2022-07-03 07:54:28
1156	調味料A	121	ナンプラー・きざみにんにく・きび砂糖各小さじ1・黒こしょう少々	2022-07-03 07:54:56	2022-07-03 07:54:56
1158	ソース用A（ア）	96	トマトソース160g・調味酢小さじ2・コンソメ小さじ1/2	2022-07-03 07:56:33	2022-07-03 07:56:33
950	煮込み水	256	★顆粒コンソメ・・・小さじ1 ★水・・・1カップ半 ★牛乳・・・2カップ	2022-02-22 10:09:57	2022-02-22 10:09:57
1159	ディル・ソースB（冷）4人分	96	キューピーレモンドレッシング大さじ2・エキストラバージンオリーブオイル小さじ2	2022-07-03 07:56:33	2022-07-03 07:56:33
953	黄金比の煮汁	310	水200ccに対して、醤油•酒•砂糖•みりん各大さじ2 醤油少なめで	2022-02-28 03:33:41	2022-02-28 03:33:41
954	合わせ調味料	311	白いりごま、ごま油:各小さじ2  醤油、にんにくすりおろし:各小さじ1  塩少々	2022-02-28 08:21:50	2022-02-28 08:21:50
1161	卵用A	84	きざみしょうが小さじ1/2・塩小さじ1/8	2022-07-04 01:34:48	2022-07-04 01:34:48
1162	材料a	161	イースト小さじ1・砂糖大さじ1・塩小さじ1	2022-07-04 01:38:09	2022-07-04 01:38:09
1165	天ぷらの衣	336	水:100cc, 氷:2個, 小麦粉:大さじ5, 片栗粉:大さじ2, 塩:小さじ1/2	2022-07-04 01:44:33	2022-07-04 01:44:33
1169	むきえびの下味	337	酒:小さじ1, 白コショウ:少々	2022-07-04 01:59:51	2022-07-04 01:59:51
1170	大根、ザーサイ炒める時A	337	きざみしょうが:小さじ1,ごま油:小さじ1	2022-07-04 01:59:51	2022-07-04 01:59:51
1171	スープB	337	水:520-560cc,鶏がらスープの素:小さじ1	2022-07-04 01:59:51	2022-07-04 01:59:51
1180	調味料	334	ごま油:大さじ1,    鶏がらスープの素:小さじ1	2022-07-05 12:32:35	2022-07-05 12:32:35
1190	肉下味用	22	砂糖・塩各小さじ1/2・黒こしょう少々(多め)	2022-10-23 01:31:55	2022-10-23 01:31:55
1191	ソースA	22	しょうゆこうじ・水各小さじ4・黒こしょう少々	2022-10-23 01:31:55	2022-10-23 01:31:55
981	ハンバーグつけだれ	313	砂糖、みりん、しょうゆ:各大さじ1  ポン酢:大さじ3  バター:10g	2022-03-01 10:56:12	2022-03-01 10:56:12
982	ハンバーグ用:蒸す液体	313	酒:大さじ2,水20cc	2022-03-01 10:56:12	2022-03-01 10:56:12
1187	スープ2〜3人分	340	水600cc（椎茸戻し汁含む）に対して、しょうゆ•オイスターソース:各大さじ1弱 、鶏ガラスープ大さじ1/2 、白胡椒	2022-08-30 10:57:42	2022-08-30 10:57:42
1188	最後に	340	片栗粉:大さじ1.5を2倍の水で溶かす、酢:大さじ2、ラー油:適量	2022-08-30 10:57:42	2022-08-30 10:57:42
1189	あん	338	水160cc、和風出汁の素:小さじ1/2、醤油•酒•みりん:各小さじ1、片栗粉:小さじ2	2022-10-11 10:39:44	2022-10-11 10:39:44
1192	トッピング	332	バナナ:1/2本輪切り　いちご:スライス　グラノーラ:適量	2022-10-24 09:20:17	2022-10-24 09:20:17
1193	チキンカツソース	325	デミグラスソース、トマトペースト、粉チーズ、バジル	2022-10-24 09:37:11	2022-10-24 09:37:11
1194	マカロニソース	325	ジェノベーゼ（バジルソース）	2022-10-24 09:37:11	2022-10-24 09:37:11
1195	キャベツのドレッシング	325	市販のオニオンドレッシング	2022-10-24 09:37:11	2022-10-24 09:37:11
1196	付け合わせ	325	五穀米、わかめの味噌汁	2022-10-24 09:37:11	2022-10-24 09:37:11
1202	調味料	349	水 320cc 酒 100cc 砂糖 大さじ2 みそ 大さじ3 和風顆粒だし 小さじ1/2	2022-11-01 02:11:58	2022-11-01 02:11:58
1203	調味料A	126	水480~520cc・鶏ガラスープの素小さじ2強・豆板醤・片栗粉各小さじ1/2・塩小さじ1/8・黒こしょう少々　　　★酸度:4.5%程度のりんご酢などであれば酢は小さじ2より多めに入れる！　★鶏ガラスープの素は多めに！	2022-11-07 11:33:39	2022-11-07 11:33:39
1205	味付け用a	153	トマトケチャップ・砂糖各大さじ1・酢大さじ2・酒・きざみしょうが・片栗粉各小さじ1・豆板醤・鶏ガラスープの素各小さじ1/2	2022-11-07 11:36:15	2022-11-07 11:36:15
1206	テンメジャン具材A	82	サラダ油小さじ4・白ねぎ20g・豆板醤大さじ1・豆豉小さじ2・青花椒塩小さじ2・市販きざみにんにく・きざみしょうが各小さじ2	2022-11-07 11:37:22	2022-11-07 11:37:22
1207	合わせ調味液B	82	テンメジャン32g・砂糖・しょうゆ各小さじ2・酒・鶏ガラスープの素各小さじ1・水200cc	2022-11-07 11:37:22	2022-11-07 11:37:22
1209	味付けA	109	ドレッシング小さじ4・砂糖小さじ1	2022-11-14 10:29:53	2022-11-14 10:29:53
1210	調味料A→B	106	きざみしょうが小さじ 1→ドレッシング小さじ4→片栗粉小さじ8→水小さじ2	2022-11-14 10:30:31	2022-11-14 10:30:31
1211	A	108	素干し海老・ドレッシング・水各小さじ2	2022-11-14 10:31:25	2022-11-14 10:31:25
1212	調味料（A）	341	キユーピー 深煎りごまドレッシング 大さじ4、めんつゆ (2倍濃縮) 大さじ2	2022-11-14 10:34:41	2022-11-14 10:34:41
1213	調味料A	104	酒・きざみにんにく・きざみしょうが各小さじ1・鶏ガラスープの素小さじ1/2・黒こしょう少々	2022-11-15 10:26:26	2022-11-15 10:26:26
1215	味付け用A	11	塩小さじ1/8・黒こしょう少々・マヨネーズ小さじ4・砂糖小さじ0.7	2022-11-20 13:08:00	2022-11-20 13:08:00
\.


--
-- Data for Name: seasons; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.seasons (id, name, created_at, updated_at) FROM stdin;
1	春	2022-02-04 14:10:52	2022-02-04 14:10:52
2	夏	2022-02-04 14:10:52	2022-02-04 14:10:52
3	秋	2022-02-04 14:10:52	2022-02-04 14:10:52
4	冬	2022-02-04 14:10:52	2022-02-04 14:10:52
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.tags (id, name, created_at, updated_at) FROM stdin;
3	消化が良い	2022-02-04 14:10:55	2022-02-04 14:10:55
5	冷えやしびれを改善するレシピ	2022-02-08 08:31:22	2022-02-08 08:31:22
1	眼に良いレシピ	2022-02-04 14:10:55	2022-02-08 08:31:38
2	体重を増やすレシピ	2022-02-04 14:10:55	2022-02-08 08:31:52
8	絶品レシピ	2022-02-18 09:16:25	2022-02-18 09:16:25
9	栄養満点レシピ	2022-03-01 10:08:58	2022-03-01 10:08:58
10	グルタチオンレシピ	2022-04-29 12:28:51	2022-04-29 12:28:51
44	深煎り胡麻ドレッシング	2022-07-03 07:50:06	2022-07-03 07:50:06
45	レモンドレッシング	2022-07-03 07:50:16	2022-07-03 07:50:16
46	スイートチリソース	2022-07-03 07:53:25	2022-07-03 07:53:25
47	ザーサイ	2022-07-04 01:33:58	2022-07-04 01:33:58
6	一人暮らしorお弁当レシピ	2022-02-17 09:56:37	2022-10-24 09:27:25
43	脾気虚（食欲不振、疲労感、体重減）	2022-05-24 12:22:22	2022-10-24 09:31:04
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: johsoyhojfcovp
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
2	Mai	mai_eternalmelody555@yahoo.co.jp	\N	$2y$10$aCsUi9Y/DdDS.afRFChukunkq.rIO3yyyrC8T99oiSfnNMsUiwrLe	k1mtFVhc4H05HqEGhERfWo7Pg7kFuc01tHMc3750xlEbD16nimuT22Zjpr9v	2021-12-15 10:19:24	2021-12-15 10:19:24
3	Rika Okugawa	rin-memory106@i.softbank.jp	\N	$2y$10$8/PKfaiI./fao5csrIlEN.KTleW2ig9O2vRNUrRjiPwrepPtO8m4S	\N	2022-01-17 05:25:46	2022-01-17 05:25:46
4	mu	aaa@bbb.com	\N	$2y$10$EktyONrYmeAtAOd1VeB7BuEFQQ989GN33pMjx9GfKygYexmOl6dP.	\N	2022-02-04 09:23:03	2022-02-04 09:23:03
1	rika okugawa	Okuoku@localhost	\N	$2y$10$CqoYCYzc70xkHuTj.Gto1eC89tZ5k9/XB3hq6YLfYi0eMLHeKgdmG	CWn7iZYOZ8kPRD0UL700obDXRwkfNWeCyES9qN71ARu3hVyvvBVCzX4oXMUn	2021-11-10 04:10:53	2021-11-10 04:10:53
\.


--
-- Name: howtos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.howtos_id_seq', 38, true);


--
-- Name: mainsubs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.mainsubs_id_seq', 43, true);


--
-- Name: material_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.material_categories_id_seq', 13, true);


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.materials_id_seq', 365, true);


--
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.menus_id_seq', 102, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.migrations_id_seq', 20, true);


--
-- Name: nutrient_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.nutrient_materials_id_seq', 1507, true);


--
-- Name: nutrients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.nutrients_id_seq', 79, true);


--
-- Name: recipe_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.recipe_categories_id_seq', 58, true);


--
-- Name: recipe_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.recipe_countries_id_seq', 9, true);


--
-- Name: recipe_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.recipe_materials_id_seq', 7148, true);


--
-- Name: recipe_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.recipe_tags_id_seq', 707, true);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.recipes_id_seq', 351, true);


--
-- Name: seasonings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.seasonings_id_seq', 1215, true);


--
-- Name: seasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.seasons_id_seq', 4, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.tags_id_seq', 47, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: johsoyhojfcovp
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: howtos howtos_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.howtos
    ADD CONSTRAINT howtos_pkey PRIMARY KEY (id);


--
-- Name: mainsubs mainsubs_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.mainsubs
    ADD CONSTRAINT mainsubs_pkey PRIMARY KEY (id);


--
-- Name: material_categories material_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.material_categories
    ADD CONSTRAINT material_categories_pkey PRIMARY KEY (id);


--
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: nutrient_materials nutrient_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.nutrient_materials
    ADD CONSTRAINT nutrient_materials_pkey PRIMARY KEY (id);


--
-- Name: nutrients nutrients_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.nutrients
    ADD CONSTRAINT nutrients_pkey PRIMARY KEY (id);


--
-- Name: recipe_categories recipe_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipe_categories
    ADD CONSTRAINT recipe_categories_pkey PRIMARY KEY (id);


--
-- Name: recipe_countries recipe_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipe_countries
    ADD CONSTRAINT recipe_countries_pkey PRIMARY KEY (id);


--
-- Name: recipe_materials recipe_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipe_materials
    ADD CONSTRAINT recipe_materials_pkey PRIMARY KEY (id);


--
-- Name: recipe_tags recipe_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipe_tags
    ADD CONSTRAINT recipe_tags_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: seasonings seasonings_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.seasonings
    ADD CONSTRAINT seasonings_pkey PRIMARY KEY (id);


--
-- Name: seasons seasons_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.seasons
    ADD CONSTRAINT seasons_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: johsoyhojfcovp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: johsoyhojfcovp
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: SCHEMA heroku_ext; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA heroku_ext TO johsoyhojfcovp WITH GRANT OPTION;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO johsoyhojfcovp;


--
-- PostgreSQL database dump complete
--

