--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    name character(100),
    id integer NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    name character(100),
    gender character(50),
    phone character(50),
    email text,
    address character(100),
    id integer NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: farms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.farms (
    name character(50),
    owner character(50),
    address character(50),
    phone integer,
    product_id integer,
    id integer NOT NULL
);


ALTER TABLE public.farms OWNER TO postgres;

--
-- Name: farms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.farms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.farms_id_seq OWNER TO postgres;

--
-- Name: farms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.farms_id_seq OWNED BY public.farms.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    name character(100),
    amount integer,
    price integer,
    description text,
    brand_id integer,
    category_id integer,
    warranty_period_id integer,
    id integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: warranty_periods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.warranty_periods (
    name text,
    id integer NOT NULL
);


ALTER TABLE public.warranty_periods OWNER TO postgres;

--
-- Name: warranty_periods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.warranty_periods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warranty_periods_id_seq OWNER TO postgres;

--
-- Name: warranty_periods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.warranty_periods_id_seq OWNED BY public.warranty_periods.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: farms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.farms ALTER COLUMN id SET DEFAULT nextval('public.farms_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: warranty_periods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warranty_periods ALTER COLUMN id SET DEFAULT nextval('public.warranty_periods_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (name, id) FROM stdin;
ngu c?c                                                                                             	1
rau c?                                                                                              	2
hoa qua                                                                                             	3
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (name, gender, phone, email, address, id) FROM stdin;
Chere                                                                                               	Female                                            	649-522-6199                                      	cferrer0@livejournal.com	47 Thompson Plaza                                                                                   	1
Domini                                                                                              	Female                                            	969-476-3098                                      	dwackett1@blogger.com	1997 Bunting Pass                                                                                   	2
Vail                                                                                                	Male                                              	161-935-7962                                      	vdumberrill2@weibo.com	6042 Northwestern Terrace                                                                           	3
Chase                                                                                               	Male                                              	525-595-1871                                      	cpoll3@walmart.com	6 Kensington Alley                                                                                  	4
Francene                                                                                            	Female                                            	415-295-3884                                      	fmccullen4@sohu.com	961 Everett Road                                                                                    	5
Vincent                                                                                             	Male                                              	689-918-5702                                      	vpethick5@webnode.com	31632 Alpine Trail                                                                                  	6
Maurizio                                                                                            	Male                                              	850-207-9982                                      	mcalton6@sphinn.com	91437 Montana Pass                                                                                  	7
Melisent                                                                                            	Female                                            	675-752-7268                                      	mwheeldon7@arstechnica.com	40 Cordelia Trail                                                                                   	8
Danila                                                                                              	Female                                            	785-912-4961                                      	dgrovier8@list-manage.com	40 Ridge Oak Lane                                                                                   	9
Pryce                                                                                               	Male                                              	942-220-0381                                      	pdufour9@topsy.com	859 Dunning Terrace                                                                                 	10
Ninette                                                                                             	Female                                            	513-663-6176                                      	nkaisera@privacy.gov.au	03 Macpherson Center                                                                                	11
Pierson                                                                                             	Male                                              	783-619-9571                                      	pneathwayb@chicagotribune.com	2 Forest Run Way                                                                                    	12
Garik                                                                                               	Male                                              	144-658-1390                                      	ggoudiec@yellowbook.com	937 Del Sol Crossing                                                                                	13
Georgia                                                                                             	Female                                            	315-913-9482                                      	gskerrittd@sciencedaily.com	165 Oak Terrace                                                                                     	14
Padgett                                                                                             	Male                                              	116-888-7365                                      	pmcdonoughe@princeton.edu	34338 Lukken Pass                                                                                   	15
Aurelia                                                                                             	Female                                            	273-898-2131                                      	ayurkiewiczf@mozilla.org	869 Paget Pass                                                                                      	16
Marcie                                                                                              	Female                                            	312-199-8475                                      	mpellittg@vk.com	226 Service Lane                                                                                    	17
Raeann                                                                                              	Female                                            	551-885-6214                                      	rfrankcombeh@networksolutions.com	31506 Porter Plaza                                                                                  	18
Zelma                                                                                               	Female                                            	123-724-9826                                      	zmaccougheni@google.ru	511 Farwell Junction                                                                                	19
Bree                                                                                                	Female                                            	304-427-6513                                      	bcollipj@flickr.com	788 Scott Plaza                                                                                     	20
Bron                                                                                                	Male                                              	112-659-6787                                      	bglasmank@wiley.com	169 Sachtjen Hill                                                                                   	21
Kirby                                                                                               	Male                                              	524-378-0364                                      	kbauldryl@sohu.com	13 Morningstar Trail                                                                                	22
Kippie                                                                                              	Male                                              	267-316-7215                                      	kcollcottm@boston.com	12 Truax Park                                                                                       	23
Edgard                                                                                              	Male                                              	959-219-2112                                      	eiredelln@tamu.edu	5767 Stuart Hill                                                                                    	24
Henri                                                                                               	Male                                              	442-344-4272                                      	hramsdello@narod.ru	8827 Carpenter Junction                                                                             	25
Kellsie                                                                                             	Female                                            	887-384-8957                                      	kmessentp@homestead.com	937 Meadow Valley Plaza                                                                             	26
Muire                                                                                               	Female                                            	790-572-6858                                      	mbowenq@yellowpages.com	1 Debra Plaza                                                                                       	27
Tanney                                                                                              	Male                                              	522-835-1652                                      	tsaddletonr@bbc.co.uk	7 Katie Crossing                                                                                    	28
Simone                                                                                              	Female                                            	683-958-6665                                      	svaldes@eepurl.com	48467 Namekagon Drive                                                                               	29
Domeniga                                                                                            	Female                                            	263-673-7721                                      	dcordiert@jimdo.com	3 Anhalt Avenue                                                                                     	30
Baxie                                                                                               	Male                                              	254-469-6732                                      	bguesteu@yahoo.com	4439 Corscot Park                                                                                   	31
Findley                                                                                             	Male                                              	974-674-7347                                      	frodwellv@pcworld.com	5 School Trail                                                                                      	32
Nikolos                                                                                             	Male                                              	715-752-9635                                      	nfairesw@techcrunch.com	9 Raven Junction                                                                                    	33
Hildegarde                                                                                          	Female                                            	786-980-6348                                      	hbrownex@yolasite.com	68706 Moose Way                                                                                     	34
Maryanne                                                                                            	Female                                            	748-512-2451                                      	mruzickay@reverbnation.com	5054 Hollow Ridge Crossing                                                                          	35
Hermione                                                                                            	Female                                            	768-886-4230                                      	hwrotchfordz@ocn.ne.jp	38612 Arrowood Terrace                                                                              	36
Randi                                                                                               	Male                                              	481-423-7138                                      	rwithull10@vinaora.com	03292 Judy Pass                                                                                     	37
Sergent                                                                                             	Male                                              	782-250-1250                                      	saldrich11@princeton.edu	5719 Armistice Way                                                                                  	38
Alli                                                                                                	Female                                            	754-209-0059                                      	aamyes12@webnode.com	46100 Columbus Circle                                                                               	39
Stillman                                                                                            	Male                                              	855-709-5655                                      	scanizares13@google.ca	52696 Annamark Alley                                                                                	40
Tadio                                                                                               	Male                                              	547-455-8556                                      	tdonaghy14@ycombinator.com	8 Upham Circle                                                                                      	41
Allegra                                                                                             	Female                                            	104-806-2428                                      	amerryweather15@dedecms.com	17663 Hauk Avenue                                                                                   	42
Avrit                                                                                               	Female                                            	801-788-8932                                      	aclutton16@istockphoto.com	538 Sunnyside Hill                                                                                  	43
Bret                                                                                                	Male                                              	874-719-7346                                      	bcluckie17@state.tx.us	58 Leroy Way                                                                                        	44
Maurise                                                                                             	Male                                              	360-426-7053                                      	mmontilla18@java.com	51 Laurel Road                                                                                      	45
Reginauld                                                                                           	Male                                              	246-159-0449                                      	rdockrey19@1688.com	357 Rutledge Way                                                                                    	46
Lindsy                                                                                              	Female                                            	346-200-8882                                      	lciobotaro1a@rediff.com	5 Hollow Ridge Park                                                                                 	47
Cosimo                                                                                              	Male                                              	742-895-7877                                      	cwhetton1b@drupal.org	5370 Parkside Center                                                                                	48
Loren                                                                                               	Female                                            	519-799-5558                                      	lselvester1c@webeden.co.uk	8 Stang Way                                                                                         	49
Cesare                                                                                              	Male                                              	543-115-0738                                      	cdeny1d@nifty.com	263 Daystar Court                                                                                   	50
\.


--
-- Data for Name: farms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.farms (name, owner, address, phone, product_id, id) FROM stdin;
Nigel                                             	Boyce                                             	966 Independence Plaza                            	33	12	1
Lurleen                                           	Rudolf                                            	2 Golf View Circle                                	78	37	2
Hamil                                             	Marcela                                           	2 Moulton Lane                                    	86	7	3
Florrie                                           	Gonzalo                                           	50457 Macpherson Drive                            	91	37	4
Dredi                                             	Thayne                                            	75236 Loeprich Way                                	3	50	5
Elbertine                                         	Gaby                                              	81824 Morningstar Drive                           	87	6	6
Sigismundo                                        	Kath                                              	75 Lillian Lane                                   	26	3	7
Keefer                                            	Melessa                                           	373 Loftsgordon Avenue                            	75	49	8
Everett                                           	Jaquenette                                        	0 Bayside Alley                                   	27	13	9
Roanne                                            	Ceil                                              	7 Loomis Road                                     	9	26	10
Tiffani                                           	Ediva                                             	6 Monument Drive                                  	45	27	11
Wilton                                            	Crin                                              	690 Eagle Crest Circle                            	62	37	12
Sharl                                             	Patrick                                           	23 Badeau Road                                    	58	28	13
Benjamin                                          	Rebbecca                                          	28 Waxwing Road                                   	95	13	14
Elwin                                             	Cullie                                            	157 Sullivan Pass                                 	95	4	15
Cindy                                             	Dorri                                             	04 Carey Parkway                                  	6	29	16
Neile                                             	Teri                                              	126 Ludington Terrace                             	46	9	17
Ernaline                                          	Brana                                             	53719 Oriole Plaza                                	27	4	18
Tildi                                             	Georgette                                         	0 Novick Way                                      	39	36	19
Ermina                                            	Justinian                                         	7296 Dwight Road                                  	53	45	20
Mendel                                            	Yance                                             	70 Sloan Crossing                                 	20	37	21
Virge                                             	Jud                                               	3 Moland Hill                                     	82	3	22
Ania                                              	Olivette                                          	815 Lakewood Gardens Alley                        	7	40	23
Kylen                                             	Henrik                                            	6285 La Follette Lane                             	36	16	24
Marty                                             	Ly                                                	222 Leroy Lane                                    	88	34	25
Donia                                             	Sidonia                                           	727 Thompson Way                                  	37	45	26
Ellissa                                           	Inessa                                            	4 Corscot Park                                    	47	9	27
Clarey                                            	Babb                                              	3 Oak Pass                                        	29	39	28
Modesty                                           	Ruthann                                           	54646 Hoepker Drive                               	88	44	29
Emmy                                              	Andee                                             	6 Commercial Place                                	61	26	30
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (name, amount, price, description, brand_id, category_id, warranty_period_id, id) FROM stdin;
Camilla                                                                                             	16	56	odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat	\N	1	\N	1
Sorcha                                                                                              	79	45	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel	\N	4	\N	2
Wain                                                                                                	33	62	eros viverra eget congue eget semper rutrum nulla nunc purus	\N	2	\N	3
Giraldo                                                                                             	60	22	quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis	\N	4	\N	4
Xena                                                                                                	29	84	aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis	\N	2	\N	5
Clarke                                                                                              	34	31	fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam	\N	3	\N	6
Rosalinde                                                                                           	25	71	nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam	\N	1	\N	7
Caesar                                                                                              	16	100	magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi	\N	2	\N	8
Jaimie                                                                                              	97	29	ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et	\N	4	\N	9
Gunther                                                                                             	49	55	vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy	\N	3	\N	10
Jania                                                                                               	52	33	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor	\N	1	\N	11
Biron                                                                                               	39	34	condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt	\N	4	\N	12
Ring                                                                                                	94	11	habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat	\N	4	\N	13
Rafaello                                                                                            	35	91	sed magna at nunc commodo placerat praesent blandit nam nulla	\N	2	\N	14
Tyrus                                                                                               	63	35	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget	\N	4	\N	15
Brucie                                                                                              	23	46	fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis	\N	1	\N	16
Kevina                                                                                              	71	90	diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum	\N	2	\N	17
Ollie                                                                                               	88	3	consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus	\N	2	\N	18
Adel                                                                                                	6	69	suspendisse ornare consequat lectus in est risus auctor sed tristique in	\N	4	\N	19
Diane                                                                                               	62	35	lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue	\N	4	\N	20
Berthe                                                                                              	24	3	rhoncus sed vestibulum sit amet cursus id turpis integer aliquet	\N	4	\N	21
Timofei                                                                                             	51	10	ac diam cras pellentesque volutpat dui maecenas tristique est et tempus	\N	3	\N	22
Denver                                                                                              	60	8	leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus	\N	1	\N	23
Loreen                                                                                              	97	55	auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis	\N	2	\N	24
Allys                                                                                               	93	72	suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi	\N	4	\N	25
Britte                                                                                              	86	20	in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum	\N	2	\N	26
Karlik                                                                                              	83	24	nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus	\N	4	\N	27
Sosanna                                                                                             	47	5	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna	\N	1	\N	28
Nariko                                                                                              	87	7	amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius	\N	3	\N	29
Othilia                                                                                             	64	68	proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum	\N	3	\N	30
\.


--
-- Data for Name: warranty_periods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.warranty_periods (name, id) FROM stdin;
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 50, true);


--
-- Name: farms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.farms_id_seq', 30, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 30, true);


--
-- Name: warranty_periods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.warranty_periods_id_seq', 1, false);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: farms farms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.farms
    ADD CONSTRAINT farms_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: warranty_periods warranty_periods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warranty_periods
    ADD CONSTRAINT warranty_periods_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

