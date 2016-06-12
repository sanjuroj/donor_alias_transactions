--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.donordata_aliasmap DROP CONSTRAINT donordata_aliasmap_parent_id_df20e611_fk_donordata_donor_id;
DROP INDEX public.donordata_donor_donor_ident_4b419441_like;
DROP INDEX public.donordata_aliasmap_6be37982;
ALTER TABLE ONLY public.donordata_patronagecategory DROP CONSTRAINT donordata_patronagecategory_pkey;
ALTER TABLE ONLY public.donordata_donor DROP CONSTRAINT donordata_donor_pkey;
ALTER TABLE ONLY public.donordata_donor DROP CONSTRAINT donordata_donor_donor_ident_key;
ALTER TABLE ONLY public.donordata_aliasmap DROP CONSTRAINT donordata_aliasmap_pkey;
ALTER TABLE public.donordata_patronagecategory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.donordata_donor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.donordata_aliasmap ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.donordata_patronagecategory_id_seq;
DROP TABLE public.donordata_patronagecategory;
DROP SEQUENCE public.donordata_donor_id_seq;
DROP TABLE public.donordata_donor;
DROP SEQUENCE public.donordata_aliasmap_id_seq;
DROP TABLE public.donordata_aliasmap;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: donordata_aliasmap; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE donordata_aliasmap (
    id integer NOT NULL,
    alias character varying(255) NOT NULL,
    parent_id integer NOT NULL
);


--
-- Name: donordata_aliasmap_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE donordata_aliasmap_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: donordata_aliasmap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE donordata_aliasmap_id_seq OWNED BY donordata_aliasmap.id;


--
-- Name: donordata_aliasmap_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('donordata_aliasmap_id_seq', 80, true);


--
-- Name: donordata_donor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE donordata_donor (
    id integer NOT NULL,
    donor_ident character varying(10) NOT NULL,
    full_name character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    donations_amount numeric(13,2),
    donations_count integer,
    create_date timestamp with time zone NOT NULL,
    update_date timestamp with time zone NOT NULL,
    job_title character varying(255) NOT NULL,
    employer_url character varying(1000) NOT NULL,
    employer_industry character varying(255) NOT NULL,
    patronage text NOT NULL
);


--
-- Name: donordata_donor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE donordata_donor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: donordata_donor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE donordata_donor_id_seq OWNED BY donordata_donor.id;


--
-- Name: donordata_donor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('donordata_donor_id_seq', 1547, true);


--
-- Name: donordata_patronagecategory; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE donordata_patronagecategory (
    id integer NOT NULL,
    category character varying(255) NOT NULL
);


--
-- Name: donordata_patronagecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE donordata_patronagecategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: donordata_patronagecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE donordata_patronagecategory_id_seq OWNED BY donordata_patronagecategory.id;


--
-- Name: donordata_patronagecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('donordata_patronagecategory_id_seq', 12, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY donordata_aliasmap ALTER COLUMN id SET DEFAULT nextval('donordata_aliasmap_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY donordata_donor ALTER COLUMN id SET DEFAULT nextval('donordata_donor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY donordata_patronagecategory ALTER COLUMN id SET DEFAULT nextval('donordata_patronagecategory_id_seq'::regclass);


--
-- Data for Name: donordata_aliasmap; Type: TABLE DATA; Schema: public; Owner: -
--

COPY donordata_aliasmap (id, alias, parent_id) FROM stdin;
1	Terrance J Aarnio	304
2	Curtis W Baker	373
3	Phil Barnhart	384
4	Philip Barnhart	384
5	Terrence Bean	616
6	Robert H. Beatty-Walters	561
7	Ronald H. Beltz	587
8	Leonard J Bergstein	617
9	Jim Bernard	622
10	Jim Bernau	623
11	James A Bisenius	480
12	William C Bradbury	642
13	Norman Brenden	296
14	Norman L Brendon	296
15	Peter J Brix	652
16	Scott D Campbell	676
17	Karla S Chambers	697
18	Matthew Chapman	699
19	Idelle Collins	711
20	Gary Combs	604
21	Tom DAmore	210
22	William M. Dickey	731
23	Leanne Dilorenzo	315
24	Robert (Bob) L Eberhard	764
25	Michael Fahey	579
26	James D. Fuiten	812
27	Mark A Gilbert	835
28	Frank Gill	837
29	John D. Gray	576
30	Dan D Harmon	893
31	Joseph Hawes	904
32	Richard (Dick) Heard	907
33	Stephen T. Janik	444
34	Elizabeth Johnson	945
35	Arthur C Johnson	302
36	Valerie Johnson Eves	341
37	Marie Jones	957
38	Kathleen W Jones-McCann	962
39	Kathleen W Jones	962
40	Teddy Keizer	972
41	James O Kelly	306
42	Jim Kelly	306
43	Paul Kerley	553
44	Patrick Kilkenny	349
45	Randolph Labbe	405
46	Lealand Larson	1009
47	Charles Lillis	313
48	Leanne Littrell Dilorenzo	317
49	Edward Maletis	426
50	Chris Maletis III	431
51	Harry A Merlo	556
52	Andrew W Miller	312
53	Frank Morse	316
54	J. Franklin (Frank) Morse	316
55	Hugh Perrine	1153
56	Marcia Petty	428
57	Steven Pratt	1180
58	Melvin Rader	1193
59	Walter E Remmers	1209
60	Robert L Rose	1246
61	Dan R. Saltzman	1274
62	Chuck N Shepard	1312
63	Peter W Stott	1388
64	James  E Summerton	1404
65	Karen A Swift	1405
66	Henry T Swigert	1408
67	Charles J Swindells	1409
68	Larry Tokarski	1429
69	Lawrence E Tokarski	1429
70	Sharon M. Ungerleider	1444
71	Marianne M Walker	1458
72	Donald A. Washburn	1479
73	Don Washburn	1479
74	Doris Wehler	1486
75	Roderick C. Wendt	1490
76	Scott A Williams	1504
77	James H Winkler	1508
78	Kenneth Wood	1524
79	Jay M Woodworth	1527
80	JUNKI YOSHIDA	1535
\.


--
-- Data for Name: donordata_donor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY donordata_donor (id, donor_ident, full_name, first_name, last_name, donations_amount, donations_count, create_date, update_date, job_title, employer_url, employer_industry, patronage) FROM stdin;
1	P1388	Glenn Kalnasy	\N	\N	\N	\N	2016-06-07 19:56:39.00822-07	2016-06-07 19:56:39.008264-07	Managing Director	Juniper Group LLC (no website)	Banking and Finance	
2	P534	William Ten Pas	\N	\N	\N	\N	2016-06-07 19:56:39.014508-07	2016-06-07 19:56:39.01455-07	Senior Vice President	www.modahealth.com	Healthcare Professionals	
3	P1222	Sylvi C. Tuttle	\N	\N	\N	\N	2016-06-07 19:56:39.017019-07	2016-06-07 19:56:39.017043-07	Owner of Three Dimensions Timberlands, LLC		Forestry and Timber	
4	P1668	Kim Kaminski	\N	\N	\N	\N	2016-06-07 19:56:39.019047-07	2016-06-07 19:56:39.019071-07	Director Business Ethics and Compliance	http://www.mts.com/en/index.htm	Industrial Manufacturing	
5	P454	Tim  Tuttle	\N	\N	\N	\N	2016-06-07 19:56:39.021328-07	2016-06-07 19:56:39.021353-07	Owner of Three Dimensions LLC	http://www.bloomberg.com/research/stocks/private/snapshot.asp?privcapId=144934215	Forestry and Timber	
6	P1974	ed McKay	\N	\N	\N	\N	2016-06-07 19:56:39.023335-07	2016-06-07 19:56:39.023359-07	Political Philanthropist		Philanthropist	Chair of the Democracy Alliance
7	P974	John D. Bryan	\N	\N	\N	\N	2016-06-07 19:56:39.061018-07	2016-06-07 19:56:39.061052-07	retired Vice President of Operations	Georgia Gulf Corporation	Chemical, Oil, Gas, Electric	Challenge Foundation, Tea Party, Club for Growth
8	P1592	William Hedges	\N	\N	\N	\N	2016-06-07 19:56:39.066929-07	2016-06-07 19:56:39.066954-07	Attorney at Law	http://wjhedges.com/	Lawyers	
9	P646	Caroline Boutard	\N	\N	\N	\N	2016-06-07 19:56:39.068824-07	2016-06-07 19:56:39.068846-07	Self/Employed; Farmer; Ayers Creek Farm		Agriculture and Farming	
10	P1769	Lester A. DeAsis	\N	\N	\N	\N	2016-06-07 19:56:39.074861-07	2016-06-07 19:56:39.074886-07	CEO of Oregon City's Benchmade Knife Co	http://www.benchmade.com/	Industrial Manufacturing	Oregon's knife and tool business
11	P1244	Sonja Connor	\N	\N	\N	\N	2016-06-07 19:56:39.081147-07	2016-06-07 19:56:39.081171-07	Professor	http://www.ohsu.edu/xd/health/services/providers/?personid=130	Healthcare Professionals	Academy of Nutrition and Dietetics
12	P1577	Amy  Tykeson	\N	\N	\N	\N	2016-06-07 19:56:39.083095-07	2016-06-07 19:56:39.083118-07	CEO of BendBroadBand	https://bendbroadband.com/residential/	Communication and Telecommunications	OHSU, CSPAN, OPB, TYKESON FAMILY TRUST, EDCO
13	P1673	Ted Wheeler	\N	\N	\N	\N	2016-06-07 19:56:39.097968-07	2016-06-07 19:56:39.098001-07	State Treasurer - Mayor?	http://www.oregon.gov/treasury/Pages/index.aspx	Government and Public Service	Multnomah County Commissioner, Oregon State Treasurer, Bank of America, Copper Mountain Trust
14	P1788	Shane McKee	\N	\N	\N	\N	2016-06-07 19:56:39.104187-07	2016-06-07 19:56:39.104213-07	Cannabis Grower	http://goshango.com/gateway.php	Agriculture and Farming	NVCIA
15	P1568	Donald E Tykeson	\N	\N	\N	\N	2016-06-07 19:56:39.109896-07	2016-06-07 19:56:39.109921-07	Managing Partner of Tyekson Associates		Communication and Telecommunications	National Board of Multiple Sclerosis
16	P540	Gregg Kantor	\N	\N	\N	\N	2016-06-07 19:56:39.116919-07	2016-06-07 19:56:39.116946-07	CEO	https://www.nwnatural.com/	Chemical, Oil, Gas, Electric	member of the governor's energy planning and global warming commissions: http://www.oregonlive.com/news/index.ssf/2009/06/post_66.html 
17	P1386	Donald E.  Tykeson	\N	\N	\N	\N	2016-06-07 19:56:39.122879-07	2016-06-07 19:56:39.122904-07	Managing Partner of Tykeson Associates		Communication and Telecommunications	National Society of Multiple Sclerosis
18	p1024	Joseph Tennant	\N	\N	\N	\N	2016-06-07 19:56:39.12875-07	2016-06-07 19:56:39.128774-07	Director		Philanthropist	Director of Joseph P Tennant Charitable Fund
19	P164	Donald D.  Tykeson	\N	\N	\N	\N	2016-06-07 19:56:39.150702-07	2016-06-07 19:56:39.150731-07	Managing Partner of Tykeson Associates		Communication and Telecommunications	National Society of Multiple Sclerosis
20	P664	Katherine Heekin	\N	\N	\N	\N	2016-06-07 19:56:39.156596-07	2016-06-07 19:56:39.156621-07		http://heekinlawoffice.com/	Lawyers	
21	p1292	John Javna	\N	\N	\N	\N	2016-06-07 19:56:39.158588-07	2016-06-07 19:56:39.158611-07	Author	http://www.hachettebookgroup.com/authors/john-javna/	Arts, Entertainment, Music, and Recreation	
22	P1461	Ron Tyree	\N	\N	\N	\N	2016-06-07 19:56:39.168802-07	2016-06-07 19:56:39.168828-07	President and CEO of Tyree Oil	http://www.tyreeoil.com/about-us/	Chemical, Oil, Gas, Electric	
23	P452	Ronald Tyree	\N	\N	\N	\N	2016-06-07 19:56:39.170831-07	2016-06-07 19:56:39.170854-07	President and CEO of Tyree Oil	http://www.tyreeoil.com/about-us/	Chemical, Oil, Gas, Electric	
24	P1863	Thomas  Wheeler	\N	\N	\N	\N	2016-06-07 19:56:39.172748-07	2016-06-07 19:56:39.172771-07	Professor 	http://journalism.uoregon.edu/member/wheeler_tom/	Education	Fender's Hall of Fame Selection Com
25	P433	Robert Udziela	\N	\N	\N	\N	2016-06-07 19:56:39.183081-07	2016-06-07 19:56:39.18311-07	Attorney		Lawyers	
26	p62	Edward  Tenney	\N	\N	\N	\N	2016-06-07 19:56:39.18529-07	2016-06-07 19:56:39.18532-07	General Manager	www.gsiwatersolutions.com	Natural Resource Management	
27	P438	Matthew Kaplan	\N	\N	\N	\N	2016-06-07 19:56:39.187455-07	2016-06-07 19:56:39.187482-07	attorney	http://www.mdkaplanlaw.com/	Lawyers	Safe Kids Oregon
28	P473	Jill McKenney	\N	\N	\N	\N	2016-06-07 19:56:39.195115-07	2016-06-07 19:56:39.195146-07	Retired	https://www.facebook.com/LaneCountyDemocrats/	Government and Public Service	Democratic Party of Lane County, OR
29	P422	Richard E. Uihlein	\N	\N	\N	\N	2016-06-07 19:56:39.201604-07	2016-06-07 19:56:39.201635-07	CEO of ULINE Inc.	http://www.uline.com/index.aspx?pricode=WK621&utm_source=Bing&utm_medium=cpc&utm_term=uline.com&utm_campaign=ULINE&AdKeyword=uline.com&AdMatchtype=e&gclid=CNHij4yN0MsCFZClfgodGk8OUQ&gclsrc=ds	Transportation	Center for Responsive Politics, Liberty Principles PAC
30	P995	Knute Buehler	\N	\N	\N	\N	2016-06-07 19:56:39.207617-07	2016-06-07 19:56:39.207641-07	Orthopedic Surgeon	www.thecenteroregon.com	Healthcare Professionals	Oregon State Representative, ran for Governor in 2012
31	P747	Cheryl Coon	\N	\N	\N	\N	2016-06-07 19:56:39.213601-07	2016-06-07 19:56:39.213627-07	Attorney	http://www.stc-law.com/	Lawyers	
32	p1195	Ernest Jenks	\N	\N	\N	\N	2016-06-07 19:56:39.215497-07	2016-06-07 19:56:39.21552-07	Lawyer	http://www.ernestmjenks.com/	Lawyers	
33	P107	Charles Terhune	\N	\N	\N	\N	2016-06-07 19:56:39.217405-07	2016-06-07 19:56:39.217428-07	Vice President - Government Affairds	www.cambiahealth.com	Healthcare Professionals	Member of Executive Committee - Portland Business Alliance
35	P1303	Jennifer Ulum	\N	\N	\N	\N	2016-06-07 19:56:39.225604-07	2016-06-07 19:56:39.225626-07	Interim Director of Systems Communication at PeaceHealth	http://www.peacehealth.org/about-peacehealth/media/chi-partnership/Pages/default	Healthcare Professionals	
36	P933	James Coon	\N	\N	\N	\N	2016-06-07 19:56:39.227645-07	2016-06-07 19:56:39.227667-07	Lawyer	http://www.stc-law.com/	Lawyers	
37	P1183	Carol Whipple	\N	\N	\N	\N	2016-06-07 19:56:39.229626-07	2016-06-07 19:56:39.22965-07	Owner, CEO	http://www.reneworegon.org/story_carol_whipple	Forestry and Timber	Current board member on the Whipple Foundation – an advised fund of the Oregon Community Foundation; Director of the Douglas Timber Operators; member of the Oregon Chapter of Senior Fellow American Leadership Forum; and member of the Oregon State University College of Forestry Forest Products Lab Advisory Council.  Served as a board member of the Oregon Forest Resources Institute.
38	P1688	J. Kevin McKinney	\N	\N	\N	\N	2016-06-07 19:56:39.235657-07	2016-06-07 19:56:39.235682-07	Medical Doctor	http://www.ehnpc.com/dr-mckinney-glaucoma-specialist-portland.htm	Healthcare Professionals	American Academy of Ophthalmology
39	B163	Rebecca Obletz	\N	\N	\N	\N	2016-06-07 19:56:39.241395-07	2016-06-07 19:56:39.241417-07	Not Employed			
40	P1384	David Underriner	\N	\N	\N	\N	2016-06-07 19:56:39.243324-07	2016-06-07 19:56:39.243347-07	Regional CEO of Providence		Healthcare Professionals	 Oregon Association of Hospitals and Health Systems, Our House of Portland, Portland Business Alliance, Trillium Family Services, and Volunteers of America
41	P837	Sloan Heermance	\N	\N	\N	\N	2016-06-07 19:56:39.25355-07	2016-06-07 19:56:39.253575-07	President Ventures Adventures, Author	http://venturesadventures.com/	Arts, Entertainment, Music, and Recreation	
180	P1324	Narendra  Varma	\N	\N	\N	\N	2016-06-07 19:56:39.968045-07	2016-06-07 19:56:39.968068-07	Owner of Our People COOP	http://www.ourtable.us/our-people.html	Grocery	
42	P304	John Tess	\N	\N	\N	\N	2016-06-07 19:56:39.255425-07	2016-06-07 19:56:39.255448-07	President	www.heritage-consulting.com	Government and Public Service	Board Member Oregon Cultural Trust
43	P825	Kevin McKinney	\N	\N	\N	\N	2016-06-07 19:56:39.261887-07	2016-06-07 19:56:39.261913-07	Medical Doctor	http://www.ehnpc.com/dr-mckinney-glaucoma-specialist-portland.htm	Healthcare Professionals	American Academy of Ophthalmology
44	P17	Paul Utz	\N	\N	\N	\N	2016-06-07 19:56:39.267807-07	2016-06-07 19:56:39.267831-07	Professor of Medicine at Stanford University	https://med.stanford.edu/profiles/paul-utz		
45	P648	Bruce Bottini	\N	\N	\N	\N	2016-06-07 19:56:39.269675-07	2016-06-07 19:56:39.269697-07	Lawyer (Personal INjury)	http://www.bottini.com/	Lawyers	
46	P1135	Barry Thalden	\N	\N	\N	\N	2016-06-07 19:56:39.271572-07	2016-06-07 19:56:39.271595-07	Architect	www.thalden.com	Construction	
47	P1920	Marc Valens	\N	\N	\N	\N	2016-06-07 19:56:39.273479-07	2016-06-07 19:56:39.273501-07	Owner of Valens Trust	http://www.google.com/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=7&cad=rja&uact=8&ved=0ahUKEwj6gJWTj9DLAhVX2mMKHec7DiYQFggxMAY&url=http%3A%2F%2Fthe-marc-valens-trust.ashland.or.amfibi.directory%2Fus%2Fc%2F10070930-the-marc-valens-trust&usg=AFQjCNFt4S7Rg1U5Uig7QjA4FMf5-dNfoA&sig2=qFJJCGwF8JM2bCXegqaRPw	Transportation	
48	P1496	Kimberly Cooper	\N	\N	\N	\N	2016-06-07 19:56:39.275471-07	2016-06-07 19:56:39.275493-07	President / CEO 	http://www.fortunainc.com/People/Kimberly%20Cooper/KimberlyCooper.html	Marketing and Creative Agencies	    Portland Community College Foundation: President, Board of Directors, Portland State University Foundation: Board of Trustees; Vice-Chair; Chair, Governance Committee; Co-Chair 2012 Simon Benson Awards Dinner
49	P366	Jeremy Heidl	\N	\N	\N	\N	2016-06-07 19:56:39.281392-07	2016-06-07 19:56:39.281416-07	CEO	http://www.openvape.com/	Beer, Wine, Liquor, Tobacco, Marijuana	
50	P594	David Angeli	\N	\N	\N	\N	2016-06-07 19:56:39.283408-07	2016-06-07 19:56:39.283431-07	Attorney	http://www.angelilaw.com/	Lawyers	
51	P1279	Prashanth  Vallabhanath, MD	\N	\N	\N	\N	2016-06-07 19:56:39.285421-07	2016-06-07 19:56:39.285445-07	Opthamologist	http://health.usnews.com/doctors/prashanth-vallabhanath-214791	Healthcare Professionals	
52	P1739	Paul OBrien	\N	\N	\N	\N	2016-06-07 19:56:39.287324-07	2016-06-07 19:56:39.287347-07	non-profit director	Tarot.com	Arts, Entertainment, Music, and Recreation	Divination Foundation
53	P377	Dean Heiling	\N	\N	\N	\N	2016-06-07 19:56:39.29336-07	2016-06-07 19:56:39.293383-07	Attorney	http://heilingdwyer.com/	Lawyers	
54	P1176	Karl  Thatcher	\N	\N	\N	\N	2016-06-07 19:56:39.295343-07	2016-06-07 19:56:39.295366-07	Owner	www.ktcontracting.com	Construction	
55	P228	Gavin  White	\N	\N	\N	\N	2016-06-07 19:56:39.297432-07	2016-06-07 19:56:39.297456-07	Consultant	https://www.linkedin.com/in/heaventwig	Management Consultant	Former Chair for Multnomah County Democratic Party
56	P870	Richard Langdon	\N	\N	\N	\N	2016-06-07 19:56:39.303746-07	2016-06-07 19:56:39.303769-07	Owner/Operator, The Langdon Company, LLC	http://www.oregoncompanies.org/the-langdon-company-llc	Real Estate	None found
57	P447	Andy Van Pelt	\N	\N	\N	\N	2016-06-07 19:56:39.309691-07	2016-06-07 19:56:39.309715-07	Executive Vice President of at Oregon Association of Hospitals and Health Systems	http://www.oahhs.org/about/andy-van-pelt	Lobbyists and Unions	
58	P571	Jean Bottcher	\N	\N	\N	\N	2016-06-07 19:56:39.311664-07	2016-06-07 19:56:39.311687-07	Retired		Education	
59	P1359	Ward Ockenden	\N	\N	\N	\N	2016-06-07 19:56:39.317671-07	2016-06-07 19:56:39.317696-07	Contractor		Transportation	
60	P1471	Don Corson	\N	\N	\N	\N	2016-06-07 19:56:39.31966-07	2016-06-07 19:56:39.319684-07	Lawyer	http://www.corsonjohnsonlaw.com/	Lawyers	
61	P565	Alan DeBoer	\N	\N	\N	\N	2016-06-07 19:56:39.321674-07	2016-06-07 19:56:39.321697-07	Former Mayor of Ashland 	http://www.ashland.or.us/Page.asp?NavID=14973	Politician 	
62	P279	Jerry  Thenell	\N	\N	\N	\N	2016-06-07 19:56:39.323589-07	2016-06-07 19:56:39.323612-07	Owner	www.stprint.com	Retail Services	
63	P1309	Stephen Buel	\N	\N	\N	\N	2016-06-07 19:56:39.325452-07	2016-06-07 19:56:39.325474-07	retired			current PPS School Board Member, critic of Common Core
64	P522	Brian  Whitehead	\N	\N	\N	\N	2016-06-07 19:56:39.335789-07	2016-06-07 19:56:39.335816-07	Attorney 	http://www.attywhitehead.com/attorneys/	Lawyers	
65	P468	Donald Helfgott	\N	\N	\N	\N	2016-06-07 19:56:39.337835-07	2016-06-07 19:56:39.337858-07	CEO and co-founder	http://www.inspiration.com/	Software and Techology	Conceptua Math, Shiftwise
66	P504	David Van Wie	\N	\N	\N	\N	2016-06-07 19:56:39.348278-07	2016-06-07 19:56:39.348304-07	Founder and CEO of Social Communications Company	http://www.bloomberg.com/research/stocks/private/person.asp?personId=237896&privcapId=102324259	Communication and Telecommunications	
67	P1534	Josh Kardon	\N	\N	\N	\N	2016-06-07 19:56:39.350274-07	2016-06-07 19:56:39.350299-07	Strategic consultant	Grant Park Strategies LLC	Lobbyists and Unions	campaigning for Brad Avakian
68	P1550	Evans Van Buren	\N	\N	\N	\N	2016-06-07 19:56:39.356237-07	2016-06-07 19:56:39.356261-07	Self Employed Lawyer		Lawyers	
69	P130	Bruce Odekirk	\N	\N	\N	\N	2016-06-07 19:56:39.358121-07	2016-06-07 19:56:39.358143-07	Physicist	http://www.microsemi.com/	Industrial Manufacturing	
70	P394	Mary Ann Thenell	\N	\N	\N	\N	2016-06-07 19:56:39.360003-07	2016-06-07 19:56:39.360025-07	Owner	www.stprint.com	Retail Services	
71	P375	Paul Cosgrove	\N	\N	\N	\N	2016-06-07 19:56:39.362019-07	2016-06-07 19:56:39.362042-07	Lawyer	http://lindsayhart.com/	Lawyers	
72	P1429	Erik Hellenthal	\N	\N	\N	\N	2016-06-07 19:56:39.363908-07	2016-06-07 19:56:39.363933-07	Owner	EH Logging (no website)	Forestry and Timber	
73	P1921	Rick Yecny	\N	\N	\N	\N	2016-06-07 19:56:39.365786-07	2016-06-07 19:56:39.365808-07	Chief Administrative Officer and Chief Mission Officer		Banking and Finance	Director - Oregon Pacific Bank
74	P369	Sid DeBoer	\N	\N	\N	\N	2016-06-07 19:56:39.367712-07	2016-06-07 19:56:39.367734-07	Chairman and CEO Lithia Motors	http://www.lithiainvestorrelations.com/board-of-directors.htm	Retail Services	Oregon Shakespeare Festival
75	P119	Mark ODonnell	\N	\N	\N	\N	2016-06-07 19:56:39.374625-07	2016-06-07 19:56:39.374659-07	Lawyer	http://www.oandc.com/	Lawyers	
76	P273	Sheryl Langerman	\N	\N	\N	\N	2016-06-07 19:56:39.376796-07	2016-06-07 19:56:39.37682-07	Not employed		Not employed	Langerman contributed $500 to Dan Saltzman's campaign for City Commissioner on\t09/27/2013 
77	P1678	Roderick Boutin	\N	\N	\N	\N	2016-06-07 19:56:39.3829-07	2016-06-07 19:56:39.382926-07	President, Boutin & Associates, PC		Lawyers	Business Law Medical Malpractice
78	P1248	Karl Miller	\N	\N	\N	\N	2016-06-07 19:56:39.392561-07	2016-06-07 19:56:39.392585-07	Chairman of the Board	https://www.avamere.com/	Healthcare Professionals	PSU Board of Trustees; UO Bus School Bd of Advisors; more
79	P1867	Mike McLane	\N	\N	\N	\N	2016-06-07 19:56:39.41053-07	2016-06-07 19:56:39.410558-07	Republican Rep at Oregon House of Rep	http://www.votemclane.com/	Government and Public Service	
80	P878	George E. Bulkeley	\N	\N	\N	\N	2016-06-07 19:56:39.420685-07	2016-06-07 19:56:39.420714-07	Self-Employed			
81	P1895	Aaron Thomas	\N	\N	\N	\N	2016-06-07 19:56:39.422604-07	2016-06-07 19:56:39.422627-07	President	www.thomasandsonsinc.com	Transportation	Boys & Girls Club of Southwestern Oregon
82	P894	Craig Boretz	\N	\N	\N	\N	2016-06-07 19:56:39.428885-07	2016-06-07 19:56:39.428909-07	VP of Development at XPO Logistics	http://www.xpo.com/	Transportation	PNCA Board Chair
83	P517	Henry van Ameringen	\N	\N	\N	\N	2016-06-07 19:56:39.435089-07	2016-06-07 19:56:39.435121-07	President of van Ameringen Foundation	http://people.equilar.com/bio/henry-van-ameringen-international-flavors/salary/49038#.Vu8NFrHn99A	Philanthropist	In the Life, New Approach Oregon
84	P582	Karl Anuta	\N	\N	\N	\N	2016-06-07 19:56:39.44961-07	2016-06-07 19:56:39.449643-07	Attorney	https://sites.google.com/site/lawofficeofkarlanuta/	Lawyers	
85	P1812	Nancy Oft Rose	\N	\N	\N	\N	2016-06-07 19:56:39.451701-07	2016-06-07 19:56:39.451727-07	Not Employed			
86	P1459	Linda Hellenthal	\N	\N	\N	\N	2016-06-07 19:56:39.45815-07	2016-06-07 19:56:39.458174-07				
87	P1468	Sidney B. Deboer	\N	\N	\N	\N	2016-06-07 19:56:39.460219-07	2016-06-07 19:56:39.460243-07	Chairman and CEO Lithia Motors Inc.	http://www.lithiainvestorrelations.com/board-of-directors.htm	Retail Services	Oregon Shakespeare Festival  
181	P816	Lee Kearney	\N	\N	\N	\N	2016-06-07 19:56:39.970441-07	2016-06-07 19:56:39.970465-07			Philanthropist	multi-million dollar donations to OSU School of Engineering, Breast cancer research, many republican candidates, etc  
88	P1756	Ed  Whitelaw	\N	\N	\N	\N	2016-06-07 19:56:39.465978-07	2016-06-07 19:56:39.466002-07	Consultant	http://www.econw.com/who-we-are/our-people/ed-whitelaw	Economics Consultant	Board of Economists, Eugene Register Guard; Eugene Chamber of Commerce
89	P1783	Johnnes HR van Alebeek	\N	\N	\N	\N	2016-06-07 19:56:39.476034-07	2016-06-07 19:56:39.47606-07	Vice President, Global Procurement and Shared Services, Nike, Inc., 	nike.com	Retail Services	Board Member of World Affairs Council of Oregon
90	P550	Sidney DeBoer	\N	\N	\N	\N	2016-06-07 19:56:39.481844-07	2016-06-07 19:56:39.481869-07	Chairman and CEO Lithia Motors	http://www.lithiainvestorrelations.com/board-of-directors.htm	Retail Services	Oregon Shakespeare Festival 
91	P307	Timothy McMenamin	\N	\N	\N	\N	2016-06-07 19:56:39.487974-07	2016-06-07 19:56:39.488001-07	Political Candidate	http://www.timmcmenamin.com/	Government and Public Service	
92	P1250	Michael Coughlin	\N	\N	\N	\N	2016-06-07 19:56:39.498058-07	2016-06-07 19:56:39.498084-07	President	https://burley.com/	Bicycle trailers	
93	P1964	Kurt Thomas	\N	\N	\N	\N	2016-06-07 19:56:39.500138-07	2016-06-07 19:56:39.500161-07	Operating Partner	www.meriturn.com	Agriculture and Farming	Board Member Klamath Basin Rangeland Trust
94	P1515	Peggy Boquist	\N	\N	\N	\N	2016-06-07 19:56:39.506476-07	2016-06-07 19:56:39.50651-07	Homemaker			
95	P1186	Paul Bovarnick	\N	\N	\N	\N	2016-06-07 19:56:39.508689-07	2016-06-07 19:56:39.508712-07	Of Counsel	http://www.legalattorneyportlandoregon.com/	Lawyers	Oregon Trial Lawyer Association (personal injuries)
96	P1525	Sean OHollaren	\N	\N	\N	\N	2016-06-07 19:56:39.515126-07	2016-06-07 19:56:39.515151-07	Senior VP, Government & Public Affairs	nike.com	Consumer Manufacturing	Oregon Transportation Commission, Willamette University
97	P1724	Robert Lanphere Jr.	\N	\N	\N	\N	2016-06-07 19:56:39.525411-07	2016-06-07 19:56:39.525436-07	President, Lanphere Enterprises Beaverton 	https://lanphereenterprises.hyrell.com/UI/Views/Applicant/VirtualStepCareers.aspx	Retail Services	Lanphere contributed $5,000 to "Friends of Jim Bernard," during Bernard's campaign for Clackamas County Commissioner.  https://webcache.googleusercontent.com/search?q=cache:rpAzrmf2mcEJ:https://secure.sos.state.or.us/orestar/gotoPublicTransactionDetail.do%3FtranRsn%3D2156036+&cd=2&hl=en&ct=clnk&gl=us
98	P1654	Brian Boquist	\N	\N	\N	\N	2016-06-07 19:56:39.531493-07	2016-06-07 19:56:39.53152-07	Oregon Senator	https://www.oregonlegislature.gov/boquist	Government and Public Service	
99	P311	Raymond Thomas	\N	\N	\N	\N	2016-06-07 19:56:39.533468-07	2016-06-07 19:56:39.533491-07	Partner	www.stc-law.com	Lawyers	
100	B428	Sean OHollaren	\N	\N	\N	\N	2016-06-07 19:56:39.535427-07	2016-06-07 19:56:39.53545-07	Senior VP, Government & Public Affairs	nike.com	Consumer Manufacturing	Oregon Transportation Commission, Willamette University
101	P1982	Diana Helm	\N	\N	\N	\N	2016-06-07 19:56:39.545862-07	2016-06-07 19:56:39.545886-07	Owner of Terra Casa, Mayor of City of Damascus OR	http://www.terracasa.com/, http://damascusoregon.gov/300/Diana-Helm	Retail Services	
102	B964	Karen OKasey	\N	\N	\N	\N	2016-06-07 19:56:39.547802-07	2016-06-07 19:56:39.547824-07	Attorney	http://hartwagner.com/	Lawyers	Oregon Ballet Theatre
103	P1619	Rick Thomas	\N	\N	\N	\N	2016-06-07 19:56:39.55442-07	2016-06-07 19:56:39.554445-07	Partner	www.quinnthomas.com	Lobbyists and Unions	
104	P1438	Stan Amy	\N	\N	\N	\N	2016-06-07 19:56:39.55653-07	2016-06-07 19:56:39.556564-07	Co-Founder, Director, New Seasons Market	http://www.newseasonsmarket.com/	Grocery	Director, Co-founder New Seasons Market, Donated to Eileen Brady, Advisor to Aisle7/Healthnotes, Founding member, Portland Student Services, http://www.bloomberg.com/research/stocks/private/person.asp?personId=44527078&privcapId=12004234
105	P1993	Thomas Boothe	\N	\N	\N	\N	2016-06-07 19:56:39.574548-07	2016-06-07 19:56:39.574575-07	Lawyer		Lawyers	
107	P380	Joshua Kardon	\N	\N	\N	\N	2016-06-07 19:56:39.578624-07	2016-06-07 19:56:39.578647-07	business consultant	www.capitolcounsel.com/	Government and Public Service	
108	P1056	David Thomason	\N	\N	\N	\N	2016-06-07 19:56:39.584655-07	2016-06-07 19:56:39.584678-07	Owner		Lodging, Tourism, Restaurants	
109	P988	Doneta  Thomason	\N	\N	\N	\N	2016-06-07 19:56:39.586513-07	2016-06-07 19:56:39.586536-07	Owner		Lodging, Tourism, Restaurants	
110	B1855	Brian OKelly	\N	\N	\N	\N	2016-06-07 19:56:39.588361-07	2016-06-07 19:56:39.588384-07	CEO	https://www.appnexus.com	Software and Techology	
111	P281	Brentley Bullock	\N	\N	\N	\N	2016-06-07 19:56:39.590607-07	2016-06-07 19:56:39.59064-07	Attorney	http://www.perkinscoie.com	Lawyers	Board of Directors Oregon Entrepreneurs Network, Oregon State University Business Roundtable, Oregon State University Austin Entrepreneurship Program, Portland Seed Fund
112	P1596	Robert Boone	\N	\N	\N	\N	2016-06-07 19:56:39.59666-07	2016-06-07 19:56:39.596684-07	Onocologist	https://www.stcharleshealthcare.org/	Healthcare Professionals	
113	p672	Karl R. Miller	\N	\N	\N	\N	2016-06-07 19:56:39.598531-07	2016-06-07 19:56:39.598553-07	Chairman 	https://www.avamere.com/	Real Estate	PSU Board of Trustees
114	P470	Walter McMonies	\N	\N	\N	\N	2016-06-07 19:56:39.615961-07	2016-06-07 19:56:39.615986-07	Attorney	http://www.lanepowell.com/12275/walter-w-mcmonies/	Lawyers	Oregon Seismic Safety Policy Advisory Commission (2013- ); Board of Directors
115	P466	Steven Cousineau	\N	\N	\N	\N	2016-06-07 19:56:39.622449-07	2016-06-07 19:56:39.622476-07	Energy Scheduler	http://iberdrolarenewables.us/	Chemical, Oil, Gas, Electric	
116	P1377	M. Christie Helmer	\N	\N	\N	\N	2016-06-07 19:56:39.624512-07	2016-06-07 19:56:39.624535-07	Lawyer	http://www.millernash.com/	Lawyers	Oregon College of Art and Craft, Board Chair
117	P1909	Curtis  Thompson	\N	\N	\N	\N	2016-06-07 19:56:39.634526-07	2016-06-07 19:56:39.634554-07	President	www.cta-lab.com	Healthcare Professionals	
118	811	Rick Miller	\N	\N	\N	\N	2016-06-07 19:56:39.636432-07	2016-06-07 19:56:39.636455-07	Chairman	https://www.avamere.com/	Real Estate	PSU Trustee, UO Bus.School Advisory Bd, others
119	P567	Erik Olbeter	\N	\N	\N	\N	2016-06-07 19:56:39.654184-07	2016-06-07 19:56:39.654211-07	Manager	www.icfi.com/	Chemical, Oil, Gas, Electric	
120	P716	David Thompson	\N	\N	\N	\N	2016-06-07 19:56:39.656067-07	2016-06-07 19:56:39.656089-07	Journey Inside Wireman	www.christenson.com	Construction	
121	P1648	Peter Kay	\N	\N	\N	\N	2016-06-07 19:56:39.658363-07	2016-06-07 19:56:39.658386-07	Gastroenterology	http://www.eugenegi.com/	Healthcare Professionals	
122	P1558	Deborah Boone	\N	\N	\N	\N	2016-06-07 19:56:39.660458-07	2016-06-07 19:56:39.660481-07	Representative	https://www.oregonlegislature.gov/boone	Government and Public Service	Pacific NW Economic Region
123	P185	Leslie OLeary	\N	\N	\N	\N	2016-06-07 19:56:39.666805-07	2016-06-07 19:56:39.666829-07	Attorney	http://www.wdolaw.com/	Lawyers	
124	P556	M. Christine Hauptmann	\N	\N	\N	\N	2016-06-07 19:56:39.668798-07	2016-06-07 19:56:39.668821-07	Ophthalmologist	http://www.ehnpc.com/	Healthcare Professionals	
125	P1156	Roy Thompson	\N	\N	\N	\N	2016-06-07 19:56:39.670755-07	2016-06-07 19:56:39.670778-07	Partner	www.thompsonandbogranpc.com	Lawyers	President FAME, Board of Directors YoGhana
126	P201	Suzanne Bonamici	\N	\N	\N	\N	2016-06-07 19:56:39.680731-07	2016-06-07 19:56:39.680756-07	State Representative	http://bonamici.house.gov/	Government and Public Service	
127	P1904	Anthony DeBone	\N	\N	\N	\N	2016-06-07 19:56:39.682695-07	2016-06-07 19:56:39.68272-07	Deschutes County Commissioner	http://www.deschutes.org/bcc/page/anthony-debone-commissioner-large	Government and Public Service	Multiple organizations such as La Pine Rodeo Association. See website for full list. 
128	P572	Michael Miller	\N	\N	\N	\N	2016-06-07 19:56:39.688643-07	2016-06-07 19:56:39.688668-07	self-employed		Construction	
129	P835	David Crane	\N	\N	\N	\N	2016-06-07 19:56:39.694566-07	2016-06-07 19:56:39.69459-07	Professor	https://www.stanford.edu/	Education	
130	P1275	Eric Helmy	\N	\N	\N	\N	2016-06-07 19:56:39.696441-07	2016-06-07 19:56:39.696464-07	Lawyer	http://nwbusinesslawgroup.com/	Lawyers	
131	P232	Bob Oleson	\N	\N	\N	\N	2016-06-07 19:56:39.698342-07	2016-06-07 19:56:39.698366-07	Lobbyist	http://nwsteelheaders.org/	Lobbyists and Unions	
132	P51	Darryl McNair	\N	\N	\N	\N	2016-06-07 19:56:39.70029-07	2016-06-07 19:56:39.700312-07	2nd Vice-Chair	http://www.klamathrepublican.com/about-us/executive-committee	Government and Public Service	
133	P1922	Allen Alley	\N	\N	\N	\N	2016-06-07 19:56:39.70624-07	2016-06-07 19:56:39.706265-07	CEO, The Alley Group, Board Chairman Pixelworks, Inc.	http://www.thealleygroupllc.com/	Software and Techology	Orestar data donations indicate heavy Republican donations, plus "Oregon Technology PAC"
134	P1344	Lyneil Vandermolen	\N	\N	\N	\N	2016-06-07 19:56:39.716096-07	2016-06-07 19:56:39.71612-07	Lawyer	http://www.vangelisti.com/	Lawyers	
135	p1044	Nancy Miller	\N	\N	\N	\N	2016-06-07 19:56:39.718034-07	2016-06-07 19:56:39.718057-07	artist	http://www.rubicon-films.com/NancyMillerBio.html	Arts, Entertainment, Music, and Recreation	
136	P663	John Crawford	\N	\N	\N	\N	2016-06-07 19:56:39.723847-07	2016-06-07 19:56:39.723871-07	Attorney	self-employed	Lawyers	
137	P1680	Erin Olson	\N	\N	\N	\N	2016-06-07 19:56:39.725703-07	2016-06-07 19:56:39.725726-07	Attorney	http://www.erinolsonlaw.com/	Lawyers	Oregon Crime Victims Law Center
138	P234	Bryon Hendricks	\N	\N	\N	\N	2016-06-07 19:56:39.73154-07	2016-06-07 19:56:39.731568-07	President and Principal Broker 	http://www.bhhsrep.com/	Real Estate	
139	P90	Gordan Keane	\N	\N	\N	\N	2016-06-07 19:56:39.733452-07	2016-06-07 19:56:39.733474-07	President	http://www.thedvi.com/	Software and Techology	On board: Audubon, Humane Society, listed as patron on Portland Art museum website
140	P645	Timothy S. Bollom	\N	\N	\N	\N	2016-06-07 19:56:39.743652-07	2016-06-07 19:56:39.743678-07	Orthopedic Surgeon	http://www.thecenteroregon.com/	Healthcare Professionals	
141	P420	Elizabeth VanStaaveren	\N	\N	\N	\N	2016-06-07 19:56:39.7456-07	2016-06-07 19:56:39.745623-07		Journalist	Philanthropist	Oregonians for Immigatration Reform,
142	P1409	Stephen Hendricks	\N	\N	\N	\N	2016-06-07 19:56:39.75184-07	2016-06-07 19:56:39.751865-07	Lawyer	http://www.hendrickslawfirm.com/	Lawyers	
143	P915	Elizabeth VanStaavern	\N	\N	\N	\N	2016-06-07 19:56:39.753841-07	2016-06-07 19:56:39.753865-07	Journalist		Philanthropist	Oregonians for Immigration Reform
144	P1674	Luke  Whitson	\N	\N	\N	\N	2016-06-07 19:56:39.760176-07	2016-06-07 19:56:39.760201-07	Web Developer	https://www.linkedin.com/in/lwhitson	Software and Techology	
145	P1040	Walt Bowen	\N	\N	\N	\N	2016-06-07 19:56:39.762194-07	2016-06-07 19:56:39.762217-07	CEO at BPM Senior Living Company, CEO at Regent Assisted Living Inc.		Real Estate	BPM Senior Living BPM Senior Living
146	P283	Katherine Keane	\N	\N	\N	\N	2016-06-07 19:56:39.768038-07	2016-06-07 19:56:39.768062-07	VP Director Marketing	http://www.thedvi.com/	Software and Techology	On Humane Society & Audubon boards, listed as Patron on Portland Art museum side.
147	P383	Corette Cross	\N	\N	\N	\N	2016-06-07 19:56:39.77799-07	2016-06-07 19:56:39.778018-07	Office Manager	http://www.wvcross.com/	Real Estate	
148	P1906	Ed McNamara	\N	\N	\N	\N	2016-06-07 19:56:39.78008-07	2016-06-07 19:56:39.780115-07	Owner	Turtle Island Development LLC	Real Estate	Office of the Mayor, 1000 Friends of Oregon, Home Forward (formerly Housing Authority of Portland)
149	P1699	John Bollier	\N	\N	\N	\N	2016-06-07 19:56:39.786124-07	2016-06-07 19:56:39.78615-07	President of Stacy and Witbeck	http://www.stacywitbeck.com/	Transportation	
150	P1523	M. Albin Jubitz	\N	\N	\N	\N	2016-06-07 19:56:39.788018-07	2016-06-07 19:56:39.788042-07	Retired Co-President of the Jubitz Corporation	http://www.jubitz.com/	Transportation	Donates to almost all Democrats (with some statewide moderate Republicans) from Orestar data, Leadership Councils of the Portland Children's Museum, Environmental Defense Fund, Outward Bound Wilderness School, Morrison Child and Family Services
151	P1455	Sherman Olsrud	\N	\N	\N	\N	2016-06-07 19:56:39.809992-07	2016-06-07 19:56:39.810019-07	President	http://www.shermsmarkets.com/	Grocery	
152	p1616	Philip Kalberer	\N	\N	\N	\N	2016-06-07 19:56:39.811896-07	2016-06-07 19:56:39.811919-07	Real Estate Owner		Real Estate	
153	P1784	Daniel Bunn	\N	\N	\N	\N	2016-06-07 19:56:39.813789-07	2016-06-07 19:56:39.813811-07	Investor		Banking and Finance	Medford Council Member
154	P1878	Loyd Henion	\N	\N	\N	\N	2016-06-07 19:56:39.819833-07	2016-06-07 19:56:39.819857-07	President	Integrated Transportation Solutions (can't find website)	Transportation	Linn County Chair for Democratic Party of Oregon
155	P1076	William Appel	\N	\N	\N	\N	2016-06-07 19:56:39.825858-07	2016-06-07 19:56:39.825883-07	Chief Operating Officer	http://thc-foundation.org/	Healthcare Professionals	Campaign for the Restoration and Regulation of Hemp (CRRH)
156	p451	Steven Olsrud	\N	\N	\N	\N	2016-06-07 19:56:39.831761-07	2016-06-07 19:56:39.831786-07	Manager		Real Estate	
157	P37	Jay Henry	\N	\N	\N	\N	2016-06-07 19:56:39.833685-07	2016-06-07 19:56:39.833708-07	Chief Marketing Officer	Ringgold Inc. 	Software and Techology	
158	P1768	Larry  Deckman 	\N	\N	\N	\N	2016-06-07 19:56:39.835596-07	2016-06-07 19:56:39.835619-07	Attorney 	http://pview.findlaw.com/view/2022626_1	Lawyers	
159	P269	Wanda Olsrud	\N	\N	\N	\N	2016-06-07 19:56:39.837486-07	2016-06-07 19:56:39.837508-07	Owner	http://www.shermsmarkets.com/	Grocery	Olsrud Scholarship Fund
160	P1715	Frederick D. Crowell	\N	\N	\N	\N	2016-06-07 19:56:39.843376-07	2016-06-07 19:56:39.843399-07	Wood products executive	Self-employed	Forestry and Timber	
161	P882	Jewel Lansing	\N	\N	\N	\N	2016-06-07 19:56:39.845262-07	2016-06-07 19:56:39.845285-07	Retired politician/writer	http://www.jewellansing.com/	Arts, Entertainment, Music, and Recreation	Lansing gave $150 to Friends of LaVonne Griffin-Valade's2009 campaign for Portland City Auditor. 
162	P324	Philip Bogue	\N	\N	\N	\N	2016-06-07 19:56:39.850978-07	2016-06-07 19:56:39.851001-07	Retired		Philanthropist	Portland Art Museum
163	p1240	Prudence Miller	\N	\N	\N	\N	2016-06-07 19:56:39.857033-07	2016-06-07 19:56:39.857058-07	individual		Philanthropist	Portland Art Museum; Oregon Symphony Board
164	P967	Ramsey McPhillips	\N	\N	\N	\N	2016-06-07 19:56:39.8635-07	2016-06-07 19:56:39.863524-07	Farmer		Agriculture and Farming	1000 Friends of Oregon
165	P1949	Bruce Abernethy	\N	\N	\N	\N	2016-06-07 19:56:39.869629-07	2016-06-07 19:56:39.869654-07	Grantwriter, Bend-La Pine School District	https://www.bend.k12.or.us/district/	Education	Donor to Democrats in Orestar, Surdna Foundation Board Member, Bend-La Pine School District Grantwriter
166	P703	J. Clayton Hering	\N	\N	\N	\N	2016-06-07 19:56:39.883687-07	2016-06-07 19:56:39.883714-07		Chairman of the Board	Real Estate	
167	P688	R. Dennis Wiancko	\N	\N	\N	\N	2016-06-07 19:56:39.885644-07	2016-06-07 19:56:39.885668-07	Photographer	http://www.buildlocalalliance.org/bla-members/ross-mountain-forest-resources/	Forestry and Timber	
168	P846	Tom Bowerman	\N	\N	\N	\N	2016-06-07 19:56:39.887569-07	2016-06-07 19:56:39.887592-07	Property Management	(Self Employed)	Education	Project Direcor, Climate & Public Policy Research Project
169	p78	Lori Kalani	\N	\N	\N	\N	2016-06-07 19:56:39.893757-07	2016-06-07 19:56:39.893781-07		https://www.cozen.com/people/bios/kalani-lori	Lawyers	
170	P1765	Timothy Hershey	\N	\N	\N	\N	2016-06-07 19:56:39.899799-07	2016-06-07 19:56:39.899829-07	VP Global Merchandising	http://www.nike.com	Apparel	Board Chairman for Big Brothers, Big Sisters Northwest
171	P1015	Dan  Wieden	\N	\N	\N	\N	2016-06-07 19:56:39.908858-07	2016-06-07 19:56:39.908882-07	Cofounder	https://en.wikipedia.org/wiki/Dan_Wieden	Marketing and Creative Agencies	Caldera Foundation
172	P1585	Carol Olwell	\N	\N	\N	\N	2016-06-07 19:56:39.91501-07	2016-06-07 19:56:39.915036-07	Retired			
173	P427	James  Culbertson	\N	\N	\N	\N	2016-06-07 19:56:39.917102-07	2016-06-07 19:56:39.917129-07	CEO	http://www.tcmcorp.com/	Construction	
174	P1412	James Abramson	\N	\N	\N	\N	2016-06-07 19:56:39.919086-07	2016-06-07 19:56:39.919109-07	Vice President, Stacy & Whitbeck	http://www.stacywitbeck.com/	Construction	
175	P1588	Nathaniel Applefield	\N	\N	\N	\N	2016-06-07 19:56:39.928869-07	2016-06-07 19:56:39.928895-07	Statewide Field Director	http://www.outdoorschoolforall.org/#home	Education	Outdoor School for All PAC
177	P1326	Katherine ONeil	\N	\N	\N	\N	2016-06-07 19:56:39.958215-07	2016-06-07 19:56:39.958247-07	Lawyer	http://www.hatchvt.com/	Lawyers	
178	P1385	Mary P. DeFrank	\N	\N	\N	\N	2016-06-07 19:56:39.9602-07	2016-06-07 19:56:39.960234-07	Ophthalmologist 	http://www.hillsboroeyeclinic.com/our-physicians/mary-p-defrank-m-d/	Healthcare Professionals	Executive Board member of the Oregon Academy of Ophthalmology
179	P1351	William  Thompson	\N	\N	\N	\N	2016-06-07 19:56:39.966142-07	2016-06-07 19:56:39.966168-07	Division Commander	www.uscg.mil	Government and Public Service	
182	P1641	Clifford Curry	\N	\N	\N	\N	2016-06-07 19:56:39.993371-07	2016-06-07 19:56:39.993406-07	Architect	Self-employed	Construction	
183	P1021	John Appleton	\N	\N	\N	\N	2016-06-07 19:56:39.995443-07	2016-06-07 19:56:39.995469-07	President/CEO	http://ablmanagement.com/	Food and Agribusiness	
184	P515	Dino Vendetti	\N	\N	\N	\N	2016-06-07 19:56:39.997404-07	2016-06-07 19:56:39.99743-07	Managing Partner of Seven Peaks Ventures	http://sevenpeaksventures.com/	Banking and Finance	
185	p978	Stephen Kafoury	\N	\N	\N	\N	2016-06-07 19:56:39.999415-07	2016-06-07 19:56:39.999441-07	Government Relations Consultant		Government and Public Service	Hevanet Communications
186	P697	John Arnold	\N	\N	\N	\N	2016-06-07 19:56:40.005755-07	2016-06-07 19:56:40.005781-07	Not Employed			
187	P511	Dinah Larsen	\N	\N	\N	\N	2016-06-07 19:56:40.007688-07	2016-06-07 19:56:40.007712-07		NA		Orestar records show that Larsen donated $1000 but doesn't to whom.
188	P1541	James Verheyden	\N	\N	\N	\N	2016-06-07 19:56:40.009652-07	2016-06-07 19:56:40.009676-07	Orthapedic Surgeon	http://www.google.com/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=1&cad=rja&uact=8&sqi=2&ved=0ahUKEwjFk5_DoNDLAhURy2MKHWg2D_0QFggdMAA&url=http%3A%2F%2Fwww.thecenteroregon.com%2Fdoctors-surgeons%2Forthopedic-surgery%2Fjames-verheyden-md%2F&usg=AFQjCNFaRRFSvRI6l_30zCuz9cRltg6tUQ&sig2=s0aPtdHhmuHttn4Ds1UHhA&bvm=bv.117218890,d.cGc	Healthcare Professionals	
189	P1795	Justin Delaney	\N	\N	\N	\N	2016-06-07 19:56:40.011567-07	2016-06-07 19:56:40.01159-07	Vice President, Corporate Legal & Public Affairs at The Standard	https://www.linkedin.com/in/justin-delaney-4543164	Insurance 	
190	P1341	William  Thompson	\N	\N	\N	\N	2016-06-07 19:56:40.013502-07	2016-06-07 19:56:40.013524-07	Division Commander	www.uscg.mil	Government and Public Service	
191	P1689	Peter Dale Nickerson	\N	\N	\N	\N	2016-06-07 19:56:40.015383-07	2016-06-07 19:56:40.015405-07	Sports Apparel Manufacturing Company Owner 	Self-employed	Sports apparel	
192	P708	Henry Hewitt	\N	\N	\N	\N	2016-06-07 19:56:40.017331-07	2016-06-07 19:56:40.017356-07	Senior Counsel	http://www.stoel.com/showbio.aspx?show=313	Lawyers	 Hampton Resources, Columbia Forest Products, Bank of the Cascades, Willamette University, 
193	P606	Peggy Allen	\N	\N	\N	\N	2016-06-07 19:56:40.030782-07	2016-06-07 19:56:40.030807-07	Chief Financial Officer, Oregon Association of Hospitals and Health Systems	http://www.oahhs.org/	Healthcare Professionals	Oregon Association of Hospitals and Health Systems, Essentially only donates to her employer PAC
194	P500	Christine Vernier	\N	\N	\N	\N	2016-06-07 19:56:40.037272-07	2016-06-07 19:56:40.037298-07	Founder and CFO of Vernier Technologies	http://www.google.com/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwivwOPmoNDLAhUO72MKHUgaDhsQFggcMAA&url=http%3A%2F%2Fwww.vernier.com%2Fcompany%2Fthe-vernier-story%2F&usg=AFQjCNE8RA5DOxuXyc_KCNUSb7mODoheAw&sig2=ePSQWThAEg3vKnNEOGcVcw&bvm=bv.117218890,d.cGc	Software and Techology	Portland State University, Oregon Chapter of The Nature Conservatory
195	P190	Scott Hibbs	\N	\N	\N	\N	2016-06-07 19:56:40.051322-07	2016-06-07 19:56:40.051346-07	Director of Engineering	http://extremeaccessinc.com/	providing bridge inspection services, geotechnical services, high-angle rescue, and specialized climbing access	
196	p1598	Gregory Kafoury	\N	\N	\N	\N	2016-06-07 19:56:40.053216-07	2016-06-07 19:56:40.053239-07	Attorney	http://kafourymcdougal.com/	Lawyers	
197	P53	Dave  Vernier	\N	\N	\N	\N	2016-06-07 19:56:40.055079-07	2016-06-07 19:56:40.055101-07	Co-President o Vernier	http://www.vernier.com/support/team/dvernier/	Software and Techology	
198	P141	William Thorndike	\N	\N	\N	\N	2016-06-07 19:56:40.06077-07	2016-06-07 19:56:40.060793-07	Owner	www.medfab.com	Industrial Manufacturing	
199	P1975	John  McVea	\N	\N	\N	\N	2016-06-07 19:56:40.062674-07	2016-06-07 19:56:40.062697-07	Lawyer	http://mcvealaw.com/?hg=0&nr=0	Lawyers	
200	P1511	Dike Dame	\N	\N	\N	\N	2016-06-07 19:56:40.064582-07	2016-06-07 19:56:40.064623-07	Partner	http://williamsanddame.com/	Construction	Dike is on the Advisory Board of Portland State University’s School of Urban Affairs and Planning, and Vice Chairman of a Project Apprentice Committee that promotes union apprenticeships for women and ethnic minorities.
201	P763	Gary Hibler	\N	\N	\N	\N	2016-06-07 19:56:40.070619-07	2016-06-07 19:56:40.070644-07	Retired	https://www.jenseninvestment.com/		
202	P976	Lane Hickey	\N	\N	\N	\N	2016-06-07 19:56:40.072633-07	2016-06-07 19:56:40.072666-07	CEO	DermPath Specialists (no website), http://www.cta-lab.com/		
203	P864	T. B. Dame	\N	\N	\N	\N	2016-06-07 19:56:40.074516-07	2016-06-07 19:56:40.074539-07	President	http://williamsanddame.com/	Construction	
204	P1050	Tom Bowerman	\N	\N	\N	\N	2016-06-07 19:56:40.076377-07	2016-06-07 19:56:40.076399-07				
205	P1807	Vicki Arnold	\N	\N	\N	\N	2016-06-07 19:56:40.078287-07	2016-06-07 19:56:40.078311-07	Executive Coach for non profit leaders		Government and Public Service	
207	P474	Eric Bunn	\N	\N	\N	\N	2016-06-07 19:56:40.086144-07	2016-06-07 19:56:40.08617-07	President		management services	
208	P467	Joaquin Hidalgo	\N	\N	\N	\N	2016-06-07 19:56:40.088061-07	2016-06-07 19:56:40.088083-07	Vice President and General Manager, Nike North America	http://www.nike.com	Apparel	
209	p928	Francis Jungers	\N	\N	\N	\N	2016-06-07 19:56:40.089989-07	2016-06-07 19:56:40.090012-07	Former CEO & Chairman of PacStar	http://pacstar.com	Chemical, Oil, Gas, Electric	Donaldson, Lufkin & Jenrette; Common Sense Partners
211	P1211	Lawrence Viehl	\N	\N	\N	\N	2016-06-07 19:56:40.102712-07	2016-06-07 19:56:40.102737-07	CEO of Asante	http://www.asante.org/	Healthcare Professionals	
212	P844	Jeanne Atkinson	\N	\N	\N	\N	2016-06-07 19:56:40.104628-07	2016-06-07 19:56:40.10465-07	State director	http://sos.oregon.gov/Pages/index.aspx	Government and Public Service	
213	P1265	Gene Mechanic	\N	\N	\N	\N	2016-06-07 19:56:40.106565-07	2016-06-07 19:56:40.106587-07	Attorney	http://mechaniclaw.com/	Lawyers	Former chairperson of Portland, Oregon public high school advisory council, Member, Board of Directors, AFL-CIO Lawyers Coordinating Committee (2002-2005),Chairman, Oregon State Bar Labor and Employment Law Section (1991-1992),  
214	P677	Michael  Thornton	\N	\N	\N	\N	2016-06-07 19:56:40.116445-07	2016-06-07 19:56:40.116475-07	Partner	www.tenlaw.com	Lawyers	
215	p1597	Joe Jumalon	\N	\N	\N	\N	2016-06-07 19:56:40.118494-07	2016-06-07 19:56:40.118518-07	President of Elite Bath	www.elitebath.com	Lodging, Tourism, Restaurants	
216	P404	Brett Wilcox	\N	\N	\N	\N	2016-06-07 19:56:40.120389-07	2016-06-07 19:56:40.120411-07	Director	http://investors.kaiseraluminum.com/directors.cfm	Industrial Manufacturing	Vice Chair Oregon Progress Board
218	P604	Denis Hijmans	\N	\N	\N	\N	2016-06-07 19:56:40.128109-07	2016-06-07 19:56:40.128131-07	Agent	https://www.statefarm.com/agent/US/OR/Eugene/Denis-Hijmans-NM44P1YS000	Insurance	Lane County Budget Committee Chair 
219	P1741	Marc Visnick	\N	\N	\N	\N	2016-06-07 19:56:40.134356-07	2016-06-07 19:56:40.13438-07	Engineering Service Manager		engineering	
220	P1786	Michelle Atkinson	\N	\N	\N	\N	2016-06-07 19:56:40.136251-07	2016-06-07 19:56:40.136273-07	Not Employed			
221	P192	Ray Auel	\N	\N	\N	\N	2016-06-07 19:56:40.138171-07	2016-06-07 19:56:40.138194-07	Not Employed			
222	P89	Craig Danielson	\N	\N	\N	\N	2016-06-07 19:56:40.140056-07	2016-06-07 19:56:40.140079-07	Investor	Parker Properties, Inc. no web site	Real Estate	
223	p84	Randolph Miller	\N	\N	\N	\N	2016-06-07 19:56:40.141974-07	2016-06-07 19:56:40.141996-07	President		Real Estate	PGE Foundation;World Affairs Council, Oregon Sports Authority, the Community Investment Initiative and several business boards
224	P1905	Martin Kehoe	\N	\N	\N	\N	2016-06-07 19:56:40.148528-07	2016-06-07 19:56:40.148552-07	Real Estate Developer	http://www.kehoenw.com/	Real Estate	
217	P418	Tom D'Amore	Tom	DAmore	5650.00	\N	2016-06-07 19:56:40.126213-07	2016-06-07 20:17:08.916772-07	Attorney	http://damorelaw.com/	Lawyers	
206	P783	Jon McWiliams	Jon	McWilliams	18802.00	172	2016-06-07 19:56:40.080183-07	2016-06-07 20:17:10.703171-07	PCP -333 Tanasbourne to Willow Creek; House District Leader, HD 30 Rep. Joe Gallegos.	http://www.washcodems.org/wcd-leaders	Government and Public Service	OLCV Steering Committee Washington County
225	P1913	Rex Burkholder	\N	\N	\N	\N	2016-06-07 19:56:40.150883-07	2016-06-07 19:56:40.150908-07	Elected Official	http://www.oregonmetro.gov/	Government and Public Service	Oregon Outdoor Education Coalition
226	P1054	John  von Schlegell	\N	\N	\N	\N	2016-06-07 19:56:40.164589-07	2016-06-07 19:56:40.164616-07	CoFounder at Endeavor	http://www.endeavourcapital.com/ec/john-von-schlegell/	Banking and Finance	The Nature Conservancy, the National Fish and Wildlife Foundation, Oregon State Board of Higher Education
227	P40	Randy  Miller	\N	\N	\N	\N	2016-06-07 19:56:40.174812-07	2016-06-07 19:56:40.174837-07	self-employed		Real Estate	PGE Foundation
229	P1560	jeffrey bowersox	\N	\N	\N	\N	2016-06-07 19:56:40.186953-07	2016-06-07 19:56:40.186977-07	Founder of BOWERSOX LAW FIRM	http://www.bowersoxlaw.com/index	Lawyers	Safety Lawyer/class Actions
230	P143	Richard Akerman	\N	\N	\N	\N	2016-06-07 19:56:40.192885-07	2016-06-07 19:56:40.19291-07	President, Brandco. Real Estate Investor	http://egov.sos.state.or.us/br/pkg_web_name_srch_inq.show_detl?p_be_rsn=213354&p_srce=BR_INQ&p_print=FALSE	Real Estate	
231	P603	Daniel Hill	\N	\N	\N	\N	2016-06-07 19:56:40.198641-07	2016-06-07 19:56:40.198665-07	Director	https://www.linkedin.com/company/red-capital-group?trk=ppro_cprof, http://viridisassetmanagement.com/ 		
232	P1491	Kurt von Wasmuth	\N	\N	\N	\N	2016-06-07 19:56:40.200604-07	2016-06-07 19:56:40.200628-07	President and CEO of RMLS	http://www.rmls.com/RC2/UI/Home.asp	Software and Techology	
233	P852	John E.  Von Schlegell	\N	\N	\N	\N	2016-06-07 19:56:40.202626-07	2016-06-07 19:56:40.20265-07	Founder and Ceo of Endeavour Captalists		Banking and Finance	
234	P1770	Jeffrey Bowersox	\N	\N	\N	\N	2016-06-07 19:56:40.204545-07	2016-06-07 19:56:40.204567-07	Founder of Bowersox Law Firm	Bowersox Law Firm	Lawyers	Product Safety Lawyer/class Actions
235	P1273	John E Von Schlegell	\N	\N	\N	\N	2016-06-07 19:56:40.2107-07	2016-06-07 19:56:40.210723-07	Founder and CEO of Endeavour		Banking and Finance	
236	P483	Elliott Hill	\N	\N	\N	\N	2016-06-07 19:56:40.212733-07	2016-06-07 19:56:40.212756-07	President of Geographies and Sales, Nike Inc. 	http://www.nike.com, http://www.bloomberg.com/research/stocks/people/person.asp?personId=2328185&privcapId=291981	Apparel	Cambia Health Solutions, Big Brothers Big Sisters Columbia Northwest, Ohio University Sports Administration program
237	P849	Ken  Thrasher	\N	\N	\N	\N	2016-06-07 19:56:40.224721-07	2016-06-07 19:56:40.224753-07	President and CEO	www.fredmeyer.com	Grocery	Chairman - Children's Institute, Board Member - Jensen Growth Fund, Friends of the Children, Oregon Mentors, College Possible, PSU Foundation, All Hands Raised, Senior Director - Oregon Business Counsel
238	P396	Charles  Wilhoite	\N	\N	\N	\N	2016-06-07 19:56:40.234783-07	2016-06-07 19:56:40.234813-07	Managing Director	https://www.linkedin.com/in/charles-wilhoite-52a38b29	Banking and Finance	Current Board: Legacy Health, Meyer Memorial Trust, Oregon State Bar, The Nature Conservancy, Federal Reserve Bank San Francisco. Past: PDC, Portland Business Alliance, OHSU, SMART, Urban League of Portland, Jesuit High School
239	P1350	Susan Burmeister-Brown	\N	\N	\N	\N	2016-06-07 19:56:40.244673-07	2016-06-07 19:56:40.244698-07	Owner/Editor	http://www.glimmertrain.com/	Arts, Entertainment, Music, and Recreation	deeply steeped as an editor and mentor in the literary community.
240	P1813	Loren Later	\N	\N	\N	\N	2016-06-07 19:56:40.250564-07	2016-06-07 19:56:40.250589-07	Vice President, Knife River, Eugene, OR 	http://www.kniferiver.com/	Construction	Mr. Later gave $100 to the Lane County Republican Central Committee on April 14, 2013
241	p904	Albin Jubitz	\N	\N	\N	\N	2016-06-07 19:56:40.256807-07	2016-06-07 19:56:40.256831-07	Director of Transcore Holdings Inc.	https://www.transcore.com/	Transportation	Monsoon Inc
242	P356	Matthew Kehoe	\N	\N	\N	\N	2016-06-07 19:56:40.26344-07	2016-06-07 19:56:40.263472-07	Attorney	http://kehoelawoffices.com/	Lawyers	
243	P351	Kenneth Thrasher	\N	\N	\N	\N	2016-06-07 19:56:40.265523-07	2016-06-07 19:56:40.265549-07	President & CEO	www.fredmeyer.com	Grocery	
244	P69	Robert Miller	\N	\N	\N	\N	2016-06-07 19:56:40.267579-07	2016-06-07 19:56:40.267606-07	Electronic Engineer	usnavy.gov	Government and Public Service	
245	P1226	Lisa Wade	\N	\N	\N	\N	2016-06-07 19:56:40.274068-07	2016-06-07 19:56:40.274099-07	Professor at Occidental College	http://lisa-wade.com/	Education	
246	P713	Andy Davidson	\N	\N	\N	\N	2016-06-07 19:56:40.276024-07	2016-06-07 19:56:40.276049-07	President and CEO 	http://www.oahhs.org/	Healthcare Professionals	
248	P1488	George Austin, Jr.	\N	\N	\N	\N	2016-06-07 19:56:40.28398-07	2016-06-07 19:56:40.284004-07	Founder/Director	http://us.a-dec.com/en/	Industrial Manufacturing	
249	P34	Homer Williams	\N	\N	\N	\N	2016-06-07 19:56:40.285973-07	2016-06-07 19:56:40.285996-07	Chairman	http://williamsanddame.com/team/	Real Estate	Board of River District Steering Committee, Special Olympics of Oregon, CAWS
250	P998	Milo Wadlin	\N	\N	\N	\N	2016-06-07 19:56:40.291921-07	2016-06-07 19:56:40.291945-07	Retired			Obama for America, ACTBLUE, MOVEON.ORG, Emily's List
251	P1025	Jane  Hill	\N	\N	\N	\N	2016-06-07 19:56:40.297715-07	2016-06-07 19:56:40.297738-07	Mediator	https://www.linkedin.com/in/jane-hill-81767454, http://www.bizapedia.com/or/JJAJ-ASSOCIATES.html, Sunset Empire Resolution Services	Alternative Dispute Resolution Services	
253	P1884	Mary Peveto	\N	\N	\N	\N	2016-06-07 19:56:40.301895-07	2016-06-07 19:56:40.301919-07	Executive Director, Neighbors for Clean Air	http://www.whatsinourair.org	Marketing and Creative Agencies	
254	P27	Danton Wagner	\N	\N	\N	\N	2016-06-07 19:56:40.312431-07	2016-06-07 19:56:40.312455-07	Retired			ACTBLUE, Oregon Votes, Democratic Party of Oregon, Progress for Oregon
255	P1660	Thane Tienson	\N	\N	\N	\N	2016-06-07 19:56:40.318811-07	2016-06-07 19:56:40.318841-07	Attorney	www.lbblawyers.com	Lawyers	
256	P920	Steven Hill	\N	\N	\N	\N	2016-06-07 19:56:40.320863-07	2016-06-07 19:56:40.320889-07	Lawyer	http://www.stevehilllaw.com/		Oregon East Symphony, Children's Museum of Eastern Oregon, Pendleton Center for the Arts, Babe Ruth Baseball
257	P385	Michael Meculloch	\N	\N	\N	\N	2016-06-07 19:56:40.334993-07	2016-06-07 19:56:40.335027-07	Architect	www.mmcarch.com	Construction	
258	P611	Mark Burnham	\N	\N	\N	\N	2016-06-07 19:56:40.341531-07	2016-06-07 19:56:40.341562-07	Investor - Self-Employed		Banking and Finance	University of Montana Foundation Board Member, President of Boys & Girls Club Marion & Polk Counties
259	P755	Scott Hinsdale	\N	\N	\N	\N	2016-06-07 19:56:40.353935-07	2016-06-07 19:56:40.353968-07	Owner	SH-Financial, no URL but mentioned on https://www.linkedin.com/in/scott-hinsdale-74514b16	Real Estate	
260	P10	Elizabeth Tilbury	\N	\N	\N	\N	2016-06-07 19:56:40.356083-07	2016-06-07 19:56:40.356108-07	Real Estate Broker	www.tfn-ire.com	Real Estate	
261	P458	Neil Lathen	\N	\N	\N	\N	2016-06-07 19:56:40.358082-07	2016-06-07 19:56:40.358106-07	Attorney at Swanson, Lathen attorneys	http://www.slamlaw.com/attorneys/neil-lathen/	Lawyers	Lathen gave $825 in aggregate dollars to the Oregon Trial Lawyers Association PAC on 10/22/2013.
262	P1089	Dan Meek	\N	\N	\N	\N	2016-06-07 19:56:40.367401-07	2016-06-07 19:56:40.367429-07	Attorney	http://progparty.org/category/tags/dan-meek	Lawyers	
263	P1749	Frederic Tiplady	\N	\N	\N	\N	2016-06-07 19:56:40.377316-07	2016-06-07 19:56:40.377341-07	Director of Strategic Accounts	www.alcon.com	Healthcare Professionals	
264	P549	Michael Keiser	\N	\N	\N	\N	2016-06-07 19:56:40.379254-07	2016-06-07 19:56:40.379277-07	oil & natural gas producer\t	Black Dragon Resource Co	Chemical, Oil, Gas, Electric	213 Million in donations: http://www.milliondollarlist.org/donors/michael-l-keiser-and-rosalind-c-keiser-charitable-trust
1001	B3	Kroger	\N	Kroger	965785.00	249	2016-06-07 20:17:10.283421-07	2016-06-07 20:17:10.283452-07				
1002	P616	John Kroger	John	Kroger	5000.00	\N	2016-06-07 20:17:10.286918-07	2016-06-07 20:17:10.286943-07				
1003	P137	Mary Ann Kunkel	Mary	Kunkel	6675.00	\N	2016-06-07 20:17:10.289967-07	2016-06-07 20:17:10.289992-07				
252	P1916	Keith Tichener	Keith	Tichenor	6925.00	56	2016-06-07 19:56:40.299571-07	2016-06-07 20:17:12.084801-07	Partner	www.tdinjurylaw.com	Lawyers	
265	P1	Gun Denhart	\N	\N	\N	\N	2016-06-07 19:56:40.401674-07	2016-06-07 19:56:40.40171-07	Founder of Hanna Andersson	http://www.ecotrust.org/staff/gun-denhart/	Retail Services	Mercy Corps, the Stand for Children Oregon Advisory Board and Oregon Business Assoication 
266	P36	Gary  Hirshberg	\N	\N	\N	\N	2016-06-07 19:56:40.408136-07	2016-06-07 19:56:40.408164-07	Chairman/Founder	http://www.stonyfield.com/about-us	Food and Agribusiness	
267	P1853	Daniel Meek	\N	\N	\N	\N	2016-06-07 19:56:40.410116-07	2016-06-07 19:56:40.410141-07	Attorney	http://progparty.org/category/tags/dan-meek	Government and Public Service	
268	P459	Michael L. Keiser	\N	\N	\N	\N	2016-06-07 19:56:40.420139-07	2016-06-07 19:56:40.420164-07	President 	http://www.bandondunesgolf.com/	Lodging, Tourism, Restaurants	http://www.milliondollarlist.org/donors/michael-l-keiser-and-rosalind-c-keiser-charitable-trust
269	P1876	Katherine Tippens Wiper	\N	\N	\N	\N	2016-06-07 19:56:40.44805-07	2016-06-07 19:56:40.448082-07	Teacher	www.shs.lane.edu	Education	CSB Oregon, Eugene Public Library Foundation
270	P745	Mark Davidson	\N	\N	\N	\N	2016-06-07 19:56:40.454118-07	2016-06-07 19:56:40.454146-07	 Director Union County 	http://union-county.org/	Government and Public Service	Co-Chair of the Public Lands & Natural Resources Steering Committee
271	P925	Sue Davidson	\N	\N	\N	\N	2016-06-07 19:56:40.460177-07	2016-06-07 19:56:40.460201-07	Not employed			
272	P1700	William "Bud" Pierce	\N	\N	\N	\N	2016-06-07 19:56:40.462076-07	2016-06-07 19:56:40.462099-07	Physician, Salem Hospital	http://www.salemhealth.org/	Healthcare Professionals	Candidate for Oregon Governor, 2016, Republican Primary
273	P1869	Reid Hoffman	\N	\N	\N	\N	2016-06-07 19:56:40.47247-07	2016-06-07 19:56:40.472495-07	Entrepreneur, Venture Capitalist, Co-Founder of LinkedIn	https://en.wikipedia.org/wiki/Reid_Hoffman	Software and Techology	Mozilla, Kiva, Endeavor Global, Do Something, MIT Media Lab, QuestBridge, Open AI
274	P1066	Roger Burt	\N	\N	\N	\N	2016-06-07 19:56:40.490582-07	2016-06-07 19:56:40.490612-07	unemployed			
275	P1606	Debi  Laue	\N	\N	\N	\N	2016-06-07 19:56:40.49257-07	2016-06-07 19:56:40.492596-07	Realtor, The Laue Team Real Estate	http://www.thelaueteam.com/	Real Estate	Lauer gave $800 to the Portland Metropolitan Association of Realtors PAC on 5/28/2015. 
276	P1174	Beverly Meeker	\N	\N	\N	\N	2016-06-07 19:56:40.498451-07	2016-06-07 19:56:40.498475-07	Retired	Not Employed		Community Help in Music Education (CHIME) 
277	P529	Cynthia L. Davis	\N	\N	\N	\N	2016-06-07 19:56:40.504663-07	2016-06-07 19:56:40.504687-07	President	http://www.nike.com/us/en_us/c/golf	Sporting goods	Active supporter of the Furman University Athletic Department 
278	P897	Edward Boyle	\N	\N	\N	\N	2016-06-07 19:56:40.510924-07	2016-06-07 19:56:40.510949-07	Founder and Chairman ClearFlow, Inc.	www.clearflow.com	Healthcare Professionals	ClearFlow, Inc., Inovia Vein Speicialty Center, MDI Partners
279	P1014	Larry Keith	\N	\N	\N	\N	2016-06-07 19:56:40.51691-07	2016-06-07 19:56:40.516934-07	Business and tech manufacturer	http://entek.com/	Software and Techology	$100K Donation to community college
280	P126	Albert Hoagland	\N	\N	\N	\N	2016-06-07 19:56:40.522774-07	2016-06-07 19:56:40.522798-07	Trustee, Charles Babbage Foundation	https://www.computer.org/web/cshistory/albert-hoagland	Philanthropist	
281	P764	Joan Austin	\N	\N	\N	\N	2016-06-07 19:56:40.524694-07	2016-06-07 19:56:40.524717-07	CEO/Owner	http://us.a-dec.com/en/	Industrial Manufacturing	
282	P491	Jennifer Davis	\N	\N	\N	\N	2016-06-07 19:56:40.526935-07	2016-06-07 19:56:40.526958-07	Financial Advisor	http://financialservicesinc.ubs.com/branch/portlandll/	Banking and Finance	
283	p57	Ronald Miller	\N	\N	\N	\N	2016-06-07 19:56:40.528922-07	2016-06-07 19:56:40.528946-07	self-employed		Marketing and Creative Agencies	
284	P267	William Lazar	\N	\N	\N	\N	2016-06-07 19:56:40.534703-07	2016-06-07 19:56:40.534726-07	Not employed	NA		Lazar gave $250 to "Restore our Natural Areas" on 4/15/2013.
285	P1466	Dan Hobin	\N	\N	\N	\N	2016-06-07 19:56:40.540693-07	2016-06-07 19:56:40.540719-07	CEO	https://www.linkedin.com/in/danhobin, http://www.getg5.com/	Software and Techology	
286	P1241	Charles Meeker	\N	\N	\N	\N	2016-06-07 19:56:40.542601-07	2016-06-07 19:56:40.542624-07	Candidate of North Carolina Commissioner of Labor	http://www.charlesmeeker.org/	Government and Public Service	former mayor of Raleigh, North Carolina, USA
287	P804	Maryellen Hockensmith	\N	\N	\N	\N	2016-06-07 19:56:40.552208-07	2016-06-07 19:56:40.552234-07	Owner	http://www.yogacowgirls.com/about/	Agriculture and Farming	
288	P16	James Orr	\N	\N	\N	\N	2016-06-07 19:56:40.554136-07	2016-06-07 19:56:40.554158-07	Retired			
289	P1829	Leonard Meeker	\N	\N	\N	\N	2016-06-07 19:56:40.557772-07	2016-06-07 19:56:40.557795-07	Deceased		Lawyers	http://ocracokeobserver.com/2014/12/05/leonard-meeker-1916-2014-2/
290	p1804	Walter R  Miller	\N	\N	\N	\N	2016-06-07 19:56:40.56535-07	2016-06-07 19:56:40.565384-07	self-employed	Emco of oregon	Retail Services	
291	P1128	Tim Boyle	\N	\N	\N	\N	2016-06-07 19:56:40.571762-07	2016-06-07 19:56:40.571788-07	President and CEO of Columbia Sportswear	http://www.columbia.com/	Retail Services	Charlie Hales for Mayor
292	P174	David Pollock	\N	\N	\N	\N	2016-06-07 19:56:40.577597-07	2016-06-07 19:56:40.577621-07	Board of Directors, Vigor Industrial	http://vigor.net/	Industrial Manufacturing	Donated to Stand For Children and Children's Levy as well, potentially donating to curry favor with local elected officials.
293	P1802	Michael Bloomberg	\N	\N	\N	\N	2016-06-07 19:56:40.58656-07	2016-06-07 19:56:40.586586-07	Retired		Philanthropist	Climate Change Envoy for United Nations, Founder of Bloomberg Philanthopies 
294	P590	Loren Parks	\N	\N	\N	\N	2016-06-07 19:56:40.609646-07	2016-06-07 19:56:40.60968-07	Owner	http://www.parksmed.com/	Healthcare Professionals	Owner of Parks Foundation
295	P1663	Tom Hormel	\N	\N	\N	\N	2016-06-07 19:56:40.619813-07	2016-06-07 19:56:40.619838-07	Hormel foods heir		Philanthropist	GMO activism
297	P331	Winthrop McCormack	\N	\N	\N	\N	2016-06-07 19:56:40.635439-07	2016-06-07 19:56:40.635464-07	Publisher		Communication and Telecommunications	Chair of the Oregon Democratic Party’s President’s Council, Board member Oregon Council for the Humanities, Board member of Oregon Tourism Commission, Board of Overseers of Emerson College, co-founder of the Liberty Hill Foundation
298	P997	Philip Knight	\N	\N	\N	\N	2016-06-07 19:56:40.649414-07	2016-06-07 19:56:40.64944-07	Co-founder and Chairman	www.nike.com	Retail Services	Philanthropic donations to Stanford University, University of Oregon, OHSU, Education PAC, and political campaigns
299	P803	James Young	\N	\N	\N	\N	2016-06-07 19:56:40.663028-07	2016-06-07 19:56:40.663054-07	Former CEO	http://entek.com/	Industrial Manufacturing	multiple republican campaign donations
300	P1453	Jeffrey Weston	\N	\N	\N	\N	2016-06-07 19:56:40.669131-07	2016-06-07 19:56:40.669159-07				Libertarian Party of Oregon Committee member 
301	P698	Eric Lemelson	\N	\N	\N	\N	2016-06-07 19:56:40.675529-07	2016-06-07 19:56:40.675554-07	Owner, Manager	http://www.lemelsonvineyards.com/	Beer, Wine, Liquor, Tobacco, Marijuana	Vice President and Treasurer of Lamelson Foundation, Board Member, Oregon League of Conservation Voters, Board member of Potential Energy, Board member of 1000 Friends of Oregon, 
343	P1814	John Childs	John	Childs	25000.00	\N	2016-06-07 19:56:40.935042-07	2016-06-07 20:17:08.749619-07	Founder J. W. Childs Associates	www.jwchilds.com	Banking and Finance	Chairman of Kosta Browne and a director of KeyImpact, Esselte, Mattress Firm, WS Packaging and SIMCOM
342	P721	Jeff Heatherington	Jeff	Heatherington	16975.00	\N	2016-06-07 19:56:40.933099-07	2016-06-07 20:17:09.789879-07	President and CEO, FamilyCare	https://www.familycareinc.org/	Healthcare Professionals	
347	P934	John Helm	John	Helm	15800.00	\N	2016-06-07 19:56:40.956154-07	2016-06-07 20:17:09.793603-07	Manager	http://transwesternaviation.com/	Transportation	
344	P3	Alan Leiman	Alan	Leiman	11000.00	\N	2016-06-07 19:56:40.941756-07	2016-06-07 20:17:10.373426-07	Attorney	http://www.leimanlaw.com/	Lawyers	
346	P1883	Wayne Miller	Wayne	Miller	100000.00	\N	2016-06-07 19:56:40.945872-07	2016-06-07 20:17:10.761939-07	Retired	none	Construction	International Union of Operating Engineers Local 701 Misc PAC 
334	P184	Steven Naito	\N	\N	\N	\N	2016-06-07 19:56:40.899903-07	2016-06-07 19:56:40.899928-07	Lawyer	www.tnslaw.net/attorneys/steve-naito.html	Lawyers	
308	P1760	Paul W  Ables	Paul	Ables	25000.00	\N	2016-06-07 19:56:40.752459-07	2016-06-07 20:17:08.039852-07			Construction	
310	P1052	Cheryl Ables	Cheryl	Ables	5000.00	\N	2016-06-07 19:56:40.760671-07	2016-06-07 20:17:08.045012-07	Spouse Paul Ables		Construction	
324	P1928	John A Adams	John	Adams	11772.00	\N	2016-06-07 19:56:40.846436-07	2016-06-07 20:17:08.055323-07	dentist		Healthcare Professionals	
329	P1415	Carol Adler	Carol	Adler	20875.00	72	2016-06-07 19:56:40.873402-07	2016-06-07 20:17:08.063745-07	retiree		Education	
333	P1291	Donald Althoff	Donald	Althoff	10000.00	\N	2016-06-07 19:56:40.889986-07	2016-06-07 20:17:08.09368-07	Chief Executive officer Veresen Inc	http://www.vereseninc.com/	Chemical, Oil, Gas, Electric	val hoyle, arnie roblan democrats
336	P1116	Martin Alvey	Martin	Alvey	11475.00	72	2016-06-07 19:56:40.908454-07	2016-06-07 20:17:08.104171-07	Lawyer	http://martinalvey.com/	Lawyers	oregon trial lawyers association
339	P1918	Kelly Anderson	Kelly	Andersen	14095.00	53	2016-06-07 19:56:40.91847-07	2016-06-07 20:17:08.123264-07	Lawyer	andersenlaw.com/	Lawyers	
318	P1213	Julian Bell	Julian	Bell	52886.00	41	2016-06-07 19:56:40.792092-07	2016-06-07 20:17:08.363151-07	Medical Doctor		Healthcare Professionals	He ran for Democratic Secretary of State, his contributions are not listed on ORESTAR, but those are his issues listed on his website
323	P1670	Andrew Berwick Jr.	Andrew	Berwick Jr.	65000.00	\N	2016-06-07 19:56:40.836227-07	2016-06-07 20:17:08.427799-07	President & CEO	Berwick-Pacific Corporation	Real Estate	Oregonians For Higher Education Excellence; Kitzhaber 2010
337	P161	Robert M. Decker	Robert	Decker	10000.00	\N	2016-06-07 19:56:40.914452-07	2016-06-07 20:17:08.957247-07	Founder and President	http://westcaremgt.com/	Healthcare Professionals	
328	P1102	Harriet Denison	Harriet	Denison	18250.00	\N	2016-06-07 19:56:40.867751-07	2016-06-07 20:17:08.983588-07	Writer	http://travelswithharriet.org/index.html	Arts, Entertainment, Music, and Recreation	
321	P346	Daniel Deutsch	Daniel	Deutsch	24700.00	\N	2016-06-07 19:56:40.82834-07	2016-06-07 20:17:08.998714-07	Developer	http://leftbankproject.com/	Construction	
303	P1004	Dean Devlin	Dean	Devlin	48151.00	\N	2016-06-07 19:56:40.704928-07	2016-06-07 20:17:09.009514-07	Television Director/Producer	http://www.electric-entertainment.com/	Arts, Entertainment, Music, and Recreation	
309	P636	John DiLorenzo	John	DiLorenzo	35300.00	\N	2016-06-07 19:56:40.758355-07	2016-06-07 20:17:09.037338-07	Attorney and Lobbyist	http://www.dwt.com/	Lawyers	
331	P813	Margaret Doherty	Margaret	Doherty	14269.00	75	2016-06-07 19:56:40.881356-07	2016-06-07 20:17:09.058551-07	Politician/Democratic Representative	http://margaretdoherty.com/	Government and Public Service	http://www.culturaltrust.org/
314	P1620	Jody Jones	Jody	Jones	33333.00	\N	2016-06-07 19:56:40.77649-07	2016-06-07 20:17:10.07118-07	Co-Owner, Seneca Family of Companies	http://senecasawmill.com/about/becky-kathy-jody-jones/	Forestry and Timber	
341	P1911	Valerie A Johnson (Johnson Eves)	Valerie	Johnson Eves	36656.00	\N	2016-06-07 19:56:40.923178-07	2016-06-07 20:17:10.050888-07	President, D.R. Johnson Lumber Co	http://www.drjlumber.com/, http://oregonclt.com/	Forestry and Timber	Former Chair, Oregon Lands Coalition, Co-Chair Save the Salmon Coalition (http://www.oia.org/wp-content/uploads/2013/10/LookingForwardMarch-April2003.TL_.pdf), "Saint" Donor to West Linn Music and Arts Partners (http://www.musicandartspartners.org/wp-content/uploads/2013/12/Newsletter-Winter-2012.pdf)
319	P1011	Rebecca L (Becky) Jones	Rebecca	Jones	33333.00	\N	2016-06-07 19:56:40.819722-07	2016-06-07 20:17:10.074444-07	Co-Owner, Seneca Family of Companies	http://senecasawmill.com/about/becky-kathy-jody-jones/	Forestry and Timber	board member for the High Desert Museum
327	P1960	John Koza	John	Koza	65000.00	\N	2016-06-07 19:56:40.86134-07	2016-06-07 20:17:10.270546-07	Founder (Genetic Programming Inc.)	genetic-programming.com	Software and Techology	National Popular Vote (Founder)
306	P1748	James Kelly	James	Kelly	170600.00	41	2016-06-07 19:56:40.718857-07	2016-06-07 20:17:10.160278-07	Owner/Founder	www.rejuvenation.com	Retail Services	Oregon Historical Society (Donor), Oregon Business Association (Top 10 Donor),  
322	P235	Barbara Lee	Barbara	Lee	27222.00	\N	2016-06-07 19:56:40.830299-07	2016-06-07 20:17:10.348734-07	Founder	http://www.barbaraleefoundation.org/	Lobbyists and Unions	Barbara Lee Foundation
325	P1416	Debra Lee	Debra	Lee	22482.00	\N	2016-06-07 19:56:40.852773-07	2016-06-07 20:17:10.352865-07	Attorney and Executive Director	http://cnpls.org/	Lawyers	
330	P1536	Steve Lee	Steve	Lee	8610.00	\N	2016-06-07 19:56:40.879434-07	2016-06-07 20:17:10.356121-07	President of Stingray Development	http://www.stingraydevelopment.com/	Real Estate	
332	P22073	Mary Lee  Ward	Mary	Lee Ward	4800.00	\N	2016-06-07 19:56:40.887866-07	2016-06-07 20:17:10.359594-07	Retired		Philanthropist	
335	P1370	Daniel Leeds	Daniel	Leeds	5000.00	\N	2016-06-07 19:56:40.901874-07	2016-06-07 20:17:10.362859-07	President		Banking and Finance	National Public Education Support Fund, PBS, and The Enfranchisement Foundation
338	P1398	John Lees	John	Lees	8600.00	\N	2016-06-07 19:56:40.91638-07	2016-06-07 20:17:10.366431-07	Ophthalmologist	http://www.eyecareassociates.net/	Healthcare Professionals	
340	P809	Douglas LeFevre	Douglas	LeFevre	8000.00	\N	2016-06-07 19:56:40.920683-07	2016-06-07 20:17:10.370087-07	Not-employed		Philanthropist	
305	P494	Peter Lewis	Peter	Lewis	96000.00	\N	2016-06-07 19:56:40.712709-07	2016-06-07 20:17:10.412856-07	Died in 11/23/2013	https://www.progressive.com/	Banking and Finance	Chairman of the Board Progressive Auto Insurance
320	P840	Carolyn Loacker	Carolyn	Loacker	51749.00	\N	2016-06-07 19:56:40.826282-07	2016-06-07 20:17:10.46343-07	Not Employed		Lobbyists and Unions	
313	P1030	Charles Lillis	Charles	Lillis	84000.00	\N	2016-06-07 19:56:40.77463-07	2016-06-07 20:17:10.441876-07	Co-Founder & Managing Partner	LoneTree Capital Partners - No Website	Banking and Finance	
317	P1173	Leanne Littrell DiLorenzo	Leanne	Littrell DiLorenzo	74473.00	55	2016-06-07 19:56:40.790064-07	2016-06-07 20:17:10.459476-07	Founder and President	VoteERA.org	Lobbyists and Unions	
326	P1283	Vanessa Morgan	Vanessa	Morgan	23300.00	\N	2016-06-07 19:56:40.854783-07	2016-06-07 20:17:10.834846-07	Research Assistant	www.pdx.edu/esm/staff-0	Education	Apart of Natural Resource Management Professionals
312	P77	Andrew Miller	Andrew	Miller	299960.00	59	2016-06-07 19:56:40.768726-07	2016-06-07 20:17:10.758174-07	CEO	http://www.stimsonlumber.com/	Forestry and Timber	Friends of Matt Wingard, Protect The People PAC - Recall Senator Courtney, Friends of Julie Parrish,  Friends of Jodi Bailey, Oregon Transformation Project PAC, Public Employee Choice Act Committee, Friends of Dan Mason, PolitiCoach PAC  
316	P1835	J. Franklin Morse	J. Franklin	Morse	61400.00	\N	2016-06-07 19:56:40.784178-07	2016-06-07 20:17:10.866029-07	Retired Oregon Senator	www.oregonlegislature.gov/	Government and Public Service	Oregon Senator District 8
379	p650	Robert Ball	\N	\N	\N	\N	2016-06-07 19:56:41.086869-07	2016-06-07 19:56:41.086891-07	Developer	robertball.com	Real Estate	
353	P1463	William Anfuso	William	Anfuso	5000.00	\N	2016-06-07 19:56:40.988973-07	2016-06-07 20:17:08.138023-07	President Cordant Wealth Partners	cordantwealth.com	Banking and Finance	
360	P731	George Austin	George	Austin	10550.00	\N	2016-06-07 19:56:41.013801-07	2016-06-07 20:17:08.152496-07	Education Management Professional		Education	
363	P244	Stephen Babson	Stephen	Babson	37000.00	\N	2016-06-07 19:56:41.019625-07	2016-06-07 20:17:08.170411-07	Managing Director, Endeavour Capital, Inc.	www.endeavourcapital.com/	Transportation	
388	P1551	Florence Barnhart	Florence	Barnhart	36334.00	\N	2016-06-07 19:56:41.116711-07	2016-06-07 20:17:08.250919-07	Spouse phil Barnhart		Government and Public Service	
391	P1685	Brendan Barnicle	Brendan	Barnicle	28470.00	43	2016-06-07 19:56:41.122773-07	2016-06-07 20:17:08.258126-07	Research Analyst, pacific crest securities	http://www.pacific-crest.com/managers/brendan-barnicle/	Banking and Finance	
351	P1811	Mark Bocci	Mark	Bocci	30163.00	81	2016-06-07 19:56:40.984621-07	2016-06-07 20:17:08.486394-07	Attorney		Lawyers	
357	P1894	Jennifer Clark	Jennifer	Clark	30050.00	\N	2016-06-07 19:56:41.00675-07	2016-06-07 20:17:08.759712-07	Oil and Gas Investor	self employed	Chemical, Oil, Gas, Electric	
361	P916	Richard Clark	Richard	Clark	21000.00	\N	2016-06-07 19:56:41.015821-07	2016-06-07 20:17:08.763291-07	\tCoaster Properties, LLC Beaverton OR	none	Real Estate	
381	P455	Kristin Collins	Kristin	Collins	10000.00	\N	2016-06-07 19:56:41.090692-07	2016-06-07 20:17:08.81599-07	Professor of Art History	www.lclark.edu	Education	
385	P343	Truman Collins Jr	Truman	Collins Jr.	15000.00	\N	2016-06-07 19:56:41.102938-07	2016-06-07 20:17:08.823191-07	Software developer	www.mentor.com	Software and Techology	 trustee of the Collins Foundation and the Collins Medical Trust, OHSU Foundation Board of Trustees
386	P1978	Dennis Denton	DENNIS	DENTON	5000.00	\N	2016-06-07 19:56:41.108861-07	2016-06-07 20:17:08.987211-07	CEO Denton Plastics Inc.	http://www.dentonplastics.com/	Industrial Manufacturing	
389	P1249	Aaron DeShaw	Aaron	DeShaw	4875.00	54	2016-06-07 19:56:41.118693-07	2016-06-07 20:17:08.991095-07	Attorney	http://deshawlaw.com/	Lawyers	
392	P770	George Detrick	George	Detrick	5825.00	\N	2016-06-07 19:56:41.124751-07	2016-06-07 20:17:08.995088-07	CEO Brolin Corp	http://www.brolinsoftware.com/home.asp?uri=1000	Software and Techology	
380	P1866	David A. deVilleneuve	David	deVilleneuve	6500.00	\N	2016-06-07 19:56:41.088826-07	2016-06-07 20:17:09.002154-07	Attorney	http://letusfightforyou.com/	Lawyers	
393	P1563	John  Devlin	John	Devlin	7236.00	54	2016-06-07 19:56:41.126719-07	2016-06-07 20:17:09.005735-07	Attorney	http://rgdpdx.com/	Lawyers	
352	P1254	John R. Hoke III	John	Hoke III	10000.00	\N	2016-06-07 19:56:40.986588-07	2016-06-07 20:17:09.837515-07	VP Nike Design	http://www.nike.com/us/en_us/c/nikeid	Retail Services	
368	P911	Clyde Holland	Clyde	Holland	8500.00	\N	2016-06-07 19:56:41.051622-07	2016-06-07 20:17:09.841156-07	Developer	http://www.hollandpartnergroup.com/	Construction	
370	P1589	Michael Hollern	Michael	Hollern	7700.00	\N	2016-06-07 19:56:41.056058-07	2016-06-07 20:17:09.845726-07	Developer	http://brooksresources.com/	Real Estate	
372	P587	Shelda Holmes	Shelda	Holmes	8500.00	\N	2016-06-07 19:56:41.064723-07	2016-06-07 20:17:09.859266-07	Family Nurse Practioner	https://handsonmedicine.net/	Healthcare Professionals	
362	P670	Steve Holwerda	Steve	Holwerda	9900.00	\N	2016-06-07 19:56:41.01769-07	2016-06-07 20:17:09.866257-07	Chief Operating Officer	http://www.fergusonwellman.com/	Banking and Finance	
374	P373	Lee Holzman	Lee	Holzman	8629.00	\N	2016-06-07 19:56:41.068641-07	2016-06-07 20:17:09.86986-07	CEO	https://www.reliablecredit.com/	Banking and Finance	
358	P22020	Alex Honnold	Alex	Honnold	10000.00	\N	2016-06-07 19:56:41.009627-07	2016-06-07 20:17:09.882629-07	Rock Climber		Sports/Athletics	
348	P128	Nancy Lematta	Nancy	Lematta	7500.00	\N	2016-06-07 19:56:40.958217-07	2016-06-07 20:17:10.377137-07	Chairman of the Board	http://www.colheli.com/	Transportation	Portland Art Museum, Columbia Helicopters, Providence Portland Medical Foundation, Lematta Foundation, I Have a Dream Foundation
355	P627	Patrick Leonard	Patrick	Leonard	5000.00	\N	2016-06-07 19:56:40.99825-07	2016-06-07 20:17:10.383847-07	Unemployed		Philanthropist	
364	P1379	John Lesowski	John	Lesowski	6000.00	\N	2016-06-07 19:56:41.025549-07	2016-06-07 20:17:10.387633-07	Retired		Philanthropist	
366	P142	Holly Lev	Holly	Lev	25000.00	\N	2016-06-07 19:56:41.034132-07	2016-06-07 20:17:10.390892-07	Self-Employed		Lobbyists and Unions	
369	P439	Irving Levin	Irving	Levin	10000.00	\N	2016-06-07 19:56:41.053581-07	2016-06-07 20:17:10.394043-07	Chairman of Genesis Financial Solutions	http://www.genesis-fs.com/	Banking and Finance	
375	P22037	Sue Levin	Sue	Levin	5925.00	\N	2016-06-07 19:56:41.070824-07	2016-06-07 20:17:10.398195-07	CEO of Lucy Activewear	http://www.lucy.com/	Sports/Athletics	Stand for the Children
383	P1637	Barbara Levy	Barbara	Levy	21000.00	\N	2016-06-07 19:56:41.094809-07	2016-06-07 20:17:10.401836-07	Farmer		Agriculture and Farming	Eastern Oregon Women's Coalition, President
382	P951	Robert Levy	Robert	Levy	20000.00	\N	2016-06-07 19:56:41.092695-07	2016-06-07 20:17:10.405467-07	Farmer at L & L Farms LLC		Agriculture and Farming	
390	P1659	Kenneth Lewis	Kenneth	Lewis	26800.00	41	2016-06-07 19:56:41.120641-07	2016-06-07 20:17:10.409158-07	Retired Electrician		Construction	
371	P1985	Jean Martwick	Jean	Martwick	30283.00	41	2016-06-07 19:56:41.058332-07	2016-06-07 20:17:10.605588-07	Judge of the Circuit Court, 19th District, Position 1 	http://courts.oregon.gov/columbia/Pages/index.aspx	Government and Public Service	Elect Judge Jean Marie Martwick 
367	P561	Steven McGeady	Steven	McGeady	33750.00	\N	2016-06-07 19:56:41.036373-07	2016-06-07 20:17:10.676779-07	Managing Director	Drumlin Holdings, LLC	Banking and Finance	Save Outdoor School for All , Tawna Sanchez for Oregon , Kate Brown Committee, Friends of Ted Wheeler, Elect Deborah Kafoury,  \tPortlanders for Schools, Planned Parenthood PAC of Oregon, Charlie Hales for Mayor, Restore Our Natural Areas, Future PAC, House Builders, Yes on 49 
354	P189	David Nierenberg	David	Nierenberg	46000.00	\N	2016-06-07 19:56:40.991167-07	2016-06-07 20:17:10.961748-07	Founder of Nierenberg Investment Management Company	http://www.sec.gov/Archives/edgar/data/1282683/000116923208002077/d74304_13fhr.txt	Banking and Finance	Washington State Investment Board
365	P1407	Karen Packer	Karen	Packer	30996.00	141	2016-06-07 19:56:41.027881-07	2016-06-07 20:17:11.03299-07	First Vice-Chair, Democratic Party of Oregon	dpo.org	Government and Public Service	First Vice-Chair, Democratic Party of Oregon
359	P1925	Mark Parker	Mark	Parker	60000.00	\N	2016-06-07 19:56:41.011732-07	2016-06-07 20:17:11.056188-07	CEO	http://www.nike.com/us/en_us/	Retail Services	
378	P1417	Richard Parker III	Richard	Parker III	8000.00	\N	2016-06-07 19:56:41.084857-07	2016-06-07 20:17:11.063045-07	President/CEO	https://www.unitedfinance.com/	Banking and Finance	
376	P761	Richard Parker Jr.	Richard	Parker Jr.	44100.00	\N	2016-06-07 19:56:41.07298-07	2016-06-07 20:17:11.070433-07	Financial Advisor	https://www.unitedfinance.com/	Banking and Finance	
412	p99	beth bagley	\N	\N	\N	\N	2016-06-07 19:56:41.203959-07	2016-06-07 19:56:41.203984-07	Judge	courts.oregon.gov/	Lawyers	
423	P953	Dean Aldrich	Dean	Aldrich	7115.00	62	2016-06-07 19:56:41.241673-07	2016-06-07 20:17:08.074043-07	Attorney	www.aldrichlawoffice.com/	Lawyers	
435	P631	Dean Alterman	Dean	Alterman	5875.00	\N	2016-06-07 19:56:41.295182-07	2016-06-07 20:17:08.089821-07	Attorney\t Alterman Law Office 	www.farlawfirm.com/dean_alterman.php	Lawyers	
404	P718	Sheila Babbie	Sheila	Babbie	7000.00	\N	2016-06-07 19:56:41.162591-07	2016-06-07 20:17:08.163218-07	unemployed		Education	
407	P539	David Baca	David	Baca	7150.00	\N	2016-06-07 19:56:41.185212-07	2016-06-07 20:17:08.174213-07	Attorney	www.dwt.com/people/davebaca/	Lawyers	
413	P1229	Jan Baisch	Jan	Baisch	8529.00	\N	2016-06-07 19:56:41.205886-07	2016-06-07 20:17:08.184213-07	attorney	www.bctriallaw.com/	Lawyers	
399	P1483	Gwen Baldwin	Gwenn	Baldwin	8350.00	25	2016-06-07 19:56:41.139943-07	2016-06-07 20:17:08.207082-07	Business Consultant	http://www.baldwinconsulting.biz/	Communication and Telecommunications	
395	P219	John L. Ballard	John	Ballard	10000.00	\N	2016-06-07 19:56:41.131219-07	2016-06-07 20:17:08.213319-07	Attorney	http://www.attorneyballard.com/	Lawyers	
417	P940	Keith Barnes	Keith	Barnes	8700.00	\N	2016-06-07 19:56:41.213579-07	2016-06-07 20:17:08.236712-07	Organic Distillery Proprieter	http://www.bainbridgedistillers.com/	Beer, Wine, Liquor, Tobacco, Marijuana	
408	P1223	Kathryn Clarke	Kathryn	Clarke	14885.00	73	2016-06-07 19:56:41.187286-07	2016-06-07 20:17:08.769905-07	attorney	www.oregontriallawyers.org	Lawyers	
438	P1850	Beverly Cleary	Beverly	Cleary	10000.00	\N	2016-06-07 19:56:41.306796-07	2016-06-07 20:17:08.777009-07	Author	beverlycleary.com	Arts, Entertainment, Music, and Recreation	
415	P1168	Quinn Delaney	Quinn	Delaney	5000.00	\N	2016-06-07 19:56:41.209724-07	2016-06-07 20:17:08.967102-07	Founder and President of Akonadi Foundation	http://akonadi.org/	Philanthropist	
396	P762	Spencer Dick	Spencer	Dick	5000.00	\N	2016-06-07 19:56:41.133335-07	2016-06-07 20:17:09.013737-07	CEO TigerStop	http://www.tigerstop.com/	Industrial Manufacturing	
410	P191	Mark Dodson	Mark	Dodson	6600.00	\N	2016-06-07 19:56:41.192691-07	2016-06-07 20:17:09.054974-07	Retired; former CEO of NW Natural Gas	https://www.nwnatural.com/	Chemical, Oil, Gas, Electric	Medical Teams International; Chair, Executive Committee
422	P1331	Matthew Donegan	Matthew	Donegan	5700.00	\N	2016-06-07 19:56:41.23957-07	2016-06-07 20:17:09.065189-07	Former Co-Founder & Co-President of Forest Capital Partners	http://www.forestcap.com/	Forestry and Timber	
424	P22056	Timothy J. Hershey	Timothy	Hershey	5000.00	\N	2016-06-07 19:56:41.243693-07	2016-06-07 20:17:09.8104-07	VP Global Merchandising at Nike	http://www.nike.com/us/en_us/	Retail Services	
427	P22033	Mark Hettervig	Mark	Hettervig	7000.00	\N	2016-06-07 19:56:41.26237-07	2016-06-07 20:17:09.813941-07	Self Employed; Northern Lights Wreath Company	n/a	Retail Services	
433	P1144	Stephen Houze	Stephen	Houze	8750.00	\N	2016-06-07 19:56:41.282846-07	2016-06-07 20:17:09.903199-07	Criminal Defense Lawyer	http://www.shouze.com/	Lawyers	Member, Board of Directors, Metropolitan Public Defender (according to his website)
437	P1956	Steve Hughes	Steve	Hughes	11000.00	\N	2016-06-07 19:56:41.303607-07	2016-06-07 20:17:09.913497-07	 \tOrganizer, AFSCME Council 75 Portland OR 	http://www.oregonafscme.com/	Lobbyists and Unions	
398	P1908	Thomas Johnston	Thomas	Johnston	30379.00	89	2016-06-07 19:56:41.137465-07	2016-06-07 20:17:10.057713-07	Councilor at large, Forest Grove (retired policeman, Forest Grove)	http://dpo.org/people/thomas-johnston	Government and Public Service	
434	P217	Nathaniel Klipper	Nathaniel	Klipper	25000.00	\N	2016-06-07 19:56:41.288909-07	2016-06-07 20:17:10.240668-07	Portfolio Manager at ADK Capital	N/A (ADK Capital LLC)	Banking and Finance	Australia's Renewable Energy Target (Investor), 
421	P387	Howard Koff	Howard	Koff	25000.00	\N	2016-06-07 19:56:41.225295-07	2016-06-07 20:17:10.25456-07	President of Westbury Enterprises	westburyent.com	Banking and Finance	Menninger Foundation (Topeka, Kansas) Board of Trustees, D.A.R.E. California Executive Committee Member, Cedars Sinai Hospital Associates 
394	P1356	Kathleen Lewis	Kathleen	Lewis	9550.00	\N	2016-06-07 19:56:41.128836-07	2016-06-07 20:17:10.416512-07	Film Producer for Embargo	http://www.embargofilms.com/	Arts, Entertainment, Music, and Recreation	
405	P405	E. Randolph Labbe	Randolph	Labbe	34250.00	\N	2016-06-07 19:56:41.168601-07	2016-06-07 20:17:10.300573-07	President of Kerr Pacific Corporation		Food and Agribusiness	Reed College Board of Trustees (Secretary) Oregon Board of Trustees (Chair Emeritus), Deschutes River Conservancy (Donor), The Freshwater Trust (Donor)
397	P1319	Christine Lewis	Christine	Lewis	5860.00	\N	2016-06-07 19:56:41.135326-07	2016-06-07 20:17:10.420505-07	Campaign Manager for Jules Bailey	http://www.julesbailey.com/	Government and Public Service	
411	P336	Kate Lieber	Kate	Lieber	6374.00	\N	2016-06-07 19:56:41.199376-07	2016-06-07 20:17:10.430618-07	Attorney at PCC	https://www.pcc.edu/scripts/sdquery.pl?all=kate.lieber15%40pcc.edu	Education	
414	P325	Ross Lienhart	Ross	Lienhart	31640.00	25	2016-06-07 19:56:41.207818-07	2016-06-07 20:17:10.434516-07	Managing Member ELF Investments, LLC	http://www.pccstructurals.com/home/	Banking and Finance	
416	P1472	Eric Lindauer	Eric	Lindauer	4600.00	\N	2016-06-07 19:56:41.211699-07	2016-06-07 20:17:10.445832-07	Mediator	http://www.lindauermediation.com/	Lawyers	
419	P1723	Susan Linder	Susan	Linder	19000.00	\N	2016-06-07 19:56:41.221394-07	2016-06-07 20:17:10.449941-07	Unemployed		Philanthropist	
436	P630	Chris Maletis	Chris	Maletis	41750.00	\N	2016-06-07 19:56:41.297181-07	2016-06-07 20:17:10.539679-07	President of Maletis Brewing	http://www.maletis.com/	Beer, Wine, Liquor, Tobacco, Marijuana	
403	P22005	Erika Miller	Erika	Miller	28489.00	\N	2016-06-07 19:56:41.156361-07	2016-06-07 20:17:10.765661-07	Retired	None	Philanthropist	Boylston for Oregon, Friends of Allen Alley, Buehler For a United Oregon, 
431	P1342	Chris Maletis III	Chris	Maletis III	63500.00	\N	2016-06-07 19:56:41.2788-07	2016-06-07 20:17:10.551882-07	Co-Owner of Langden Farms Golf Club	http://www.langdonfarms.com/	Arts, Entertainment, Music, and Recreation	
418	P690	Norris Monson	Norris	Monson	14650.00	\N	2016-06-07 19:56:41.215439-07	2016-06-07 20:17:10.79245-07	CEO	http://www.cultivatedindustries.com/	Beer, Wine, Liquor, Tobacco, Marijuana	Oregon Cannabis PAC
430	P937	Cheryl Munro	Cheryl	Munro	14059.00	\N	2016-06-07 19:56:41.276737-07	2016-06-07 20:17:10.872892-07	Treatment Coordinator	www.lakeoswegobraces.com/	Healthcare Professionals	
409	P131	Scott Nelson	Scott	Nelson	14860.00	\N	2016-06-07 19:56:41.190595-07	2016-06-07 20:17:10.917915-07	Lobbyst and Former Jobs & Economy Advisor to Governor  Kitzhaber 	https://web.archive.org/web/20130725163559/http://dasapp.oregon.gov/statephonebook/display.asp?agency=12100&division=12108	Government and Public Service	
406	P548	Jane Paulson	Jane	Paulson	35772.00	33	2016-06-07 19:56:41.178969-07	2016-06-07 20:17:11.09373-07	Lawyer	http://www.paulsoncoletti.com/	Lawyers	
400	P993	Charles Paulson	Charles	Paulson	35760.00	36	2016-06-07 19:56:41.142103-07	2016-06-07 20:17:11.097318-07	Lawyer	http://www.paulsoncoletti.com/	Lawyers	
428	P1063	Marcia  Petty	Marcia	Petty	30984.00	\N	2016-06-07 19:56:41.264453-07	2016-06-07 20:17:11.176183-07	Not Employed		Arts, Entertainment, Music, and Recreation	
518	p1282	john banes	\N	\N	\N	\N	2016-06-07 19:56:41.675776-07	2016-06-07 19:56:41.675798-07	self-employed		Beer, Wine, Liquor, Tobacco, Marijuana	
446	P1573	Michael Amaranthus	Michael	Amaranthus	5000.00	\N	2016-06-07 19:56:41.366176-07	2016-06-07 20:17:08.111533-07	Scientist/Chief financial officer	Mycorrhizal Applications	Food and Agribusiness	
450	P1047	Jamsheed Ameri	Jamsheed	Ameri	5000.00	\N	2016-06-07 19:56:41.386997-07	2016-06-07 20:17:08.115176-07	Real Estate Investor	www.kaproperties.com	Real Estate	
454	P1800	Mike Anderly	Mike	Anderly	5000.00	\N	2016-06-07 19:56:41.395301-07	2016-06-07 20:17:08.119182-07	Self-Employed	www.cloudcitygardens.com/	Beer, Wine, Liquor, Tobacco, Marijuana	
471	P991	James Bentz	James	Bentz	20000.00	\N	2016-06-07 19:56:41.481107-07	2016-06-07 20:17:08.377858-07	Rancher	Self-Employed	Agriculture and Farming	
448	P353	Katherine Bradley	Katherine	Bradley	5570.00	\N	2016-06-07 19:56:41.370195-07	2016-06-07 20:17:08.507695-07	Clinical Associate Professor	http://www.ohsu.edu/xd/	Healthcare Professionals	Evaluator, Interprofessional Care Access Network; HRSA, Bureau of Health Professions, Nursing Education, Practice, Quality, and Retention Grant (current)
469	P1134	Eileen Brady	Eileen	Brady	16600.00	30	2016-06-07 19:56:41.469165-07	2016-06-07 20:17:08.51446-07	Advisor/Founding Board Member	https://ecodistricts.org/	Government and Public Service	https://ecodistricts.org/about/vision-mission-values/
473	P1150	Peter Bragdon	Peter	Bragdon	5350.00	\N	2016-06-07 19:56:41.488971-07	2016-06-07 20:17:08.518024-07	Executive Vice President, Chief Administrative Officer and General Counsel at Columbia Sportswear Company	http://www.columbia.com/	Retail Services	https://www.facebook.com/portlandersforschools/
447	P546	Christopher Clipper	Christopher	Clipper	10000.00	\N	2016-06-07 19:56:41.368181-07	2016-06-07 20:17:08.783805-07	VP, Global Planning & Development	www.nike.com	Sports/Athletics	
453	P1580	Leigh Colby	Leigh	Colby	10280.00	\N	2016-06-07 19:56:41.392949-07	2016-06-07 20:17:08.797786-07	Dentist	www.oregondentalcare.com	Healthcare Professionals	
463	P1508	John Coletti	John	Coletti	16089.00	30	2016-06-07 19:56:41.423109-07	2016-06-07 20:17:08.804916-07	attorney	www.paulsoncoletti.com	Lawyers	Board member of the Make-A-Wish Foundation
517	P955	Leslie Elms	Leslie	Elms	5550.00	\N	2016-06-07 19:56:41.673914-07	2016-06-07 20:17:09.197692-07	Optometric Physician	http://www.bakervisionclinic.com/	Healthcare Professionals	
458	P1823	Megan Hull	Megan	Hull	19500.00	\N	2016-06-07 19:56:41.404148-07	2016-06-07 20:17:09.920242-07	Independent Financial Consultant	https://www.linkedin.com/in/megan-hull-7b8263a	Banking and Finance	Board member, Hull Family Foundation, http://www.hullfamilyfoundation.org/about.asp
456	P874	Judy Ilg	Judy	Ilg	10000.00	\N	2016-06-07 19:56:41.399837-07	2016-06-07 20:17:09.936988-07	Homemaker; husband's/family's business is Kalberer Co., a Portland property management firm	No website, referred to in this PBJ article: http://www.bizjournals.com/portland/stories/2010/05/03/story1.html	Real Estate	
465	P1016	Donald Jacobs	Donald	Jacobs	13390.00	71	2016-06-07 19:56:41.430882-07	2016-06-07 20:17:09.957504-07	Attorney, Northwest Injury Law Center	http://www.nwinjurylawcenter.com/	Lawyers	
470	P1650	Roy Jay	Roy	Jay	11865.00	32	2016-06-07 19:56:41.475094-07	2016-06-07 20:17:09.983117-07	Entrepreneur, Roy Jay Enterprises, GIACOMETTI PARTNERS LLC 	http://www.royjay.com/	Banking and Finance	African American Chamber of Commerce, Project Clean Slate
451	P1320	Sarah St. John	Sarah	John	10000.00	\N	2016-06-07 19:56:41.388905-07	2016-06-07 20:17:09.992742-07	Co-owner, Sons of Agronomy and Spark Marketing, LLC	http://www.sonsofagronomy.com/, https://www.instagram.com/sonsofagronomy/	Beer, Wine, Liquor, Tobacco, Marijuana	
467	P1776	Ronni Lacroute	Ronni	Lacroute	19860.00	\N	2016-06-07 19:56:41.448181-07	2016-06-07 20:17:10.304325-07	Co-Founder at WillaKenzie Estate	willakenzie.com	Beer, Wine, Liquor, Tobacco, Marijuana	Artist Repertory Theater (sponsor), Chamber Music Northwest (sponsor), Oregon Public Radio (sponsor), YCAP Yamhill Regional Food Bank (sponsor), Linfield College (trustee)
449	P1419	Mark Long	Mark	Long	13850.00	31	2016-06-07 19:56:41.38114-07	2016-06-07 20:17:10.473253-07	Attorney at Schwabe, Williamson & Wyatt	http://www.schwabe.com/	Lawyers	
452	P1450	Linda Love	Linda	Love	33988.00	56	2016-06-07 19:56:41.391003-07	2016-06-07 20:17:10.483023-07	Attorney at Williams, Love, O'Leary & Powers, PC	http://www.wdolaw.com/	Lawyers	
455	P1562	Sean Luse	Sean	Luse	36500.00	\N	2016-06-07 19:56:41.397602-07	2016-06-07 20:17:10.492962-07	Retail Management	http://www.mybpg.com/	Healthcare Professionals	
457	P952	Mark Madden	Mark	Madden	12600.00	\N	2016-06-07 19:56:41.402191-07	2016-06-07 20:17:10.518809-07	Developer		Real Estate	
459	P857	Shirley Malcolm	Shirley	Malcolm	25150.00	\N	2016-06-07 19:56:41.411086-07	2016-06-07 20:17:10.528065-07	Doctor	https://www.laclinicahealth.org/Page.asp?NavID=234	Healthcare Professionals	
440	P1969	Tom Maletis	Tom	Maletis	27750.00	\N	2016-06-07 19:56:41.311216-07	2016-06-07 20:17:10.543211-07	Co-Owner of Langdon Farms Golf Course	http://www.langdonfarms.com/	Arts, Entertainment, Music, and Recreation	
460	P1354	Julie Mancini	Julie	Mancini	28300.00	33	2016-06-07 19:56:41.413066-07	2016-06-07 20:17:10.56497-07	Executive Director	http://www.collegepossible.org/	Education	
462	P683	Phillip Margolin	Phillip	Margolin	21056.00	33	2016-06-07 19:56:41.421193-07	2016-06-07 20:17:10.571249-07	Best Selling Author	http://www.phillipmargolin.com/about-phillip-margolin.php	Arts, Entertainment, Music, and Recreation	
442	P753	Melvin Jr. Mark	Melvin	Mark Jr.	10000.00	\N	2016-06-07 19:56:41.323534-07	2016-06-07 20:17:10.579166-07	Real estate developer 	http://www.melvinmarkcompanies.com/	Real Estate	Schools and Arts Together, Charlie Hales for Mayor, Nick Fish for City Council, Committee to Elect Betsy Johnson,  Oregon History Yes 
472	P1555	Dennis Marsh	Dennis	Marsh	23994.00	\N	2016-06-07 19:56:41.483085-07	2016-06-07 20:17:10.591825-07	Retired	Buck Medical Services	Healthcare Professionals	Friends of Jim Bernard, Save Gladstone, Friends of Martha Schrader, Citizens for 1,000,000. Building Vote   
441	P1882	Roy Moore	Roy	Moore	13650.00	\N	2016-06-07 19:56:41.317354-07	2016-06-07 20:17:10.802727-07	President	www.themeigroup.com/MEI_new.html	Construction	Member of Northwest Utility Contractors Association PAC
468	P702	John Morgan	John	Morgan	12000.00	\N	2016-06-07 19:56:41.463281-07	2016-06-07 20:17:10.8386-07	CFO	www.argus-health.com	Healthcare Professionals	Board Member at Cambia Health Solutions
464	P715	Mark Morrell	Mark	Morrell	12175.00	32	2016-06-07 19:56:41.428856-07	2016-06-07 20:17:10.855495-07	Attorney		Lawyers	
461	P391	Douglas Obletz	Douglas	Obletz	16100.00	33	2016-06-07 19:56:41.419221-07	2016-06-07 20:17:10.993158-07	President	http://www.shielsobletzjohnsen.com/	Construction	
516	p1615	Scott Ballo	\N	\N	\N	\N	2016-06-07 19:56:41.672054-07	2016-06-07 19:56:41.672076-07	Sales	www.morelink.biz/	Retail Services	
490	P1583	Brad  Avakian	Brad	Avakian	4798.00	67	2016-06-07 19:56:41.580011-07	2016-06-07 20:17:08.156039-07	Politician	www.bradavakian.com/	Government and Public Service	
493	P1493	Paula Babb	Paula	Babb	5240.00	\N	2016-06-07 19:56:41.585873-07	2016-06-07 20:17:08.159769-07	CEO	Delta Sand and Gravel Eugene	Industrial Manufacturing	
495	P1160	Lloyd Babler Jr.	Lloyd	Babler Jr.	5000.00	\N	2016-06-07 19:56:41.589925-07	2016-06-07 20:17:08.166721-07	Truck Driver		Transportation	
499	P87	Michelle Bain	Michelle	Bain	6000.00	\N	2016-06-07 19:56:41.606044-07	2016-06-07 20:17:08.180767-07	Planner		Retail Services	
505	P957	Gary  Baker	Gary	Baker	5000.00	\N	2016-06-07 19:56:41.638121-07	2016-06-07 20:17:08.199371-07	CEO, Baker Rock Resources	www.baker-rock.com/	Construction	
507	P1698	Nancy Baker	Nancy	Baker	5000.00	\N	2016-06-07 19:56:41.642253-07	2016-06-07 20:17:08.203487-07	Policy Analysis - Attorney, \tPublic Power Council 	www.ppcpdx.org/ab-staff.html	Lawyers	
511	P1636	Robert  Ballin	Robert	Ballin	5250.00	\N	2016-06-07 19:56:41.658473-07	2016-06-07 20:17:08.217169-07	Insurance agent, Ward Insurance	www.wardinsurance.net/	Lodging, Tourism, Restaurants	
514	P1923	Connie Balmer	Connie	Ballmer	5000.00	\N	2016-06-07 19:56:41.668296-07	2016-06-07 20:17:08.2207-07	community volunteer and Chair of philanthropy	https://trustees.uoregon.edu/board-member/connie-ballmer	Education	
508	P1181	Chris Barreto	Chris	Barreto	6596.00	\N	2016-06-07 19:56:41.644147-07	2016-06-07 20:17:08.27641-07	Co-Owner	http://barretomfg.com/	Industrial Manufacturing	Associate Director of Willamette Valley Concert Band
488	P1761	Michael Bloom	Michael	Bloom	17440.00	\N	2016-06-07 19:56:41.57581-07	2016-06-07 20:17:08.469824-07	Attorney	http://bloompc.com/	Lawyers	
480	P685	James Bisenius	James	Bisenius	36150.00	\N	2016-06-07 19:56:41.551232-07	2016-06-07 20:17:08.444848-07	nvestment Counselor & Chief Investment Officer	N/A (Common Sense Investment Mgmt.)	Banking and Finance	
494	P1221	Pamela Bloom	Pamela	Bloom	4850.00	\N	2016-06-07 19:56:41.587846-07	2016-06-07 20:17:08.473534-07	President	http://bbleasingco.com/	Construction	
474	P22011	T. B. Dame	T.B.	Dame	11850.00	\N	2016-06-07 19:56:41.499528-07	2016-06-07 20:17:08.905427-07	President	williamsanddane.com	Real Estate	Advisory Board of Portland State University’s School of Urban Affairs and Planning, Vice Chairman of a Project Apprentice Committee that promotes union apprenticeships for women and ethnic minorities,  serves on the Board of Portland State University’s First Stop Portland program
487	P22017	Cynthia L Davis	Cynthia	Davis	10000.00	\N	2016-06-07 19:56:41.573428-07	2016-06-07 20:17:08.923558-07	President	www.nike.com	Sports/Athletics	Vice President of The Ladies Professional Golf Association (LPGA). Chief Executive Officer and President of The Arnold Palmer Golf Company.  Independent Director of Buffalo Wild Wings.  Independent Director of Kennametal Inc. Chairman of the National Golf Foundation. 
492	P680	 Matthew Day	Matthew	Day	20000.00	\N	2016-06-07 19:56:41.583945-07	2016-06-07 20:17:08.939499-07	owner	none; Matthew and Lesley day group day care center	Healthcare Professionals	
501	P22013	Howard M. Day	Howard	Day	10500.00	\N	2016-06-07 19:56:41.614018-07	2016-06-07 20:17:08.944242-07	President	www.hookercreek.net	Construction	
482	P129	Ann Edlen	Ann	Edlen	29950.00	\N	2016-06-07 19:56:41.559544-07	2016-06-07 20:17:09.167946-07	Managing Partner 	http://thinkjoule.com/	Marketing and Creative Agencies	
484	P558	Mark Edlen	Mark	Edlen	17050.00	\N	2016-06-07 19:56:41.563575-07	2016-06-07 20:17:09.171557-07	Managing Partner	http://www.gerdingedlen.com/	Real Estate	
489	P318	Amy Edwards	Amy	Edwards	6395.00	34	2016-06-07 19:56:41.577922-07	2016-06-07 20:17:09.17535-07	Partner		Lawyers	
491	P202	Vernon Egge	Vernon	Egge	27536.00	\N	2016-06-07 19:56:41.581988-07	2016-06-07 20:17:09.179247-07	Owner	http://www.eugenesand.com/, http://crqrocks.com/	Construction	
496	P890	Jay Eisenhofer	Jay	Eisenhofer	5000.00	\N	2016-06-07 19:56:41.592089-07	2016-06-07 20:17:09.182953-07	Managing Director, Attorney	http://www.gelaw.com/	Lawyers	
506	P276	Fuad El-Hibri	Fuad	El-Hibri	10000.00	\N	2016-06-07 19:56:41.640294-07	2016-06-07 20:17:09.186378-07	Director	http://eastwestprotection.com/	Banking and Finance	
512	P22053	Sean Eldridge	Sean	Eldridge	5000.00	\N	2016-06-07 19:56:41.660416-07	2016-06-07 20:17:09.189844-07	Investor	http://www.hudsonriverventures.com/	Banking and Finance	
515	P948	Kenneth Elmore	Kenneth	Elmore	6255.00	72	2016-06-07 19:56:41.670166-07	2016-06-07 20:17:09.193862-07	Attorney	http://jeslaw.com/	Lawyers	
476	P1179	Neil Jackson	Neil	Jackson	9956.00	77	2016-06-07 19:56:41.519973-07	2016-06-07 20:17:09.950638-07	Attorney at Neil Jackson Attorney LLC	https://www.linkedin.com/in/neil-jackson-a3995556	Lawyers	
510	P1726	Ed King	Ed	King	11355.00	\N	2016-06-07 19:56:41.656531-07	2016-06-07 20:17:10.22093-07	Partner/CEO at King Estate Winery 	kingestate.com	Beer, Wine, Liquor, Tobacco, Marijuana	
497	P568	Wayne Kingsley	Wayne	Kingsley	19250.00	\N	2016-06-07 19:56:41.594003-07	2016-06-07 20:17:10.224675-07	General Manager of Portland Spirit	portlandspirit.com	Lodging, Tourism, Restaurants	Portland Business Alliance (board member), Central Eastside Industrial Council (board member), Northwest Pipe (board member), 
479	P1028	Stephen McCarthy	Stephen	McCarthy	23800.00	\N	2016-06-07 19:56:41.541481-07	2016-06-07 20:17:10.635125-07	Distiller	http://www.clearcreekdistillery.com/	Beer, Wine, Liquor, Tobacco, Marijuana	Kate Brown Committee, Novick for Portland, Committee to Elect Brad Avakian, Kitzhaber for Governor,  \tNew Approach Oregon, Restore Our Natural Areas   
477	P796	Ellison C. Morgan	Ellison	Morgan	10000.00	\N	2016-06-07 19:56:41.522203-07	2016-06-07 20:17:10.841901-07	Chief Executive Officer and Chairman	No URL for 2030 Investors LLC	Banking and Finance	Director at Sirena Apparel Group
498	P872	Mike Nearman	Mike	Nearman	10031.00	\N	2016-06-07 19:56:41.604063-07	2016-06-07 20:17:10.907473-07	Oregon House Representative - District 23	www.oregonlegislature.gov/	Government and Public Service	precinct committee person for Polk County Republican party
485	P288	Willie Nelson	Willie	Nelson	10600.00	\N	2016-06-07 19:56:41.565545-07	2016-06-07 20:17:10.921547-07	Singer & Songwritier	www.willienelson.com/	Arts, Entertainment, Music, and Recreation	Owner of Willie's Reserve
509	P1889	Linda Nicholes	Linda	Nicholes	10635.00	28	2016-06-07 19:56:41.650298-07	2016-06-07 20:17:10.943935-07	Retired Orange County Superior Court Reporter		Government and Public Service	Board of Advisors for Ocean Defenders Alliance
503	P167	Craig Nichols	Craig	Nichols	11973.00	63	2016-06-07 19:56:41.61812-07	2016-06-07 20:17:10.947847-07	Attorney & Founder	www.thenicholslawgroup.com	Lawyers	Board of Directors for the Oregon Trial Lawyers Association
481	P1049	Deborah Noble	Deborah	Noble	12272.00	41	2016-06-07 19:56:41.553202-07	2016-06-07 20:17:10.971973-07	Owner	www.westwindfp.com/index.html	Forestry and Timber	Founder of Be Noble Foundation
483	P589	David J Orr	Rosanna	Orr	15000.00	\N	2016-06-07 19:56:41.561534-07	2016-06-07 20:17:11.009827-07	Deputy District Attorney	http://jacksoncountyor.org/da	Lawyers	
475	P665	Lynn Partin	Lynn	Partin	11775.00	26	2016-06-07 19:56:41.509964-07	2016-06-07 20:17:11.080017-07	Lobbyist / Affordable Housing Advocate	http://www.partinco.com/	Industrial Manufacturing	
504	P1706	Eric Paulson	Eric	Paulson	19750.00	\N	2016-06-07 19:56:41.624158-07	2016-06-07 20:17:11.10169-07	President and CEO	http://www.lektro.com/	Industrial Manufacturing	
550	p482	walter gorman	\N	\N	\N	\N	2016-06-07 19:56:41.823427-07	2016-06-07 19:56:41.823451-07	retired		Lobbyists and Unions	
554	p1953	walt gorman	\N	\N	\N	\N	2016-06-07 19:56:41.83155-07	2016-06-07 19:56:41.831572-07	Director 	www.olcv.org/board-of-directors/	Lobbyists and Unions	
532	P1155	George Anderson	George	Anderson	5690.00	\N	2016-06-07 19:56:41.717362-07	2016-06-07 20:17:08.130661-07	Janitor, \tPortland Habilitation Ctr	https://www.phcnw.com/	Retail Services	
523	P1082	Laura Barnhart	Laura	Barnhart	5000.00	\N	2016-06-07 19:56:41.690342-07	2016-06-07 20:17:08.25447-07			Government and Public Service	
524	P1329	Lawrence Baron	Lawrence	Baron	5443.00	\N	2016-06-07 19:56:41.692886-07	2016-06-07 20:17:08.26165-07	Attorney at Law 	www.baronlawfirm.com/	Lawyers	
526	P249	Stuart Barr	Stuart	Barr	14000.00	\N	2016-06-07 19:56:41.696798-07	2016-06-07 20:17:08.265197-07	Owner/Operator - Industrial Finishes\t	industrialfinishes.com/our-office/our-company/	Industrial Manufacturing	
529	P634	Rachael Barry-Dame	Rachael	Barry-Dame	5105.00	\N	2016-06-07 19:56:41.707073-07	2016-06-07 20:17:08.283822-07	Executive Director	http://www.safeofcolumbiacounty.org/	Government and Public Service	
537	P880	Richard Barth	Richard	Barth	10250.00	\N	2016-06-07 19:56:41.74858-07	2016-06-07 20:17:08.292366-07	Retired, former Controller	https://www.rambus.com/	Software and Techology	Committee Member of The Ashland Fiber Network Options Committee
543	P1996	W Scott Bartlett	Scott	Bartlett	8725.00	\N	2016-06-07 19:56:41.801688-07	2016-06-07 20:17:08.296086-07	Investor, Political Consultant		Government and Public Service	
544	P1430	Jeff Barton	Jeff	Barton	8500.00	57	2016-06-07 19:56:41.803688-07	2016-06-07 20:17:08.299701-07	Vice President/Insurance Agency	https://www.statefarm.com/	Transportation	
547	P197	Brent Barton	Brent	Barton	4766.00	59	2016-06-07 19:56:41.809591-07	2016-06-07 20:17:08.303593-07	Attorney	http://bartontrialattorneys.com/	Lawyers	served on the board of directors of the Oregon Bus Project (Engages young people in progressive politics)
552	P1742	Alan Bates	Alan	Bates	6050.00	\N	2016-06-07 19:56:41.82729-07	2016-06-07 20:17:08.319824-07	Senator & Osteopathic Physician 	https://www.oregonlegislature.gov/bates	Government and Public Service	
555	P791	Ray Batra	Ray	Batra	5978.00	\N	2016-06-07 19:56:41.833433-07	2016-06-07 20:17:08.323532-07	Gas Station Owner		Chemical, Oil, Gas, Electric	
559	P154	Margaret Bear	Margaret	Bear	4785.00	\N	2016-06-07 19:56:41.857858-07	2016-06-07 20:17:08.337653-07	Business Manager	http://www.pattilloconstruction.com/	Construction	
563	P22074	Peter Bechen	Peter	Bechen	4750.00	\N	2016-06-07 19:56:41.865475-07	2016-06-07 20:17:08.34877-07	CEO	http://www.pactrust.com/	Real Estate	
522	P1346	Cook Thomas	Thomas	Cook	5000.00	\N	2016-06-07 19:56:41.688066-07	2016-06-07 20:17:08.860485-07	Executive Manager	www.pacificbells.com	Food and Agribusiness	
525	P147	Roger Cooke	Roger	Cooke	8400.00	\N	2016-06-07 19:56:41.694886-07	2016-06-07 20:17:08.864383-07	attorney	self employed	Lawyers	
538	P499	Ryan Covey	Ryan	Covey	8500.00	\N	2016-06-07 19:56:41.754749-07	2016-06-07 20:17:08.876118-07	Electrician	unemployed	Chemical, Oil, Gas, Electric	
542	P1189	Crooks Sarah	Sarah	Crooks	5500.00	\N	2016-06-07 19:56:41.7916-07	2016-06-07 20:17:08.879906-07	Attorney	www.perkinscoie.com	Lawyers	Volunteer attorney for Legal Aid Services of Oregon representing victims of domestic violence in obtaining restraining orders. Also involved with the American Bar Association, the Multnomah Bar Association (past President), and Oregon Women Lawyers (past President, Campaign for Equal Justice, Board Member, Vice President, 2008 - present.
546	P789	David Crowell	David	Crowell	6000.00	\N	2016-06-07 19:56:41.807587-07	2016-06-07 20:17:08.883585-07	Investor	self employed	Banking and Finance	
557	P954	Cortlandt Cuffee	Cortlandt	Cuffee	6020.00	\N	2016-06-07 19:56:41.846109-07	2016-06-07 20:17:08.890251-07	Local sales manager	www.kgw.com	Arts, Entertainment, Music, and Recreation	Board Member Self Enhancement, Inc., Board Chairman Z-Man Scholarship Foundation, Board Member Inukai Family Foundation
560	P330	Richard Cundiff	Richard	Cundiff	4730.00	84	2016-06-07 19:56:41.859801-07	2016-06-07 20:17:08.894359-07	Substitute teacher	www.lesd.k12.or.us	Education	
519	P542	Regina Davis	Regina	Davis	7250.00	\N	2016-06-07 19:56:41.677708-07	2016-06-07 20:17:08.928235-07	Research Assistant Project Coordinator	dhmresearch.com	Marketing and Creative Agencies	
530	P410	John Emrick	John	Emrick	9750.00	25	2016-06-07 19:56:41.708991-07	2016-06-07 20:17:09.204281-07	CEO	http://normthompson.blair.com/	Retail Services	
536	P8	Stephen English	Stephen	English	7500.00	\N	2016-06-07 19:56:41.746636-07	2016-06-07 20:17:09.207889-07	Partner	www.perkinscoie.com	Lawyers	
551	P678	Edward Epstein	Edward	Epstein	8050.00	\N	2016-06-07 19:56:41.82532-07	2016-06-07 20:17:09.214405-07	Retired Partner		Lawyers	
558	P867	Paul Erickson	Paul	Erickson	8831.00	63	2016-06-07 19:56:41.855942-07	2016-06-07 20:17:09.218325-07	Retired Principal		Education	
562	P1120	Christy Eugenis	Christy	Eugenis	35425.00	\N	2016-06-07 19:56:41.863567-07	2016-06-07 20:17:09.221972-07	Owner	http://www.newvillages.com/	Real Estate	
548	P696	Hala Gores	Hala	Gores	16193.00	80	2016-06-07 19:56:41.81554-07	2016-06-07 20:17:09.582506-07	Attorney\t	www.goreslaw.com/	Lawyers	
540	P1425	Tom  Kelly	Tom	Kelly	10679.00	39	2016-06-07 19:56:41.767026-07	2016-06-07 20:17:10.150141-07	President at Neil Kelly Co.	neilkelly.com	Local Craftsmen and Artisans	Portland Development Commission Chair, Oregon Remodelers Association (past President/Chairman), Columbia Riverkeeper (past Board Member), Oregon Business Association (Founding Board Chairman) 
534	P1166	Christopher Kelly	Christopher	Kelly	10000.00	\N	2016-06-07 19:56:41.72956-07	2016-06-07 20:17:10.16384-07	Investor, formerly a lawyer	Self-Employed	Banking and Finance	Georgetown University Board of Regents, New Leaders Council (National Board Chairman), Progressive Policy Institute (Board of Trustees), San Francisco 49ers Academy (Board of Directors)
533	P742	Richard Michaelson	Richard	Michaelson	21700.00	\N	2016-06-07 19:56:41.719384-07	2016-06-07 20:17:10.745792-07	real estate developer	http://www.icppdx.com/	Real Estate	Novick for Portland, Committee to Elect Brad Avakian, Charlie Hales for Mayor, Outdoor School for All PAC,  \tCommittee for Safe and Successful Children 
553	P402	Paul Kerley	Paul	Kerley	12434.00	\N	2016-06-07 19:56:41.829578-07	2016-06-07 20:17:10.193422-07	Owner/President at Commercial Property Resources, Inc.	N/A (Commercial Property Resources, Inc.)	Real Estate	
539	P999	John Miller	John	Miller	20526.00	\N	2016-06-07 19:56:41.756885-07	2016-06-07 20:17:10.769305-07	Urban Design/Development	http://wildwoodco.com/	Construction	Kate Brown Committee, Friends of Jules, Kitzhaber 2010, Oregonians for Water, Parks and Wildlife - A Project of the Conservation Campaign
521	P1505	Mary Nolan	Mary	Nolan	10480.00	39	2016-06-07 19:56:41.681712-07	2016-06-07 20:17:10.975626-07	Executive Director	www.ppaoregon.org	Lobbyists and Unions	Adjunct Professor at Oregon State University
528	P1873	Brian Obie	Brian	Obie	10250.00	\N	2016-06-07 19:56:41.700709-07	2016-06-07 20:17:10.989676-07	Managing Partner	http://www.5stmarket.com/	Retail Services	
541	P1470	Nawzad Othman	Nawzad	Othman	10100.00	\N	2016-06-07 19:56:41.780798-07	2016-06-07 20:17:11.019901-07	CEO/Founder	http://theothmangroup.com/	Real Estate	
545	P169	Mark Palmer	Mark	Palmer	10410.00	\N	2016-06-07 19:56:41.805637-07	2016-06-07 20:17:11.04002-07	President/CEO	http://www.oceanbeauty.com/	Agriculture and Farming	
585	p1642	Michael Greene	\N	\N	\N	\N	2016-06-07 19:56:41.935612-07	2016-06-07 19:56:41.935639-07	Tax preparer\t	H & R Block	Lodging, Tourism, Restaurants	
597	p374	Robert Guarrasi	\N	\N	\N	\N	2016-06-07 19:56:41.986848-07	2016-06-07 19:56:41.986878-07	Attorney\t	www.robglaw.com/rob-guarrasi-respected-injury-lawyer/	Lawyers	
600	p22055	timothy gunn	\N	\N	\N	\N	2016-06-07 19:56:41.992971-07	2016-06-07 19:56:41.992993-07	Author\t		Arts, Entertainment, Music, and Recreation	
602	p1609	richard gustafson	\N	\N	\N	\N	2016-06-07 19:56:42.00173-07	2016-06-07 19:56:42.001762-07	Project Manager\t	www.shielsobletzjohnsen.com/	Real Estate	
304	P38	Terrance  Aarnio	Terrance	Aarnio	30950.00	\N	2016-06-07 19:56:40.706851-07	2016-06-07 20:17:08.034812-07	Chairman, Oregon Iron Works, LLC	http://www.oregoniron.com/	Industrial Manufacturing	
311	P1298	Richard  Adams	Richard	Adams	10853.00	71	2016-06-07 19:56:40.762807-07	2016-06-07 20:17:08.050242-07	Lawyer	http://roguefirm.com/the-firm/richard-adams	Lawyers	
420	P259	Robert H. Adams	Robert	Adams	6500.00	\N	2016-06-07 19:56:41.223414-07	2016-06-07 20:17:08.059618-07	Photographer/writer		Arts, Entertainment, Music, and Recreation	
605	B48	Advantage Dental	\N	Advantage Dental	447500.00	15	2016-06-07 20:17:08.067432-07	2016-06-07 20:17:08.067455-07				
606	B16	AGC - Oregon Columbia Chapter	\N	AGC - Oregon Columbia Chapter	245609.00	\N	2016-06-07 20:17:08.071042-07	2016-06-07 20:17:08.07107-07				
345	P980	Richard Alexander	Richard	Alexander	10270.00	\N	2016-06-07 19:56:40.943821-07	2016-06-07 20:17:08.077962-07	Lawyer	http://www.stoel.com/ralexander	Lawyers	
535	P127	Vince Alexander	Vince	Alexander	6031.00	\N	2016-06-07 19:56:41.743689-07	2016-06-07 20:17:08.081887-07	Unemployed		Government and Public Service	
432	P231	Scott Alldridge	Scott	Alldridge	4600.00	\N	2016-06-07 19:56:41.280726-07	2016-06-07 20:17:08.085547-07	President, IP Services 	https://www.ipservices.com/	Software and Techology	
439	P1943	Roger Altman	Roger	Altman	5000.00	\N	2016-06-07 19:56:41.309214-07	2016-06-07 20:17:08.097345-07	Banker	Evercore Partners	Banking and Finance	
607	B52	Altria Client Services Inc.	\N	Altria Client Services Inc.	230300.00	112	2016-06-07 20:17:08.101226-07	2016-06-07 20:17:08.101249-07				
572	P22048	Vicki Becker	Vicki	Becker	5000.00	\N	2016-06-07 19:56:41.900769-07	2016-06-07 20:17:08.355958-07	Vice President	http://www.mikebeckergc.com/	Construction	
575	P52	Paul Begala	Paul	Begala	5000.00	\N	2016-06-07 19:56:41.906756-07	2016-06-07 20:17:08.359624-07	Political Analyst		Government and Public Service	
584	P367	David Bell	David	Bell	4800.00	\N	2016-06-07 19:56:41.933333-07	2016-06-07 20:17:08.366778-07	Sales Manager	http://apollo.com.sg/	Retail Services	
582	P941	William D Chambers	William	Chambers	7750.00	\N	2016-06-07 19:56:41.924856-07	2016-06-07 20:17:08.728119-07	Farmer	self employed	Agriculture and Farming	
589	P545	Linyee Chang	Linyee	Chang	9500.00	\N	2016-06-07 19:56:41.944241-07	2016-06-07 20:17:08.731678-07	Physician	www.centraloregoncancer.com	Healthcare Professionals	medical director for St. Charles Cancer Center
593	P1107	Kevin Coluccio	Kevin	Coluccio	8759.00	\N	2016-06-07 19:56:41.966047-07	2016-06-07 20:17:08.83298-07	Attorney	www.stritmatter.com	Lawyers	
570	P497	James  Curtis	James	Curtis	6740.00	29	2016-06-07 19:56:41.894059-07	2016-06-07 20:17:08.897956-07	Attorney	Currently unemployed	Lawyers	
577	P1096	Bill Dalton	Bill	Dalton	5075.00	\N	2016-06-07 19:56:41.910817-07	2016-06-07 20:17:08.901489-07	Grant Specialist (currently unemployed)	unemployed	Education	
599	P1098	Alan Davis	Alan	Davis	6500.00	\N	2016-06-07 19:56:41.991006-07	2016-06-07 20:17:08.932149-07	Whiskey bar owner	https://mwlpdx.com	Beer, Wine, Liquor, Tobacco, Marijuana	
603	P1012	Danny Davison	Danny	Davison	6464.00	63	2016-06-07 19:56:42.00399-07	2016-06-07 20:17:08.935771-07	District Manager	www.farmers.com	Retail Services	
568	P112	Grace Evenstad	Grace	Evenstad	7500.00	\N	2016-06-07 19:56:41.890047-07	2016-06-07 20:17:09.225681-07	Owner	www.domaineserene.com	Beer, Wine, Liquor, Tobacco, Marijuana	
574	P1927	Linda Eyerman	Linda	Eyerman	40780.00	89	2016-06-07 19:56:41.904658-07	2016-06-07 20:17:09.229591-07	Attorney	http://www.gaylordeyerman.com	Lawyers	
586	P1803	John Fainter	John	Fainter	5000.00	\N	2016-06-07 19:56:41.937743-07	2016-06-07 20:17:09.24168-07	Senior Vice President	http://www.cypressequities.com/	Real Estate	
588	P1297	John Falk	John	Falk	5000.00	\N	2016-06-07 19:56:41.941955-07	2016-06-07 20:17:09.246385-07	Professor	http://education.oregonstate.edu/	Education	
591	P1713	Ronald Fallert	Ronald	Fallert	10000.00	\N	2016-06-07 19:56:41.962183-07	2016-06-07 20:17:09.250521-07	CEO	http://www.pacificwoodlaminates.com/	Forestry and Timber	
598	P334	Edward Faneuil	Edward	Faneuil	9500.00	\N	2016-06-07 19:56:41.988853-07	2016-06-07 20:17:09.261319-07	Attorney	http://www.globalp.com/	Lawyers	
566	P1068	Eric Friedenwald-Fishman	Eric	Friedenwald-Fishman	5000.00	\N	2016-06-07 19:56:41.876124-07	2016-06-07 20:17:09.387125-07	Public relations executive	http://www.metgroup.com/	Marketing and Creative Agencies	Portlanders for Schools; Senate Democratic Leadership Fund
580	P819	Stacey Friedman	Stacey	Friedman	11500.00	\N	2016-06-07 19:56:41.916655-07	2016-06-07 20:17:09.390741-07	Retail store operator	http://www.urbino-pdx.com/	Retail Services	Washington county democratic central committee
601	P806	Foster Friess	Foster	Friess	7500.00	\N	2016-06-07 19:56:41.995035-07	2016-06-07 20:17:09.399447-07	retired Financial Investor (Friess Associates Jackson WY)		Banking and Finance	supported Dudley and Dennis Richardson's campaigns
565	P134	michael gough	Michael	Gough	9000.00	\N	2016-06-07 19:56:41.874128-07	2016-06-07 20:17:09.591898-07	filmmaker		Arts, Entertainment, Music, and Recreation	
567	P1885	Amy  Gould	Amy	Gould	7500.00	\N	2016-06-07 19:56:41.888061-07	2016-06-07 20:17:09.596569-07	attorney	www.globalp.com/	Lawyers	
571	P233	Tiffany Grabenhorst	Tiffany	Grabenhorst	8000.00	\N	2016-06-07 19:56:41.896627-07	2016-06-07 20:17:09.600194-07	Fundraising consultant\t	www.tgfundraising.com/home.html	Lobbyists and Unions	
573	P1293	Jon Gramstad	Jon	Gramstad	6750.00	\N	2016-06-07 19:56:41.902819-07	2016-06-07 20:17:09.603733-07	President\t	www.lookmodern.com/	Retail Services	
578	P22009	Jack Gray	Jack	Gray	12650.00	\N	2016-06-07 19:56:41.91274-07	2016-06-07 20:17:09.615137-07	unemployed	winter green farm	Agriculture and Farming	
576	P181	John Gray	John	Gray	110750.00	\N	2016-06-07 19:56:41.908923-07	2016-06-07 20:17:09.611508-07	Farmer\t	www.wintergreenfarm.com/	Agriculture and Farming	
581	P1937	Samuel Gray	Samuel	Gray	5000.00	\N	2016-06-07 19:56:41.922913-07	2016-06-07 20:17:09.618805-07	none	none	Agriculture and Farming	
592	P1257	Jacqueline Gregerson	Jacqueline	Gregerson	5000.00	\N	2016-06-07 19:56:41.964143-07	2016-06-07 20:17:09.627653-07	unemployed	none	Retail Services	
595	P1130	kimberly Gregory	Kimberly	Gregory	8250.00	\N	2016-06-07 19:56:41.974124-07	2016-06-07 20:17:09.631352-07	unemployed	none	Retail Services	
564	P1632	Steve Larson	Steve	Larson	12913.00	64	2016-06-07 19:56:41.867926-07	2016-06-07 20:17:10.324329-07	Business Litigation Attorney at Stoll Berne	stollberne.com	Lawyers	National Employment Lawyers Association (Member), Oregon Trial Lawyers Association (Board member)
594	P22022	Steven L  Olsrud	Steven	Olsrud	10000.00	\N	2016-06-07 19:56:41.967913-07	2016-06-07 20:17:10.999884-07	Manager	http://www.shermsmarkets.com/index.htm	Grocery	
445	P1644	Cherry amabisca	Cherry	Amabisca	8000.00	\N	2016-06-07 19:56:41.364037-07	2016-06-07 20:17:08.107769-07	 Intel supercomputing	www.intel.com/	Software and Techology	
527	P859	Kent Anderson	Kent	Anderson	7350.00	\N	2016-06-07 19:56:41.698803-07	2016-06-07 20:17:08.12705-07	Lawyer\t	www.kentandersonlaw.com/	Lawyers	
350	P1782	John Andrews	John	Andrews	9450.00	\N	2016-06-07 19:56:40.982583-07	2016-06-07 20:17:08.134354-07	IT	Bonaventure Senior Living	Software and Techology	
34	P1605	Joseph Angel	Joseph	Angel II	5100.00	\N	2016-06-07 19:56:39.223655-07	2016-06-07 20:17:08.141854-07	Real estate investment	http://www.pfstar.com/	Industrial Manufacturing	
608	B56	AOL Services, Inc.	\N	AOL Services, Inc.	305000.00	12	2016-06-07 20:17:08.145854-07	2016-06-07 20:17:08.145878-07				
486	P1865	Thomas Aschenbrener	Thomas	Aschenbrener	4554.00	\N	2016-06-07 19:56:41.57151-07	2016-06-07 20:17:08.148837-07	Foundation Executive	www.northwesthealth.org/	Healthcare Professionals	
609	P99	Beth Bagley	Beth	Bagley	11854.00	\N	2016-06-07 20:17:08.177901-07	2016-06-07 20:17:08.177926-07				
373	P1203	Curtis Baker	Curtis	Baker	20500.00	\N	2016-06-07 19:56:41.066677-07	2016-06-07 20:17:08.192392-07	Investment Banking		Banking and Finance	
502	P301	Todd Baker	Todd	Baker	8000.00	\N	2016-06-07 19:56:41.616049-07	2016-06-07 20:17:08.195758-07	Owner - Officer Baker Rock Resources 	www.baker-rock.com/	Industrial Manufacturing	
610	P1282	John Banes	John	Banes	5000.00	\N	2016-06-07 20:17:08.22642-07	2016-06-07 20:17:08.22645-07				
402	P1113	Bob Barman	Bob	Barman	11441.00	\N	2016-06-07 19:56:41.154351-07	2016-06-07 20:17:08.229346-07	Gas Station Owner		Chemical, Oil, Gas, Electric	
520	P1403	R J Barman	R	Barman	7250.00	\N	2016-06-07 19:56:41.67972-07	2016-06-07 20:17:08.232936-07	President, Fast Serv California	http://listings.findthecompany.com/l/22636033/Woodburn-Fast-Serv-Inc-in-Lake-Oswego-OR	Chemical, Oil, Gas, Electric	
384	P1397	Phil Barnhart	Philip	Barnhart	44386.00	\N	2016-06-07 19:56:41.100882-07	2016-06-07 20:17:08.247192-07	Oregon house of representatives	https://www.oregonlegislature.gov/barnhart	Government and Public Service	
307	P1018	Carlos Barrera	Carlos	Barrera	38470.00	31	2016-06-07 19:56:40.72961-07	2016-06-07 20:17:08.268728-07	Chairman	Chairman at Friendly Area Neighborhood Association	Philanthropist	Friendly Area Neighbors, Funded many democratic candidates
500	P1744	Thomas Barreto	Thomas	Barreto	9930.00	\N	2016-06-07 19:56:41.608067-07	2016-06-07 20:17:08.272377-07	Optometrist	http://eyesonbroadway.com/	Healthcare Professionals	On the advisory board for The Equity Foundation (LGBTQ)
513	P1704	Douglas Barrett	Douglas	Barrett	4800.00	\N	2016-06-07 19:56:41.662368-07	2016-06-07 20:17:08.28003-07	Product Testing Laboratory Owner	http://www.cascadetek.com/	Industrial Manufacturing	“Outstanding Business Leader Award” from Community Action, a Hillsboro-based nonprofit organization that supports low-income families with financial and housing assistance. The award is given to key partners who go above and beyond in the battle to end poverty in Washington County.
443	P139	Alice Bartelt	Alice	Bartelt	20025.00	133	2016-06-07 19:56:41.337435-07	2016-06-07 20:17:08.287661-07	Retired, former attorney	http://www.saif.com/	Government and Public Service	Governance Committee Chair American Association of University Women (AAUW), Action Chair League of Women Voters of Oregon
611	P490	William Barton	William	Barton	14167.00	68	2016-06-07 20:17:08.307833-07	2016-06-07 20:17:08.307861-07				
612	P1347	Bill Barton	Bill	Barton	6450.00	\N	2016-06-07 20:17:08.310978-07	2016-06-07 20:17:08.311004-07				
613	P1081	Daniel Bates	Daniel	Bates	31113.00	88	2016-06-07 20:17:08.313948-07	2016-06-07 20:17:08.31398-07				
614	P461	Dan Bates	Dan	Bates	7000.00	\N	2016-06-07 20:17:08.316927-07	2016-06-07 20:17:08.316951-07				
615	P927	Terrence Bean	Terrence	Bean	8656.00	30	2016-06-07 20:17:08.327479-07	2016-06-07 20:17:08.327506-07				
616	P419	Terrance Bean	Terrance	Bean	16010.00	\N	2016-06-07 20:17:08.330438-07	2016-06-07 20:17:08.334115-07				
561	P1456	Robert Beatty-Walters	Robert	Beatty-Walters	10366.00	73	2016-06-07 19:56:41.861695-07	2016-06-07 20:17:08.345616-07	Attorney	http://beattywalterslaw.com/	Lawyers	
569	P22047	Michael Becker	Michael	Becker	5000.00	\N	2016-06-07 19:56:41.892051-07	2016-06-07 20:17:08.352327-07	Sr. Director, State Government Affairs	http://oregon.providence.org/	Healthcare Professionals	
587	P939	Ronald Beltz	Ronald	Beltz	15050.00	\N	2016-06-07 19:56:41.939834-07	2016-06-07 20:17:08.374449-07	Real Estate Investor	http://www.apicincus.com/	Real Estate	Board Member: Portland Business Alliance
466	P230	Cliff Bentz	Cliff	Bentz	5250.00	\N	2016-06-07 19:56:41.432936-07	2016-06-07 20:17:08.381488-07	Attorney	Self Employed	Lawyers	Chair, 8C School District Board of Directors, 2005-present Member, Oregon Historical Society Board of Directors, 2003-present Member, Eastern Oregon University Foundation Board of Trustees, 2002-present Member, Church Folk Mass Group Member, Idaho Bar Association Member, Malheur County Bar Association Member, Oregon Bar Association Member, Oregon Cattleman's Association Former Member, Project Dove Former Chair, Saint Peter Elementary School Board of Directors Chair, Oregon Water Resources Commission, 1988-1996
617	P248	Leonard Bergstein	Leonard	Bergstein	39739.00	124	2016-06-07 20:17:08.385264-07	2016-06-07 20:17:08.388954-07				
618	P175	Len Bergstein	Len	Bergstein	6600.00	\N	2016-06-07 20:17:08.392636-07	2016-06-07 20:17:08.392661-07				
619	P1591	William Berkshire	William	Berkshire	8650.00	\N	2016-06-07 20:17:08.395549-07	2016-06-07 20:17:08.395571-07				
620	P620	Steven Berman	Steven	Berman	5733.00	51	2016-06-07 20:17:08.398446-07	2016-06-07 20:17:08.398469-07				
621	P945	Jim Bernard	Jim	Bernard	10800.00	26	2016-06-07 20:17:08.40143-07	2016-06-07 20:17:08.401454-07				
622	P1581	James Bernard	James	Bernard	12561.00	34	2016-06-07 20:17:08.404483-07	2016-06-07 20:17:08.408156-07				
623	P1602	James Bernau	James	Bernau	10650.00	\N	2016-06-07 20:17:08.411475-07	2016-06-07 20:17:08.415163-07				
624	P886	Jim Bernau	Jim	Bernau	8170.00	\N	2016-06-07 20:17:08.418456-07	2016-06-07 20:17:08.418481-07				
625	P666	Gary Berne	Gary	Berne	8310.00	73	2016-06-07 20:17:08.4214-07	2016-06-07 20:17:08.421426-07				
626	P1117	Neil Bernstein	Neil	Bernstein	8000.00	\N	2016-06-07 20:17:08.424706-07	2016-06-07 20:17:08.424735-07				
627	P1019	Vincent Beusan	Vincent	Beusan	22950.00	\N	2016-06-07 20:17:08.431245-07	2016-06-07 20:17:08.431267-07				
628	P173	Sudhir Bhagwan	Sudhir	Bhagwan	5000.00	\N	2016-06-07 20:17:08.43417-07	2016-06-07 20:17:08.434194-07				
629	B8	Bimbo Bakeries USA, Inc.	\N	Bimbo Bakeries USA, Inc.	230000.00	\N	2016-06-07 20:17:08.437424-07	2016-06-07 20:17:08.437447-07				
630	P124	Mary Blair	Mary	Blair	5600.00	\N	2016-06-07 20:17:08.448463-07	2016-06-07 20:17:08.448487-07				
631	P1269	Donald W Blair	Donald	Blair	5000.00	\N	2016-06-07 20:17:08.451482-07	2016-06-07 20:17:08.451506-07				
632	P1732	Tracy Blakeslee	Tracy	Blakeslee	7250.00	\N	2016-06-07 20:17:08.455224-07	2016-06-07 20:17:08.45525-07				
633	P1339	Jesse Blanchard	Jesse	Blanchard	9000.00	\N	2016-06-07 20:17:08.458214-07	2016-06-07 20:17:08.458237-07				
634	P1335	Sheryl Blankenship	Sheryl	Blankenship	4692.00	\N	2016-06-07 20:17:08.461191-07	2016-06-07 20:17:08.461215-07				
635	P22040	Andreas Blech	Andreas	Blech	5500.00	\N	2016-06-07 20:17:08.46406-07	2016-06-07 20:17:08.464082-07				
636	P626	Patrick Block	Patrick	Block	10338.00	65	2016-06-07 20:17:08.466949-07	2016-06-07 20:17:08.46698-07				
637	P1447	David Blount	David	Blount	6738.00	62	2016-06-07 20:17:08.477372-07	2016-06-07 20:17:08.477399-07				
638	P1035	Joseph Blubaugh	Joseph	Blubaugh	6750.00	\N	2016-06-07 20:17:08.480391-07	2016-06-07 20:17:08.480416-07				
639	P1234	Robert S Bobosky	Robert	Bobosky	6500.00	\N	2016-06-07 20:17:08.4834-07	2016-06-07 20:17:08.483424-07				
640	P625	Neil Bornstein	Neil	Bornstein	5000.00	\N	2016-06-07 20:17:08.490931-07	2016-06-07 20:17:08.490978-07				
641	P22049	Gertrude Boyle	Gertrude	Boyle	5000.00	\N	2016-06-07 20:17:08.494293-07	2016-06-07 20:17:08.494317-07				
642	P1146	William Bradbury	William	Bradbury	5600.00	\N	2016-06-07 20:17:08.497213-07	2016-06-07 20:17:08.500894-07				
643	P1657	Todd Bradley	Todd	Bradley	14395.00	82	2016-06-07 20:17:08.504662-07	2016-06-07 20:17:08.504695-07				
644	P704	John Bradley	John	Bradley	4750.00	\N	2016-06-07 20:17:08.511297-07	2016-06-07 20:17:08.511319-07				
645	P7	Casey Branham	Casey	Branham	7500.00	\N	2016-06-07 20:17:08.521569-07	2016-06-07 20:17:08.521601-07				
646	P1405	Margaret Branson	Margaret	Branson	4634.00	31	2016-06-07 20:17:08.524788-07	2016-06-07 20:17:08.524818-07				
296	P1521	Norman Brenden	Norman	Brenden	774638.00	\N	2016-06-07 19:56:40.625641-07	2016-06-07 20:17:08.534178-07	Board member of Colson Family Foundation		Philanthropist	Colson Family Foundation, Coastal Conservation Association
647	P1513	Thomas Brenneke	Thomas	Brenneke	6350.00	\N	2016-06-07 20:17:08.538056-07	2016-06-07 20:17:08.538084-07				
648	P1935	Michael Brian	Michael	Brian	10430.00	62	2016-06-07 20:17:08.541496-07	2016-06-07 20:17:08.541525-07				
649	P609	Michael Brightwood	Michael	Brightwood	6774.00	\N	2016-06-07 20:17:08.544477-07	2016-06-07 20:17:08.544501-07				
650	P449	Julia Brim	Julia	Brim	16206.00	\N	2016-06-07 20:17:08.547375-07	2016-06-07 20:17:08.547407-07				
651	P421	Julia Brim-Edwards	Julia	Brim-Edwards	11750.00	\N	2016-06-07 20:17:08.550286-07	2016-06-07 20:17:08.550308-07				
652	P1444	Peter Brix	Peter	Brix	21100.00	\N	2016-06-07 20:17:08.553272-07	2016-06-07 20:17:08.556991-07				
653	P1122	Eli Broad	Eli	Broad	25000.00	\N	2016-06-07 20:17:08.560312-07	2016-06-07 20:17:08.560334-07				
654	P749	Gretchen Brooks	Gretchen	Brooks	20000.00	\N	2016-06-07 20:17:08.563195-07	2016-06-07 20:17:08.563226-07				
655	P1872	Samuel Brooks	Samuel	Brooks	16395.00	\N	2016-06-07 20:17:08.566157-07	2016-06-07 20:17:08.56618-07				
656	P1106	Margaret Brooks	Margaret	Brooks	12100.00	\N	2016-06-07 20:17:08.569139-07	2016-06-07 20:17:08.569162-07				
657	P788	Jack Brooks	Jack	Brooks	10145.00	\N	2016-06-07 20:17:08.572418-07	2016-06-07 20:17:08.572448-07				
658	P1966	Sam Brooks	Sam	Brooks	5000.00	\N	2016-06-07 20:17:08.575762-07	2016-06-07 20:17:08.575788-07				
659	P1750	David Brown	David	Brown	17960.00	77	2016-06-07 20:17:08.578729-07	2016-06-07 20:17:08.578751-07				
660	P1990	John Brown	John	Brown	11275.00	\N	2016-06-07 20:17:08.581653-07	2016-06-07 20:17:08.581675-07				
661	P1387	Greg Brown	Greg	Brown	10680.00	\N	2016-06-07 20:17:08.584618-07	2016-06-07 20:17:08.584642-07				
662	P425	John H Brown	John	Brown	5150.00	\N	2016-06-07 20:17:08.587733-07	2016-06-07 20:17:08.58776-07				
663	P85	D. Elizabeth Brown	Elizabeth	Brown	5000.00	\N	2016-06-07 20:17:08.591421-07	2016-06-07 20:17:08.591451-07				
664	P862	Judd Brown	Judd	Brown	5000.00	\N	2016-06-07 20:17:08.594416-07	2016-06-07 20:17:08.594439-07				
665	P214	Fred Bruning	Fred	Bruning	19100.00	\N	2016-06-07 20:17:08.597328-07	2016-06-07 20:17:08.59736-07				
666	P1877	Mark Bruun	Mark	Bruun	8000.00	\N	2016-06-07 20:17:08.600293-07	2016-06-07 20:17:08.600316-07				
667	P22001	John D Bryan	John	Bryan	65500.00	\N	2016-06-07 20:17:08.60321-07	2016-06-07 20:17:08.603233-07				
668	P22050	George E Bulkeley	George	Bulkeley	5000.00	\N	2016-06-07 20:17:08.606382-07	2016-06-07 20:17:08.606406-07				
669	P22014	Barbara Buono	Barbara	Buono	10000.00	\N	2016-06-07 20:17:08.609289-07	2016-06-07 20:17:08.609311-07				
670	P310	Annie Burns	Annie	Burns	5000.00	\N	2016-06-07 20:17:08.61217-07	2016-06-07 20:17:08.612203-07				
671	P136	Sara Byers	Sara	Byers	6619.00	30	2016-06-07 20:17:08.615051-07	2016-06-07 20:17:08.615073-07				
672	P1443	John Calhoun	John	Calhoun	14490.00	44	2016-06-07 20:17:08.618011-07	2016-06-07 20:17:08.618034-07				
673	P901	Sallie Calhoun	Sallie	Calhoun	5000.00	\N	2016-06-07 20:17:08.620899-07	2016-06-07 20:17:08.62092-07				
674	P1859	Lydia Callaghan	Lydia	Callaghan	5000.00	\N	2016-06-07 20:17:08.623983-07	2016-06-07 20:17:08.62401-07				
675	B35	Cambia Health Solutions	\N	Cambia Health Solutions	390850.00	23	2016-06-07 20:17:08.627156-07	2016-06-07 20:17:08.627181-07				
676	P1361	Scott Campbell	Scott	Campbell	55932.00	\N	2016-06-07 20:17:08.6302-07	2016-06-07 20:17:08.633731-07				
677	P22015	Mary L. Campbell	Mary	Campbell	10000.00	\N	2016-06-07 20:17:08.637037-07	2016-06-07 20:17:08.637059-07				
678	P1840	Linda Campbell	Linda	Campbell	6125.00	\N	2016-06-07 20:17:08.640045-07	2016-06-07 20:17:08.640074-07				
679	P1870	Cynthia Campbell	Cynthia	Campbell	6000.00	\N	2016-06-07 20:17:08.643834-07	2016-06-07 20:17:08.643861-07				
680	P335	Claude L Campbell	Claude	Campbell	5000.00	\N	2016-06-07 20:17:08.646891-07	2016-06-07 20:17:08.646923-07				
681	P1372	J Duncan Campbell	Duncan	Campbell	5000.00	\N	2016-06-07 20:17:08.649969-07	2016-06-07 20:17:08.649992-07				
682	P574	Sandra K Campbell	Sandra	Campbell	5000.00	\N	2016-06-07 20:17:08.653013-07	2016-06-07 20:17:08.653036-07				
683	P1393	Leslie Campbell	Leslie	Campbell	4535.00	\N	2016-06-07 20:17:08.656027-07	2016-06-07 20:17:08.65605-07				
684	P1819	Thomas Campion	Thomas	Campion	25000.00	\N	2016-06-07 20:17:08.674413-07	2016-06-07 20:17:08.674443-07				
685	P1764	Cal Cannon	Cal	Cannon	35450.00	\N	2016-06-07 20:17:08.678776-07	2016-06-07 20:17:08.678814-07				
686	P656	Douglas Carnine	Douglas	Carnine	5000.00	\N	2016-06-07 20:17:08.6821-07	2016-06-07 20:17:08.682123-07				
687	P1006	Kenneth Carr	Kenneth	Carr	11200.00	\N	2016-06-07 20:17:08.685424-07	2016-06-07 20:17:08.685447-07				
688	P1129	Candace Carr	Candace	Carr	6500.00	\N	2016-06-07 20:17:08.688702-07	2016-06-07 20:17:08.688726-07				
689	P1806	John Carroll	John	Carroll	59600.00	\N	2016-06-07 20:17:08.692715-07	2016-06-07 20:17:08.692745-07				
690	P1267	John Carter	John	Carter	55602.00	26	2016-06-07 20:17:08.695869-07	2016-06-07 20:17:08.695892-07				
691	P252	Robert Cary	Robert	Cary	6246.00	\N	2016-06-07 20:17:08.698891-07	2016-06-07 20:17:08.698915-07				
692	P1844	CARL CASALE	CARL	CASALE	4750.00	\N	2016-06-07 20:17:08.701918-07	2016-06-07 20:17:08.70195-07				
693	P246	Anna Cassily	Anna	Cassily	8440.00	\N	2016-06-07 20:17:08.705429-07	2016-06-07 20:17:08.705457-07				
694	P50	Robin Castro	Robin	Castro	11681.00	29	2016-06-07 20:17:08.708493-07	2016-06-07 20:17:08.708517-07				
695	P19	Jane Cease	Jane	Cease	5201.00	33	2016-06-07 20:17:08.711524-07	2016-06-07 20:17:08.711549-07				
696	P362	Floyd Chadee	Floyd	Chadee	6883.00	64	2016-06-07 20:17:08.714575-07	2016-06-07 20:17:08.714599-07				
697	P1495	Karla Chambers	Karla	Chambers	35350.00	\N	2016-06-07 20:17:08.717573-07	2016-06-07 20:17:08.721241-07				
698	P1634	Carolyn Chambers	Carolyn	Chambers	25282.00	\N	2016-06-07 20:17:08.725058-07	2016-06-07 20:17:08.725088-07				
699	P156	Matt Chapman	Matt	Chapman	38600.00	\N	2016-06-07 20:17:08.735304-07	2016-06-07 20:17:08.738942-07				
700	P535	Matthew Chapman	Matthew	Chapman	21000.00	\N	2016-06-07 20:17:08.742997-07	2016-06-07 20:17:08.743027-07				
701	P1325	Adela Chavez	Adela	Chavez	10000.00	\N	2016-06-07 20:17:08.746065-07	2016-06-07 20:17:08.746089-07				
702	P285	Christine Chin Ryan	Christine	Chin Ryan	4591.00	\N	2016-06-07 20:17:08.753357-07	2016-06-07 20:17:08.75338-07				
703	P521	Thomas V Clarey	Thomas	Clarey	5000.00	\N	2016-06-07 20:17:08.756662-07	2016-06-07 20:17:08.756692-07				
704	P22016	Jeffrey Clark	Jeffrey	Clark	10000.00	\N	2016-06-07 20:17:08.766927-07	2016-06-07 20:17:08.76695-07				
705	P22029	Diane Clary	Diane	Clary	7735.00	\N	2016-06-07 20:17:08.77369-07	2016-06-07 20:17:08.773717-07				
706	P1574	Trevor Cleveland	Trevor	Cleveland	6676.00	46	2016-06-07 20:17:08.780709-07	2016-06-07 20:17:08.780736-07				
707	P552	Bob Cockell	Bob	Cockell	5000.00	\N	2016-06-07 20:17:08.787559-07	2016-06-07 20:17:08.787584-07				
708	P1348	Thomas Cody	Thomas	Cody	6250.00	\N	2016-06-07 20:17:08.791382-07	2016-06-07 20:17:08.791428-07				
709	P1649	Michael Colbach	Michael	Colbach	8536.00	65	2016-06-07 20:17:08.794815-07	2016-06-07 20:17:08.794839-07				
710	P1901	John Coletii	John	Coletii	10000.00	\N	2016-06-07 20:17:08.801521-07	2016-06-07 20:17:08.801544-07				
711	P1499	Z Idelle Collins	Idelle	Collins	22368.00	\N	2016-06-07 20:17:08.808642-07	2016-06-07 20:17:08.812381-07				
401	P1622	Maribeth Collins	Maribeth	Collins	5250.00	\N	2016-06-07 19:56:41.148176-07	2016-06-07 20:17:08.819668-07	Trustee Emeritus	Collinsfoundation.org	Forestry and Timber	Life Trustee and Secretary of the Board of Trustees Willamette University
712	P1709	Mark Colman	Mark	Colman	4720.00	\N	2016-06-07 20:17:08.827166-07	2016-06-07 20:17:08.827196-07				
713	P65	Rosa Colquitt	Rosa	Colquitt	5451.00	72	2016-06-07 20:17:08.830118-07	2016-06-07 20:17:08.830142-07				
714	B21	Columbia Distributing	\N	Columbia Distributing	241672.00	11	2016-06-07 20:17:08.836531-07	2016-06-07 20:17:08.836554-07				
604	P1433	Gary L Combs	Gary	Combs	25420.00	\N	2016-06-07 19:56:42.006162-07	2016-06-07 20:17:08.844115-07	Vice President Marketing	www.campbellglobal.com/	Forestry and Timber	
715	B1	Comcast	\N	Comcast	185088.00	116	2016-06-07 20:17:08.848169-07	2016-06-07 20:17:08.848193-07				
716	B97	Comcast Financial Agency Corporation	\N	Comcast Financial Agency Corporation	216976.00	157	2016-06-07 20:17:08.851153-07	2016-06-07 20:17:08.851176-07				
717	B7	Common Sense for Oregon, Incorporated	\N	Common Sense for Oregon, Incorporated	912329.00	161	2016-06-07 20:17:08.854181-07	2016-06-07 20:17:08.854205-07				
718	B61	ConAgra Foods	\N	ConAgra Foods	350000.00	\N	2016-06-07 20:17:08.857144-07	2016-06-07 20:17:08.857167-07				
531	P1830	W. Richard Cooley	Richard	Cooley	5900.00	\N	2016-06-07 19:56:41.711346-07	2016-06-07 20:17:08.867928-07	Managing partner	www.cooleypartners.com	Real Estate	Portland Homebuilders Board, the Multnomah County Planning Commission, the Portland Planning Commission (where he served as chair), and chair of the Portland Streetcar Board. 
106	P342	Kathleen Courian-Sanchez	Kathleen	Courian Sanchez	7080.00	\N	2016-06-07 19:56:39.576603-07	2016-06-07 20:17:08.87207-07	Graphic Designer	https://kcouriansanchez.wordpress.com/	Arts, Entertainment, Music, and Recreation	
719	P1220	Nancy Crumpacker	Nancy	Crumpacker	4570.00	\N	2016-06-07 20:17:08.887244-07	2016-06-07 20:17:08.887268-07				
210	P1148	Thomas D'Amore	Thomas	DAmore	13450.00	66	2016-06-07 19:56:40.095964-07	2016-06-07 20:17:08.913489-07	Lawyer	http://damorelaw.com/	Lawyers	Good Deeds is a not-for-profit charitable organization that provides assistance to families with special medical circumstances. Attorney Tom D’Amore, a long-time board member, is proud to support the local organization. Visit www.gooddeeds.org to learn more about Good Deeds.
720	P179	Marc Davidson	Marc	Davidson	5000.00	\N	2016-06-07 20:17:08.920503-07	2016-06-07 20:17:08.920527-07				
721	P700	H.M. Day Sr	H.M.	Day Sr	5000.00	\N	2016-06-07 20:17:08.947839-07	2016-06-07 20:17:08.94786-07				
722	P22018	Lester A DeAsis	Lester	DeAsis	10000.00	\N	2016-06-07 20:17:08.950746-07	2016-06-07 20:17:08.950767-07				
723	P22051	David Dechman	David	Dechman	5000.00	\N	2016-06-07 20:17:08.954176-07	2016-06-07 20:17:08.9542-07				
724	P1338	Gina DeFazio	Gina	DeFazio	5000.00	\N	2016-06-07 20:17:08.961192-07	2016-06-07 20:17:08.961215-07				
725	P1045	James DeFrancesco	James	DeFrancesco	5000.00	\N	2016-06-07 20:17:08.964233-07	2016-06-07 20:17:08.964257-07				
726	P1147	Merry Demarest	Merry	Demarest	4836.00	28	2016-06-07 20:17:08.971364-07	2016-06-07 20:17:08.971389-07				
727	P1662	Harry Demarest	Harry	Demarest	5040.00	42	2016-06-07 20:17:08.974621-07	2016-06-07 20:17:08.974651-07				
728	P287	Harold Demarest	Harold	Demarest	5925.00	\N	2016-06-07 20:17:08.977833-07	2016-06-07 20:17:08.977859-07				
729	P28	Neal Dempsey	Neal	Dempsey	5500.00	\N	2016-06-07 20:17:08.980795-07	2016-06-07 20:17:08.980818-07				
730	P569	Bill Dickey	Bill	Dickey	35608.00	63	2016-06-07 20:17:09.017556-07	2016-06-07 20:17:09.017578-07				
731	P1280	William Dickey	William	Dickey	65200.00	116	2016-06-07 20:17:09.020591-07	2016-06-07 20:17:09.024824-07				
732	P1661	Howard Dierich	Howard	Dierich	5000.00	\N	2016-06-07 20:17:09.028366-07	2016-06-07 20:17:09.028392-07				
733	P1437	John Dillion	John	Dillion	10000.00	\N	2016-06-07 20:17:09.031381-07	2016-06-07 20:17:09.031404-07				
734	P802	John Dillon	John	Dillon	11750.00	\N	2016-06-07 20:17:09.034326-07	2016-06-07 20:17:09.03435-07				
315	P436	Leanne DiLorenzo	Leanne	DiLorenzo	13640.00	\N	2016-06-07 19:56:40.778494-07	2016-06-07 20:17:09.045718-07	Founder and President	http://www.voteera.org/	Lobbyists and Unions	http://www.voteera.org/
735	P1682	John DiLorenzo Jr.	John	DiLorenzo Jr.	5308.00	\N	2016-06-07 20:17:09.049071-07	2016-06-07 20:17:09.049094-07				
736	P1228	James Doane	James	Doane	7695.00	69	2016-06-07 20:17:09.051988-07	2016-06-07 20:17:09.052021-07				
737	P22052	Ronald Dollens	Ronald	Dollens	5000.00	\N	2016-06-07 20:17:09.062186-07	2016-06-07 20:17:09.062211-07				
738	P22026	Shawn Donnille	Shawn	Donnille	9500.00	\N	2016-06-07 20:17:09.068964-07	2016-06-07 20:17:09.068987-07				
739	P1635	James DOrta	James	DOrta	6000.00	\N	2016-06-07 20:17:09.072274-07	2016-06-07 20:17:09.072296-07				
740	P22	Phillip K Doud	Phillip	Doud	5000.00	\N	2016-06-07 20:17:09.075503-07	2016-06-07 20:17:09.075532-07				
741	B23	Douglas County IPA Inc. (DCIPA, Inc.)	\N	Douglas County IPA Inc. (DCIPA, Inc.)	395000.00	\N	2016-06-07 20:17:09.078878-07	2016-06-07 20:17:09.078905-07				
742	P275	Bruce Dow	Bruce	Dow	5100.00	\N	2016-06-07 20:17:09.08201-07	2016-06-07 20:17:09.082034-07				
743	P1149	Dennis Doyle	Dennis	Doyle	5850.00	26	2016-06-07 20:17:09.085048-07	2016-06-07 20:17:09.08507-07				
744	P209	Carolyn H Dozois	Carolyn	Dozois	5240.00	\N	2016-06-07 20:17:09.088097-07	2016-06-07 20:17:09.088121-07				
745	P1564	Eileen Drake	Eileen	Drake	6250.00	\N	2016-06-07 20:17:09.091721-07	2016-06-07 20:17:09.091752-07				
746	P1815	Scott Draper	Scott	Draper	15512.00	\N	2016-06-07 20:17:09.095438-07	2016-06-07 20:17:09.095466-07				
747	P1284	Wayne Drinkward	Wayne	Drinkward	21600.00	\N	2016-06-07 20:17:09.098394-07	2016-06-07 20:17:09.098417-07				
748	B22	Drug Policy Action	\N	Drug Policy Action	790000.00	\N	2016-06-07 20:17:09.101416-07	2016-06-07 20:17:09.101439-07				
749	P1216	Keith Dubanevich	Keith	Dubanevich	5520.00	43	2016-06-07 20:17:09.104436-07	2016-06-07 20:17:09.104468-07				
750	P845	John A Duke	John	Duke	61000.00	\N	2016-06-07 20:17:09.107475-07	2016-06-07 20:17:09.107499-07				
751	P972	Marilyn R Duke	Marilyn	Duke	11000.00	\N	2016-06-07 20:17:09.111001-07	2016-06-07 20:17:09.111034-07				
752	P537	Kyle Dukelow	Kyle	Dukelow	5638.00	62	2016-06-07 20:17:09.11422-07	2016-06-07 20:17:09.114244-07				
753	P226	Tom Dulcich	Tom	Dulcich	10000.00	\N	2016-06-07 20:17:09.117222-07	2016-06-07 20:17:09.117244-07				
754	P1793	Frank Dulcich	Frank	Dulcich	7500.00	\N	2016-06-07 20:17:09.12024-07	2016-06-07 20:17:09.120263-07				
755	P1154	Kim Duncan	Kim	Duncan	6226.00	\N	2016-06-07 20:17:09.123201-07	2016-06-07 20:17:09.123224-07				
756	P1115	Richard Duncan	Richard	Duncan	5875.00	\N	2016-06-07 20:17:09.126571-07	2016-06-07 20:17:09.126601-07				
757	P255	Katherine Durant	Katherine	Durant	12800.00	\N	2016-06-07 20:17:09.129749-07	2016-06-07 20:17:09.129774-07				
758	P453	Dan Dutton	Dan	Dutton	11570.00	\N	2016-06-07 20:17:09.132744-07	2016-06-07 20:17:09.132766-07				
759	P211	James Dwyer	James	Dwyer	7516.00	65	2016-06-07 20:17:09.135712-07	2016-06-07 20:17:09.135734-07				
760	P23	Roy Dwyer	Roy	Dwyer	32635.00	102	2016-06-07 20:17:09.139025-07	2016-06-07 20:17:09.139048-07				
826	P654	Sean Geary	Sean	Geary	7500.00	\N	2016-06-07 20:17:09.464317-07	2016-06-07 20:17:09.464341-07				
761	P225	Daniel Dziuba	Daniel	Dziuba	6088.00	52	2016-06-07 20:17:09.142706-07	2016-06-07 20:17:09.142736-07				
762	P1017	Andrea Easton	Andrea	Easton	5537.00	48	2016-06-07 20:17:09.145972-07	2016-06-07 20:17:09.146005-07				
763	P91	Jim Eastridge	Jim	Eastridge	7750.00	\N	2016-06-07 20:17:09.148966-07	2016-06-07 20:17:09.148998-07				
764	P1955	Robert L Eberhard	Robert	Eberhard	14790.00	\N	2016-06-07 20:17:09.151983-07	2016-06-07 20:17:09.155696-07				
765	P489	Robert (Bob) L Eberhard	Bob	Eberhard	5250.00	\N	2016-06-07 20:17:09.159135-07	2016-06-07 20:17:09.15916-07				
766	P224	Kathryn P Eckman	Kathryn	Eckman	8500.00	\N	2016-06-07 20:17:09.162081-07	2016-06-07 20:17:09.162114-07				
767	P1899	Peter Edberg	Peter	Edberg	6350.00	\N	2016-06-07 20:17:09.165024-07	2016-06-07 20:17:09.165056-07				
768	P1209	Robert Emmons	Robert	Emmons	4825.00	\N	2016-06-07 20:17:09.201264-07	2016-06-07 20:17:09.201287-07				
769	P1718	Marilyn Epstein	Marilyn	Epstein	10235.00	\N	2016-06-07 20:17:09.211427-07	2016-06-07 20:17:09.211449-07				
579	P1243	Michael Fahey	Michael	Fahey	18925.00	\N	2016-06-07 19:56:41.914697-07	2016-06-07 20:17:09.23701-07	President	http://www.colheli.com/	Industrial Manufacturing	
770	B51	FamilyCare, Inc.	\N	Familycare, Inc.	198526.00	19	2016-06-07 20:17:09.254282-07	2016-06-07 20:17:09.257374-07				
771	P1352	Ken Fawcett	Ken	Fawcett	7840.00	\N	2016-06-07 20:17:09.265023-07	2016-06-07 20:17:09.265047-07				
772	P93	Foster Fell	Foster	Fell	11195.00	\N	2016-06-07 20:17:09.267969-07	2016-06-07 20:17:09.267991-07				
773	P49	Mary Fellows	Mary	Fellows	14575.00	25	2016-06-07 20:17:09.270882-07	2016-06-07 20:17:09.270915-07				
774	P833	Matthew Felton	Matthew	Felton	9250.00	\N	2016-06-07 20:17:09.273837-07	2016-06-07 20:17:09.273859-07				
775	P516	Andrew G Ferguson	Andrew	Ferguson	6250.00	\N	2016-06-07 20:17:09.276919-07	2016-06-07 20:17:09.276949-07				
776	P1561	Felix Ferrero	Felix	Ferrero	10000.00	\N	2016-06-07 20:17:09.280064-07	2016-06-07 20:17:09.280091-07				
777	P1725	Gordon Fiddes	Gordon	Fiddes	8395.00	\N	2016-06-07 20:17:09.283652-07	2016-06-07 20:17:09.283682-07				
778	P1805	Norman Fincher	Norman	Fincher	5620.00	\N	2016-06-07 20:17:09.286791-07	2016-06-07 20:17:09.286815-07				
779	P769	Ryan Finley	Ryan	Finley	30000.00	\N	2016-06-07 20:17:09.289759-07	2016-06-07 20:17:09.289783-07				
780	P1708	Dennis Fioravanti	Dennis	Fioravanti	8225.00	\N	2016-06-07 20:17:09.293603-07	2016-06-07 20:17:09.293637-07				
781	P386	David Fischer	David	Fischer	10000.00	\N	2016-06-07 20:17:09.297256-07	2016-06-07 20:17:09.297285-07				
782	P1365	Michael A Fitz	Michael	Fitz	4802.00	\N	2016-06-07 20:17:09.30028-07	2016-06-07 20:17:09.300302-07				
783	P1175	Bradford Fletcher	Bradford	Fletcher	11250.00	\N	2016-06-07 20:17:09.303215-07	2016-06-07 20:17:09.303237-07				
784	P22072	James Flynn	James	Flynn	4850.00	\N	2016-06-07 20:17:09.306136-07	2016-06-07 20:17:09.306159-07				
785	P22035	Phillip Fogg	Phillip	Fogg	6000.00	\N	2016-06-07 20:17:09.309352-07	2016-06-07 20:17:09.30938-07				
786	P176	Phillip Fogg JR	Phillip	Fogg JR	5000.00	\N	2016-06-07 20:17:09.312766-07	2016-06-07 20:17:09.312794-07				
787	P996	Richard Fohs Sohn	Richard	Fohs Sohn	23050.00	\N	2016-06-07 20:17:09.315894-07	2016-06-07 20:17:09.315917-07				
788	P907	Alan J Folkman	Alan	Folkman	15454.00	\N	2016-06-07 20:17:09.319026-07	2016-06-07 20:17:09.319049-07				
789	P1675	Sharon Folkman	Sharon	Folkman	10000.00	\N	2016-06-07 20:17:09.321945-07	2016-06-07 20:17:09.321968-07				
790	P621	David Folsom	David	Folsom	11000.00	\N	2016-06-07 20:17:09.325074-07	2016-06-07 20:17:09.325099-07				
791	P1246	John Foraker	John	Foraker	50000.00	\N	2016-06-07 20:17:09.328504-07	2016-06-07 20:17:09.328533-07				
792	P1714	Leslie Ford	Leslie	Ford	14425.00	\N	2016-06-07 20:17:09.331642-07	2016-06-07 20:17:09.331666-07				
793	P1984	Allyn Ford	Allyn	Ford	8000.00	\N	2016-06-07 20:17:09.334595-07	2016-06-07 20:17:09.334618-07				
794	P560	Lester Fordham	Lester	Fordham	5800.00	\N	2016-06-07 20:17:09.338135-07	2016-06-07 20:17:09.338167-07				
795	P1614	Eric Forrest	Eric	Forrest	9250.00	\N	2016-06-07 20:17:09.342407-07	2016-06-07 20:17:09.342464-07				
796	P1337	Todd Foster	Todd	Foster	5500.00	\N	2016-06-07 20:17:09.346004-07	2016-06-07 20:17:09.346028-07				
797	P1833	Frank Foti	Frank	Foti	42850.00	\N	2016-06-07 20:17:09.349205-07	2016-06-07 20:17:09.349233-07				
798	P1177	Dirk Fournier	Dirk	Fournier	11950.00	\N	2016-06-07 20:17:09.35234-07	2016-06-07 20:17:09.352365-07				
799	P536	Alan Fournier	Alan	Fournier	5000.00	\N	2016-06-07 20:17:09.35529-07	2016-06-07 20:17:09.355313-07				
800	P1652	Diane Fraiman	Diane	Fraiman	4600.00	\N	2016-06-07 20:17:09.35841-07	2016-06-07 20:17:09.358434-07				
801	P1067	Dennis Frank	Dennis	Frank	12500.00	\N	2016-06-07 20:17:09.361423-07	2016-06-07 20:17:09.361446-07				
802	P63	Ted L Freeman Jr.	Ted	Freeman Jr.	5000.00	\N	2016-06-07 20:17:09.364354-07	2016-06-07 20:17:09.364383-07				
803	P245	Matthew French	Matthew	French	8550.00	\N	2016-06-07 20:17:09.367389-07	2016-06-07 20:17:09.367412-07				
804	P243	Rob Freres	Rob	Freres	150000.00	\N	2016-06-07 20:17:09.370356-07	2016-06-07 20:17:09.370378-07				
805	P464	Robert Freres Jr.	Robert	Freres Jr.	15250.00	\N	2016-06-07 20:17:09.373401-07	2016-06-07 20:17:09.373425-07				
806	B77	Freres Lumber Co., Inc.	\N	Freres Lumber Co., Inc.	181043.00	62	2016-06-07 20:17:09.376886-07	2016-06-07 20:17:09.376916-07				
807	B76	Freres Timber, Inc.	\N	Freres Timber, Inc.	305000.00	10	2016-06-07 20:17:09.380103-07	2016-06-07 20:17:09.380129-07				
549	P1981	James Frick	James	Frick	5500.00	\N	2016-06-07 19:56:41.81749-07	2016-06-07 20:17:09.383586-07	Real Estate Agent	http://www.c21harristaylor.com/cave-junction-oregon-real-estate-agent/jim-frick	Banking and Finance	Citizens for Safe Communities (in grant pass)
590	P1494	Jack Friedman	Jack	Friedman	9800.00	\N	2016-06-07 19:56:41.95092-07	2016-06-07 20:17:09.395682-07	not employed / retired "Health Plan Executive Officer" for Providence Portland		Banking and Finance	Oregonians for High School Success; numerous candidate donations
808	P442	Denise Frisbee	Denise	Frisbee	5283.00	28	2016-06-07 20:17:09.403287-07	2016-06-07 20:17:09.403312-07				
809	P486	Amanda Fritz	Amanda	Fritz	149514.00	76	2016-06-07 20:17:09.406238-07	2016-06-07 20:17:09.40626-07				
810	P1666	Mira Frohnmayer	Mira	Frohnmayer	5525.00	\N	2016-06-07 20:17:09.409385-07	2016-06-07 20:17:09.409413-07				
811	P1787	David Fryefield	David	Fryefield	5650.00	\N	2016-06-07 20:17:09.412471-07	2016-06-07 20:17:09.412494-07				
812	P1062	James Fuiten	James	Fuiten	46500.00	\N	2016-06-07 20:17:09.415515-07	2016-06-07 20:17:09.41914-07				
813	P39	William Furman	William	Furman	25100.00	\N	2016-06-07 20:17:09.422439-07	2016-06-07 20:17:09.422461-07				
814	P254	Elizabeth Furse	Elizabeth	Furse	10185.00	\N	2016-06-07 20:17:09.425487-07	2016-06-07 20:17:09.425514-07				
815	P877	Gwyneth Gamble Booth	Gwyneth	Gamble Booth	5100.00	\N	2016-06-07 20:17:09.428787-07	2016-06-07 20:17:09.428816-07				
816	P1864	Mark Ganz	Mark	Ganz	7600.00	\N	2016-06-07 20:17:09.432587-07	2016-06-07 20:17:09.432617-07				
817	P22036	Timothy L Gard	Timothy	Gard	6000.00	\N	2016-06-07 20:17:09.435744-07	2016-06-07 20:17:09.435766-07				
818	P109	Judah Garfinkle	Judah	Garfinkle	5670.00	\N	2016-06-07 20:17:09.439156-07	2016-06-07 20:17:09.439178-07				
819	P717	James Garvey	James	Garvey	48942.00	\N	2016-06-07 20:17:09.442506-07	2016-06-07 20:17:09.442539-07				
820	P1334	Susan Gates	Susan	Gates	9414.00	47	2016-06-07 20:17:09.445867-07	2016-06-07 20:17:09.445896-07				
821	P699	Patricia Gates	Patricia	Gates	6609.00	\N	2016-06-07 20:17:09.448868-07	2016-06-07 20:17:09.448891-07				
822	P294	Roger Gatewood	Roger	Gatewood	5000.00	\N	2016-06-07 20:17:09.451801-07	2016-06-07 20:17:09.451822-07				
823	P681	Bonnie Gauer	Bonnie	Gauer	5647.00	\N	2016-06-07 20:17:09.454867-07	2016-06-07 20:17:09.454891-07				
824	P1345	William Gaylord	William	Gaylord	27949.00	82	2016-06-07 20:17:09.457904-07	2016-06-07 20:17:09.457927-07				
825	P316	Richard Geary	Richard	Geary	10250.00	\N	2016-06-07 20:17:09.461255-07	2016-06-07 20:17:09.461277-07				
827	P1143	Anna Geller	Anna	Geller	14385.00	\N	2016-06-07 20:17:09.46733-07	2016-06-07 20:17:09.467354-07				
828	P1208	Jay Gellert	Jay	Gellert	5000.00	\N	2016-06-07 20:17:09.470367-07	2016-06-07 20:17:09.47039-07				
829	P786	Sara Gelser	Sara	Gelser	6313.00	\N	2016-06-07 20:17:09.473304-07	2016-06-07 20:17:09.473326-07				
830	B29	General Mills	\N	General Mills	695000.00	\N	2016-06-07 20:17:09.476667-07	2016-06-07 20:17:09.4767-07				
831	P162	Wendy Gerlach	Wendy	Gerlach	10350.00	\N	2016-06-07 20:17:09.480005-07	2016-06-07 20:17:09.480033-07				
832	P1383	Richard J Germond	Richard	Germond	4973.00	\N	2016-06-07 20:17:09.483119-07	2016-06-07 20:17:09.483142-07				
833	P198	Michelle Giguere	Michelle	Giguere	5085.00	\N	2016-06-07 20:17:09.486071-07	2016-06-07 20:17:09.486094-07				
834	P578	Phillip Gilbert	Phillip	Gilbert	4675.00	41	2016-06-07 20:17:09.489009-07	2016-06-07 20:17:09.489032-07				
835	P237	Mark Gilbert	Mark	Gilbert	21075.00	\N	2016-06-07 20:17:09.492328-07	2016-06-07 20:17:09.496276-07				
836	P389	Ted Gilbert	Ted	Gilbert	7850.00	\N	2016-06-07 20:17:09.499666-07	2016-06-07 20:17:09.4997-07				
837	P403	Frank C Gill	Frank	Gill	47000.00	\N	2016-06-07 20:17:09.502798-07	2016-06-07 20:17:09.507166-07				
838	P1457	Tim Gill	Tim	Gill	16000.00	\N	2016-06-07 20:17:09.510825-07	2016-06-07 20:17:09.510853-07				
839	P1286	Vic Gilliam	Vic	Gilliam	18000.00	\N	2016-06-07 20:17:09.513774-07	2016-06-07 20:17:09.513798-07				
840	P973	Mark Ginsberg	Mark	Ginsberg	7850.00	\N	2016-06-07 20:17:09.517143-07	2016-06-07 20:17:09.517166-07				
841	P1180	Debra Gisriel	Debra	Gisriel	6690.00	\N	2016-06-07 20:17:09.520257-07	2016-06-07 20:17:09.520282-07				
842	P1543	E. Danell Giustina	Danell	Giustina	8450.00	\N	2016-06-07 20:17:09.523218-07	2016-06-07 20:17:09.523241-07				
843	P12	Jess Glaeser	Jess	Glaeser	6150.00	56	2016-06-07 20:17:09.52638-07	2016-06-07 20:17:09.526409-07				
844	P784	Patricia Glass	Patricia	Glass	5750.00	\N	2016-06-07 20:17:09.529662-07	2016-06-07 20:17:09.529689-07				
845	P544	Peter Glazer	Peter	Glazer	6930.00	65	2016-06-07 20:17:09.532669-07	2016-06-07 20:17:09.532692-07				
846	P22054	K. R. Gleason	K. R.	Gleason	5000.00	\N	2016-06-07 20:17:09.535573-07	2016-06-07 20:17:09.535594-07				
847	P215	Robert Gluckman	Robert	Gluckman	4650.00	\N	2016-06-07 20:17:09.538464-07	2016-06-07 20:17:09.538485-07				
848	P297	Anne Golden	Anne	Golden	5600.00	\N	2016-06-07 20:17:09.541338-07	2016-06-07 20:17:09.54136-07				
849	P1360	Peter Goldman	Peter	Goldman	15870.00	\N	2016-06-07 20:17:09.54518-07	2016-06-07 20:17:09.545238-07				
850	P1392	Harold Goldstein	Harold	Goldstein	33050.00	35	2016-06-07 20:17:09.54853-07	2016-06-07 20:17:09.548554-07				
851	P1064	Mike Golub	Mike	Golub	5850.00	\N	2016-06-07 20:17:09.551579-07	2016-06-07 20:17:09.551602-07				
852	P821	Stephen Gomez	Stephen	Gomez	22100.00	28	2016-06-07 20:17:09.554659-07	2016-06-07 20:17:09.554685-07				
853	P1302	Joseph Gonyea III	Joseph	Gonyea III	6000.00	\N	2016-06-07 20:17:09.557666-07	2016-06-07 20:17:09.557689-07				
854	P730	James N Gonzales	James	Gonzales	5200.00	\N	2016-06-07 20:17:09.560648-07	2016-06-07 20:17:09.560671-07				
855	P145	Greg Goodman	Greg	Goodman	23250.00	\N	2016-06-07 20:17:09.563609-07	2016-06-07 20:17:09.563631-07				
856	P1196	Robert Goodman	Robert	Goodman	8183.00	\N	2016-06-07 20:17:09.566642-07	2016-06-07 20:17:09.566664-07				
857	P1391	Laird Goodman DVM	Laird	Goodman	5200.00	\N	2016-06-07 20:17:09.569681-07	2016-06-07 20:17:09.569705-07				
858	P1378	Robert Gootee	Robert	Gootee	12350.00	\N	2016-06-07 20:17:09.57298-07	2016-06-07 20:17:09.573003-07				
859	P59	Douglas Gordon	Douglas	Gordon	50050.00	\N	2016-06-07 20:17:09.576023-07	2016-06-07 20:17:09.576045-07				
860	P371	Charlotte Gordon	Charlotte	Gordon	50000.00	\N	2016-06-07 20:17:09.57933-07	2016-06-07 20:17:09.57936-07				
861	P482	Walter Gorman	Walter	Gorman	48625.00	38	2016-06-07 20:17:09.586074-07	2016-06-07 20:17:09.586096-07				
862	P1953	Walt Gorman	Walt	Gorman	24650.00	\N	2016-06-07 20:17:09.589037-07	2016-06-07 20:17:09.58906-07				
863	P200	Stephen M Greenleaf	Stephen	Greenleaf	43000.00	\N	2016-06-07 20:17:09.624269-07	2016-06-07 20:17:09.624293-07				
864	P22055	Timothy Gunn	Timothy	Gunn	5000.00	\N	2016-06-07 20:17:09.636761-07	2016-06-07 20:17:09.636784-07				
865	P1609	Richard Gustafson	Richard	Gustafson	5450.00	\N	2016-06-07 20:17:09.63973-07	2016-06-07 20:17:09.639753-07				
866	P1861	Mike Gutzler	Mike	Gutzler	4755.00	49	2016-06-07 20:17:09.642768-07	2016-06-07 20:17:09.642793-07				
867	P1640	David Gwyther	David	Gwyther	48936.00	\N	2016-06-07 20:17:09.646184-07	2016-06-07 20:17:09.646214-07				
868	P247	Allan Hadley	Allan	Hadley	9000.00	\N	2016-06-07 20:17:09.64936-07	2016-06-07 20:17:09.649383-07				
869	P868	Michael Haglund	Michael	Haglund	6450.00	\N	2016-06-07 20:17:09.652416-07	2016-06-07 20:17:09.652439-07				
870	P22041	John H Haines	John	Haines	5500.00	\N	2016-06-07 20:17:09.655448-07	2016-06-07 20:17:09.65547-07				
871	P1846	James Hale	James	Hale	7607.00	\N	2016-06-07 20:17:09.658404-07	2016-06-07 20:17:09.658427-07				
872	P885	Frank W Hale	Frank	Hale	5500.00	\N	2016-06-07 20:17:09.66187-07	2016-06-07 20:17:09.661894-07				
873	P799	Robert C Hale	Robert	Hale	5500.00	\N	2016-06-07 20:17:09.66493-07	2016-06-07 20:17:09.664953-07				
874	P1198	Barbara Hall	Barbara	Hall	20000.00	\N	2016-06-07 20:17:09.667892-07	2016-06-07 20:17:09.667914-07				
875	P430	Ted Halton	Ted	Halton	10800.00	\N	2016-06-07 20:17:09.670924-07	2016-06-07 20:17:09.670948-07				
876	P793	Alexander Hamalian	Alexander	Hamalian	8165.00	\N	2016-06-07 20:17:09.673961-07	2016-06-07 20:17:09.673984-07				
877	P968	Candace Hamel	Candace	Hamel	6547.00	\N	2016-06-07 20:17:09.67712-07	2016-06-07 20:17:09.67715-07				
878	P1687	Clare  L Hamill	Clare	Hamill	10000.00	\N	2016-06-07 20:17:09.680458-07	2016-06-07 20:17:09.680485-07				
879	P1888	Gale Hamilton	Gale	Hamilton	5300.00	\N	2016-06-07 20:17:09.683629-07	2016-06-07 20:17:09.683653-07				
880	P263	Tom Hammer	Tom	Hammer	8072.00	\N	2016-06-07 20:17:09.686607-07	2016-06-07 20:17:09.686629-07				
881	P441	Lynn W Hampton	Lynn	Hampton	27407.00	33	2016-06-07 20:17:09.689591-07	2016-06-07 20:17:09.689615-07				
882	P1498	James Hampton	James	Hampton	8600.00	\N	2016-06-07 20:17:09.692597-07	2016-06-07 20:17:09.692623-07				
883	P1164	Joe Hanauer	Joe	Hanauer	6050.00	\N	2016-06-07 20:17:09.696526-07	2016-06-07 20:17:09.696557-07				
884	P1672	J. Bradford Handley	Bradford	Handley	67444.00	\N	2016-06-07 20:17:09.699577-07	2016-06-07 20:17:09.6996-07				
885	P1771	Lisa A Handley	Lisa	Handley	22500.00	\N	2016-06-07 20:17:09.70258-07	2016-06-07 20:17:09.702603-07				
886	P1411	J. B. Handley	J.	Handley	12500.00	\N	2016-06-07 20:17:09.705646-07	2016-06-07 20:17:09.705668-07				
887	P1009	Jonathan Handley	Jonathan	Handley	5000.00	\N	2016-06-07 20:17:09.708787-07	2016-06-07 20:17:09.708814-07				
888	P1232	R. Patrick Hanlin	Patrick	Hanlin	16000.00	\N	2016-06-07 20:17:09.711907-07	2016-06-07 20:17:09.71193-07				
889	P472	Peter Hansen	Peter	Hansen	19655.00	44	2016-06-07 20:17:09.71517-07	2016-06-07 20:17:09.715193-07				
890	P264	Stephen J Harder	Stephen	Harder	76906.00	\N	2016-06-07 20:17:09.718117-07	2016-06-07 20:17:09.71814-07				
891	P1763	Chris Harker	Chris	Harker	8053.00	60	2016-06-07 20:17:09.721408-07	2016-06-07 20:17:09.721432-07				
892	P412	Scott Harman	Scott	Harman	5500.00	\N	2016-06-07 20:17:09.724317-07	2016-06-07 20:17:09.724339-07				
893	P1390	Dan Harmon	Dan	Harmon	66250.00	\N	2016-06-07 20:17:09.727369-07	2016-06-07 20:17:09.731103-07				
894	P1422	Edwin Harnden	Edwin	Harnden	14850.00	\N	2016-06-07 20:17:09.735031-07	2016-06-07 20:17:09.735053-07				
895	P1290	Richard Harpootlian	Richard	Harpootlian	7500.00	\N	2016-06-07 20:17:09.738004-07	2016-06-07 20:17:09.738028-07				
896	P1037	William Harris	William	Harris	4805.00	26	2016-06-07 20:17:09.740974-07	2016-06-07 20:17:09.740997-07				
897	P1109	Rick Harris	Rick	Harris	9972.00	\N	2016-06-07 20:17:09.744268-07	2016-06-07 20:17:09.744299-07				
898	P909	Mabel Harris	Mabel	Harris	5500.00	\N	2016-06-07 20:17:09.747757-07	2016-06-07 20:17:09.747788-07				
998	B15	Kraft Foods	\N	Kraft Foods	870000.00	\N	2016-06-07 20:17:10.273907-07	2016-06-07 20:17:10.273929-07				
899	P881	Patrick Harrison	Patrick	Harrison	15266.00	\N	2016-06-07 20:17:09.750873-07	2016-06-07 20:17:09.750895-07				
900	P210	Byron L Harrison	Byron	Harrison	5000.00	\N	2016-06-07 20:17:09.753875-07	2016-06-07 20:17:09.753907-07				
901	P1627	Philip Harvey	Philip	Harvey	150000.00	\N	2016-06-07 20:17:09.756952-07	2016-06-07 20:17:09.756986-07				
902	P344	Tinker Hatfield	Tinker	Hatfield	5600.00	\N	2016-06-07 20:17:09.760239-07	2016-06-07 20:17:09.760263-07				
903	P206	Rosaria Haugland	Rosaria	Haugland	5750.00	\N	2016-06-07 20:17:09.763171-07	2016-06-07 20:17:09.763194-07				
904	P1903	Joseph R Hawes	Joseph	Hawes	36383.00	\N	2016-06-07 20:17:09.766181-07	2016-06-07 20:17:09.769782-07				
905	P854	Ken Hayes	Ken	Hayes	20866.00	56	2016-06-07 20:17:09.773295-07	2016-06-07 20:17:09.773318-07				
906	P655	Kenneth Hayes	Kenneth	Hayes	9850.00	\N	2016-06-07 20:17:09.776418-07	2016-06-07 20:17:09.776444-07				
907	P986	Dick Heard	Dick	Heard	25735.00	\N	2016-06-07 20:17:09.779591-07	2016-06-07 20:17:09.783532-07				
908	P29	Letha Heard	Letha	Heard	16615.00	\N	2016-06-07 20:17:09.786983-07	2016-06-07 20:17:09.787005-07				
909	P912	David Helm	David	Helm	5500.00	\N	2016-06-07 20:17:09.797992-07	2016-06-07 20:17:09.798021-07				
910	P1421	Laura Henderson	Laura	Henderson	7400.00	\N	2016-06-07 20:17:09.80116-07	2016-06-07 20:17:09.801184-07				
911	P712	Donna Henderson	Donna	Henderson	6532.00	\N	2016-06-07 20:17:09.804243-07	2016-06-07 20:17:09.804272-07				
912	P1369	Robert Henigson	Robert	Henigson	5000.00	\N	2016-06-07 20:17:09.807351-07	2016-06-07 20:17:09.807383-07				
356	P22019	Joaquin  Hidalgo	Joaquin	Hidalgo	10000.00	\N	2016-06-07 19:56:41.000387-07	2016-06-07 20:17:09.818019-07	President and General Manager of Nike North America	http://www.nike.com/us/en_us/	Retail Services	http://wish.org/
913	P758	Riley J Hill	Riley	Hill	6093.00	\N	2016-06-07 20:17:09.821763-07	2016-06-07 20:17:09.821787-07				
247	P861	Gina Garnero-Hill	Gina	Hill	5000.00	\N	2016-06-07 19:56:40.277937-07	2016-06-07 20:17:09.824607-07		http://www.campaignmoney.com/political/contributions/gina-garnero-hill.asp?cycle=16, https://www.linkedin.com/in/gina-garnero-hill-37505128	Philanthropist	Central Catholic High School
914	P22027	Albert S. Hoagland	Albert	Hoagland	9000.00	\N	2016-06-07 20:17:09.82843-07	2016-06-07 20:17:09.828459-07				
915	P22057	Mary E Hockensmith	Mary	Hockensmith	5000.00	\N	2016-06-07 20:17:09.831674-07	2016-06-07 20:17:09.831701-07				
916	P1743	Eric Hoffman	Eric	Hoffman	17450.00	\N	2016-06-07 20:17:09.834648-07	2016-06-07 20:17:09.83467-07				
917	P1381	Mike Hollern	Mike	Hollern	5250.00	\N	2016-06-07 20:17:09.850206-07	2016-06-07 20:17:09.850229-07				
918	P484	Wayne Holm	Wayne	Holm	5950.00	\N	2016-06-07 20:17:09.853396-07	2016-06-07 20:17:09.85342-07				
919	P55	Benjamin Holm	Benjamin	Holm	5250.00	\N	2016-06-07 20:17:09.856358-07	2016-06-07 20:17:09.856379-07				
920	P429	Jack Holt	Jack	Holt	4600.00	\N	2016-06-07 20:17:09.863306-07	2016-06-07 20:17:09.863339-07				
377	P579	Irwin Holzman	Irwin	Holzman	5500.00	\N	2016-06-07 19:56:41.074963-07	2016-06-07 20:17:09.874969-07	Past Chairman; Retired	https://www.reliablecredit.com/	Banking and Finance	Holzman Foundation Inc
921	B54	Home Builders Association of Metro Portland	\N	Home Builders Association of Metro Portland	179949.00	11	2016-06-07 20:17:09.879429-07	2016-06-07 20:17:09.879459-07				
922	P1952	Robert Hopkins	Robert	Hopkins	8452.00	67	2016-06-07 20:17:09.886701-07	2016-06-07 20:17:09.886724-07				
923	P1201	Jack Hopkins	Jack	Hopkins	7500.00	\N	2016-06-07 20:17:09.889748-07	2016-06-07 20:17:09.889771-07				
924	B20	Horizon Wind Energy	\N	Horizon Wind Energy	236103.00	\N	2016-06-07 20:17:09.892887-07	2016-06-07 20:17:09.892913-07				
429	P1394	Marisa Hormel	Marisa	Hormel	10000.00	\N	2016-06-07 19:56:41.266419-07	2016-06-07 20:17:09.89636-07	Philanthropist and Founder, Yello!	http://www.yellofl.com/people	Philanthropist	She is a proud sponsor of the New York Foundation for the Arts, Chillfest, the Professional Dancers Society, the Fruit Tree Planting Foundation, the Organic Consumers Association and the Organic Farming Research Foundation.
925	P236	Mitchell Hornecker	Mitchell	Hornecker	5600.00	\N	2016-06-07 20:17:09.900276-07	2016-06-07 20:17:09.900299-07				
926	P641	Kenneth Howard	Kenneth	Howard	5000.00	\N	2016-06-07 20:17:09.906924-07	2016-06-07 20:17:09.906948-07				
927	P1707	David Howitt	David	Howitt	7620.00	\N	2016-06-07 20:17:09.910259-07	2016-06-07 20:17:09.910289-07				
928	P22058	Christopher Hughes	Christopher	Hughes	5000.00	\N	2016-06-07 20:17:09.917238-07	2016-06-07 20:17:09.917263-07				
929	P1977	Courtney Hull	Courtney	Hull	5750.00	\N	2016-06-07 20:17:09.924124-07	2016-06-07 20:17:09.924149-07				
930	B91	Humane Society of the United States	\N	Humane Society of the United States	297764.00	14	2016-06-07 20:17:09.927446-07	2016-06-07 20:17:09.927476-07				
931	P1702	Dave Hunt	Dave	Hunt	7480.00	57	2016-06-07 20:17:09.930897-07	2016-06-07 20:17:09.930924-07				
932	P892	Damian Idiart	Damian	Idiart	9503.00	65	2016-06-07 20:17:09.934082-07	2016-06-07 20:17:09.934106-07				
933	P1206	Thomas Imeson	Thomas	Imeson	5650.00	\N	2016-06-07 20:17:09.940836-07	2016-06-07 20:17:09.940858-07				
934	P1219	Ellsworth Ingraham	Ellsworth	Ingraham	9250.00	\N	2016-06-07 20:17:09.943847-07	2016-06-07 20:17:09.943874-07				
935	P775	Jonathan Isaacs	Jonathan	Isaacs	5335.00	\N	2016-06-07 20:17:09.947491-07	2016-06-07 20:17:09.947522-07				
936	P1245	Cary Jackson	Cary	Jackson	6000.00	\N	2016-06-07 20:17:09.954505-07	2016-06-07 20:17:09.95453-07				
937	P686	Milford (Jake) Jacobson	Jake	Jacobson	10500.00	\N	2016-06-07 20:17:09.961423-07	2016-06-07 20:17:09.961448-07				
938	P776	Bronson James	Bronson	James	5718.00	52	2016-06-07 20:17:09.96449-07	2016-06-07 20:17:09.964524-07				
939	P726	Renee James Cooney	Renee	James Cooney	5000.00	\N	2016-06-07 20:17:09.967441-07	2016-06-07 20:17:09.967463-07				
444	P1537	Stephen (T) Janik	Stephen	Janik	15050.00	\N	2016-06-07 19:56:41.344214-07	2016-06-07 20:17:09.97446-07	Partner (Attorney), Ball Janik, LLP	http://www.balljanik.com/bio-detail/janik-stephen-t	Lawyers	Mr. Janik has served on numerous civic boards, regional task forces and special projects. He has served as a Trustee of the Portland School District Real Estate Trust; a member of the Board of Pioneer Courthouse Square, 2000-2006; President of the Board of Pioneer Courthouse Square, 2004-2006; Trustee of the Oregon Health & Science University Foundation, 2011-present; Oregon Health & Science University Foundation Nominating Committee Chair, 2016; Vice Chair of Oregon Health & Science University Foundation, 2016; Trustee of the Portland Art Museum, 2009-2015; Chair of the Portland Art Museum Governance Committee, 2012-2015; Knight Cancer Council Board Member, 2013-present.
940	P1202	Jon V Jaqua	Jon	Jaqua	9000.00	\N	2016-06-07 20:17:09.978768-07	2016-06-07 20:17:09.978801-07				
941	P110	David Jensen	David	Jensen	5177.00	64	2016-06-07 20:17:09.986952-07	2016-06-07 20:17:09.98698-07				
942	P435	Sarah Jensen	Sarah	Jensen	9000.00	\N	2016-06-07 20:17:09.989926-07	2016-06-07 20:17:09.989949-07				
943	P1745	James John	James	John	5000.00	\N	2016-06-07 20:17:09.996946-07	2016-06-07 20:17:09.996977-07				
944	P392	Kevin Johnson	Kevin	Johnson	7810.00	30	2016-06-07 20:17:10.000191-07	2016-06-07 20:17:10.000215-07				
945	P1910	Betsy Johnson	Betsy	Johnson	13944.00	36	2016-06-07 20:17:10.003166-07	2016-06-07 20:17:10.006798-07				
946	P1057	Elizabeth Johnson	Elizabeth	Johnson	17607.00	45	2016-06-07 20:17:10.010595-07	2016-06-07 20:17:10.010619-07				
947	P1729	Lara Johnson	Lara	Johnson	6769.00	53	2016-06-07 20:17:10.01354-07	2016-06-07 20:17:10.013563-07				
948	P1919	Derek Johnson	Derek	Johnson	10405.00	75	2016-06-07 20:17:10.016552-07	2016-06-07 20:17:10.016576-07				
999	P268	Mark Kralj	Mark	Kralj	6850.00	\N	2016-06-07 20:17:10.276888-07	2016-06-07 20:17:10.27691-07				
1000	P1785	Hilary K Krane	Hilary	Krane	5000.00	\N	2016-06-07 20:17:10.279843-07	2016-06-07 20:17:10.279865-07				
302	P495	Arthur C Johnson	Arthur	Johnson	46631.00	83	2016-06-07 19:56:40.686474-07	2016-06-07 20:17:10.023856-07	Litigation Attorney (Partner)	http://justicelawyers.com/attorneys-and-staff/arthur-johnson/	Lawyers	Governor's Willamette River Greenway Committee, Chair 1975-1978.  Oregon Land Conservation and Development Commission, 1991-1994.  Oregon Public Officials Compensation Commission, 1984-2000.      Lane County Circuit Court Juvenile Advisory Council, 1966-1969 (Chair 1968).  Lane County Parks Commission, 1965-1966.  Eugene Human Rights Commission, Chair 1969.  University of Oregon, School of Law, Board of Visitors, 1980-1986.  Pacific Rivers Council, Board of Director s, 1993 to present, Board President 1995-1997.  Environmental Defense Fund.  American Alpine Club.  National Audubon Society.  Sierra Club.  Sierra Club Legal Defense Fund.  Friends of the University of Oregon Library.  University of Oregon Development Fund, 1963-1964.  Maude Kerns Art Center, Board Member, Chair 1982. President, Oregon State Bar Assn, and many committees on the Oregon and Lane County Bar Assns
949	P987	James Johnson	James	Johnson	9025.00	\N	2016-06-07 20:17:10.027174-07	2016-06-07 20:17:10.027198-07				
950	P707	Robert Johnson	Robert	Johnson	6285.00	\N	2016-06-07 20:17:10.030524-07	2016-06-07 20:17:10.030553-07				
951	P1734	John Johnson	John	Johnson	5480.00	\N	2016-06-07 20:17:10.033756-07	2016-06-07 20:17:10.033782-07				
952	P1305	Steven Johnson	Steven	Johnson	5060.00	\N	2016-06-07 20:17:10.036757-07	2016-06-07 20:17:10.036779-07				
953	P946	Forrest N Johnson	Forrest	Johnson	5000.00	\N	2016-06-07 20:17:10.039719-07	2016-06-07 20:17:10.039741-07				
954	P1308	Dwayne Johnson	Dwayne	Johnson	4845.00	\N	2016-06-07 20:17:10.042622-07	2016-06-07 20:17:10.042643-07				
955	P1643	Andy Johnson-Laird	Andy	Johnson-Laird	6000.00	\N	2016-06-07 20:17:10.054794-07	2016-06-07 20:17:10.054818-07				
956	P924	Timothy Jones	Timothy	Jones	5190.00	51	2016-06-07 20:17:10.06142-07	2016-06-07 20:17:10.061445-07				
957	P751	Marie D Jones	Marie	Jones	45000.00	\N	2016-06-07 20:17:10.064458-07	2016-06-07 20:17:10.067995-07				
958	P921	Marie Jones	Marie	Jones	25084.00	\N	2016-06-07 20:17:10.078505-07	2016-06-07 20:17:10.078536-07				
959	P1821	Kathleen W Jones	Kathleen	Jones	14000.00	\N	2016-06-07 20:17:10.081891-07	2016-06-07 20:17:10.081918-07				
960	P1625	Kevin Jones	Kevin	Jones	5400.00	\N	2016-06-07 20:17:10.084868-07	2016-06-07 20:17:10.08489-07				
961	P22059	Randall  D Jones	Randall	Jones	5000.00	\N	2016-06-07 20:17:10.087734-07	2016-06-07 20:17:10.087756-07				
962	P478	Kathy Jones-McCann	Kathy	Jones-McCann	56000.00	\N	2016-06-07 20:17:10.090703-07	2016-06-07 20:17:10.097677-07				
963	P740	Kathleen W Jones-McCann	Kathleen	Jones-McCann	33333.00	\N	2016-06-07 20:17:10.101308-07	2016-06-07 20:17:10.101334-07				
964	P1556	Dan Jordan	Dan	Jordan	6000.00	60	2016-06-07 20:17:10.104332-07	2016-06-07 20:17:10.104355-07				
965	P1263	Jack Joyce	Jack	Joyce	9499.00	\N	2016-06-07 20:17:10.10742-07	2016-06-07 20:17:10.107443-07				
966	P754	James Justice	James	Justice	5000.00	\N	2016-06-07 20:17:10.11038-07	2016-06-07 20:17:10.110406-07				
967	P220	Amed Kahn	Amed	Kahn	5150.00	\N	2016-06-07 20:17:10.113598-07	2016-06-07 20:17:10.113621-07				
387	P1653	Mary Kamppi	Mary	Kamppi	11773.00	92	2016-06-07 19:56:41.110766-07	2016-06-07 20:17:10.116531-07	(Retired? Homemaker? Deceased husband was a schoolteacher) President, Citywatch	https://sites.google.com/site/salemcitywatch/SalemCityWatch/board	Education	President of Citywatch (Salem civic organization),   Watershed Chair  Faye Wright Neighborhood Association
968	P22060	Debra Kantola	Debra	Kantola	5000.00	\N	2016-06-07 20:17:10.120282-07	2016-06-07 20:17:10.120305-07				
969	P22038	Gordon Keane	Gordon	Keane	5750.00	\N	2016-06-07 20:17:10.123253-07	2016-06-07 20:17:10.123275-07				
970	P1322	Robert Keating	Robert	Keating	5950.00	\N	2016-06-07 20:17:10.1262-07	2016-06-07 20:17:10.126224-07				
971	P1080	Timothy Keenen	Timothy	Keenen	9464.00	\N	2016-06-07 20:17:10.129407-07	2016-06-07 20:17:10.129434-07				
972	P1799	Ted E Keizer	Ted	Keizer	59855.00	33	2016-06-07 20:17:10.132857-07	2016-06-07 20:17:10.1365-07				
973	P601	Teddy Keizer	Teddy	Keizer	5914.00	33	2016-06-07 20:17:10.139888-07	2016-06-07 20:17:10.13991-07				
974	P5	Wendie Kellington	Wendie	Kellington	5050.00	\N	2016-06-07 20:17:10.142876-07	2016-06-07 20:17:10.142898-07				
975	B87	Kellogg Company	\N	Kellogg Company	500000.00	\N	2016-06-07 20:17:10.14691-07	2016-06-07 20:17:10.146944-07				
976	P388	Gordon L Kelly	Gordon	Kelly	7541.00	\N	2016-06-07 20:17:10.167586-07	2016-06-07 20:17:10.16762-07				
977	P135	Thomas Kelly	Thomas	Kelly	5950.00	\N	2016-06-07 20:17:10.170733-07	2016-06-07 20:17:10.170757-07				
978	P871	Michael Kendrick	Michael	Kendrick	8000.00	\N	2016-06-07 20:17:10.173757-07	2016-06-07 20:17:10.17378-07				
979	P22061	Bobby Kennedy	Bobby	Kennedy	5000.00	\N	2016-06-07 20:17:10.17671-07	2016-06-07 20:17:10.176733-07				
980	P1898	Bradley Kent	Bradley	Kent	9900.00	\N	2016-06-07 20:17:10.180071-07	2016-06-07 20:17:10.180101-07				
981	P1798	Alissa Keny-Guyer	Alissa	Keny-Guyer	8250.00	58	2016-06-07 20:17:10.1833-07	2016-06-07 20:17:10.183325-07				
982	P341	Brent Kenyon	Brent	Kenyon	7983.00	\N	2016-06-07 20:17:10.186628-07	2016-06-07 20:17:10.18665-07				
983	P15	Keith Ketterling	Keith	Ketterling	6738.00	59	2016-06-07 20:17:10.197678-07	2016-06-07 20:17:10.197711-07				
984	P1816	Nitin Khanna	Nitin	Khanna	5000.00	\N	2016-06-07 20:17:10.200912-07	2016-06-07 20:17:10.200935-07				
349	P674	Patrick Kilkenny	Patrick	Kilkenny	70000.00	\N	2016-06-07 19:56:40.972322-07	2016-06-07 20:17:10.208133-07	Former CEO of Arrowhead General Insurance Agency, Founder at Lucky Duck Foundation	luckyduckfoundation.org	Banking and Finance	Gonzaga University (Major Benefactor), University of Oregon Foundation (Board of Trustees), University of Oregon (Athletic Department Advisory Board), UC San Diego (Athletic Advisory Board Member), San Diego State University (member of Athletic Director's Cabinet), San Diego International Sports Council (Board of Directors),
985	P983	Rod Killen	Rod	Killen	10000.00	\N	2016-06-07 20:17:10.212017-07	2016-06-07 20:17:10.212042-07				
986	P1465	Heather Killough	Heather	Killough	10750.00	\N	2016-06-07 20:17:10.215064-07	2016-06-07 20:17:10.215085-07				
987	P1138	Shane Kim	Shane	Kim	5150.00	\N	2016-06-07 20:17:10.218038-07	2016-06-07 20:17:10.218061-07				
988	P333	Clay Kirk	Clay	Kirk	5500.00	\N	2016-06-07 20:17:10.228386-07	2016-06-07 20:17:10.228411-07				
989	P1860	Margaret Kirkpatrick	Margaret	Kirkpatrick	7950.00	\N	2016-06-07 20:17:10.231675-07	2016-06-07 20:17:10.231705-07				
990	P1010	Robert Klein	Robert	Klein	5000.00	\N	2016-06-07 20:17:10.234808-07	2016-06-07 20:17:10.234831-07				
991	P898	Michael Kleinman	Michael	Kleinman	15000.00	\N	2016-06-07 20:17:10.23775-07	2016-06-07 20:17:10.237773-07				
478	P1375	Douglas Knight	Douglas	Knight	16100.00	\N	2016-06-07 19:56:41.529043-07	2016-06-07 20:17:10.244284-07	City Council Member of the City of Bend, Oregon Government	ci.bend.or.us	Government and Public Service	River West Neighborhood Association (Land Use Chair), Deschutes County Landmarks Commission (Vice Chair), City of Bend Planning Commission (Chair) 
992	P463	Penny Knight	Penny	Knight	5000.00	\N	2016-06-07 20:17:10.248506-07	2016-06-07 20:17:10.248538-07				
993	P1071	Scott Kocher	Scott	Kocher	5065.00	48	2016-06-07 20:17:10.251625-07	2016-06-07 20:17:10.251649-07				
994	P949	Molly Kohnstamm	Molly	Kohnstamm	14125.00	\N	2016-06-07 20:17:10.258245-07	2016-06-07 20:17:10.258268-07				
995	P1665	Kevin Kohnstamm	Kevin	Kohnstamm	9500.00	\N	2016-06-07 20:17:10.261346-07	2016-06-07 20:17:10.261369-07				
996	P1705	Amy Kohnstamm	Amy	Kohnstamm	6930.00	\N	2016-06-07 20:17:10.264563-07	2016-06-07 20:17:10.264586-07				
997	P643	William Korach	William	Korach	10000.00	\N	2016-06-07 20:17:10.267554-07	2016-06-07 20:17:10.267575-07				
1004	P399	Yoshio Kurosaki	Yoshio	Kurosaki	4850.00	\N	2016-06-07 20:17:10.292897-07	2016-06-07 20:17:10.292919-07				
1005	B73	Land OLakes	\N	Land OLakes	760000.00	\N	2016-06-07 20:17:10.308116-07	2016-06-07 20:17:10.308138-07				
1006	P1856	Thomas Landye	Thomas	Landye	9350.00	\N	2016-06-07 20:17:10.311196-07	2016-06-07 20:17:10.311222-07				
583	P1997	Richard Lane	Richard	Lane	11613.00	72	2016-06-07 19:56:41.926862-07	2016-06-07 20:17:10.31449-07	Attorney at Wobbrock & Lane	N/A (Wobbrock & Lane)	Lawyers	Oregon Trial Lawyers Association (Former Legislative Committee Chair)
1007	P20	Margaret C Lanfri	Margaret	Lanfri	5000.00	\N	2016-06-07 20:17:10.318373-07	2016-06-07 20:17:10.318398-07				
1008	P22062	Edward Langerveld	Edward	Langerveld	5000.00	\N	2016-06-07 20:17:10.321421-07	2016-06-07 20:17:10.321446-07				
1009	P416	Leland Larson	Leland	Larson	41650.00	\N	2016-06-07 20:17:10.32839-07	2016-06-07 20:17:10.332219-07				
1010	P829	Lealand Larson	Lealand	Larson	5000.00	\N	2016-06-07 20:17:10.335745-07	2016-06-07 20:17:10.335771-07				
1011	P1124	Sue Larson	Sue	Larson	5000.00	\N	2016-06-07 20:17:10.338833-07	2016-06-07 20:17:10.338856-07				
1012	P22021	June Lattin	June	Lattin	10000.00	\N	2016-06-07 20:17:10.342279-07	2016-06-07 20:17:10.342301-07				
1013	P1013	Georges St. Laurent Jr.	Georges	Laurent Jr.	13000.00	\N	2016-06-07 20:17:10.345399-07	2016-06-07 20:17:10.345426-07				
1014	P1480	Kellie M Leonard	Kellie	Leonard	10000.00	\N	2016-06-07 20:17:10.380704-07	2016-06-07 20:17:10.380733-07				
1015	P847	Carol Lewis	Carol	Lewis	5800.00	\N	2016-06-07 20:17:10.424332-07	2016-06-07 20:17:10.424356-07				
1016	P280	Scott Lewis	Scott	Lewis	5328.00	\N	2016-06-07 20:17:10.427375-07	2016-06-07 20:17:10.427398-07				
1017	P826	Carolynn Loacker	Carolynn	Loacker	31250.00	\N	2016-06-07 20:17:10.467227-07	2016-06-07 20:17:10.467251-07				
1018	P734	Arlene Loble	Arlene	Loble	4625.00	\N	2016-06-07 20:17:10.470325-07	2016-06-07 20:17:10.470348-07				
1019	P48	Rosemary Long	Rosemary	Long	5250.00	\N	2016-06-07 20:17:10.476647-07	2016-06-07 20:17:10.476671-07				
1020	P930	John Loosley	John	Loosley	4525.00	\N	2016-06-07 20:17:10.479635-07	2016-06-07 20:17:10.479665-07				
1021	P1101	Stewart Loving-Gibbard	Stewart	Loving-Gibbard	9822.00	\N	2016-06-07 20:17:10.486931-07	2016-06-07 20:17:10.486954-07				
1022	P608	Stephen Luczo	Stephen	Luczo	7000.00	\N	2016-06-07 20:17:10.489996-07	2016-06-07 20:17:10.490018-07				
1023	P1482	Elisabeth Lyon	Elisabeth	Lyon	9000.00	27	2016-06-07 20:17:10.496541-07	2016-06-07 20:17:10.496569-07				
1024	P496	Dick Lytle	Dick	Lytle	5000.00	\N	2016-06-07 20:17:10.500468-07	2016-06-07 20:17:10.500496-07				
1025	P1971	Albert Machemehl	Albert	Machemehl	5250.00	\N	2016-06-07 20:17:10.503564-07	2016-06-07 20:17:10.503597-07				
1026	P1119	Carter MacNichol	Carter	MacNichol	13350.00	\N	2016-06-07 20:17:10.506618-07	2016-06-07 20:17:10.506643-07				
1027	P1075	D. Carter MacNichol	D. Carter	MacNichol	6000.00	\N	2016-06-07 20:17:10.50971-07	2016-06-07 20:17:10.509733-07				
1028	P100	Gregory Macpherson	Gregory	Macpherson	4576.00	\N	2016-06-07 20:17:10.51273-07	2016-06-07 20:17:10.512755-07				
1029	P1210	Marjorie MacQueen	Marjorie	MacQueen	6300.00	\N	2016-06-07 20:17:10.515831-07	2016-06-07 20:17:10.515854-07				
1030	P1858	Nichole Maher	Nichole	Maher	7125.00	\N	2016-06-07 20:17:10.522117-07	2016-06-07 20:17:10.522141-07				
1031	P917	Jonathan Major	Jonathan	Major	6900.00	\N	2016-06-07 20:17:10.525108-07	2016-06-07 20:17:10.52514-07				
426	P1258	Edward Maletis	Edward	Maletis	107000.00	\N	2016-06-07 19:56:41.260384-07	2016-06-07 20:17:10.535997-07	President at Columbia Distribution	http://www.coldist.com/Home.aspx	Transportation	
1032	P1087	Christoper Malott	Christoper	Malott	8750.00	\N	2016-06-07 20:17:10.555921-07	2016-06-07 20:17:10.555949-07				
1033	P1681	Bradley Malsin	Bradley	Malsin	8900.00	\N	2016-06-07 20:17:10.559044-07	2016-06-07 20:17:10.559067-07				
1034	P1958	Brad Malsin	Brad	Malsin	6300.00	\N	2016-06-07 20:17:10.562004-07	2016-06-07 20:17:10.562026-07				
1035	P1224	Steve March	Steve	March	5161.00	33	2016-06-07 20:17:10.568284-07	2016-06-07 20:17:10.568317-07				
425	P1696	Melvin Mark	Melvin	Mark	26050.00	\N	2016-06-07 19:56:41.245711-07	2016-06-07 20:17:10.575326-07	CEO	http://www.melvinmarkcompanies.com/	Real Estate	Friends of Ted Wheeler, Fix Our Streets Portland, Jose for Portland Schools, Vote 4 Lou Ogden, Friends of Dan Saltzman,  Buehler For a United Oregon, Charlie Hales for Mayor, Friends of Chris Dudley, Committee for Safe and Successful Children, Oregon Zoo 2008  
1036	P834	Kyle N Markley	Kyle	Markley	10300.00	\N	2016-06-07 20:17:10.582746-07	2016-06-07 20:17:10.582776-07				
1037	P944	David Markowitz	David	Markowitz	4600.00	\N	2016-06-07 20:17:10.585945-07	2016-06-07 20:17:10.58597-07				
1038	P1159	Steve Marsden	Steve	Marsden	4790.00	\N	2016-06-07 20:17:10.588937-07	2016-06-07 20:17:10.588959-07				
1039	P80	Chrys Martin	Chrys	Martin	6450.00	\N	2016-06-07 20:17:10.595513-07	2016-06-07 20:17:10.595536-07				
1040	P1586	Kelly Martin	Kelly	Martin	5900.00	\N	2016-06-07 20:17:10.599433-07	2016-06-07 20:17:10.599471-07				
1041	P1169	Jayme Martin	Jayme	Martin	5000.00	\N	2016-06-07 20:17:10.602704-07	2016-06-07 20:17:10.602727-07				
1042	P576	Jerry A Mason	Jerry	Mason	10500.00	\N	2016-06-07 20:17:10.610287-07	2016-06-07 20:17:10.610312-07				
1043	P668	Harris Matarazzo	Harris	Matarazzo	5650.00	\N	2016-06-07 20:17:10.613379-07	2016-06-07 20:17:10.613402-07				
1044	P306	Ralph Matt	Ralph	Matt	13874.00	\N	2016-06-07 20:17:10.616321-07	2016-06-07 20:17:10.616343-07				
1045	P777	Brian Matza	Brian	Matza	11640.00	\N	2016-06-07 20:17:10.619269-07	2016-06-07 20:17:10.619292-07				
1046	P498	Travis Maurer	Travis	Maurer	10000.00	\N	2016-06-07 20:17:10.622217-07	2016-06-07 20:17:10.622238-07				
1047	P938	Richard Mayo	Richard	Mayo	6600.00	\N	2016-06-07 20:17:10.625222-07	2016-06-07 20:17:10.625247-07				
1048	P1238	Joseph Mazzara	Joseph	Mazzara	20178.00	39	2016-06-07 20:17:10.628399-07	2016-06-07 20:17:10.628424-07				
1049	P661	Joe Mazzara	Joe	Mazzara	5463.00	\N	2016-06-07 20:17:10.631816-07	2016-06-07 20:17:10.631845-07				
1050	P628	Doug Mccaslin	Doug	Mccaslin	5000.00	\N	2016-06-07 20:17:10.638855-07	2016-06-07 20:17:10.638878-07				
1051	P415	Steven  P McCoid	Steven	McCoid	8532.00	\N	2016-06-07 20:17:10.641827-07	2016-06-07 20:17:10.641849-07				
1052	P22010	Win McCormick	Win	McCormick	12500.00	\N	2016-06-07 20:17:10.644836-07	2016-06-07 20:17:10.644859-07				
1053	P1043	Gail McCormick	Gail	McCormick	8370.00	\N	2016-06-07 20:17:10.647973-07	2016-06-07 20:17:10.648003-07				
1054	P1152	Bill McCormick	Bill	McCormick	5800.00	\N	2016-06-07 20:17:10.65141-07	2016-06-07 20:17:10.651439-07				
596	P1029	Michael McCulloch	Michael	McCulloch	15000.00	\N	2016-06-07 19:56:41.976144-07	2016-06-07 20:17:10.654407-07	Architect/urban designer 	http://www.pdxplore.org/abstracts/mike-mcculloch/	Construction	Stuart Emmons for Portland, Friends of Sarah for Portland, Novick for Portland, Restore Our Natural Areas, John Kroger for Attorney General, Charlie Hales for Mayor 
1055	P551	James McDermott	James	McDermott	5400.00	\N	2016-06-07 20:17:10.658186-07	2016-06-07 20:17:10.658209-07				
1056	P1484	David McDonald	David	McDonald	9715.00	27	2016-06-07 20:17:10.661191-07	2016-06-07 20:17:10.661215-07				
1057	P1968	Sandra McDonough	Sandra	McDonough	9000.00	28	2016-06-07 20:17:10.664277-07	2016-06-07 20:17:10.664303-07				
1058	P1507	Mark McDougal	Mark	McDougal	6768.00	30	2016-06-07 20:17:10.667663-07	2016-06-07 20:17:10.667695-07				
1059	P31	Duane McDougall	Duane	McDougall	4700.00	\N	2016-06-07 20:17:10.670655-07	2016-06-07 20:17:10.670677-07				
1060	P1777	Ashley McFerron	Ashley	McFerron	6071.00	37	2016-06-07 20:17:10.673652-07	2016-06-07 20:17:10.673684-07				
1061	P1008	Martha H McGinnis	Martha	McGinnis	6930.00	\N	2016-06-07 20:17:10.680411-07	2016-06-07 20:17:10.680434-07				
1062	P1655	Bernard J McGinnis	Bernard	McGinnis	5350.00	\N	2016-06-07 20:17:10.683759-07	2016-06-07 20:17:10.683789-07				
1063	P727	Timothy McGinnis	Timothy	McGinnis	5000.00	\N	2016-06-07 20:17:10.687221-07	2016-06-07 20:17:10.687247-07				
1064	P1277	John McGrory Jr.	John	McGrory Jr.	5000.00	\N	2016-06-07 20:17:10.690382-07	2016-06-07 20:17:10.690406-07				
1065	P376	Malcolm McIver	Malcolm	McIver	7350.00	\N	2016-06-07 20:17:10.693468-07	2016-06-07 20:17:10.693491-07				
1066	P1190	Elizabeth McKanna	Elizabeth	McKanna	11268.00	96	2016-06-07 20:17:10.696656-07	2016-06-07 20:17:10.696683-07				
1067	P485	Megan L. McKinnon	Megan	McKinnon	10000.00	\N	2016-06-07 20:17:10.700106-07	2016-06-07 20:17:10.700136-07				
228	P1779	Gregory  Mecklam	Gregory	Mecklem	7350.00	\N	2016-06-07 19:56:40.181145-07	2016-06-07 20:17:10.70677-07	Candidate: Washington County Commission in District 4	http://gregmecklem.brianbeinlich.com/about.php	Government and Public Service	Oregon Small Woodlands Association, Washington County Farm Bureau Board of Directors
1068	P1880	Laura Meier	Laura	Meier	8000.00	\N	2016-06-07 20:17:10.710429-07	2016-06-07 20:17:10.710452-07				
1069	P305	Sharon Meieran	Sharon	Meieran	8175.00	41	2016-06-07 20:17:10.713375-07	2016-06-07 20:17:10.713397-07				
1070	P13	Shawn Menashe	Shawn	Menashe	9682.00	\N	2016-06-07 20:17:10.716415-07	2016-06-07 20:17:10.716438-07				
1071	B18	Mercola.Com Health Resources LLC	\N	Mercola.com Health Resources LLC	375000.00	\N	2016-06-07 20:17:10.71945-07	2016-06-07 20:17:10.722465-07				
1072	P480	W George Meredith	W George	Meredith	5000.00	\N	2016-06-07 20:17:10.725765-07	2016-06-07 20:17:10.725789-07				
556	P1746	Harry Merlo	Harry	Merlo	20470.00	\N	2016-06-07 19:56:41.835333-07	2016-06-07 20:17:10.733083-07	CEO, Retired	http://lpcorp.com	Forestry and Timber	Citizens to Elect Dennis Richardson,  Committee to Elect Betsy Johnson, Friends of Eileen Brady, Friends of Ted Wheeler, Friends of Chris Dudley
1073	P527	Eric Meslow	Eric	Meslow	8750.00	\N	2016-06-07 20:17:10.736637-07	2016-06-07 20:17:10.736662-07				
1074	P1492	Samuel Metz	Samuel	Metz	10250.00	\N	2016-06-07 20:17:10.739705-07	2016-06-07 20:17:10.739728-07				
1075	P1757	James Meyer	James	Meyer	7500.00	\N	2016-06-07 20:17:10.742834-07	2016-06-07 20:17:10.742856-07				
1076	P74	David Mihm	David	Mihm	5535.00	\N	2016-06-07 20:17:10.750802-07	2016-06-07 20:17:10.750833-07				
1077	P979	Brent Miller	Brent	Miller	11750.00	\N	2016-06-07 20:17:10.773053-07	2016-06-07 20:17:10.773075-07				
1078	P900	Ann Miller	Ann	Miller	10000.00	\N	2016-06-07 20:17:10.776427-07	2016-06-07 20:17:10.77645-07				
1079	P22044	Mark Miller	Mark	Miller	5250.00	\N	2016-06-07 20:17:10.779565-07	2016-06-07 20:17:10.779588-07				
1080	P177	James David Mills	James David	Mills	5000.00	\N	2016-06-07 20:17:10.783102-07	2016-06-07 20:17:10.783134-07				
1081	B70	Mondelez Global, LLC	\N	Mondelez Global, LLC	720000.00	\N	2016-06-07 20:17:10.786464-07	2016-06-07 20:17:10.78649-07				
1082	P113	Chris Mongrain	Chris	Mongrain	5600.00	\N	2016-06-07 20:17:10.789542-07	2016-06-07 20:17:10.789565-07				
1083	P815	Robin Moody	Robin	Moody	4917.00	\N	2016-06-07 20:17:10.796057-07	2016-06-07 20:17:10.79608-07				
1084	P583	Christopher Moore	Christopher	Moore	5175.00	55	2016-06-07 20:17:10.799364-07	2016-06-07 20:17:10.799395-07				
1085	P1772	Scott Moore	Scott	Moore	7943.00	\N	2016-06-07 20:17:10.806088-07	2016-06-07 20:17:10.80612-07				
1086	P158	Michael Moore	Michael	Moore	6150.00	\N	2016-06-07 20:17:10.80987-07	2016-06-07 20:17:10.809897-07				
1087	P1995	Gary D Moore	Gary	Moore	5200.00	\N	2016-06-07 20:17:10.812899-07	2016-06-07 20:17:10.812922-07				
1088	P277	Bill Moore	Bill	Moore	4950.00	\N	2016-06-07 20:17:10.816207-07	2016-06-07 20:17:10.816231-07				
1089	P327	Lloyd Moore	Lloyd	Moore	4740.00	\N	2016-06-07 20:17:10.819292-07	2016-06-07 20:17:10.819315-07				
1090	P1789	Michael Morasch	Michael	Morasch	9200.00	\N	2016-06-07 20:17:10.822284-07	2016-06-07 20:17:10.822306-07				
1091	P22063	Alberto Moreno	Alberto	Moreno	5000.00	\N	2016-06-07 20:17:10.825258-07	2016-06-07 20:17:10.825281-07				
1092	P615	Edward Morey	Edward	Morey	5350.00	\N	2016-06-07 20:17:10.828319-07	2016-06-07 20:17:10.828342-07				
1093	P843	Clark Morgan	Clark	Morgan	7554.00	34	2016-06-07 20:17:10.831471-07	2016-06-07 20:17:10.831499-07				
1094	P667	Wayman L Morgan	Wayman	Morgan	7500.00	\N	2016-06-07 20:17:10.845602-07	2016-06-07 20:17:10.845625-07				
1095	P1256	Jay Morgensen	Jay	Morgensen	13400.00	\N	2016-06-07 20:17:10.849082-07	2016-06-07 20:17:10.849122-07				
1096	P193	Don Morissette	Don	Morissette	7100.00	\N	2016-06-07 20:17:10.852504-07	2016-06-07 20:17:10.852529-07				
1097	P543	Martha Moyer	Martha	Moyer	6021.00	25	2016-06-07 20:17:10.86991-07	2016-06-07 20:17:10.869935-07				
1098	P538	John Murphy	John	Murphy	8000.00	\N	2016-06-07 20:17:10.877002-07	2016-06-07 20:17:10.877036-07				
1099	P355	Duncan Murray	Duncan	Murray	4649.00	49	2016-06-07 20:17:10.880197-07	2016-06-07 20:17:10.88023-07				
1100	P1003	Kelly Muskat	Kelly	Muskat	5000.00	\N	2016-06-07 20:17:10.883518-07	2016-06-07 20:17:10.883548-07				
1101	P651	Jeffrey Mutnick	Jeffrey	Mutnick	8063.00	65	2016-06-07 20:17:10.886781-07	2016-06-07 20:17:10.886807-07				
1102	P1987	Barbara Myers	Barbara	Myers	4508.00	\N	2016-06-07 20:17:10.889718-07	2016-06-07 20:17:10.889741-07				
1103	P1767	Robert Nagel	Robert	Nagel	5400.00	\N	2016-06-07 20:17:10.892619-07	2016-06-07 20:17:10.892641-07				
1104	P22064	Tim Nagel	Tim	Nagel	5000.00	\N	2016-06-07 20:17:10.89555-07	2016-06-07 20:17:10.895572-07				
1105	P372	Jeff Napoli	Jeff	Napoli	6588.00	52	2016-06-07 20:17:10.901363-07	2016-06-07 20:17:10.901394-07				
1106	P687	Ralph Nauman	Ralph	Nauman	5000.00	\N	2016-06-07 20:17:10.904509-07	2016-06-07 20:17:10.904533-07				
1107	P772	Scott Nehring	Scott	Nehring	5795.00	56	2016-06-07 20:17:10.911394-07	2016-06-07 20:17:10.911427-07				
1108	P1728	James Nelson	James	Nelson	6950.00	55	2016-06-07 20:17:10.914673-07	2016-06-07 20:17:10.9147-07				
1109	P1157	Philip Nelson	Philip	Nelson	4875.00	\N	2016-06-07 20:17:10.925212-07	2016-06-07 20:17:10.925235-07				
1110	P444	David Nemarnik	David	Nemarnik	8250.00	\N	2016-06-07 20:17:10.928265-07	2016-06-07 20:17:10.928289-07				
1111	P1083	Robert Neuberger	Robert	Neuberger	8715.00	29	2016-06-07 20:17:10.931353-07	2016-06-07 20:17:10.931377-07				
1112	P1236	Jessica Neuwirth	Jessica	Neuwirth	5000.00	\N	2016-06-07 20:17:10.93464-07	2016-06-07 20:17:10.93467-07				
1113	P1950	Terry Newsom	Terry	Newsom	10000.00	\N	2016-06-07 20:17:10.937881-07	2016-06-07 20:17:10.937906-07				
1114	P1462	Cynthia Newton	Cynthia	Newton	8976.00	\N	2016-06-07 20:17:10.94099-07	2016-06-07 20:17:10.941014-07				
1115	P44	William Nicholson	William	Nicholson	5250.00	\N	2016-06-07 20:17:10.95262-07	2016-06-07 20:17:10.952648-07				
1116	P320	Maia Nickel	Maia	Nickel	10000.00	\N	2016-06-07 20:17:10.95578-07	2016-06-07 20:17:10.955803-07				
1117	P22028	Peter Nickerson	Peter	Nickerson	7750.00	\N	2016-06-07 20:17:10.958851-07	2016-06-07 20:17:10.958873-07				
1118	B19	Nike Inc. and Affiliates	\N	Nike Inc. and Affiliates	501746.00	170	2016-06-07 20:17:10.965851-07	2016-06-07 20:17:10.965875-07				
1119	P919	Marko Nikolovski	Marko	Nikolovski	5000.00	\N	2016-06-07 20:17:10.968924-07	2016-06-07 20:17:10.968948-07				
1120	B4	Northwest Grocery Association	\N	Northwest Grocery Association	365578.00	75	2016-06-07 20:17:10.979413-07	2016-06-07 20:17:10.979435-07				
1121	B41	NW Natural	\N	NW Natural	929400.00	34	2016-06-07 20:17:10.983576-07	2016-06-07 20:17:10.983606-07				
1122	P61	David A Nygaard	David	Nygaard	5000.00	\N	2016-06-07 20:17:10.98678-07	2016-06-07 20:17:10.986806-07				
1123	P657	Chris Olson	Chris	Olson	4985.00	\N	2016-06-07 20:17:10.996512-07	2016-06-07 20:17:10.996535-07				
1124	B93	Oregon Entertainment Center	\N	Oregon Entertainment Center	300777.00	\N	2016-06-07 20:17:11.003805-07	2016-06-07 20:17:11.003829-07				
1125	B81	Oregon Healthcare Enterprises, Inc	\N	Oregon Healthcare Enterprises, Inc	201530.00	\N	2016-06-07 20:17:11.006829-07	2016-06-07 20:17:11.006851-07				
1126	P66	John Oswald	John	Oswald	5350.00	27	2016-06-07 20:17:11.01679-07	2016-06-07 20:17:11.016815-07				
1127	P1794	Anita Pace	Anita	Pace	4710.00	\N	2016-06-07 20:17:11.023642-07	2016-06-07 20:17:11.023664-07				
1128	P1187	Stephen Packer	Stephen	Packer	31680.00	73	2016-06-07 20:17:11.026615-07	2016-06-07 20:17:11.026647-07				
1129	P1118	Steve Packer	Steve	Packer	19307.00	107	2016-06-07 20:17:11.029758-07	2016-06-07 20:17:11.029782-07				
1130	P605	Bob Packwood	Bob	Packwood	9363.00	\N	2016-06-07 20:17:11.036926-07	2016-06-07 20:17:11.036952-07				
1131	P805	Mary Susan Pape	Mary Susan	Pape	7250.00	\N	2016-06-07 20:17:11.043759-07	2016-06-07 20:17:11.043781-07				
1132	P1533	Mary Pape	Mary	Pape	5000.00	\N	2016-06-07 20:17:11.046667-07	2016-06-07 20:17:11.046689-07				
1133	P1822	Susie Pape	Susie	Pape	5000.00	\N	2016-06-07 20:17:11.0499-07	2016-06-07 20:17:11.04993-07				
1134	P1158	David Park	David	Park	5563.00	45	2016-06-07 20:17:11.053197-07	2016-06-07 20:17:11.053224-07				
1135	P1514	Richard Parker	Richard	Parker	9000.00	\N	2016-06-07 20:17:11.059992-07	2016-06-07 20:17:11.060016-07				
1136	P208	Timothy Parks	Timothy	Parks	7500.00	\N	2016-06-07 20:17:11.074074-07	2016-06-07 20:17:11.074095-07				
1137	P434	Scott Parrish	Scott	Parrish	8000.00	\N	2016-06-07 20:17:11.077062-07	2016-06-07 20:17:11.077084-07				
1138	P1610	Linda Paschke	Linda	Paschke	4525.00	38	2016-06-07 20:17:11.084064-07	2016-06-07 20:17:11.084094-07				
1139	P22065	Betsy Pattullo	Betsy	Pattullo	5000.00	\N	2016-06-07 20:17:11.087762-07	2016-06-07 20:17:11.087789-07				
1140	P1679	David Paul	David	Paul	8230.00	\N	2016-06-07 20:17:11.090794-07	2016-06-07 20:17:11.090817-07				
1141	P766	Merritt Paulson	Merritt	Paulson	9504.00	\N	2016-06-07 20:17:11.105731-07	2016-06-07 20:17:11.105754-07				
1142	P46	Norma Paulus	Norma	Paulus	4750.00	\N	2016-06-07 20:17:11.10874-07	2016-06-07 20:17:11.108763-07				
1143	P22045	Alex Payne	Alex	Payne	5200.00	\N	2016-06-07 20:17:11.111789-07	2016-06-07 20:17:11.111821-07				
1144	P765	Thomas M Peddie	Thomas	Peddie	5000.00	\N	2016-06-07 20:17:11.114895-07	2016-06-07 20:17:11.114918-07				
1145	P1962	Greg Peden	Greg	Peden	5136.00	\N	2016-06-07 20:17:11.117907-07	2016-06-07 20:17:11.117939-07				
1146	P820	Dale Pellow	Dale	Pellow	6600.00	\N	2016-06-07 20:17:11.120957-07	2016-06-07 20:17:11.120979-07				
1147	P105	Luann Pelton	Luann	Pelton	4828.00	56	2016-06-07 20:17:11.124025-07	2016-06-07 20:17:11.124049-07				
1148	P797	Greg Penner	Greg	Penner	5000.00	\N	2016-06-07 20:17:11.127041-07	2016-06-07 20:17:11.127063-07				
1149	B49	Pepsi Bottling Group	\N	Pepsi Bottling Group	191698.00	\N	2016-06-07 20:17:11.129999-07	2016-06-07 20:17:11.130022-07				
1150	P855	Joseph Perko	Joseph	Perko	5500.00	\N	2016-06-07 20:17:11.133221-07	2016-06-07 20:17:11.133251-07				
1151	P737	George Pernsteiner	George	Pernsteiner	5800.00	\N	2016-06-07 20:17:11.136402-07	2016-06-07 20:17:11.136429-07				
1152	P1285	Cheryl Perrin	Cheryl	Perrin	7700.00	\N	2016-06-07 20:17:11.139556-07	2016-06-07 20:17:11.139579-07				
1153	P448	Hugh D Perrine	Hugh	Perrine	19500.00	\N	2016-06-07 20:17:11.142524-07	2016-06-07 20:17:11.145922-07				
1154	P1774	Nicholas Perrins	Nicholas	Perrins	6000.00	\N	2016-06-07 20:17:11.149652-07	2016-06-07 20:17:11.149682-07				
1155	P1090	Linda Peters	Linda	Peters	5955.00	58	2016-06-07 20:17:11.153109-07	2016-06-07 20:17:11.153136-07				
1156	P1235	Jesse Peters	Jesse	Peters	5500.00	\N	2016-06-07 20:17:11.156226-07	2016-06-07 20:17:11.15625-07				
1157	P1368	Todd Peterson	Todd	Peterson	4640.00	44	2016-06-07 20:17:11.159337-07	2016-06-07 20:17:11.15936-07				
1158	P4	Daniel Petrusich	Daniel	Petrusich	12200.00	\N	2016-06-07 20:17:11.162427-07	2016-06-07 20:17:11.162449-07				
1159	P1110	Stephen Petruzelli	Stephen	Petruzelli	17800.00	\N	2016-06-07 20:17:11.165809-07	2016-06-07 20:17:11.165834-07				
1160	P1473	Steven Petruzelli	Steven	Petruzelli	5500.00	\N	2016-06-07 20:17:11.169063-07	2016-06-07 20:17:11.169091-07				
1161	P787	Marcia Ann Petty	Marcia Ann	Petty	5581.00	\N	2016-06-07 20:17:11.180027-07	2016-06-07 20:17:11.180053-07				
1162	P1656	Tim Phillips	Tim	Phillips	9500.00	\N	2016-06-07 20:17:11.183693-07	2016-06-07 20:17:11.183723-07				
1163	P1504	Steve Phillips	Steve	Phillips	5200.00	\N	2016-06-07 20:17:11.186927-07	2016-06-07 20:17:11.186952-07				
1164	P22066	Timothy C Phillips	Timothy	Phillips	5000.00	\N	2016-06-07 20:17:11.189934-07	2016-06-07 20:17:11.189956-07				
1165	P1427	lisa phipps	lisa	phipps	5172.00	\N	2016-06-07 20:17:11.192863-07	2016-06-07 20:17:11.192885-07				
1166	P863	Randolph Pickett	Randolph	Pickett	12425.00	52	2016-06-07 20:17:11.195788-07	2016-06-07 20:17:11.19581-07				
1167	P118	Jeff Pickhardt	Jeff	Pickhardt	5000.00	\N	2016-06-07 20:17:11.199248-07	2016-06-07 20:17:11.19928-07				
1168	P1188	Linda Pitchford	Linda	Pitchford	5000.00	\N	2016-06-07 20:17:11.203023-07	2016-06-07 20:17:11.203049-07				
1169	P1162	Ethan Pittleman	Ethan	Pittleman	5751.00	\N	2016-06-07 20:17:11.206143-07	2016-06-07 20:17:11.206168-07				
1170	P239	Stephen Piucci	Stephen	Piucci	18733.00	87	2016-06-07 20:17:11.209115-07	2016-06-07 20:17:11.209137-07				
1171	P1070	Sandra Polishuk	Sandra	Polishuk	9250.00	\N	2016-06-07 20:17:11.212072-07	2016-06-07 20:17:11.212094-07				
1172	P729	Harold Pollin	Harold	Pollin	26550.00	51	2016-06-07 20:17:11.215221-07	2016-06-07 20:17:11.215253-07				
1173	P9	Josephine Pope	Josephine	Pope	14165.00	26	2016-06-07 20:17:11.218524-07	2016-06-07 20:17:11.218549-07				
1174	B10	Portland Entertainment Group	\N	Portland Entertainment Group	740997.00	9	2016-06-07 20:17:11.221593-07	2016-06-07 20:17:11.221616-07				
1175	P1730	Alice Powell	Alice	Powell	19850.00	\N	2016-06-07 20:17:11.224662-07	2016-06-07 20:17:11.224686-07				
1176	P891	Michael Powell	Michael	Powell	11325.00	\N	2016-06-07 20:17:11.2277-07	2016-06-07 20:17:11.227722-07				
1177	P227	Jerry Powell	Jerry	Powell	5400.00	\N	2016-06-07 20:17:11.230723-07	2016-06-07 20:17:11.230756-07				
1178	P94	Donald Powell	Donald	Powell	5002.00	\N	2016-06-07 20:17:11.234133-07	2016-06-07 20:17:11.234164-07				
1179	P329	Scott Pratt	Scott	Pratt	9394.00	80	2016-06-07 20:17:11.237515-07	2016-06-07 20:17:11.237541-07				
1180	P207	Steven D Pratt	Steven	Pratt	19000.00	\N	2016-06-07 20:17:11.240713-07	2016-06-07 20:17:11.244236-07				
1181	B72	Presence Marketing, Inc.	\N	Presence Marketing, Inc.	268635.00	7	2016-06-07 20:17:11.247797-07	2016-06-07 20:17:11.247823-07				
1182	P1002	Peter Preston	Peter	Preston	9025.00	\N	2016-06-07 20:17:11.251993-07	2016-06-07 20:17:11.252042-07				
1183	P22076	Seth Prickett	Seth	Prickett	4703.00	\N	2016-06-07 20:17:11.255286-07	2016-06-07 20:17:11.25531-07				
1184	P1645	Craig H Pubols	Craig	Pubols	6000.00	\N	2016-06-07 20:17:11.258392-07	2016-06-07 20:17:11.258417-07				
1185	P1133	Roy Pulvers	Roy	Pulvers	11765.00	26	2016-06-07 20:17:11.261454-07	2016-06-07 20:17:11.261478-07				
1186	P1967	Azam Qayum	Azam	Qayum	6000.00	\N	2016-06-07 20:17:11.264433-07	2016-06-07 20:17:11.264456-07				
1187	P573	Tim Quenelle	Tim	Quenelle	5875.00	48	2016-06-07 20:17:11.267427-07	2016-06-07 20:17:11.267459-07				
1188	P314	Timothy Quenelle	Timothy	Quenelle	10700.00	\N	2016-06-07 20:17:11.270518-07	2016-06-07 20:17:11.27054-07				
1189	P1692	Kathy Querin	Kathy	Querin	6290.00	\N	2016-06-07 20:17:11.273565-07	2016-06-07 20:17:11.273588-07				
1190	P1571	Jack Quigley	Jack	Quigley	8927.00	\N	2016-06-07 20:17:11.277388-07	2016-06-07 20:17:11.277415-07				
1191	P256	Robert Quillin	Robert	Quillin	26600.00	\N	2016-06-07 20:17:11.280615-07	2016-06-07 20:17:11.28064-07				
1192	P35	Ralph Quinsey	Ralph	Quinsey	5500.00	\N	2016-06-07 20:17:11.284111-07	2016-06-07 20:17:11.284142-07				
1193	P1026	Mel Rader	Mel	Rader	12000.00	\N	2016-06-07 20:17:11.287581-07	2016-06-07 20:17:11.291102-07				
1194	P1237	Jim Rafferty	Jim	Rafferty	5153.00	\N	2016-06-07 20:17:11.294795-07	2016-06-07 20:17:11.294818-07				
1195	P1274	Maurice Rahming	Maurice	Rahming	4750.00	\N	2016-06-07 20:17:11.297864-07	2016-06-07 20:17:11.297889-07				
1196	P644	Nitin Rai	Nitin	Rai	9050.00	\N	2016-06-07 20:17:11.301597-07	2016-06-07 20:17:11.301628-07				
1197	B84	RAI Services Company	\N	RAI Services Company	233300.00	85	2016-06-07 20:17:11.304815-07	2016-06-07 20:17:11.304839-07				
1198	P507	Timothy Ramis	Timothy	Ramis	9850.00	\N	2016-06-07 20:17:11.307838-07	2016-06-07 20:17:11.307872-07				
1199	P1060	Peter Rapp	Peter	Rapp	6500.00	\N	2016-06-07 20:17:11.310888-07	2016-06-07 20:17:11.310912-07				
1200	P261	Bart P Rask	Bart	Rask	12000.00	\N	2016-06-07 20:17:11.313975-07	2016-06-07 20:17:11.314001-07				
1201	P947	William Rasmussen	William	Rasmussen	4984.00	25	2016-06-07 20:17:11.317366-07	2016-06-07 20:17:11.317392-07				
1202	P1544	James Ratzlaff	James	Ratzlaff	31000.00	\N	2016-06-07 20:17:11.320501-07	2016-06-07 20:17:11.320526-07				
1203	P524	Ralph Rayburn	Ralph	Rayburn	6421.00	\N	2016-06-07 20:17:11.323518-07	2016-06-07 20:17:11.32354-07				
1204	P865	Don Reedy	Don	Reedy	6526.00	\N	2016-06-07 20:17:11.326515-07	2016-06-07 20:17:11.326538-07				
1205	P1260	Barbara Regan	Barbara	Regan	6645.00	\N	2016-06-07 20:17:11.329579-07	2016-06-07 20:17:11.329601-07				
1206	P1686	Bobbie Regan	Bobbie	Regan	6500.00	\N	2016-06-07 20:17:11.332558-07	2016-06-07 20:17:11.332582-07				
1207	B88	Regence BlueCross BlueShield of Oregon	\N	Regence BlueCross BlueShield of Oregon	198645.00	8	2016-06-07 20:17:11.335902-07	2016-06-07 20:17:11.335932-07				
1208	P673	Jeffrey Reingold	Jeffrey	Reingold	4850.00	\N	2016-06-07 20:17:11.339157-07	2016-06-07 20:17:11.339182-07				
1209	P647	Walter Remmers	Walter	Remmers	17000.00	\N	2016-06-07 20:17:11.342239-07	2016-06-07 20:17:11.345729-07				
1210	P1434	Patricia Reser	Patricia	Reser	13500.00	\N	2016-06-07 20:17:11.349195-07	2016-06-07 20:17:11.349222-07				
1211	P895	Pat Reser	Pat	Reser	9800.00	\N	2016-06-07 20:17:11.35279-07	2016-06-07 20:17:11.35282-07				
1212	P47	Lisa Reynolds	Lisa	Reynolds	9500.00	\N	2016-06-07 20:17:11.355836-07	2016-06-07 20:17:11.355859-07				
1213	P910	Walden Rhines	Walden	Rhines	5000.00	\N	2016-06-07 20:17:11.35885-07	2016-06-07 20:17:11.358873-07				
1214	P743	Bob Rice	Bob	Rice	4565.00	\N	2016-06-07 20:17:11.361865-07	2016-06-07 20:17:11.361887-07				
1215	P689	Bonnie Richardson	Bonnie	Richardson	4760.00	33	2016-06-07 20:17:11.365035-07	2016-06-07 20:17:11.365059-07				
1216	P102	Paige Richardson	Paige	Richardson	18860.00	\N	2016-06-07 20:17:11.368031-07	2016-06-07 20:17:11.368054-07				
1217	P223	James Richardson	James	Richardson	12000.00	\N	2016-06-07 20:17:11.371109-07	2016-06-07 20:17:11.371133-07				
1218	P759	Peter Richter	Peter	Richter	9500.00	\N	2016-06-07 20:17:11.374148-07	2016-06-07 20:17:11.37417-07				
1219	P503	Marlene Ricketts	Marlene	Ricketts	15000.00	\N	2016-06-07 20:17:11.377175-07	2016-06-07 20:17:11.377207-07				
1220	P363	Thron Riggs	Thron	Riggs	4800.00	48	2016-06-07 20:17:11.380167-07	2016-06-07 20:17:11.380189-07				
1221	P1242	Doug Riggs	Doug	Riggs	17668.00	\N	2016-06-07 20:17:11.383345-07	2016-06-07 20:17:11.383375-07				
1222	P1227	Brian Rila	Brian	Rila	5000.00	\N	2016-06-07 20:17:11.386704-07	2016-06-07 20:17:11.38673-07				
1223	P509	Chuck Riley	Chuck	Riley	5490.00	53	2016-06-07 20:17:11.389819-07	2016-06-07 20:17:11.389841-07				
1224	P1278	Charles D Riley	Charles	Riley	21000.00	\N	2016-06-07 20:17:11.392819-07	2016-06-07 20:17:11.392842-07				
1225	P1296	James Rippey	James	Rippey	10500.00	\N	2016-06-07 20:17:11.395821-07	2016-06-07 20:17:11.395844-07				
1226	P1197	Henry Ritz	Henry	Ritz	23000.00	\N	2016-06-07 20:17:11.399539-07	2016-06-07 20:17:11.399571-07				
1227	P165	Henry Pat Ritz	Henry Pat	Ritz	5000.00	\N	2016-06-07 20:17:11.403194-07	2016-06-07 20:17:11.403221-07				
1228	P381	Pat Ritz	Pat	Ritz	5000.00	\N	2016-06-07 20:17:11.406209-07	2016-06-07 20:17:11.406242-07				
1229	P1264	Jeffrey L Robberson	Jeffrey	Robberson	27500.00	\N	2016-06-07 20:17:11.409259-07	2016-06-07 20:17:11.409282-07				
1230	P395	Joe Robertson	Joe	Robertson	15900.00	27	2016-06-07 20:17:11.412389-07	2016-06-07 20:17:11.412415-07				
1231	P508	Joseph Robertson	Joseph	Robertson	11100.00	\N	2016-06-07 20:17:11.415524-07	2016-06-07 20:17:11.415548-07				
1232	P710	Charles Robinowitz	Charles	Robinowitz	12801.00	61	2016-06-07 20:17:11.41875-07	2016-06-07 20:17:11.418779-07				
1233	P103	William Robinson	William	Robinson	11000.00	\N	2016-06-07 20:17:11.422137-07	2016-06-07 20:17:11.422166-07				
1234	P1600	Art P Robinson	Art	Robinson	9383.00	\N	2016-06-07 20:17:11.425322-07	2016-06-07 20:17:11.425345-07				
1235	P122	Arthur B Robinson	Arthur	Robinson	5785.00	\N	2016-06-07 20:17:11.428309-07	2016-06-07 20:17:11.428332-07				
1236	P1055	David Robinson	David	Robinson	5003.00	\N	2016-06-07 20:17:11.431261-07	2016-06-07 20:17:11.431284-07				
1237	P1225	Arnold Rochlin	Arnold	Rochlin	8149.00	\N	2016-06-07 20:17:11.434598-07	2016-06-07 20:17:11.434628-07				
1238	P108	Arthur Rock	Arthur	Rock	9000.00	\N	2016-06-07 20:17:11.43789-07	2016-06-07 20:17:11.437916-07				
1239	P1546	Reynold Roeder	Reynold	Roeder	10250.00	\N	2016-06-07 20:17:11.44092-07	2016-06-07 20:17:11.440942-07				
1240	P725	Charese Rohny	Charese	Rohny	9079.00	74	2016-06-07 20:17:11.443924-07	2016-06-07 20:17:11.443947-07				
1241	P1778	Brian Rohter	Brian	Rohter	25450.00	\N	2016-06-07 20:17:11.446852-07	2016-06-07 20:17:11.446874-07				
1242	P671	Claire Rolfs	Claire	Rolfs	15150.00	\N	2016-06-07 20:17:11.44998-07	2016-06-07 20:17:11.450006-07				
1243	P265	James Root	James	Root	11500.00	\N	2016-06-07 20:17:11.453484-07	2016-06-07 20:17:11.453515-07				
1244	P1059	Jim Root	Jim	Root	8100.00	\N	2016-06-07 20:17:11.456677-07	2016-06-07 20:17:11.456701-07				
1245	P1991	Peter Roscoe	Peter	Roscoe	5505.00	\N	2016-06-07 20:17:11.459754-07	2016-06-07 20:17:11.459778-07				
1246	P617	Robert Rose	Robert	Rose	25135.00	64	2016-06-07 20:17:11.462832-07	2016-06-07 20:17:11.467031-07				
1247	P1410	Michael Rosenbaum	Michael	Rosenbaum	5050.00	55	2016-06-07 20:17:11.4705-07	2016-06-07 20:17:11.470523-07				
1248	P1364	Paul Rosenbaum	Paul	Rosenbaum	13200.00	\N	2016-06-07 20:17:11.473442-07	2016-06-07 20:17:11.473465-07				
1249	P1036	Ellen Rosenblum	Ellen	Rosenblum	5325.00	26	2016-06-07 20:17:11.476392-07	2016-06-07 20:17:11.476414-07				
1250	P291	Warren Rosenfeld	Warren	Rosenfeld	84900.00	47	2016-06-07 20:17:11.479517-07	2016-06-07 20:17:11.47954-07				
1251	P170	Elden Rosenthal	Elden	Rosenthal	10040.00	62	2016-06-07 20:17:11.482604-07	2016-06-07 20:17:11.482627-07				
1252	P319	Barbara Ross	Barbara	Ross	5182.00	\N	2016-06-07 20:17:11.485955-07	2016-06-07 20:17:11.485985-07				
1253	P469	Marjorie Roswell	Marjorie	Roswell	6250.00	\N	2016-06-07 20:17:11.489242-07	2016-06-07 20:17:11.489268-07				
1254	P1414	Richard Rothman	Richard	Rothman	5000.00	\N	2016-06-07 20:17:11.492344-07	2016-06-07 20:17:11.492369-07				
1255	P1651	Herbert Rothschild	Herbert	Rothschild	4850.00	\N	2016-06-07 20:17:11.495411-07	2016-06-07 20:17:11.495434-07				
1256	P1366	Jeanne Roy	Jeanne	Roy	10650.00	\N	2016-06-07 20:17:11.498405-07	2016-06-07 20:17:11.498427-07				
1257	P270	Richard Roy	Richard	Roy	7350.00	\N	2016-06-07 20:17:11.50191-07	2016-06-07 20:17:11.501959-07				
1258	P266	Jeane Roy	Jeane	Roy	4800.00	\N	2016-06-07 20:17:11.505505-07	2016-06-07 20:17:11.505529-07				
1259	P1313	Tracy Royer	Tracy	Royer	5000.00	\N	2016-06-07 20:17:11.508642-07	2016-06-07 20:17:11.508666-07				
1260	P240	Robert Rubin	Robert	Rubin	5000.00	\N	2016-06-07 20:17:11.511906-07	2016-06-07 20:17:11.511928-07				
1261	P450	Paul Rudd	Paul	Rudd	7500.00	\N	2016-06-07 20:17:11.514907-07	2016-06-07 20:17:11.514931-07				
1262	P982	James Rudd	James	Rudd	6084.00	\N	2016-06-07 20:17:11.517883-07	2016-06-07 20:17:11.517905-07				
1263	P525	Rene Ruiz	Rene	Ruiz	10000.00	\N	2016-06-07 20:17:11.520925-07	2016-06-07 20:17:11.520948-07				
1264	P1752	Aubrey Russell	Aubrey	Russell	7775.00	31	2016-06-07 20:17:11.524073-07	2016-06-07 20:17:11.524098-07				
1265	P1658	John Russell	John	Russell	38082.00	35	2016-06-07 20:17:11.527114-07	2016-06-07 20:17:11.527137-07				
1266	P25	Shelley Russell	Shelley	Russell	6400.00	58	2016-06-07 20:17:11.530157-07	2016-06-07 20:17:11.530179-07				
1267	P1327	Dennis Russell	Dennis	Russell	6800.00	\N	2016-06-07 20:17:11.533566-07	2016-06-07 20:17:11.533591-07				
1268	P1545	Thomas Russell	Thomas	Russell	5300.00	\N	2016-06-07 20:17:11.536984-07	2016-06-07 20:17:11.537013-07				
1269	P1502	Stephanie Ruttert	Stephanie	Ruttert	7336.00	\N	2016-06-07 20:17:11.540163-07	2016-06-07 20:17:11.540188-07				
1270	P22067	Peter Saladino	Peter	Saladino	5000.00	\N	2016-06-07 20:17:11.543219-07	2016-06-07 20:17:11.543241-07				
1271	P1077	Antonia Salm	Antonia	Salm	25000.00	\N	2016-06-07 20:17:11.546183-07	2016-06-07 20:17:11.546205-07				
1272	B80	Salmon for All, Inc.	\N	Salmon for All, Inc.	303468.00	7	2016-06-07 20:17:11.549292-07	2016-06-07 20:17:11.549316-07				
1273	P22068	Chris Saltveit	Chris	Saltveit	5000.00	\N	2016-06-07 20:17:11.553475-07	2016-06-07 20:17:11.553507-07				
1274	P1827	Dan Saltzman	Dan	Saltzman	23275.00	38	2016-06-07 20:17:11.556699-07	2016-06-07 20:17:11.560354-07				
1275	P1755	Sheryl Sandberg	Sheryl	Sandberg	16400.00	\N	2016-06-07 20:17:11.564444-07	2016-06-07 20:17:11.564467-07				
1276	P58	David Sanders	David	Sanders	13000.00	\N	2016-06-07 20:17:11.567484-07	2016-06-07 20:17:11.567506-07				
1277	P1489	Cheryl Saul	Cheryl	Saul	5000.00	\N	2016-06-07 20:17:11.57048-07	2016-06-07 20:17:11.570502-07				
1278	P1123	J. Savage	J.	Savage	7560.00	28	2016-06-07 20:17:11.573446-07	2016-06-07 20:17:11.573478-07				
1279	P693	J. William Savage	J. William	Savage	6820.00	\N	2016-06-07 20:17:11.576445-07	2016-06-07 20:17:11.576466-07				
1280	P1924	Robert Scanlan	Robert	Scanlan	15900.00	\N	2016-06-07 20:17:11.579469-07	2016-06-07 20:17:11.579493-07				
1281	P1476	Doug Schaller	Doug	Schaller	5040.00	47	2016-06-07 20:17:11.582561-07	2016-06-07 20:17:11.582585-07				
1282	P408	Stephen Schiedler	Stephen	Schiedler	5000.00	\N	2016-06-07 20:17:11.585997-07	2016-06-07 20:17:11.586027-07				
1283	P1624	FREDERICK SCHILLING	FREDERICK	SCHILLING	5000.00	\N	2016-06-07 20:17:11.589232-07	2016-06-07 20:17:11.589257-07				
1284	P292	Barry Schlesinger	Barry	Schlesinger	9950.00	\N	2016-06-07 20:17:11.592178-07	2016-06-07 20:17:11.5922-07				
1285	P956	Sandra Schmaier	Sandra	Schmaier	4785.00	\N	2016-06-07 20:17:11.595098-07	2016-06-07 20:17:11.59512-07				
1286	P779	Arlene Schnitzer	Arlene	Schnitzer	33000.00	\N	2016-06-07 20:17:11.598037-07	2016-06-07 20:17:11.598059-07				
1287	P1418	Susan Schnitzer	Susan	Schnitzer	10000.00	\N	2016-06-07 20:17:11.601279-07	2016-06-07 20:17:11.601311-07				
1288	P533	Jordan Schnitzer	Jordan	Schnitzer	8350.00	\N	2016-06-07 20:17:11.604516-07	2016-06-07 20:17:11.604542-07				
1289	P623	Karen Schoenfeld	Karen	Schoenfeld	4953.00	61	2016-06-07 20:17:11.60763-07	2016-06-07 20:17:11.607656-07				
1290	P622	Steven Schoenfeld	Steven	Schoenfeld	4700.00	61	2016-06-07 20:17:11.610871-07	2016-06-07 20:17:11.610895-07				
1291	P1323	Ryan Scholz	Ryan	Scholz	5759.00	64	2016-06-07 20:17:11.613958-07	2016-06-07 20:17:11.613982-07				
1292	P242	Dick Schouten	Dick	Schouten	8377.00	43	2016-06-07 20:17:11.617199-07	2016-06-07 20:17:11.617225-07				
1293	P54	Karen Schouten	Karen	Schouten	12878.00	121	2016-06-07 20:17:11.620248-07	2016-06-07 20:17:11.620271-07				
1294	P691	Stacy Schusterman	Stacy	Schusterman	10100.00	\N	2016-06-07 20:17:11.623329-07	2016-06-07 20:17:11.623352-07				
1295	P432	William Scott	William	Scott	7575.00	32	2016-06-07 20:17:11.626411-07	2016-06-07 20:17:11.626433-07				
1296	P879	Nona Scott	Nona	Scott	6475.00	\N	2016-06-07 20:17:11.629537-07	2016-06-07 20:17:11.629569-07				
1297	P155	Karl Scronce	Karl	Scronce	12810.00	\N	2016-06-07 20:17:11.633525-07	2016-06-07 20:17:11.633563-07				
1298	P357	Gene* Scrutton	Gene*	Scrutton	5815.00	\N	2016-06-07 20:17:11.636939-07	2016-06-07 20:17:11.636969-07				
1299	P45	Constance Seeley	Constance	Seeley	8960.00	25	2016-06-07 20:17:11.640144-07	2016-06-07 20:17:11.640169-07				
1300	P1424	Wendy Seldon	Wendy	Seldon	105000.00	\N	2016-06-07 20:17:11.643128-07	2016-06-07 20:17:11.643151-07				
1301	B75	Seneca Jones Timber Co.	\N	Seneca Jones Timber Co.	259913.00	11	2016-06-07 20:17:11.646162-07	2016-06-07 20:17:11.646186-07				
1302	B26	Seneca Jones Timber Company	\N	Seneca Jones Timber Company	258140.00	66	2016-06-07 20:17:11.649123-07	2016-06-07 20:17:11.649147-07				
1303	B43	Seneca Sustainable Energy	\N	Seneca Sustainable Energy	200000.00	\N	2016-06-07 20:17:11.652779-07	2016-06-07 20:17:11.652811-07				
1304	P365	Bonnie Serkin	Bonnie	Serkin	10400.00	\N	2016-06-07 20:17:11.65617-07	2016-06-07 20:17:11.656193-07				
1305	P354	Patricia Serrurier	Patricia	Serrurier	8900.00	\N	2016-06-07 20:17:11.659248-07	2016-06-07 20:17:11.659272-07				
1306	P1607	Casey Shaar	Casey	Shaar	8250.00	\N	2016-06-07 20:17:11.662321-07	2016-06-07 20:17:11.662346-07				
1307	P1100	Mitra Shahri	Mitra	Shahri	5825.00	\N	2016-06-07 20:17:11.66535-07	2016-06-07 20:17:11.665373-07				
1308	P1477	Howard Shapiro	Howard	Shapiro	5150.00	\N	2016-06-07 20:17:11.668429-07	2016-06-07 20:17:11.668453-07				
1309	P584	George Sheldon	George	Sheldon	10850.00	\N	2016-06-07 20:17:11.671477-07	2016-06-07 20:17:11.6715-07				
1310	P338	Linda Shelk	Linda	Shelk	5850.00	\N	2016-06-07 20:17:11.674484-07	2016-06-07 20:17:11.674507-07				
1311	P1500	Stuart Shelk Jr.	Stuart	Shelk Jr.	20250.00	\N	2016-06-07 20:17:11.677646-07	2016-06-07 20:17:11.677669-07				
1312	P199	Charles (Chuck) N Shepard	Chuck	Shepard	13500.00	\N	2016-06-07 20:17:11.680842-07	2016-06-07 20:17:11.684739-07				
1313	P1832	John Sherman	John	Sherman	15500.00	\N	2016-06-07 20:17:11.688689-07	2016-06-07 20:17:11.688716-07				
1314	P1941	William Shields	William	Shields	17495.00	36	2016-06-07 20:17:11.691809-07	2016-06-07 20:17:11.691832-07				
1315	P1301	Roger Shiels	Roger	Shiels	9150.00	\N	2016-06-07 20:17:11.694805-07	2016-06-07 20:17:11.694828-07				
1316	P22030	R. Mike Shirtcliff	R. Mike	Shirtcliff	7500.00	\N	2016-06-07 20:17:11.697819-07	2016-06-07 20:17:11.697841-07				
1317	P1349	Itzik Shlesinger	Itzik	Shlesinger	6096.00	62	2016-06-07 20:17:11.70095-07	2016-06-07 20:17:11.700978-07				
1318	P1538	Scott Shorr	Scott	Shorr	7498.00	63	2016-06-07 20:17:11.704416-07	2016-06-07 20:17:11.704444-07				
1319	P1847	Stanley A. Shulster	Stanley	Shulster	5070.00	\N	2016-06-07 20:17:11.707642-07	2016-06-07 20:17:11.707666-07				
1320	P1854	Steve Silberstein	Steve	Silberstein	17000.00	\N	2016-06-07 20:17:11.710993-07	2016-06-07 20:17:11.711017-07				
1321	P1404	Steven M. Silberstein	Steven	Silberstein	5000.00	\N	2016-06-07 20:17:11.714562-07	2016-06-07 20:17:11.714586-07				
1322	P488	Gerald Silk	Gerald	Silk	5000.00	\N	2016-06-07 20:17:11.717871-07	2016-06-07 20:17:11.717898-07				
1323	P1792	R Philip Silver	R Philip	Silver	32000.00	\N	2016-06-07 20:17:11.720946-07	2016-06-07 20:17:11.720969-07				
1324	P1722	Robert Simon	Robert	Simon	10222.00	\N	2016-06-07 20:17:11.723961-07	2016-06-07 20:17:11.723983-07				
1325	P795	Eric Simpson	Eric	Simpson	5295.00	\N	2016-06-07 20:17:11.727007-07	2016-06-07 20:17:11.727028-07				
1326	P222	Paul Singer	Paul	Singer	15000.00	\N	2016-06-07 20:17:11.730011-07	2016-06-07 20:17:11.730033-07				
1327	P22069	David Singer	David	Singer	5000.00	\N	2016-06-07 20:17:11.733083-07	2016-06-07 20:17:11.733106-07				
1328	P1915	Michael Smith	Michael	Smith	5450.00	58	2016-06-07 20:17:11.736492-07	2016-06-07 20:17:11.736522-07				
1329	P271	Tom W. Smith	Tom	Smith	4865.00	63	2016-06-07 20:17:11.739883-07	2016-06-07 20:17:11.73991-07				
1330	P413	William L Smith	William	Smith	11391.00	\N	2016-06-07 20:17:11.743027-07	2016-06-07 20:17:11.743051-07				
1331	P778	William Smith	William	Smith	7109.00	\N	2016-06-07 20:17:11.745983-07	2016-06-07 20:17:11.746005-07				
1332	P1559	Carole Smith	Carole	Smith	5650.00	\N	2016-06-07 20:17:11.748973-07	2016-06-07 20:17:11.748996-07				
1333	P618	Charles H.E. Smith	Charles	Smith	5000.00	\N	2016-06-07 20:17:11.752579-07	2016-06-07 20:17:11.75261-07				
1334	P850	Denny Smith	Denny	Smith	4863.00	\N	2016-06-07 20:17:11.755886-07	2016-06-07 20:17:11.75591-07				
1335	P260	Clyde W. Smith Jr.	Clyde	Smith Jr.	8000.00	\N	2016-06-07 20:17:11.75889-07	2016-06-07 20:17:11.758922-07				
1336	P1539	Steve Smucker	Steve	Smucker	4975.00	\N	2016-06-07 20:17:11.762011-07	2016-06-07 20:17:11.762035-07				
1337	P22075	Dave R Snazuk	Dave	Snazuk	4750.00	\N	2016-06-07 20:17:11.765769-07	2016-06-07 20:17:11.765792-07				
1338	P962	Sharon Snow	Sharon	Snow	9576.00	\N	2016-06-07 20:17:11.768932-07	2016-06-07 20:17:11.768956-07				
1339	P559	Julie Snowden	Julie	Snowden	8000.00	\N	2016-06-07 20:17:11.771991-07	2016-06-07 20:17:11.772023-07				
1340	P159	Judy Snyder	Judy	Snyder	8313.00	66	2016-06-07 20:17:11.775193-07	2016-06-07 20:17:11.775217-07				
1341	P172	Joan Snyder	Joan	Snyder	7550.00	\N	2016-06-07 20:17:11.778284-07	2016-06-07 20:17:11.778306-07				
1342	P748	Robert Soehnlen	Robert	Soehnlen	20000.00	\N	2016-06-07 20:17:11.781411-07	2016-06-07 20:17:11.781434-07				
1343	P125	Richard F Sohn	Richard	Sohn	9800.00	\N	2016-06-07 20:17:11.784823-07	2016-06-07 20:17:11.784855-07				
1344	P629	Albert Solheim	Albert	Solheim	63900.00	39	2016-06-07 20:17:11.78848-07	2016-06-07 20:17:11.788509-07				
1345	P1579	Al Solheim	Al	Solheim	16000.00	\N	2016-06-07 20:17:11.791683-07	2016-06-07 20:17:11.791706-07				
1346	P397	Richard Solomon	Richard	Solomon	5369.00	\N	2016-06-07 20:17:11.794766-07	2016-06-07 20:17:11.794789-07				
1347	P1845	Gordon Sondland	Gordon	Sondland	18667.00	\N	2016-06-07 20:17:11.797721-07	2016-06-07 20:17:11.797743-07				
1348	P440	Jeanne Sorensen Siegel	Jeanne	Sorensen Siegel	5000.00	\N	2016-06-07 20:17:11.800998-07	2016-06-07 20:17:11.801046-07				
1349	P1439	Janelle Sorenson	Janelle	Sorenson	31680.00	\N	2016-06-07 20:17:11.804611-07	2016-06-07 20:17:11.80464-07				
1350	P96	Benjamin Souede	Benjamin	Souede	30250.00	\N	2016-06-07 20:17:11.807764-07	2016-06-07 20:17:11.807787-07				
1351	P1554	Gregory Specht	Gregory	Specht	6000.00	\N	2016-06-07 20:17:11.811131-07	2016-06-07 20:17:11.811155-07				
1352	P1442	Robert Speltz	Robert	Speltz	8668.00	66	2016-06-07 20:17:11.814213-07	2016-06-07 20:17:11.814245-07				
1353	P828	John Sperling	John	Sperling	100000.00	\N	2016-06-07 20:17:11.817256-07	2016-06-07 20:17:11.81728-07				
1354	P132	Alexander Spivak	Alexander	Spivak	5000.00	\N	2016-06-07 20:17:11.820235-07	2016-06-07 20:17:11.820257-07				
1355	P1038	Randall Sprick	Randall	Sprick	10900.00	\N	2016-06-07 20:17:11.823235-07	2016-06-07 20:17:11.823256-07				
1356	P360	Thomas Sprott	Thomas	Sprott	5300.00	\N	2016-06-07 20:17:11.826246-07	2016-06-07 20:17:11.826279-07				
1357	P1753	Eric D Spunk	Eric	Spunk	10000.00	\N	2016-06-07 20:17:11.829327-07	2016-06-07 20:17:11.829351-07				
1358	P437	Mark Squire	Mark	Squire	31500.00	\N	2016-06-07 20:17:11.832519-07	2016-06-07 20:17:11.832542-07				
1359	P935	Wendy Squires	Wendy	Squires	5018.00	65	2016-06-07 20:17:11.835867-07	2016-06-07 20:17:11.835897-07				
1360	P22012	Georges C St. Laurent	Georges	St. Laurent	11000.00	\N	2016-06-07 20:17:11.839272-07	2016-06-07 20:17:11.839299-07				
1361	P1603	Crystal Staberg	Crystal	Staberg	5000.00	\N	2016-06-07 20:17:11.842345-07	2016-06-07 20:17:11.842368-07				
1362	P564	Jody Stahancyk	Jody	Stahancyk	5750.00	\N	2016-06-07 20:17:11.845278-07	2016-06-07 20:17:11.8453-07				
1363	B94	Stand for Children, Inc.	\N	Stand for Children, Inc.	747373.00	73	2016-06-07 20:17:11.848271-07	2016-06-07 20:17:11.848293-07				
1364	P1022	Robert Starke	Robert	Starke	5659.00	\N	2016-06-07 20:17:11.851397-07	2016-06-07 20:17:11.851424-07				
1365	P1628	Arthella Starke	Arthella	Starke	4659.00	\N	2016-06-07 20:17:11.854896-07	2016-06-07 20:17:11.854925-07				
1366	P1825	B. Bond Starker	B. Bond	Starker	10000.00	\N	2016-06-07 20:17:11.857954-07	2016-06-07 20:17:11.857977-07				
1367	P1314	Aaron Starr	Aaron	Starr	115470.00	49	2016-06-07 20:17:11.860997-07	2016-06-07 20:17:11.861022-07				
1368	P216	Daniel Stearns	Daniel	Stearns	10500.00	\N	2016-06-07 20:17:11.86409-07	2016-06-07 20:17:11.864113-07				
1369	P1791	Mike Stebbins	Mike	Stebbins	5600.00	59	2016-06-07 20:17:11.867137-07	2016-06-07 20:17:11.867162-07				
1370	P553	Bryan Steelman	Bryan	Steelman	5100.00	\N	2016-06-07 20:17:11.870304-07	2016-06-07 20:17:11.870328-07				
1371	P1690	Janet Stein	Janet	Stein	9429.00	\N	2016-06-07 20:17:11.873277-07	2016-06-07 20:17:11.8733-07				
1372	P82	Joshua Steiner	Joshua	Steiner	50000.00	\N	2016-06-07 20:17:11.876404-07	2016-06-07 20:17:11.876427-07				
1373	P936	Elizabeth Steiner Hayward	Elizabeth	Steiner Hayward	7967.00	26	2016-06-07 20:17:11.879503-07	2016-06-07 20:17:11.879527-07				
1374	P1382	Clara Steiner-Jay	Clara	Steiner-Jay	10840.00	29	2016-06-07 20:17:11.882528-07	2016-06-07 20:17:11.882551-07				
1375	P612	Dennis Steinman	Dennis	Steinman	5425.00	61	2016-06-07 20:17:11.885832-07	2016-06-07 20:17:11.88586-07				
1376	P1613	Mark Stell	Mark	Stell	5000.00	\N	2016-06-07 20:17:11.889327-07	2016-06-07 20:17:11.889354-07				
1377	P1553	David Stelzer	David	Stelzer	10000.00	\N	2016-06-07 20:17:11.892471-07	2016-06-07 20:17:11.892494-07				
1378	P1828	Cornelia Stevens	Cornelia	Stevens	30505.00	\N	2016-06-07 20:17:11.895414-07	2016-06-07 20:17:11.895436-07				
1379	P22006	Mark Stevens	Mark	Stevens	25000.00	\N	2016-06-07 20:17:11.898323-07	2016-06-07 20:17:11.898345-07				
1380	P22042	William Stevens	William	Stevens	5500.00	\N	2016-06-07 20:17:11.901346-07	2016-06-07 20:17:11.9014-07				
1381	P140	Larry Stockman	Larry	Stockman	7000.00	\N	2016-06-07 20:17:11.905281-07	2016-06-07 20:17:11.905311-07				
1382	P1930	N. Robert Stoll	N Robert	Stoll	14700.00	\N	2016-06-07 20:17:11.908427-07	2016-06-07 20:17:11.911386-07				
1383	P1914	Robert Stoll	Robert	Stoll	4525.00	\N	2016-06-07 20:17:11.91488-07	2016-06-07 20:17:11.914904-07				
1384	P1871	Bill Stoller	Bill	Stoller	5375.00	\N	2016-06-07 20:17:11.918113-07	2016-06-07 20:17:11.918147-07				
1385	P614	Wayne Stolz	Wayne	Stolz	6000.00	60	2016-06-07 20:17:11.921676-07	2016-06-07 20:17:11.921707-07				
1386	P1027	Patrick Stone	Patrick	Stone	16250.00	\N	2016-06-07 20:17:11.924938-07	2016-06-07 20:17:11.924964-07				
1387	P1781	H. Frank Storey	H. Frank	Storey	5311.00	28	2016-06-07 20:17:11.92804-07	2016-06-07 20:17:11.928062-07				
1388	P922	Peter Stott	Peter	Stott	79450.00	27	2016-06-07 20:17:11.931076-07	2016-06-07 20:17:11.935376-07				
1389	P289	Cynthia Strawn	Cynthia	Strawn	5500.00	\N	2016-06-07 20:17:11.939081-07	2016-06-07 20:17:11.93911-07				
1390	P168	David Stroble	David	Stroble	25000.00	\N	2016-06-07 20:17:11.942208-07	2016-06-07 20:17:11.942231-07				
1391	P595	Terence Strom	Terence	Strom	5000.00	\N	2016-06-07 20:17:11.94522-07	2016-06-07 20:17:11.945243-07				
1392	P457	Paul Stromberg	Paul	Stromberg	5500.00	\N	2016-06-07 20:17:11.948286-07	2016-06-07 20:17:11.948308-07				
1393	P1998	Erik Stromquist	Erik	Stromquist	5600.00	\N	2016-06-07 20:17:11.951435-07	2016-06-07 20:17:11.951462-07				
1394	P98	Jon Stryker	Jon	Stryker	25000.00	\N	2016-06-07 20:17:11.954965-07	2016-06-07 20:17:11.954996-07				
1395	P660	Larry Stuber	Larry	Stuber	6250.00	59	2016-06-07 20:17:11.95819-07	2016-06-07 20:17:11.958213-07				
1396	P1426	Carol Studenmund	Carol	Studenmund	5020.00	\N	2016-06-07 20:17:11.961298-07	2016-06-07 20:17:11.961321-07				
1397	P401	Tina Stupasky	Tina	Stupasky	11055.00	85	2016-06-07 20:17:11.964388-07	2016-06-07 20:17:11.964413-07				
1398	P563	Vanessa Sturgeon	Vanessa	Sturgeon	9350.00	\N	2016-06-07 20:17:11.967453-07	2016-06-07 20:17:11.96748-07				
1399	P853	David Sugerman	David	Sugerman	20230.00	\N	2016-06-07 20:17:11.970575-07	2016-06-07 20:17:11.970599-07				
1400	P1900	Margo Sulkosky	Margo	Sulkosky	7500.00	\N	2016-06-07 20:17:11.973581-07	2016-06-07 20:17:11.973602-07				
1401	P205	Dana Sullivan	Dana	Sullivan	7168.00	66	2016-06-07 20:17:11.976601-07	2016-06-07 20:17:11.976633-07				
1402	P1979	Melissa Sullivan	Melissa	Sullivan	8500.00	\N	2016-06-07 20:17:11.979633-07	2016-06-07 20:17:11.979655-07				
1403	P148	Rita Sullivan	Rita	Sullivan	5950.00	\N	2016-06-07 20:17:11.982683-07	2016-06-07 20:17:11.982704-07				
1404	P475	James Summerton	James	Summerton	20111.00	\N	2016-06-07 20:17:11.986686-07	2016-06-07 20:17:11.991776-07				
1405	P760	Karen Swift	Karen	Swift	142000.00	\N	2016-06-07 20:17:11.995594-07	2016-06-07 20:17:11.999191-07				
1406	P1849	Sean Swift	Sean	Swift	35000.00	\N	2016-06-07 20:17:12.002679-07	2016-06-07 20:17:12.002708-07				
1407	P1287	John Swift	John	Swift	12000.00	\N	2016-06-07 20:17:12.006474-07	2016-06-07 20:17:12.006502-07				
1408	P577	Henry Swigert	Henry	Swigert	181971.00	\N	2016-06-07 20:17:12.010288-07	2016-06-07 20:17:12.013996-07				
1409	P241	Charles Swindells	Charles	Swindells	28084.00	36	2016-06-07 20:17:12.018175-07	2016-06-07 20:17:12.021817-07				
1410	P1547	William Swindells	William	Swindells	155550.00	\N	2016-06-07 20:17:12.025863-07	2016-06-07 20:17:12.02589-07				
1411	P1578	Anne Taft	Anne	Taft	14000.00	\N	2016-06-07 20:17:12.029374-07	2016-06-07 20:17:12.029403-07				
1412	P790	Brian Tarabochia	Brian	Tarabochia	5000.00	\N	2016-06-07 20:17:12.032655-07	2016-06-07 20:17:12.03268-07				
1413	P1304	Charles Tauman	Charles	Tauman	27255.00	60	2016-06-07 20:17:12.03574-07	2016-06-07 20:17:12.035773-07				
1414	P1948	Kathryn Taylor	Kathryn	Taylor	50000.00	\N	2016-06-07 20:17:12.039199-07	2016-06-07 20:17:12.039228-07				
1415	P1548	Laura B Taylor	Laura	Taylor	8485.00	\N	2016-06-07 20:17:12.042509-07	2016-06-07 20:17:12.042534-07				
1416	P1041	Martin Taylor	Martin	Taylor	7473.00	\N	2016-06-07 20:17:12.045497-07	2016-06-07 20:17:12.045521-07				
1417	P1023	Bradford Taylor	Bradford	Taylor	7350.00	\N	2016-06-07 20:17:12.048514-07	2016-06-07 20:17:12.048538-07				
1418	P728	Tamsin Taylor	Tamsin	Taylor	5050.00	\N	2016-06-07 20:17:12.05189-07	2016-06-07 20:17:12.051923-07				
1419	P1261	Shawn Teevin	Shawn	Teevin	22750.00	\N	2016-06-07 20:17:12.056335-07	2016-06-07 20:17:12.056367-07				
1420	B36	The Greenbrier Companies	\N	The Greenbrier Companies	206136.00	67	2016-06-07 20:17:12.059557-07	2016-06-07 20:17:12.059583-07				
1421	B9	The J.M. Smucker Company	\N	The J.M. Smucker Company	295000.00	\N	2016-06-07 20:17:12.062727-07	2016-06-07 20:17:12.062755-07				
1422	B14	The Standard	\N	The Standard	344115.00	139	2016-06-07 20:17:12.065911-07	2016-06-07 20:17:12.065936-07				
1423	P1126	Swanson Thomas Coon & Newton	Swanson	Thomas	5000.00	\N	2016-06-07 20:17:12.069079-07	2016-06-07 20:17:12.069103-07				
1424	P22031	David R Thomason	David	Thomason	7500.00	\N	2016-06-07 20:17:12.072232-07	2016-06-07 20:17:12.072258-07				
1425	P22032	Doneta A Thomason	Doneta	Thomason	7500.00	\N	2016-06-07 20:17:12.075361-07	2016-06-07 20:17:12.075386-07				
1426	P22025	William E Thompson	William	Thompson	9731.00	\N	2016-06-07 20:17:12.078509-07	2016-06-07 20:17:12.078533-07				
1427	P22070	David A Thompson	David	Thompson	5000.00	\N	2016-06-07 20:17:12.081616-07	2016-06-07 20:17:12.081643-07				
1428	P841	Joseph O Tobin II	Joseph	Tobin II	10000.00	\N	2016-06-07 20:17:12.088962-07	2016-06-07 20:17:12.088993-07				
1429	P659	Larry E Tokarski	Larry	Tokarski	113599.00	\N	2016-06-07 20:17:12.092242-07	2016-06-07 20:17:12.098234-07				
1430	P798	L.E. Tokarski	L	Tokarski	11000.00	\N	2016-06-07 20:17:12.101755-07	2016-06-07 20:17:12.10516-07				
1431	P1467	Keta Tom	Keta	Tom	5200.00	\N	2016-06-07 20:17:12.108618-07	2016-06-07 20:17:12.108642-07				
1432	P1820	Jon D Tompkins	Jon	Tompkins	6500.00	\N	2016-06-07 20:17:12.111678-07	2016-06-07 20:17:12.1117-07				
1433	B12	Tonkon Torp LLP	\N	Tonkon Torp LLP	186441.00	65	2016-06-07 20:17:12.114813-07	2016-06-07 20:17:12.114837-07				
1434	P370	Thomas Toomey	Thomas	Toomey	5000.00	\N	2016-06-07 20:17:12.118009-07	2016-06-07 20:17:12.118034-07				
1435	P1194	Alan Tresidder	Alan	Tresidder	27542.00	45	2016-06-07 20:17:12.121232-07	2016-06-07 20:17:12.121257-07				
1436	P104	Kim Trewhela	Kim	Trewhela	5000.00	\N	2016-06-07 20:17:12.124259-07	2016-06-07 20:17:12.124282-07				
1437	P1193	Leslie Trim	Leslie	Trim	5750.00	\N	2016-06-07 20:17:12.127324-07	2016-06-07 20:17:12.127347-07				
1438	P1826	Valerie Trout	Valerie	Trout	6300.00	\N	2016-06-07 20:17:12.130369-07	2016-06-07 20:17:12.130392-07				
1439	P151	Clifford Trow	Clifford	Trow	13100.00	41	2016-06-07 20:17:12.133692-07	2016-06-07 20:17:12.133728-07				
1440	P30	Cliff Trow	Cliff	Trow	9415.00	\N	2016-06-07 20:17:12.136911-07	2016-06-07 20:17:12.13694-07				
1441	P1413	Christine N. Tunstall	Christine	Tunstall	5800.00	\N	2016-06-07 20:17:12.140144-07	2016-06-07 20:17:12.14017-07				
1442	P22002	Donald Tykeson	Donald	Tykeson	48200.00	\N	2016-06-07 20:17:12.143278-07	2016-06-07 20:17:12.143301-07				
1443	P22008	Richard E Uihlein	Richard	Uihlein	20000.00	\N	2016-06-07 20:17:12.146282-07	2016-06-07 20:17:12.146304-07				
1444	P1336	Sharon Ungerleider	Sharon	Ungerleider	15145.00	\N	2016-06-07 20:17:12.149245-07	2016-06-07 20:17:12.152874-07				
1445	P22023	Johannes HR van Alebeek	Johannes	van Alebeek	10000.00	\N	2016-06-07 20:17:12.156812-07	2016-06-07 20:17:12.15684-07				
1446	P818	John Vandermosten	John	Vandermosten	9511.00	52	2016-06-07 20:17:12.159915-07	2016-06-07 20:17:12.159938-07				
1447	P1626	Richard Vangelisti	Richard	Vangelisti	5629.00	\N	2016-06-07 20:17:12.162908-07	2016-06-07 20:17:12.16294-07				
1448	P22071	Elizabeth K VanStaavern	Elizabeth	VanStaavern	5000.00	\N	2016-06-07 20:17:12.165889-07	2016-06-07 20:17:12.165912-07				
176	P1328	Stehanie Vandavas	Stephanie	Vardavas	7629.00	49	2016-06-07 19:56:39.935131-07	2016-06-07 20:17:12.168919-07	CEO of Row99.com	www.row99.com		Multnomah County Library, Emerge, Portland Art Museum, Mercy Corp, ACLU
1449	P1184	Stephanie Villanueva	Stephanie	Villanueva	5000.00	\N	2016-06-07 20:17:12.173049-07	2016-06-07 20:17:12.173073-07				
1450	P723	Roger Vrilakas	Roger	Vrilakas	5650.00	\N	2016-06-07 20:17:12.176223-07	2016-06-07 20:17:12.176246-07				
1451	P1408	Mary Wagley	Mary	Wagley	4750.00	\N	2016-06-07 20:17:12.179276-07	2016-06-07 20:17:12.179298-07				
1452	P1839	Wes Wagner	Wes	Wagner	10483.00	28	2016-06-07 20:17:12.182285-07	2016-06-07 20:17:12.182317-07				
1453	P773	Diane Wagner	Diane	Wagner	5159.00	\N	2016-06-07 20:17:12.185408-07	2016-06-07 20:17:12.185436-07				
1454	P1959	Guy Wagner	Guy	Wagner	4900.00	\N	2016-06-07 20:17:12.18874-07	2016-06-07 20:17:12.188769-07				
1455	P1401	Mary Waldner	Mary	Waldner	5000.00	\N	2016-06-07 20:17:12.19209-07	2016-06-07 20:17:12.192116-07				
1456	P18	Jay Waldron	Jay	Waldron	4950.00	\N	2016-06-07 20:17:12.195309-07	2016-06-07 20:17:12.195334-07				
1457	P1300	Douglas Walker	Douglas	Walker	8713.00	56	2016-06-07 20:17:12.198407-07	2016-06-07 20:17:12.198429-07				
1458	P950	Marianne Walker	Marianne	Walker	24850.00	\N	2016-06-07 20:17:12.201592-07	2016-06-07 20:17:12.205499-07				
1459	P958	Jonathan Wallace	Jonathan	Wallace	7450.00	\N	2016-06-07 20:17:12.209057-07	2016-06-07 20:17:12.20908-07				
1460	P22043	Nicholas Walrod	Nicholas	Walrod	5500.00	\N	2016-06-07 20:17:12.212167-07	2016-06-07 20:17:12.212188-07				
1461	P1733	Tom Walsh	Tom	Walsh	34600.00	31	2016-06-07 20:17:12.21539-07	2016-06-07 20:17:12.215414-07				
1462	P1178	Robert Walsh	Robert	Walsh	21000.00	\N	2016-06-07 20:17:12.218517-07	2016-06-07 20:17:12.21854-07				
1463	P72	Phil Walsh	Phil	Walsh	8525.00	\N	2016-06-07 20:17:12.221588-07	2016-06-07 20:17:12.22161-07				
1464	P315	Matthew Walstatter	Matthew	Walstatter	10900.00	\N	2016-06-07 20:17:12.22471-07	2016-06-07 20:17:12.224734-07				
1465	P1780	Mabel Walters	Mabel	Walters	5300.00	\N	2016-06-07 20:17:12.227717-07	2016-06-07 20:17:12.227739-07				
1466	P701	Scott Walters	Scott	Walters	5214.00	\N	2016-06-07 20:17:12.231087-07	2016-06-07 20:17:12.231121-07				
1467	P1440	Emery Wang	Emery	Wang	6403.00	40	2016-06-07 20:17:12.234484-07	2016-06-07 20:17:12.234509-07				
1468	P1608	Brian Wannamaker	Brian	Wannamaker	32600.00	\N	2016-06-07 20:17:12.237931-07	2016-06-07 20:17:12.237961-07				
1469	P1501	Jan Ward	Jan	Ward	8250.00	\N	2016-06-07 20:17:12.241193-07	2016-06-07 20:17:12.241219-07				
1470	P1142	Jody Ward	Jody	Ward	7500.00	\N	2016-06-07 20:17:12.244298-07	2016-06-07 20:17:12.244322-07				
1471	P1125	Kim Ward	Kim	Ward	5700.00	\N	2016-06-07 20:17:12.258627-07	2016-06-07 20:17:12.258659-07				
1472	P97	Steve Waring	Steve	Waring	5500.00	\N	2016-06-07 20:17:12.261975-07	2016-06-07 20:17:12.261998-07				
1473	P768	Hon. Mark Warner	Mark	Warner	7500.00	\N	2016-06-07 20:17:12.265117-07	2016-06-07 20:17:12.265141-07				
1474	P41	Gina A Warren	Gina	Warren	10000.00	\N	2016-06-07 20:17:12.268254-07	2016-06-07 20:17:12.268279-07				
1475	P60	Nani Warren	Nani	Warren	9600.00	\N	2016-06-07 20:17:12.271364-07	2016-06-07 20:17:12.271388-07				
1476	P1890	Charles E Warren	Charles	Warren	4590.00	\N	2016-06-07 20:17:12.274455-07	2016-06-07 20:17:12.274478-07				
1477	P1667	Robert Warren Jr.	Robert	Warren Jr.	5000.00	\N	2016-06-07 20:17:12.277547-07	2016-06-07 20:17:12.277571-07				
1478	P1458	Elizabeth Warriner	Elizabeth	Warriner	5225.00	\N	2016-06-07 20:17:12.280645-07	2016-06-07 20:17:12.280671-07				
1479	P284	Donald Washburn	Donald	Washburn	117620.00	51	2016-06-07 20:17:12.283921-07	2016-06-07 20:17:12.290518-07				
1480	P1831	Willow Washburn	Willow	Washburn	13382.00	171	2016-06-07 20:17:12.294563-07	2016-06-07 20:17:12.294589-07				
1481	P1843	Brian Watkins	Brian	Watkins	6000.00	\N	2016-06-07 20:17:12.297627-07	2016-06-07 20:17:12.29765-07				
1482	P752	Hayden Watson	Hayden	Watson	56770.00	\N	2016-06-07 20:17:12.300615-07	2016-06-07 20:17:12.300637-07				
1483	P1532	Samuel Watson	Samuel	Watson	8000.00	\N	2016-06-07 20:17:12.304025-07	2016-06-07 20:17:12.304057-07				
1484	P505	Peter Watts	Peter	Watts	7970.00	\N	2016-06-07 20:17:12.307367-07	2016-06-07 20:17:12.307393-07				
1485	P977	Janet Webster	Janet	Webster	6250.00	\N	2016-06-07 20:17:12.310391-07	2016-06-07 20:17:12.310413-07				
1486	P187	Doris A Wehler	Doris	Wehler	9594.00	\N	2016-06-07 20:17:12.313361-07	2016-06-07 20:17:12.317062-07				
1487	P348	Richard Weissman	Richard	Weissman	6000.00	\N	2016-06-07 20:17:12.320934-07	2016-06-07 20:17:12.320962-07				
1488	P1946	David Wells	David	Wells	5675.00	35	2016-06-07 20:17:12.324242-07	2016-06-07 20:17:12.324269-07				
1489	P1838	Ronald Wells	Ronald	Wells	5000.00	\N	2016-06-07 20:17:12.327316-07	2016-06-07 20:17:12.327338-07				
1490	P1289	Roderick Wendt	Roderick	Wendt	57500.00	\N	2016-06-07 20:17:12.330343-07	2016-06-07 20:17:12.334315-07				
1491	P22039	Mark Wendt	Mark	Wendt	5750.00	\N	2016-06-07 20:17:12.33807-07	2016-06-07 20:17:12.3381-07				
1492	P1428	Warren West	Warren	West	7055.00	60	2016-06-07 20:17:12.341285-07	2016-06-07 20:17:12.341312-07				
1493	B99	Western Beverage Company	\N	Western Beverage Company	178852.00	10	2016-06-07 20:17:12.344504-07	2016-06-07 20:17:12.344531-07				
1494	P1738	Joseph Weston	Joseph	Weston	4700.00	\N	2016-06-07 20:17:12.348013-07	2016-06-07 20:17:12.348042-07				
1495	B98	Weyerhaeuser	\N	Weyerhaeuser	177595.00	183	2016-06-07 20:17:12.351131-07	2016-06-07 20:17:12.351154-07				
1496	P876	Bruce G Wheeler	Bruce	Wheeler	37000.00	\N	2016-06-07 20:17:12.355166-07	2016-06-07 20:17:12.355198-07				
1497	P22046	Priscilla Wieden	Priscilla	Wieden	5200.00	\N	2016-06-07 20:17:12.358787-07	2016-06-07 20:17:12.358811-07				
1498	P144	Tamif Wiedensmith	Tamif	Wiedensmith	5000.00	\N	2016-06-07 20:17:12.361834-07	2016-06-07 20:17:12.361856-07				
1499	P1034	Jeffrey Wihtol	Jeffrey	Wihtol	37114.00	78	2016-06-07 20:17:12.365293-07	2016-06-07 20:17:12.365318-07				
1500	P1647	Karen Williams	Karen	Williams	12220.00	32	2016-06-07 20:17:12.368771-07	2016-06-07 20:17:12.368805-07				
1501	P1266	Michael Williams	Michael	Williams	16125.00	54	2016-06-07 20:17:12.372063-07	2016-06-07 20:17:12.372088-07				
1502	P669	Timothy Williams	Timothy	Williams	8618.00	64	2016-06-07 20:17:12.37525-07	2016-06-07 20:17:12.375278-07				
1503	P562	Veronica Williams	Veronica	Williams	8022.00	109	2016-06-07 20:17:12.378519-07	2016-06-07 20:17:12.378543-07				
1504	P722	Scott Williams	Scott	Williams	32200.00	\N	2016-06-07 20:17:12.381763-07	2016-06-07 20:17:12.385513-07				
1505	P1355	Kathleen Williams	Kathleen	Williams	6285.00	\N	2016-06-07 20:17:12.389307-07	2016-06-07 20:17:12.389337-07				
1506	P1954	Bill Willitts	Bill	Willitts	7000.00	\N	2016-06-07 20:17:12.392545-07	2016-06-07 20:17:12.39257-07				
1507	P526	Brian Wilson	Brian	Wilson	6579.00	\N	2016-06-07 20:17:12.395586-07	2016-06-07 20:17:12.395611-07				
1508	P1185	James Winkler	James	Winkler	37100.00	27	2016-06-07 20:17:12.398669-07	2016-06-07 20:17:12.402386-07				
1509	P1621	Katherine Wiper	Katherine	Wiper	6400.00	\N	2016-06-07 20:17:12.406404-07	2016-06-07 20:17:12.406444-07				
1510	P808	Michael Wise	Michael	Wise	6201.00	32	2016-06-07 20:17:12.409697-07	2016-06-07 20:17:12.409721-07				
1511	P1818	Jody Wiser	Jody	Wiser	7889.00	35	2016-06-07 20:17:12.412801-07	2016-06-07 20:17:12.412834-07				
1512	P1204	JoAnn Wiser	JoAnn	Wiser	6100.00	\N	2016-06-07 20:17:12.415894-07	2016-06-07 20:17:12.415919-07				
1513	P364	Gary Withers	Gary	Withers	10150.00	\N	2016-06-07 20:17:12.419092-07	2016-06-07 20:17:12.419119-07				
1514	P512	Richard Withnell	Richard	Withnell	24775.00	26	2016-06-07 20:17:12.422331-07	2016-06-07 20:17:12.422357-07				
1515	P195	Richard (Dick) Withnell	Dick	Withnell	14748.00	\N	2016-06-07 20:17:12.42543-07	2016-06-07 20:17:12.425453-07				
1516	P1252	Gayle Withnell	Gayle	Withnell	10144.00	\N	2016-06-07 20:17:12.428476-07	2016-06-07 20:17:12.428498-07				
1517	P586	Lawrence Wobbrock	Lawrence	Wobbrock	7480.00	\N	2016-06-07 20:17:12.431489-07	2016-06-07 20:17:12.431511-07				
1518	P359	Rory Wold	Rory	Wold	7653.00	122	2016-06-07 20:17:12.434541-07	2016-06-07 20:17:12.434573-07				
1519	P1646	Robert Wolf	Robert	Wolf	5213.00	58	2016-06-07 20:17:12.43766-07	2016-06-07 20:17:12.437689-07				
1520	P1531	David Wolf	David	Wolf	5075.00	\N	2016-06-07 20:17:12.441205-07	2016-06-07 20:17:12.441234-07				
1521	P26	Randall Wolfe	Randall	Wolfe	4599.00	52	2016-06-07 20:17:12.444482-07	2016-06-07 20:17:12.44451-07				
1522	P22024	Ronald Woltjer	Ronald	Woltjer	9913.00	\N	2016-06-07 20:17:12.447612-07	2016-06-07 20:17:12.447636-07				
1523	P186	Bing Wong	Bing	Wong	19800.00	81	2016-06-07 20:17:12.450579-07	2016-06-07 20:17:12.450602-07				
1524	P379	Kenneth R Wood	Kenneth	Wood	14800.00	\N	2016-06-07 20:17:12.453745-07	2016-06-07 20:17:12.458295-07				
1525	P272	Carlton Woodard	Carlton	Woodard	12250.00	\N	2016-06-07 20:17:12.462232-07	2016-06-07 20:17:12.462255-07				
1526	P22007	Todd Woodley	Todd	Woodley	25000.00	\N	2016-06-07 20:17:12.465397-07	2016-06-07 20:17:12.465421-07				
1527	P1271	Jay Woodworth	Jay	Woodworth	10000.00	\N	2016-06-07 20:17:12.469134-07	2016-06-07 20:17:12.472923-07				
1528	P1312	Michael Wray	Michael	Wray	4872.00	\N	2016-06-07 20:17:12.476357-07	2016-06-07 20:17:12.476381-07				
1529	P1475	Curtis Wright	Curtis	Wright	4575.00	26	2016-06-07 20:17:12.479365-07	2016-06-07 20:17:12.479387-07				
1530	B66	WVP Health Authority	\N	WVP Health Authority	925000.00	\N	2016-06-07 20:17:12.482389-07	2016-06-07 20:17:12.482413-07				
1531	P1762	William Wyatt	William	Wyatt	5300.00	\N	2016-06-07 20:17:12.485478-07	2016-06-07 20:17:12.485511-07				
1532	P1310	Daniel Yates	Daniel	Yates	4900.00	\N	2016-06-07 20:17:12.488758-07	2016-06-07 20:17:12.488787-07				
1533	P1218	Michelle Yee	Michelle	Yee	5200.00	\N	2016-06-07 20:17:12.492104-07	2016-06-07 20:17:12.492129-07				
1534	P295	Alan Yordy	Alan	Yordy	9500.00	\N	2016-06-07 20:17:12.495807-07	2016-06-07 20:17:12.495839-07				
1535	P1519	Junki Yoshida	Junki	Yoshida	150850.00	42	2016-06-07 20:17:12.498998-07	2016-06-07 20:17:12.502434-07				
1536	P1163	Candace Young	Candace	Young	14100.00	\N	2016-06-07 20:17:12.507466-07	2016-06-07 20:17:12.507497-07				
1537	P1086	Julie Young	Julie	Young	10150.00	\N	2016-06-07 20:17:12.510686-07	2016-06-07 20:17:12.510709-07				
1538	P445	Kelly Young	Kelly	Young	5000.00	\N	2016-06-07 20:17:12.513767-07	2016-06-07 20:17:12.513789-07				
1539	P11	William Young	William	Young	4685.00	\N	2016-06-07 20:17:12.516819-07	2016-06-07 20:17:12.516842-07				
1540	P592	Mark Youngren	Mark	Youngren	5500.00	\N	2016-06-07 20:17:12.520092-07	2016-06-07 20:17:12.52012-07				
1541	B59	Youngs Columbia	\N	Youngs Columbia	453208.00	9	2016-06-07 20:17:12.523343-07	2016-06-07 20:17:12.523367-07				
1542	P1103	Richard Yugler	Richard	Yugler	7628.00	60	2016-06-07 20:17:12.526412-07	2016-06-07 20:17:12.526444-07				
1543	P1623	Tina Zaccaria	Tina	Zaccaria	7300.00	\N	2016-06-07 20:17:12.529479-07	2016-06-07 20:17:12.529502-07				
1544	P378	Lois Zaerr	Lois	Zaerr	6200.00	\N	2016-06-07 20:17:12.532484-07	2016-06-07 20:17:12.532506-07				
1545	P1233	Gregory Zeuthen	Gregory	Zeuthen	8968.00	61	2016-06-07 20:17:12.535613-07	2016-06-07 20:17:12.535637-07				
1546	P1582	Jason Zidell	Jason	Zidell	55000.00	\N	2016-06-07 20:17:12.539203-07	2016-06-07 20:17:12.539234-07				
1547	P896	Jay Zidell	Jay	Zidell	16560.00	\N	2016-06-07 20:17:12.542959-07	2016-06-07 20:17:12.54299-07				
\.


--
-- Data for Name: donordata_patronagecategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY donordata_patronagecategory (id, category) FROM stdin;
10	Business
7	Health
2	Education
4	Environment
8	Democratic & Liberal
9	Republican & Conservative
12	Independent Party
11	Animal Rights
3	Arts & Culture
1	Science & Technology
6	Civic
5	Social Justice
\.


--
-- Name: donordata_aliasmap_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY donordata_aliasmap
    ADD CONSTRAINT donordata_aliasmap_pkey PRIMARY KEY (id);


--
-- Name: donordata_donor_donor_ident_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY donordata_donor
    ADD CONSTRAINT donordata_donor_donor_ident_key UNIQUE (donor_ident);


--
-- Name: donordata_donor_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY donordata_donor
    ADD CONSTRAINT donordata_donor_pkey PRIMARY KEY (id);


--
-- Name: donordata_patronagecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY donordata_patronagecategory
    ADD CONSTRAINT donordata_patronagecategory_pkey PRIMARY KEY (id);


--
-- Name: donordata_aliasmap_6be37982; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX donordata_aliasmap_6be37982 ON donordata_aliasmap USING btree (parent_id);


--
-- Name: donordata_donor_donor_ident_4b419441_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX donordata_donor_donor_ident_4b419441_like ON donordata_donor USING btree (donor_ident varchar_pattern_ops);


--
-- Name: donordata_aliasmap_parent_id_df20e611_fk_donordata_donor_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY donordata_aliasmap
    ADD CONSTRAINT donordata_aliasmap_parent_id_df20e611_fk_donordata_donor_id FOREIGN KEY (parent_id) REFERENCES donordata_donor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

