--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Ubuntu 15.3-1.pgdg22.04+1)
-- Dumped by pg_dump version 15.3 (Ubuntu 15.3-1.pgdg22.04+1)

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
-- Name: properties; Type: TABLE; Schema: public; Owner: hosseinmh
--

CREATE TABLE public.properties (
    id integer NOT NULL,
    link character varying(200),
    price numeric,
    location character varying(50),
    usage character varying(20),
    meterage integer,
    rooms integer,
    parking integer,
    agency_name character varying(100)
);


ALTER TABLE public.properties OWNER TO hosseinmh;

--
-- Name: properties_id_seq; Type: SEQUENCE; Schema: public; Owner: hosseinmh
--

CREATE SEQUENCE public.properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.properties_id_seq OWNER TO hosseinmh;

--
-- Name: properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hosseinmh
--

ALTER SEQUENCE public.properties_id_seq OWNED BY public.properties.id;


--
-- Name: properties id; Type: DEFAULT; Schema: public; Owner: hosseinmh
--

ALTER TABLE ONLY public.properties ALTER COLUMN id SET DEFAULT nextval('public.properties_id_seq'::regclass);


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: hosseinmh
--

COPY public.properties (id, link, price, location, usage, meterage, rooms, parking, agency_name) FROM stdin;
3117405	https://kilid.com/buy/detail/3117405	6000000000.0	شهر زیبا	مسکونی	62	1	1	رادمان
3117407	https://kilid.com/buy/detail/3117407	6000000000.0	جنت اباد جنوبی	مسکونی	62	1	1	رادمان
3117408	https://kilid.com/buy/detail/3117408	6000000000.0	بلوار فردوس شرقی	مسکونی	62	1	1	رادمان
3117411	https://kilid.com/buy/detail/3117411	6000000000.0	بیمه	مسکونی	62	1	1	رادمان
3117360	https://kilid.com/buy/detail/3117360	6500000000.0	پونک جنوبی	مسکونی	70	2	1	رادمان
3117410	https://kilid.com/buy/detail/3117410	6000000000.0	سازمان برنامه جنوبی	مسکونی	62	1	1	رادمان
3117356	https://kilid.com/buy/detail/3117356	6500000000.0	جنت اباد جنوبی	مسکونی	70	2	1	رادمان
3122466	https://kilid.com/buy/detail/3122466	6890000000.0	سازمان برنامه مرکزی	مسکونی	53	1	1	رادمان
3117620	https://kilid.com/buy/detail/3117620	6400000000.0	سازمان برنامه جنوبی	مسکونی	58	1	1	رادمان
3098107	https://kilid.com/buy/detail/3098107	6800000000.0	بلوار فردوس غربی	مسکونی	92	2	1	رادمان
3113887	https://kilid.com/buy/detail/3113887	6980000000.0	شهران جنوبی	مسکونی	90	2	1	رادمان
3125738	https://kilid.com/buy/detail/3125738	7100000000.0	سازمان برنامه جنوبی	مسکونی	79	2	1	املاک بزرگ آرکان
3126589	https://kilid.com/buy/detail/3126589	5800000000.0	جنت اباد جنوبی	مسکونی	62	2	1	هامون
3126663	https://kilid.com/buy/detail/3126663	7300000000.0	جنت اباد جنوبی	مسکونی	70	2	1	هامون
3126778	https://kilid.com/buy/detail/3126778	7300000000.0	جنت اباد جنوبی	مسکونی	70	2	1	هامون
3128399	https://kilid.com/buy/detail/3128399	4920000000.0	فردوس	مسکونی	55	1	1	هامون
3125268	https://kilid.com/buy/detail/3125268	5050000000.0	بلوار فردوس غربی	مسکونی	54	1	1	هامون
3127574	https://kilid.com/buy/detail/3127574	6650000000.0	شهران	مسکونی	75	1	1	هامون
3094806	https://kilid.com/buy/detail/3094806	9330000000.0	جنت اباد	مسکونی	61	1	1	ایرانی شعبه 5 تیم آتیار
3084392	https://kilid.com/buy/detail/3084392	12260000000.0	پونک شمالی	مسکونی	95	2	1	ایرانی شعبه 5 تیم آتیار
3083949	https://kilid.com/buy/detail/3083949	11590000000.0	پونک شمالی	مسکونی	95	2	1	ایرانی شعبه 5 تیم آتیار
3083997	https://kilid.com/buy/detail/3083997	11590000000.0	پونک شمالی	مسکونی	95	2	1	ایرانی شعبه 5 تیم آتیار
3094746	https://kilid.com/buy/detail/3094746	18150000000.0	جنت اباد	مسکونی	121	3	1	ایرانی شعبه 5 تیم آتیار
3084149	https://kilid.com/buy/detail/3084149	11590000000.0	پونک شمالی	مسکونی	95	2	1	ایرانی شعبه 5 تیم آتیار
3087041	https://kilid.com/buy/detail/3087041	18150000000.0	پونک شمالی	مسکونی	150	3	1	ایرانی شعبه 5 تیم آتیار
3086553	https://kilid.com/buy/detail/3086553	11590000000.0	پونک شمالی	مسکونی	95	2	1	ایرانی شعبه 5 تیم آتیار
3084009	https://kilid.com/buy/detail/3084009	17079999999.999998	پونک شمالی	مسکونی	150	3	2	ایرانی شعبه 5 تیم آتیار
3111789	https://kilid.com/buy/detail/3111789	6660000000.0	پونک شمالی	مسکونی	52	1	1	ایرانی شعبه 5 تیم آتیار
3117796	https://kilid.com/buy/detail/3117796	8580000000.0	پونک شمالی	مسکونی	66	1	1	ایرانی شعبه 5 تیم آتیار
3123100	https://kilid.com/buy/detail/3123100	6500000000.0	فردوس	مسکونی	78	2	0	هامون
3123518	https://kilid.com/buy/detail/3123518	8000000000.0	فردوس	مسکونی	68	2	1	هامون
3123741	https://kilid.com/buy/detail/3123741	8400000000.0	فردوس	مسکونی	86	2	1	هامون
3123785	https://kilid.com/buy/detail/3123785	7000000000.0	فردوس	مسکونی	73	2	1	هامون
3124207	https://kilid.com/buy/detail/3124207	8400000000.0	فردوس	مسکونی	86	2	1	هامون
3124343	https://kilid.com/buy/detail/3124343	8400000000.0	فردوس	مسکونی	87	2	1	هامون
3124556	https://kilid.com/buy/detail/3124556	8100000000.0	فردوس	مسکونی	86	2	1	هامون
3125007	https://kilid.com/buy/detail/3125007	8050000000.000001	فردوس	مسکونی	85	2	1	هامون
3125327	https://kilid.com/buy/detail/3125327	7350000000.0	فردوس	مسکونی	86	2	1	هامون
3125453	https://kilid.com/buy/detail/3125453	7000000000.0	فردوس	مسکونی	74	2	1	هامون
3126834	https://kilid.com/buy/detail/3126834	7000000000.0	فردوس	مسکونی	72	2	1	هامون
3116283	https://kilid.com/buy/detail/3116283	11300000000.0	ارم	مسکونی	113	3	1	آلما وی آی پی
3127442	https://kilid.com/buy/detail/3127442	5650000000.0	بلوار فردوس غربی	مسکونی	60	2	1	هامون
3097971	https://kilid.com/buy/detail/3097971	4500000000.0	بلوار فردوس غربی	مسکونی	53	1	1	رهام
3098595	https://kilid.com/buy/detail/3098595	4150000000.0000005	بلوار فردوس غربی	مسکونی	54	1	1	رهام
3098596	https://kilid.com/buy/detail/3098596	5300000000.0	بلوار فردوس غربی	مسکونی	57	1	1	رهام
3098598	https://kilid.com/buy/detail/3098598	5800000000.0	بلوار فردوس شرقی	مسکونی	60	1	1	رهام
3098599	https://kilid.com/buy/detail/3098599	5600000000.0	بلوار فردوس شرقی	مسکونی	70	2	1	رهام
3098600	https://kilid.com/buy/detail/3098600	9200000000.0	بلوار فردوس شرقی	مسکونی	87	2	1	رهام
3098650	https://kilid.com/buy/detail/3098650	6200000000.0	بلوار فردوس شرقی	مسکونی	66	2	1	رهام
3098653	https://kilid.com/buy/detail/3098653	6500000000.0	بلوار فردوس غربی	مسکونی	90	2	1	رهام
3098656	https://kilid.com/buy/detail/3098656	5000000000.0	بلوار فردوس غربی	مسکونی	55	1	1	رهام
3098658	https://kilid.com/buy/detail/3098658	7100000000.0	بلوار فردوس غربی	مسکونی	70	2	1	رهام
3098662	https://kilid.com/buy/detail/3098662	4600000000.0	بلوار فردوس غربی	مسکونی	53	1	1	رهام
3118609	https://kilid.com/buy/detail/3118609	6800000000.0	بلوار فردوس غربی	مسکونی	75	2	1	رهام
3118611	https://kilid.com/buy/detail/3118611	5800000000.0	بلوار فردوس غربی	مسکونی	75	2	1	رهام
3118612	https://kilid.com/buy/detail/3118612	6000000000.0	بلوار فردوس شرقی	مسکونی	60	2	1	رهام
3118614	https://kilid.com/buy/detail/3118614	6500000000.0	بلوار فردوس شرقی	مسکونی	70	2	1	رهام
3118617	https://kilid.com/buy/detail/3118617	5800000000.0	بلوار فردوس غربی	مسکونی	58	1	1	رهام
3118619	https://kilid.com/buy/detail/3118619	5800000000.0	بلوار فردوس شرقی	مسکونی	60	1	1	رهام
3093654	https://kilid.com/buy/detail/3093654	4099999999.9999995	بلوار فردوس شرقی	مسکونی	53	1	0	رهام
3093655	https://kilid.com/buy/detail/3093655	4200000000.0	بلوار فردوس غربی	مسکونی	56	1	0	رهام
3093657	https://kilid.com/buy/detail/3093657	4400000000.0	بلوار فردوس شرقی	مسکونی	50	1	1	رهام
3097952	https://kilid.com/buy/detail/3097952	6000000000.0	بلوار فردوس شرقی	مسکونی	60	2	1	رهام
3097955	https://kilid.com/buy/detail/3097955	6700000000.0	بلوار فردوس شرقی	مسکونی	70	2	1	رهام
3097957	https://kilid.com/buy/detail/3097957	6400000000.0	بلوار فردوس شرقی	مسکونی	66	2	1	رهام
3093652	https://kilid.com/buy/detail/3093652	6300000000.0	بلوار فردوس غربی	مسکونی	78	2	1	رهام
3093650	https://kilid.com/buy/detail/3093650	6500000000.0	بلوار فردوس غربی	مسکونی	60	2	1	رهام
3125776	https://kilid.com/buy/detail/3125776	11760000000.0	پونک شمالی	مسکونی	120	2	2	اوپال
3126624	https://kilid.com/buy/detail/3126624	11960000000.0	پونک جنوبی	مسکونی	98	2	2	اوپال
3127011	https://kilid.com/buy/detail/3127011	6800000000.0	بلوار فردوس غربی	مسکونی	85	2	1	املاک بزرگ آرکان
3099335	https://kilid.com/buy/detail/3099335	46000000000.0	فردوس	اداری تجاری	75	0	1	رهام
3097969	https://kilid.com/buy/detail/3097969	4099999999.9999995	بلوار فردوس شرقی	مسکونی	56	1	1	رهام
3097968	https://kilid.com/buy/detail/3097968	6300000000.0	بلوار فردوس غربی	مسکونی	80	2	1	رهام
3097967	https://kilid.com/buy/detail/3097967	6800000000.0	بلوار فردوس غربی	مسکونی	90	2	1	رهام
3097963	https://kilid.com/buy/detail/3097963	7000000000.0	بلوار فردوس غربی	مسکونی	70	2	1	رهام
3097962	https://kilid.com/buy/detail/3097962	9000000000.0	بلوار فردوس شرقی	مسکونی	90	2	1	رهام
3097959	https://kilid.com/buy/detail/3097959	5500000000.0	بلوار فردوس غربی	مسکونی	55	1	1	رهام
3094579	https://kilid.com/buy/detail/3094579	7400000000.0	پونک جنوبی	مسکونی	71	2	1	اوپال وی ای پی
3113954	https://kilid.com/buy/detail/3113954	\N	فردوس	مسکونی	140	3	1	گروه کارشناسان مسکن آی تی
3121666	https://kilid.com/buy/detail/3121666	14200000000.0	سازمان برنامه مرکزی	مسکونی	113	2	1	رادمان
3127793	https://kilid.com/buy/detail/3127793	13200000000.0	سازمان برنامه شمالی	مسکونی	124	2	0	اوپال
3127812	https://kilid.com/buy/detail/3127812	6520000000.0	شهران شمالی	مسکونی	82	2	1	اوپال
3127815	https://kilid.com/buy/detail/3127815	9400000000.0	جنت اباد جنوبی	مسکونی	95	2	1	اوپال
3127822	https://kilid.com/buy/detail/3127822	7000000000.0	شهران جنوبی	مسکونی	70	2	1	اوپال
3127983	https://kilid.com/buy/detail/3127983	9100000000.0	باغ فیض	مسکونی	80	2	1	اوپال
3128037	https://kilid.com/buy/detail/3128037	7500000000.0	سازمان برنامه شمالی	مسکونی	70	1	1	اوپال
3128140	https://kilid.com/buy/detail/3128140	8950000000.0	سازمان برنامه شمالی	مسکونی	90	2	1	اوپال
3128223	https://kilid.com/buy/detail/3128223	10000000000.0	پونک شمالی	مسکونی	100	2	2	اوپال
3128237	https://kilid.com/buy/detail/3128237	13720000000.0	پونک جنوبی	مسکونی	146	2	2	اوپال
3128525	https://kilid.com/buy/detail/3128525	5800000000.0	شهران جنوبی	مسکونی	65	2	1	اوپال
3128524	https://kilid.com/buy/detail/3128524	8300000000.000001	پونک جنوبی	مسکونی	75	2	1	آلما وی آی پی
3128523	https://kilid.com/buy/detail/3128523	6970000000.0	فردوس	مسکونی	68	2	1	هامون
3128520	https://kilid.com/buy/detail/3128520	10000000000.0	بلوار فردوس غربی	مسکونی	105	2	1	رادمان
3128519	https://kilid.com/buy/detail/3128519	7050000000.0	سازمان برنامه مرکزی	مسکونی	67	1	1	اوپال
3128518	https://kilid.com/buy/detail/3128518	5600000000.0	پونک جنوبی	مسکونی	67	2	1	پلاک
3125194	https://kilid.com/buy/detail/3125194	13800000000.0	اباذر	مسکونی	92	2	1	پلاک
3128515	https://kilid.com/buy/detail/3128515	12800000000.0	فردوس	مسکونی	105	2	1	رادمان
3128514	https://kilid.com/buy/detail/3128514	5150000000.0	سازمان برنامه مرکزی	مسکونی	60	2	0	هامون
3095935	https://kilid.com/buy/detail/3095935	6800000000.0	شهران جنوبی	مسکونی	70	2	1	اسپاد
3096972	https://kilid.com/buy/detail/3096972	10500000000.0	اباذر	مسکونی	85	2	1	اسپاد
3096979	https://kilid.com/buy/detail/3096979	5700000000.0	شهر زیبا	مسکونی	58	1	1	اسپاد
3103639	https://kilid.com/buy/detail/3103639	7200000000.0	شهران جنوبی	مسکونی	70	2	1	اسپاد
3103742	https://kilid.com/buy/detail/3103742	11500000000.0	سازمان برنامه شمالی	مسکونی	105	2	0	اسپاد
3103747	https://kilid.com/buy/detail/3103747	14500000000.0	سازمان برنامه شمالی	مسکونی	150	3	1	اسپاد
3116121	https://kilid.com/buy/detail/3116121	9000000000.0	سازمان برنامه جنوبی	مسکونی	76	2	1	اسپاد
3116126	https://kilid.com/buy/detail/3116126	7300000000.0	بلوار فردوس غربی	مسکونی	68	1	1	اسپاد
3116129	https://kilid.com/buy/detail/3116129	6250000000.0	شهر زیبا	مسکونی	65	1	1	اسپاد
3116132	https://kilid.com/buy/detail/3116132	7200000000.0	بلوار فردوس غربی	مسکونی	95	2	1	اسپاد
3117391	https://kilid.com/buy/detail/3117391	8400000000.0	سازمان برنامه جنوبی	مسکونی	80	2	1	اسپاد
3125947	https://kilid.com/buy/detail/3125947	9300000000.0	پونک جنوبی	مسکونی	66	2	1	آلما وی آی پی
3126720	https://kilid.com/buy/detail/3126720	6900000000.0	پونک جنوبی	مسکونی	66	2	0	آلما وی آی پی
3127488	https://kilid.com/buy/detail/3127488	6900000000.0	پونک شمالی	مسکونی	69	2	1	آلما وی آی پی
3128510	https://kilid.com/buy/detail/3128510	11800000000.0	سازمان برنامه شمالی	مسکونی	85	2	1	رادمان
3128508	https://kilid.com/buy/detail/3128508	5200000000.0	سازمان برنامه شمالی	مسکونی	75	2	0	هامون
3128501	https://kilid.com/buy/detail/3128501	11600000000.0	فردوس	مسکونی	110	2	2	رادمان
3128496	https://kilid.com/buy/detail/3128496	7100000000.0	سازمان برنامه جنوبی	مسکونی	73	2	1	هامون
3128493	https://kilid.com/buy/detail/3128493	5300000000.0	سازمان برنامه شمالی	مسکونی	59	1	1	هامون
3128489	https://kilid.com/buy/detail/3128489	5950000000.0	بلوار فردوس غربی	مسکونی	65	1	0	املاک بزرگ آرکان
3128478	https://kilid.com/buy/detail/3128478	5900000000.0	فردوس	مسکونی	55	1	1	رادمان
3103098	https://kilid.com/buy/detail/3103098	9100000000.0	شهر زیبا	مسکونی	90	2	1	اوپال
3124901	https://kilid.com/buy/detail/3124901	6300000000.0	سازمان برنامه جنوبی	مسکونی	60	2	1	رادمان
3124903	https://kilid.com/buy/detail/3124903	7500000000.0	پونک شمالی	مسکونی	75	2	1	رادمان
3124907	https://kilid.com/buy/detail/3124907	6550000000.0	پونک شمالی	مسکونی	60	2	1	رادمان
3125644	https://kilid.com/buy/detail/3125644	7550000000.0	پونک شمالی	مسکونی	70	2	1	رادمان
3126840	https://kilid.com/buy/detail/3126840	10100000000.0	بلوار فردوس غربی	مسکونی	106	2	1	رادمان
3106569	https://kilid.com/buy/detail/3106569	8630000000.0	شهر زیبا	مسکونی	83	2	1	هامون
3128402	https://kilid.com/buy/detail/3128402	6300000000.0	سازمان برنامه جنوبی	مسکونی	66	2	1	رادمان
3127710	https://kilid.com/buy/detail/3127710	7400000000.0	جنت اباد جنوبی	مسکونی	70	2	1	هامون
3124550	https://kilid.com/buy/detail/3124550	5500000000.0	جنت اباد مرکزی	مسکونی	65	2	1	هامون
3127719	https://kilid.com/buy/detail/3127719	5700000000.0	جنت اباد مرکزی	مسکونی	75	2	1	هامون
3126220	https://kilid.com/buy/detail/3126220	6450000000.0	سازمان برنامه جنوبی	مسکونی	65	2	1	اوپال
3126632	https://kilid.com/buy/detail/3126632	8930000000.0	جنت اباد جنوبی	مسکونی	85	2	1	اوپال
3126676	https://kilid.com/buy/detail/3126676	8279999999.999999	پونک شمالی	مسکونی	90	2	1	اوپال
3128384	https://kilid.com/buy/detail/3128384	7000000000.0	فردوس	مسکونی	65	2	1	هامون
3128382	https://kilid.com/buy/detail/3128382	11000000000.0	شهرک پرواز	مسکونی	100	2	1	پلاک
3128378	https://kilid.com/buy/detail/3128378	5950000000.0	سازمان برنامه مرکزی	مسکونی	66	1	1	رادمان
3128372	https://kilid.com/buy/detail/3128372	7500000000.0	سازمان برنامه جنوبی	مسکونی	73	2	1	رادمان
3128369	https://kilid.com/buy/detail/3128369	5800000000.0	جنت اباد مرکزی	مسکونی	61	2	1	هامون
3128367	https://kilid.com/buy/detail/3128367	7200000000.0	جنت اباد مرکزی	مسکونی	88	2	1	هامون
3101298	https://kilid.com/buy/detail/3101298	19600000000.0	شهر زیبا	مسکونی	140	0	2	آلما وی آی پی
\.


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hosseinmh
--

SELECT pg_catalog.setval('public.properties_id_seq', 1, false);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: hosseinmh
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO hosseinmh;


--
-- PostgreSQL database dump complete
--

