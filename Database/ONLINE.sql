--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6
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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: youth_admin
--

CREATE TABLE public.customer (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    email character varying(50) NOT NULL,
    mobile bigint NOT NULL,
    address character varying(50) NOT NULL,
    landmark character varying(50) NOT NULL,
    altermobile bigint NOT NULL
);


ALTER TABLE public.customer OWNER TO youth_admin;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: youth_admin
--

CREATE SEQUENCE public.customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_customer_id_seq OWNER TO youth_admin;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youth_admin
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.id;


--
-- Name: order_product; Type: TABLE; Schema: public; Owner: youth_admin
--

CREATE TABLE public.order_product (
    order_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.order_product OWNER TO youth_admin;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: youth_admin
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    order_at_time timestamp(5) without time zone NOT NULL,
    total_price numeric(5,0) NOT NULL,
    modeof_payment character varying(50) NOT NULL
);


ALTER TABLE public.orders OWNER TO youth_admin;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: youth_admin
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO youth_admin;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youth_admin
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: youth_admin
--

CREATE TABLE public.product (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    price numeric(50,0) NOT NULL
);


ALTER TABLE public.product OWNER TO youth_admin;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: youth_admin
--

CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO youth_admin;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youth_admin
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: youth_admin
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    brand character varying(50) NOT NULL,
    color character varying(50) NOT NULL,
    model character varying(50) NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.tags OWNER TO youth_admin;

--
-- Name: tags_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: youth_admin
--

CREATE SEQUENCE public.tags_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_tag_id_seq OWNER TO youth_admin;

--
-- Name: tags_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youth_admin
--

ALTER SEQUENCE public.tags_tag_id_seq OWNED BY public.tags.id;


--
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_tag_id_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: youth_admin
--

COPY public.customer (id, name, password, date_of_birth, email, mobile, address, landmark, altermobile) FROM stdin;
2	sri	srii	1990-02-09	sss@gmail.com	76543211222	warangal	kurnool	1234567890
1	manishi	man	1995-10-12	string	9876543211	hyderabad	gacchibowli	987654321
3	string	string	2022-03-17	string	0	string	string	0
5	stringssss	string	2022-03-17	string	12345678900	string	string	0
6	stringssss	string	2022-03-17	string	12345678900	string	string	0
4	string	string	2022-03-17	striyyyyy	0	string	string	0
\.


--
-- Data for Name: order_product; Type: TABLE DATA; Schema: public; Owner: youth_admin
--

COPY public.order_product (order_id, product_id) FROM stdin;
1	1
2	2
3	3
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: youth_admin
--

COPY public.orders (id, customer_id, order_at_time, total_price, modeof_payment) FROM stdin;
1	1101	2022-03-03 00:00:00	13	cashondeliver
2	1102	2022-03-05 00:00:00	109	wallet
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: youth_admin
--

COPY public.product (id, name, price) FROM stdin;
1	meera	2
2	chick	1
3	lux	45
4	string	0
5	string	0
6	string	0
7	string	0
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: youth_admin
--

COPY public.tags (id, brand, color, model, product_id) FROM stdin;
1	hindustan	black	private	1
2	calvinkelvin	red	public	2
3	dabur	pink	ltd	3
10	dell	black	dell	2
\.


--
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youth_admin
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 6, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youth_admin
--

SELECT pg_catalog.setval('public.orders_id_seq', 2, true);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youth_admin
--

SELECT pg_catalog.setval('public.product_product_id_seq', 7, true);


--
-- Name: tags_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youth_admin
--

SELECT pg_catalog.setval('public.tags_tag_id_seq', 3, true);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: orders customer_id; Type: FK CONSTRAINT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES public.customer(id) NOT VALID;


--
-- Name: order_product order_id; Type: FK CONSTRAINT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.order_product
    ADD CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- Name: order_product product_id; Type: FK CONSTRAINT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.order_product
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.product(id) NOT VALID;


--
-- Name: tags product_id; Type: FK CONSTRAINT; Schema: public; Owner: youth_admin
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.product(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

