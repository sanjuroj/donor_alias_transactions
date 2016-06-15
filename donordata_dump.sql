--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.donordata_patronagecategory_donors DROP CONSTRAINT donordata_patronagecate_donor_id_91fcd2a0_fk_donordata_donor_id;
ALTER TABLE ONLY public.donordata_aliasmap DROP CONSTRAINT donordata_aliasmap_parent_id_df20e611_fk_donordata_donor_id;
ALTER TABLE ONLY public.donordata_patronagecategory_donors DROP CONSTRAINT d5d22555a2cddbd1af24084d843bee9f;
DROP INDEX public.donordata_patronagecategory_donors_9ce2ed5c;
DROP INDEX public.donordata_patronagecategory_donors_029df19e;
DROP INDEX public.donordata_donor_donor_ident_4b419441_like;
DROP INDEX public.donordata_aliasmap_6be37982;
ALTER TABLE ONLY public.donordata_patronagecategory DROP CONSTRAINT donordata_patronagecategory_pkey;
ALTER TABLE ONLY public.donordata_patronagecategory_donors DROP CONSTRAINT donordata_patronagecategory_donors_pkey;
ALTER TABLE ONLY public.donordata_patronagecategory_donors DROP CONSTRAINT donordata_patronagecategory__patronagecategory_id_89295375_uniq;
ALTER TABLE ONLY public.donordata_donor DROP CONSTRAINT donordata_donor_pkey;
ALTER TABLE ONLY public.donordata_donor DROP CONSTRAINT donordata_donor_donor_ident_key;
ALTER TABLE ONLY public.donordata_aliasmap DROP CONSTRAINT donordata_aliasmap_pkey;
ALTER TABLE public.donordata_patronagecategory_donors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.donordata_patronagecategory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.donordata_donor ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.donordata_aliasmap ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.donordata_patronagecategory_id_seq;
DROP SEQUENCE public.donordata_patronagecategory_donors_id_seq;
DROP TABLE public.donordata_patronagecategory_donors;
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

SELECT pg_catalog.setval('donordata_aliasmap_id_seq', 256, true);


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

SELECT pg_catalog.setval('donordata_donor_id_seq', 7096, true);


--
-- Name: donordata_patronagecategory; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE donordata_patronagecategory (
    id integer NOT NULL,
    category character varying(255) NOT NULL
);


--
-- Name: donordata_patronagecategory_donors; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE donordata_patronagecategory_donors (
    id integer NOT NULL,
    patronagecategory_id integer NOT NULL,
    donor_id integer NOT NULL
);


--
-- Name: donordata_patronagecategory_donors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE donordata_patronagecategory_donors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: donordata_patronagecategory_donors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE donordata_patronagecategory_donors_id_seq OWNED BY donordata_patronagecategory_donors.id;


--
-- Name: donordata_patronagecategory_donors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('donordata_patronagecategory_donors_id_seq', 2919, true);


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
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY donordata_patronagecategory_donors ALTER COLUMN id SET DEFAULT nextval('donordata_patronagecategory_donors_id_seq'::regclass);


--
-- Data for Name: donordata_aliasmap; Type: TABLE DATA; Schema: public; Owner: -
--

COPY donordata_aliasmap (id, alias, parent_id) FROM stdin;
177	Terrance J Aarnio	5854
178	Curtis W Baker	5923
179	Phil Barnhart	5934
180	Philip Barnhart	5934
181	Terrance Bean	6165
182	Robert H. Beatty-Walters	6111
183	Ronald H. Beltz	6137
184	Leonard J Bergstein	6166
185	Jim Bernard	6171
186	Jim Bernau	6172
187	James A Bisenius	6030
188	William C Bradbury	6191
189	Norman Brenden	5846
190	Norman L Brendon	5846
191	Peter J Brix	6201
192	Scott D Campbell	6225
193	Karla S Chambers	6246
194	Matthew Chapman	6248
195	Idelle Collins	6260
196	Gary Combs	6154
197	Tom DAmore	5760
198	William M. Dickey	6280
199	Leanne Dilorenzo	5865
200	Robert (Bob) L Eberhard	6313
201	Michael Fahey	6129
202	James D. Fuiten	6361
203	Mark A Gilbert	6384
204	Frank Gill	6386
205	John D. Gray	6126
206	Dan D Harmon	6442
207	Joseph Hawes	6453
208	Richard (Dick) Heard	6456
209	Stephen T. Janik	5994
210	Elizabeth Johnson	6494
211	Arthur C Johnson	5852
212	Valerie Johnson Eves	5891
213	Marie Jones	6506
214	Kathleen W Jones-McCann	6511
215	Kathleen W Jones	6511
216	Teddy Keizer	6521
217	James O Kelly	5856
218	Jim Kelly	5856
219	Paul Kerley	6103
220	Patrick Kilkenny	5899
221	Randolph Labbe	5955
222	Lealand Larson	6558
223	Charles Lillis	5863
224	Leanne Littrell Dilorenzo	5867
225	Edward Maletis	5976
226	Chris Maletis III	5981
227	Harry A Merlo	6106
228	Andrew W Miller	5862
229	Frank Morse	5866
230	J. Franklin (Frank) Morse	5866
231	Hugh Perrine	6702
232	Marcia Petty	5978
233	Steven Pratt	6729
234	Melvin Rader	6742
235	Walter E Remmers	6758
236	Robert L Rose	6795
237	Dan R. Saltzman	6823
238	Chuck N Shepard	6861
239	Peter W Stott	6937
240	James  E Summerton	6953
241	Karen A Swift	6954
242	Henry T Swigert	6957
243	Charles J Swindells	6958
244	Larry Tokarski	6978
245	Lawrence E Tokarski	6978
246	Sharon M. Ungerleider	6993
247	Marianne M Walker	7007
248	Donald A. Washburn	7028
249	Don Washburn	7028
250	Doris Wehler	7035
251	Roderick C. Wendt	7039
252	Scott A Williams	7053
253	James H Winkler	7057
254	Kenneth Wood	7073
255	Jay M Woodworth	7076
256	JUNKI YOSHIDA	7084
\.


--
-- Data for Name: donordata_donor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY donordata_donor (id, donor_ident, full_name, first_name, last_name, donations_amount, donations_count, create_date, update_date, job_title, employer_url, employer_industry, patronage) FROM stdin;
5551	P1388	Glenn Kalnasy	\N	\N	\N	\N	2016-06-14 17:44:48.394393-07	2016-06-14 17:44:48.394444-07	Managing Director	Juniper Group LLC (no website)	Banking and Finance	
5552	P534	William Ten Pas	\N	\N	\N	\N	2016-06-14 17:44:48.398709-07	2016-06-14 17:44:48.39874-07	Senior Vice President	www.modahealth.com	Healthcare Professionals	
5553	P1222	Sylvi C. Tuttle	\N	\N	\N	\N	2016-06-14 17:44:48.40116-07	2016-06-14 17:44:48.401184-07	Owner of Three Dimensions Timberlands, LLC		Forestry and Timber	
5554	P1668	Kim Kaminski	\N	\N	\N	\N	2016-06-14 17:44:48.403544-07	2016-06-14 17:44:48.403574-07	Director Business Ethics and Compliance	http://www.mts.com/en/index.htm	Industrial Manufacturing	
5555	P454	Tim Tuttle	\N	\N	\N	\N	2016-06-14 17:44:48.406202-07	2016-06-14 17:44:48.406235-07	Owner of Three Dimensions LLC	http://www.bloomberg.com/research/stocks/private/snapshot.asp?privcapId=144934215	Forestry and Timber	
5556	P1974	ed McKay	\N	\N	\N	\N	2016-06-14 17:44:48.408545-07	2016-06-14 17:44:48.408571-07	Political Philanthropist		Philanthropist	Chair of the Democracy Alliance
5557	P974	John D. Bryan	\N	\N	\N	\N	2016-06-14 17:44:48.426087-07	2016-06-14 17:44:48.426118-07	retired Vice President of Operations	Georgia Gulf Corporation	Chemical, Oil, Gas, Electric	Challenge Foundation, Tea Party, Club for Growth
5558	P1592	William Hedges	\N	\N	\N	\N	2016-06-14 17:44:48.432168-07	2016-06-14 17:44:48.432193-07	Attorney at Law	http://wjhedges.com/	Lawyers	
5559	P646	Caroline Boutard	\N	\N	\N	\N	2016-06-14 17:44:48.434125-07	2016-06-14 17:44:48.434148-07	Self/Employed; Farmer; Ayers Creek Farm		Agriculture and Farming	
5560	P1769	Lester A. DeAsis	\N	\N	\N	\N	2016-06-14 17:44:48.440127-07	2016-06-14 17:44:48.440151-07	CEO of Oregon City's Benchmade Knife Co	http://www.benchmade.com/	Industrial Manufacturing	Oregon's knife and tool business
5561	P1244	Sonja Connor	\N	\N	\N	\N	2016-06-14 17:44:48.446231-07	2016-06-14 17:44:48.446256-07	Professor	http://www.ohsu.edu/xd/health/services/providers/?personid=130	Healthcare Professionals	Academy of Nutrition and Dietetics
5562	P1577	Amy Tykeson	\N	\N	\N	\N	2016-06-14 17:44:48.448195-07	2016-06-14 17:44:48.448218-07	CEO of BendBroadBand	https://bendbroadband.com/residential/	Communication and Telecommunications	OHSU, CSPAN, OPB, TYKESON FAMILY TRUST, EDCO
5563	P1673	Ted Wheeler	\N	\N	\N	\N	2016-06-14 17:44:48.462398-07	2016-06-14 17:44:48.462424-07	State Treasurer - Mayor?	http://www.oregon.gov/treasury/Pages/index.aspx	Government and Public Service	Multnomah County Commissioner, Oregon State Treasurer, Bank of America, Copper Mountain Trust
5564	P1788	Shane McKee	\N	\N	\N	\N	2016-06-14 17:44:48.468565-07	2016-06-14 17:44:48.468589-07	Cannabis Grower	http://goshango.com/gateway.php	Agriculture and Farming	NVCIA
5565	P1568	Donald E Tykeson	\N	\N	\N	\N	2016-06-14 17:44:48.474693-07	2016-06-14 17:44:48.474722-07	Managing Partner of Tyekson Associates		Communication and Telecommunications	National Board of Multiple Sclerosis
5566	P540	Gregg Kantor	\N	\N	\N	\N	2016-06-14 17:44:48.480635-07	2016-06-14 17:44:48.480659-07	CEO	https://www.nwnatural.com/	Chemical, Oil, Gas, Electric	member of the governor's energy planning and global warming commissions: http://www.oregonlive.com/news/index.ssf/2009/06/post_66.html 
5567	P1386	Donald E. Tykeson	\N	\N	\N	\N	2016-06-14 17:44:48.486453-07	2016-06-14 17:44:48.486477-07	Managing Partner of Tykeson Associates		Communication and Telecommunications	National Society of Multiple Sclerosis
5568	p1024	Joseph Tennant	\N	\N	\N	\N	2016-06-14 17:44:48.492375-07	2016-06-14 17:44:48.492399-07	Director		Philanthropist	Director of Joseph P Tennant Charitable Fund
5569	P164	Donald D. Tykeson	\N	\N	\N	\N	2016-06-14 17:44:48.514829-07	2016-06-14 17:44:48.51486-07	Managing Partner of Tykeson Associates		Communication and Telecommunications	National Society of Multiple Sclerosis
5570	P664	Katherine Heekin	\N	\N	\N	\N	2016-06-14 17:44:48.520692-07	2016-06-14 17:44:48.520718-07		http://heekinlawoffice.com/	Lawyers	
5571	p1292	John Javna	\N	\N	\N	\N	2016-06-14 17:44:48.522566-07	2016-06-14 17:44:48.522591-07	Author	http://www.hachettebookgroup.com/authors/john-javna/	Arts, Entertainment, Music, and Recreation	
5572	P1461	Ron Tyree	\N	\N	\N	\N	2016-06-14 17:44:48.549628-07	2016-06-14 17:44:48.549658-07	President and CEO of Tyree Oil	http://www.tyreeoil.com/about-us/	Chemical, Oil, Gas, Electric	
5573	P452	Ronald Tyree	\N	\N	\N	\N	2016-06-14 17:44:48.551567-07	2016-06-14 17:44:48.55159-07	President and CEO of Tyree Oil	http://www.tyreeoil.com/about-us/	Chemical, Oil, Gas, Electric	
5574	P1863	Thomas Wheeler	\N	\N	\N	\N	2016-06-14 17:44:48.553619-07	2016-06-14 17:44:48.553643-07	Professor 	http://journalism.uoregon.edu/member/wheeler_tom/	Education	Fender's Hall of Fame Selection Com
5575	P433	Robert Udziela	\N	\N	\N	\N	2016-06-14 17:44:48.563539-07	2016-06-14 17:44:48.563566-07	Attorney		Lawyers	
5576	p62	Edward Tenney	\N	\N	\N	\N	2016-06-14 17:44:48.565552-07	2016-06-14 17:44:48.565577-07	General Manager	www.gsiwatersolutions.com	Natural Resource Management	
5577	P438	Matthew Kaplan	\N	\N	\N	\N	2016-06-14 17:44:48.567534-07	2016-06-14 17:44:48.567557-07	attorney	http://www.mdkaplanlaw.com/	Lawyers	Safe Kids Oregon
5578	P473	Jill McKenney	\N	\N	\N	\N	2016-06-14 17:44:48.573646-07	2016-06-14 17:44:48.573672-07	Retired	https://www.facebook.com/LaneCountyDemocrats/	Government and Public Service	Democratic Party of Lane County, OR
5579	P422	Richard E. Uihlein	\N	\N	\N	\N	2016-06-14 17:44:48.579607-07	2016-06-14 17:44:48.579632-07	CEO of ULINE Inc.	http://www.uline.com/index.aspx?pricode=WK621&utm_source=Bing&utm_medium=cpc&utm_term=uline.com&utm_campaign=ULINE&AdKeyword=uline.com&AdMatchtype=e&gclid=CNHij4yN0MsCFZClfgodGk8OUQ&gclsrc=ds	Transportation	Center for Responsive Politics, Liberty Principles PAC
5580	P995	Knute Buehler	\N	\N	\N	\N	2016-06-14 17:44:48.585491-07	2016-06-14 17:44:48.585517-07	Orthopedic Surgeon	www.thecenteroregon.com	Healthcare Professionals	Oregon State Representative, ran for Governor in 2012
5581	P747	Cheryl Coon	\N	\N	\N	\N	2016-06-14 17:44:48.591331-07	2016-06-14 17:44:48.591357-07	Attorney	http://www.stc-law.com/	Lawyers	
5582	p1195	Ernest Jenks	\N	\N	\N	\N	2016-06-14 17:44:48.593217-07	2016-06-14 17:44:48.593239-07	Lawyer	http://www.ernestmjenks.com/	Lawyers	
5583	P107	Charles Terhune	\N	\N	\N	\N	2016-06-14 17:44:48.595111-07	2016-06-14 17:44:48.595134-07	Vice President - Government Affairds	www.cambiahealth.com	Healthcare Professionals	Member of Executive Committee - Portland Business Alliance
5585	P1303	Jennifer Ulum	\N	\N	\N	\N	2016-06-14 17:44:48.603185-07	2016-06-14 17:44:48.603208-07	Interim Director of Systems Communication at PeaceHealth	http://www.peacehealth.org/about-peacehealth/media/chi-partnership/Pages/default	Healthcare Professionals	
5586	P933	James Coon	\N	\N	\N	\N	2016-06-14 17:44:48.60504-07	2016-06-14 17:44:48.605062-07	Lawyer	http://www.stc-law.com/	Lawyers	
5587	P1183	Carol Whipple	\N	\N	\N	\N	2016-06-14 17:44:48.606948-07	2016-06-14 17:44:48.606971-07	Owner, CEO	http://www.reneworegon.org/story_carol_whipple	Forestry and Timber	Current board member on the Whipple Foundation – an advised fund of the Oregon Community Foundation; Director of the Douglas Timber Operators; member of the Oregon Chapter of Senior Fellow American Leadership Forum; and member of the Oregon State University College of Forestry Forest Products Lab Advisory Council.  Served as a board member of the Oregon Forest Resources Institute.
5588	P1688	J. Kevin McKinney	\N	\N	\N	\N	2016-06-14 17:44:48.612954-07	2016-06-14 17:44:48.612979-07	Medical Doctor	http://www.ehnpc.com/dr-mckinney-glaucoma-specialist-portland.htm	Healthcare Professionals	American Academy of Ophthalmology
5589	B163	Rebecca Obletz	\N	\N	\N	\N	2016-06-14 17:44:48.618737-07	2016-06-14 17:44:48.618764-07	Not Employed			
5590	P1384	David Underriner	\N	\N	\N	\N	2016-06-14 17:44:48.620626-07	2016-06-14 17:44:48.62065-07	Regional CEO of Providence		Healthcare Professionals	 Oregon Association of Hospitals and Health Systems, Our House of Portland, Portland Business Alliance, Trillium Family Services, and Volunteers of America
5591	P837	Sloan Heermance	\N	\N	\N	\N	2016-06-14 17:44:48.630397-07	2016-06-14 17:44:48.630425-07	President Ventures Adventures, Author	http://venturesadventures.com/	Arts, Entertainment, Music, and Recreation	
5684	P1344	Lyneil Vandermolen	\N	\N	\N	\N	2016-06-14 17:44:49.093667-07	2016-06-14 17:44:49.093699-07	Lawyer	http://www.vangelisti.com/	Lawyers	
5592	P304	John Tess	\N	\N	\N	\N	2016-06-14 17:44:48.63235-07	2016-06-14 17:44:48.632374-07	President	www.heritage-consulting.com	Government and Public Service	Board Member Oregon Cultural Trust
5593	P825	Kevin McKinney	\N	\N	\N	\N	2016-06-14 17:44:48.638484-07	2016-06-14 17:44:48.638511-07	Medical Doctor	http://www.ehnpc.com/dr-mckinney-glaucoma-specialist-portland.htm	Healthcare Professionals	American Academy of Ophthalmology
5594	P17	Paul Utz	\N	\N	\N	\N	2016-06-14 17:44:48.644282-07	2016-06-14 17:44:48.644315-07	Professor of Medicine at Stanford University	https://med.stanford.edu/profiles/paul-utz		
5595	P648	Bruce Bottini	\N	\N	\N	\N	2016-06-14 17:44:48.646514-07	2016-06-14 17:44:48.646539-07	Lawyer (Personal INjury)	http://www.bottini.com/	Lawyers	
5596	P1135	Barry Thalden	\N	\N	\N	\N	2016-06-14 17:44:48.64848-07	2016-06-14 17:44:48.648503-07	Architect	www.thalden.com	Construction	
5597	P1920	Marc Valens	\N	\N	\N	\N	2016-06-14 17:44:48.650408-07	2016-06-14 17:44:48.650431-07	Owner of Valens Trust	http://www.google.com/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=7&cad=rja&uact=8&ved=0ahUKEwj6gJWTj9DLAhVX2mMKHec7DiYQFggxMAY&url=http%3A%2F%2Fthe-marc-valens-trust.ashland.or.amfibi.directory%2Fus%2Fc%2F10070930-the-marc-valens-trust&usg=AFQjCNFt4S7Rg1U5Uig7QjA4FMf5-dNfoA&sig2=qFJJCGwF8JM2bCXegqaRPw	Transportation	
5598	P1496	Kimberly Cooper	\N	\N	\N	\N	2016-06-14 17:44:48.652766-07	2016-06-14 17:44:48.65279-07	President / CEO 	http://www.fortunainc.com/People/Kimberly%20Cooper/KimberlyCooper.html	Marketing and Creative Agencies	    Portland Community College Foundation: President, Board of Directors, Portland State University Foundation: Board of Trustees; Vice-Chair; Chair, Governance Committee; Co-Chair 2012 Simon Benson Awards Dinner
5599	P366	Jeremy Heidl	\N	\N	\N	\N	2016-06-14 17:44:48.658934-07	2016-06-14 17:44:48.658959-07	CEO	http://www.openvape.com/	Beer, Wine, Liquor, Tobacco, Marijuana	
5600	P594	David Angeli	\N	\N	\N	\N	2016-06-14 17:44:48.660927-07	2016-06-14 17:44:48.66095-07	Attorney	http://www.angelilaw.com/	Lawyers	
5601	P1279	Prashanth Vallabhanath, MD	\N	\N	\N	\N	2016-06-14 17:44:48.662855-07	2016-06-14 17:44:48.662879-07	Opthamologist	http://health.usnews.com/doctors/prashanth-vallabhanath-214791	Healthcare Professionals	
5602	P1739	Paul OBrien	\N	\N	\N	\N	2016-06-14 17:44:48.664785-07	2016-06-14 17:44:48.664813-07	non-profit director	Tarot.com	Arts, Entertainment, Music, and Recreation	Divination Foundation
5603	P377	Dean Heiling	\N	\N	\N	\N	2016-06-14 17:44:48.670645-07	2016-06-14 17:44:48.670669-07	Attorney	http://heilingdwyer.com/	Lawyers	
5604	P1176	Karl Thatcher	\N	\N	\N	\N	2016-06-14 17:44:48.672604-07	2016-06-14 17:44:48.672628-07	Owner	www.ktcontracting.com	Construction	
5605	P228	Gavin White	\N	\N	\N	\N	2016-06-14 17:44:48.674463-07	2016-06-14 17:44:48.674485-07	Consultant	https://www.linkedin.com/in/heaventwig	Management Consultant	Former Chair for Multnomah County Democratic Party
5606	P870	Richard Langdon	\N	\N	\N	\N	2016-06-14 17:44:48.680252-07	2016-06-14 17:44:48.680275-07	Owner/Operator, The Langdon Company, LLC	http://www.oregoncompanies.org/the-langdon-company-llc	Real Estate	None found
5607	P447	Andy Van Pelt	\N	\N	\N	\N	2016-06-14 17:44:48.686202-07	2016-06-14 17:44:48.686227-07	Executive Vice President of at Oregon Association of Hospitals and Health Systems	http://www.oahhs.org/about/andy-van-pelt	Lobbyists and Unions	
5608	P571	Jean Bottcher	\N	\N	\N	\N	2016-06-14 17:44:48.688149-07	2016-06-14 17:44:48.688173-07	Retired		Education	
5609	P1359	Ward Ockenden	\N	\N	\N	\N	2016-06-14 17:44:48.694278-07	2016-06-14 17:44:48.694303-07	Contractor		Transportation	
5610	P1471	Don Corson	\N	\N	\N	\N	2016-06-14 17:44:48.696195-07	2016-06-14 17:44:48.696219-07	Lawyer	http://www.corsonjohnsonlaw.com/	Lawyers	
5611	P565	Alan DeBoer	\N	\N	\N	\N	2016-06-14 17:44:48.69814-07	2016-06-14 17:44:48.698163-07	Former Mayor of Ashland 	http://www.ashland.or.us/Page.asp?NavID=14973	Politician 	
5612	P279	Jerry Thenell	\N	\N	\N	\N	2016-06-14 17:44:48.700055-07	2016-06-14 17:44:48.700078-07	Owner	www.stprint.com	Retail Services	
5613	P1309	Stephen Buel	\N	\N	\N	\N	2016-06-14 17:44:48.702185-07	2016-06-14 17:44:48.702207-07	retired			current PPS School Board Member, critic of Common Core
5614	P522	Brian Whitehead	\N	\N	\N	\N	2016-06-14 17:44:48.712302-07	2016-06-14 17:44:48.712329-07	Attorney 	http://www.attywhitehead.com/attorneys/	Lawyers	
5615	P468	Donald Helfgott	\N	\N	\N	\N	2016-06-14 17:44:48.714266-07	2016-06-14 17:44:48.714291-07	CEO and co-founder	http://www.inspiration.com/	Software and Techology	Conceptua Math, Shiftwise
5616	P504	David Van Wie	\N	\N	\N	\N	2016-06-14 17:44:48.724324-07	2016-06-14 17:44:48.724349-07	Founder and CEO of Social Communications Company	http://www.bloomberg.com/research/stocks/private/person.asp?personId=237896&privcapId=102324259	Communication and Telecommunications	
5617	P1534	Josh Kardon	\N	\N	\N	\N	2016-06-14 17:44:48.726263-07	2016-06-14 17:44:48.726285-07	Strategic consultant	Grant Park Strategies LLC	Lobbyists and Unions	campaigning for Brad Avakian
5618	P1550	Evans Van Buren	\N	\N	\N	\N	2016-06-14 17:44:48.732066-07	2016-06-14 17:44:48.732092-07	Self Employed Lawyer		Lawyers	
5619	P130	Bruce Odekirk	\N	\N	\N	\N	2016-06-14 17:44:48.733973-07	2016-06-14 17:44:48.733996-07	Physicist	http://www.microsemi.com/	Industrial Manufacturing	
5620	P394	Mary Ann Thenell	\N	\N	\N	\N	2016-06-14 17:44:48.735835-07	2016-06-14 17:44:48.735857-07	Owner	www.stprint.com	Retail Services	
5621	P375	Paul Cosgrove	\N	\N	\N	\N	2016-06-14 17:44:48.737729-07	2016-06-14 17:44:48.737752-07	Lawyer	http://lindsayhart.com/	Lawyers	
5622	P1429	Erik Hellenthal	\N	\N	\N	\N	2016-06-14 17:44:48.739651-07	2016-06-14 17:44:48.739673-07	Owner	EH Logging (no website)	Forestry and Timber	
5623	P1921	Rick Yecny	\N	\N	\N	\N	2016-06-14 17:44:48.741535-07	2016-06-14 17:44:48.741557-07	Chief Administrative Officer and Chief Mission Officer		Banking and Finance	Director - Oregon Pacific Bank
5624	P369	Sid DeBoer	\N	\N	\N	\N	2016-06-14 17:44:48.743488-07	2016-06-14 17:44:48.74351-07	Chairman and CEO Lithia Motors	http://www.lithiainvestorrelations.com/board-of-directors.htm	Retail Services	Oregon Shakespeare Festival
5625	P119	Mark ODonnell	\N	\N	\N	\N	2016-06-14 17:44:48.749311-07	2016-06-14 17:44:48.749335-07	Lawyer	http://www.oandc.com/	Lawyers	
5626	P273	Sheryl Langerman	\N	\N	\N	\N	2016-06-14 17:44:48.751203-07	2016-06-14 17:44:48.751225-07	Not employed		Not employed	Langerman contributed $500 to Dan Saltzman's campaign for City Commissioner on\t09/27/2013 
5627	P1678	Roderick Boutin	\N	\N	\N	\N	2016-06-14 17:44:48.757133-07	2016-06-14 17:44:48.757158-07	President, Boutin & Associates, PC		Lawyers	Business Law Medical Malpractice
5628	P1248	Karl Miller	\N	\N	\N	\N	2016-06-14 17:44:48.767143-07	2016-06-14 17:44:48.76717-07	Chairman of the Board	https://www.avamere.com/	Healthcare Professionals	PSU Board of Trustees; UO Bus School Bd of Advisors; more
5629	P1867	Mike McLane	\N	\N	\N	\N	2016-06-14 17:44:48.785326-07	2016-06-14 17:44:48.785352-07	Republican Rep at Oregon House of Rep	http://www.votemclane.com/	Government and Public Service	
5630	P878	George E. Bulkeley	\N	\N	\N	\N	2016-06-14 17:44:48.795414-07	2016-06-14 17:44:48.795439-07	Self-Employed			
5631	P1895	Aaron Thomas	\N	\N	\N	\N	2016-06-14 17:44:48.797409-07	2016-06-14 17:44:48.797432-07	President	www.thomasandsonsinc.com	Transportation	Boys & Girls Club of Southwestern Oregon
5632	P894	Craig Boretz	\N	\N	\N	\N	2016-06-14 17:44:48.803709-07	2016-06-14 17:44:48.803737-07	VP of Development at XPO Logistics	http://www.xpo.com/	Transportation	PNCA Board Chair
5633	P517	Henry van Ameringen	\N	\N	\N	\N	2016-06-14 17:44:48.810193-07	2016-06-14 17:44:48.810227-07	President of van Ameringen Foundation	http://people.equilar.com/bio/henry-van-ameringen-international-flavors/salary/49038#.Vu8NFrHn99A	Philanthropist	In the Life, New Approach Oregon
5634	P582	Karl Anuta	\N	\N	\N	\N	2016-06-14 17:44:48.823994-07	2016-06-14 17:44:48.82402-07	Attorney	https://sites.google.com/site/lawofficeofkarlanuta/	Lawyers	
5635	P1812	Nancy Oft Rose	\N	\N	\N	\N	2016-06-14 17:44:48.825991-07	2016-06-14 17:44:48.826014-07	Not Employed			
5636	P1459	Linda Hellenthal	\N	\N	\N	\N	2016-06-14 17:44:48.832324-07	2016-06-14 17:44:48.832349-07				
5637	P1468	Sidney B. Deboer	\N	\N	\N	\N	2016-06-14 17:44:48.834292-07	2016-06-14 17:44:48.834316-07	Chairman and CEO Lithia Motors Inc.	http://www.lithiainvestorrelations.com/board-of-directors.htm	Retail Services	Oregon Shakespeare Festival  
5638	P1756	Ed Whitelaw	\N	\N	\N	\N	2016-06-14 17:44:48.840295-07	2016-06-14 17:44:48.840319-07	Consultant	http://www.econw.com/who-we-are/our-people/ed-whitelaw	Economics Consultant	Board of Economists, Eugene Register Guard; Eugene Chamber of Commerce
5639	P1783	Johnnes HR van Alebeek	\N	\N	\N	\N	2016-06-14 17:44:48.850694-07	2016-06-14 17:44:48.850719-07	Vice President, Global Procurement and Shared Services, Nike, Inc., 	nike.com	Retail Services	Board Member of World Affairs Council of Oregon
5640	P550	Sidney DeBoer	\N	\N	\N	\N	2016-06-14 17:44:48.856849-07	2016-06-14 17:44:48.856876-07	Chairman and CEO Lithia Motors	http://www.lithiainvestorrelations.com/board-of-directors.htm	Retail Services	Oregon Shakespeare Festival 
5641	P307	Timothy McMenamin	\N	\N	\N	\N	2016-06-14 17:44:48.862951-07	2016-06-14 17:44:48.862977-07	Political Candidate	http://www.timmcmenamin.com/	Government and Public Service	
5642	P1250	Michael Coughlin	\N	\N	\N	\N	2016-06-14 17:44:48.873302-07	2016-06-14 17:44:48.87333-07	President	https://burley.com/	Bicycle trailers	
5643	P1964	Kurt Thomas	\N	\N	\N	\N	2016-06-14 17:44:48.875406-07	2016-06-14 17:44:48.875433-07	Operating Partner	www.meriturn.com	Agriculture and Farming	Board Member Klamath Basin Rangeland Trust
5644	P1515	Peggy Boquist	\N	\N	\N	\N	2016-06-14 17:44:48.881574-07	2016-06-14 17:44:48.881602-07	Homemaker			
5645	P1186	Paul Bovarnick	\N	\N	\N	\N	2016-06-14 17:44:48.883511-07	2016-06-14 17:44:48.883533-07	Of Counsel	http://www.legalattorneyportlandoregon.com/	Lawyers	Oregon Trial Lawyer Association (personal injuries)
5646	P1525	Sean OHollaren	\N	\N	\N	\N	2016-06-14 17:44:48.889315-07	2016-06-14 17:44:48.88934-07	Senior VP, Government & Public Affairs	nike.com	Consumer Manufacturing	Oregon Transportation Commission, Willamette University
5647	P1724	Robert Lanphere Jr.	\N	\N	\N	\N	2016-06-14 17:44:48.900002-07	2016-06-14 17:44:48.900029-07	President, Lanphere Enterprises Beaverton 	https://lanphereenterprises.hyrell.com/UI/Views/Applicant/VirtualStepCareers.aspx	Retail Services	Lanphere contributed $5,000 to "Friends of Jim Bernard," during Bernard's campaign for Clackamas County Commissioner.  https://webcache.googleusercontent.com/search?q=cache:rpAzrmf2mcEJ:https://secure.sos.state.or.us/orestar/gotoPublicTransactionDetail.do%3FtranRsn%3D2156036+&cd=2&hl=en&ct=clnk&gl=us
5648	P1654	Brian Boquist	\N	\N	\N	\N	2016-06-14 17:44:48.905934-07	2016-06-14 17:44:48.905962-07	Oregon Senator	https://www.oregonlegislature.gov/boquist	Government and Public Service	
5649	P311	Raymond Thomas	\N	\N	\N	\N	2016-06-14 17:44:48.907957-07	2016-06-14 17:44:48.907982-07	Partner	www.stc-law.com	Lawyers	
5650	B428	Sean OHollaren	\N	\N	\N	\N	2016-06-14 17:44:48.910091-07	2016-06-14 17:44:48.910113-07	Senior VP, Government & Public Affairs	nike.com	Consumer Manufacturing	Oregon Transportation Commission, Willamette University
5651	P1982	Diana Helm	\N	\N	\N	\N	2016-06-14 17:44:48.919972-07	2016-06-14 17:44:48.919999-07	Owner of Terra Casa, Mayor of City of Damascus OR	http://www.terracasa.com/, http://damascusoregon.gov/300/Diana-Helm	Retail Services	
5652	B964	Karen OKasey	\N	\N	\N	\N	2016-06-14 17:44:48.921995-07	2016-06-14 17:44:48.922019-07	Attorney	http://hartwagner.com/	Lawyers	Oregon Ballet Theatre
5653	P1619	Rick Thomas	\N	\N	\N	\N	2016-06-14 17:44:48.927919-07	2016-06-14 17:44:48.927944-07	Partner	www.quinnthomas.com	Lobbyists and Unions	
5654	P1438	Stan Amy	\N	\N	\N	\N	2016-06-14 17:44:48.92994-07	2016-06-14 17:44:48.929962-07	Co-Founder, Director, New Seasons Market	http://www.newseasonsmarket.com/	Grocery	Director, Co-founder New Seasons Market, Donated to Eileen Brady, Advisor to Aisle7/Healthnotes, Founding member, Portland Student Services, http://www.bloomberg.com/research/stocks/private/person.asp?personId=44527078&privcapId=12004234
5655	P1993	Thomas Boothe	\N	\N	\N	\N	2016-06-14 17:44:48.949271-07	2016-06-14 17:44:48.949304-07	Lawyer		Lawyers	
5657	P380	Joshua Kardon	\N	\N	\N	\N	2016-06-14 17:44:48.95318-07	2016-06-14 17:44:48.953202-07	business consultant	www.capitolcounsel.com/	Government and Public Service	
5658	P1056	David Thomason	\N	\N	\N	\N	2016-06-14 17:44:48.959624-07	2016-06-14 17:44:48.959648-07	Owner		Lodging, Tourism, Restaurants	
5659	P988	Doneta Thomason	\N	\N	\N	\N	2016-06-14 17:44:48.961478-07	2016-06-14 17:44:48.961503-07	Owner		Lodging, Tourism, Restaurants	
5660	B1855	Brian OKelly	\N	\N	\N	\N	2016-06-14 17:44:48.963438-07	2016-06-14 17:44:48.963459-07	CEO	https://www.appnexus.com	Software and Techology	
5661	P281	Brentley Bullock	\N	\N	\N	\N	2016-06-14 17:44:48.965544-07	2016-06-14 17:44:48.965567-07	Attorney	http://www.perkinscoie.com	Lawyers	Board of Directors Oregon Entrepreneurs Network, Oregon State University Business Roundtable, Oregon State University Austin Entrepreneurship Program, Portland Seed Fund
5662	P1596	Robert Boone	\N	\N	\N	\N	2016-06-14 17:44:48.97141-07	2016-06-14 17:44:48.971434-07	Onocologist	https://www.stcharleshealthcare.org/	Healthcare Professionals	
5663	p672	Karl R. Miller	\N	\N	\N	\N	2016-06-14 17:44:48.973291-07	2016-06-14 17:44:48.973313-07	Chairman 	https://www.avamere.com/	Real Estate	PSU Board of Trustees
5664	P470	Walter McMonies	\N	\N	\N	\N	2016-06-14 17:44:48.991707-07	2016-06-14 17:44:48.991735-07	Attorney	http://www.lanepowell.com/12275/walter-w-mcmonies/	Lawyers	Oregon Seismic Safety Policy Advisory Commission (2013- ); Board of Directors
5665	P466	Steven Cousineau	\N	\N	\N	\N	2016-06-14 17:44:48.99773-07	2016-06-14 17:44:48.997757-07	Energy Scheduler	http://iberdrolarenewables.us/	Chemical, Oil, Gas, Electric	
5666	P1377	M. Christie Helmer	\N	\N	\N	\N	2016-06-14 17:44:48.99969-07	2016-06-14 17:44:48.999712-07	Lawyer	http://www.millernash.com/	Lawyers	Oregon College of Art and Craft, Board Chair
5667	P1909	Curtis Thompson	\N	\N	\N	\N	2016-06-14 17:44:49.009823-07	2016-06-14 17:44:49.009849-07	President	www.cta-lab.com	Healthcare Professionals	
5668	811	Rick Miller	\N	\N	\N	\N	2016-06-14 17:44:49.011822-07	2016-06-14 17:44:49.011846-07	Chairman	https://www.avamere.com/	Real Estate	PSU Trustee, UO Bus.School Advisory Bd, others
5669	P567	Erik Olbeter	\N	\N	\N	\N	2016-06-14 17:44:49.03009-07	2016-06-14 17:44:49.030121-07	Manager	www.icfi.com/	Chemical, Oil, Gas, Electric	
5670	P716	David Thompson	\N	\N	\N	\N	2016-06-14 17:44:49.032081-07	2016-06-14 17:44:49.032106-07	Journey Inside Wireman	www.christenson.com	Construction	
5671	P1648	Peter Kay	\N	\N	\N	\N	2016-06-14 17:44:49.034101-07	2016-06-14 17:44:49.034126-07	Gastroenterology	http://www.eugenegi.com/	Healthcare Professionals	
5672	P1558	Deborah Boone	\N	\N	\N	\N	2016-06-14 17:44:49.036276-07	2016-06-14 17:44:49.036299-07	Representative	https://www.oregonlegislature.gov/boone	Government and Public Service	Pacific NW Economic Region
5673	P185	Leslie OLeary	\N	\N	\N	\N	2016-06-14 17:44:49.042334-07	2016-06-14 17:44:49.04236-07	Attorney	http://www.wdolaw.com/	Lawyers	
5674	P556	M. Christine Hauptmann	\N	\N	\N	\N	2016-06-14 17:44:49.044225-07	2016-06-14 17:44:49.044247-07	Ophthalmologist	http://www.ehnpc.com/	Healthcare Professionals	
5675	P1156	Roy Thompson	\N	\N	\N	\N	2016-06-14 17:44:49.046075-07	2016-06-14 17:44:49.046097-07	Partner	www.thompsonandbogranpc.com	Lawyers	President FAME, Board of Directors YoGhana
5676	P201	Suzanne Bonamici	\N	\N	\N	\N	2016-06-14 17:44:49.056106-07	2016-06-14 17:44:49.056135-07	State Representative	http://bonamici.house.gov/	Government and Public Service	
5677	P1904	Anthony DeBone	\N	\N	\N	\N	2016-06-14 17:44:49.058473-07	2016-06-14 17:44:49.058497-07	Deschutes County Commissioner	http://www.deschutes.org/bcc/page/anthony-debone-commissioner-large	Government and Public Service	Multiple organizations such as La Pine Rodeo Association. See website for full list. 
5678	P572	Michael Miller	\N	\N	\N	\N	2016-06-14 17:44:49.064351-07	2016-06-14 17:44:49.064376-07	self-employed		Construction	
5679	P835	David Crane	\N	\N	\N	\N	2016-06-14 17:44:49.070852-07	2016-06-14 17:44:49.070883-07	Professor	https://www.stanford.edu/	Education	
5680	P1275	Eric Helmy	\N	\N	\N	\N	2016-06-14 17:44:49.072798-07	2016-06-14 17:44:49.072821-07	Lawyer	http://nwbusinesslawgroup.com/	Lawyers	
5681	P232	Bob Oleson	\N	\N	\N	\N	2016-06-14 17:44:49.074818-07	2016-06-14 17:44:49.07484-07	Lobbyist	http://nwsteelheaders.org/	Lobbyists and Unions	
5682	P51	Darryl McNair	\N	\N	\N	\N	2016-06-14 17:44:49.0768-07	2016-06-14 17:44:49.076824-07	2nd Vice-Chair	http://www.klamathrepublican.com/about-us/executive-committee	Government and Public Service	
5683	P1922	Allen Alley	\N	\N	\N	\N	2016-06-14 17:44:49.083178-07	2016-06-14 17:44:49.083208-07	CEO, The Alley Group, Board Chairman Pixelworks, Inc.	http://www.thealleygroupllc.com/	Software and Techology	Orestar data donations indicate heavy Republican donations, plus "Oregon Technology PAC"
5685	p1044	Nancy Miller	\N	\N	\N	\N	2016-06-14 17:44:49.095692-07	2016-06-14 17:44:49.095717-07	artist	http://www.rubicon-films.com/NancyMillerBio.html	Arts, Entertainment, Music, and Recreation	
5686	P663	John Crawford	\N	\N	\N	\N	2016-06-14 17:44:49.101838-07	2016-06-14 17:44:49.101863-07	Attorney	self-employed	Lawyers	
5687	P1680	Erin Olson	\N	\N	\N	\N	2016-06-14 17:44:49.103763-07	2016-06-14 17:44:49.103788-07	Attorney	http://www.erinolsonlaw.com/	Lawyers	Oregon Crime Victims Law Center
5688	P234	Bryon Hendricks	\N	\N	\N	\N	2016-06-14 17:44:49.10968-07	2016-06-14 17:44:49.109704-07	President and Principal Broker 	http://www.bhhsrep.com/	Real Estate	
5689	P90	Gordan Keane	\N	\N	\N	\N	2016-06-14 17:44:49.111679-07	2016-06-14 17:44:49.111703-07	President	http://www.thedvi.com/	Software and Techology	On board: Audubon, Humane Society, listed as patron on Portland Art museum website
5690	P645	Timothy S. Bollom	\N	\N	\N	\N	2016-06-14 17:44:49.123549-07	2016-06-14 17:44:49.12358-07	Orthopedic Surgeon	http://www.thecenteroregon.com/	Healthcare Professionals	
5691	P420	Elizabeth VanStaaveren	\N	\N	\N	\N	2016-06-14 17:44:49.1256-07	2016-06-14 17:44:49.125626-07		Journalist	Philanthropist	Oregonians for Immigatration Reform,
5692	P1409	Stephen Hendricks	\N	\N	\N	\N	2016-06-14 17:44:49.132019-07	2016-06-14 17:44:49.13205-07	Lawyer	http://www.hendrickslawfirm.com/	Lawyers	
5693	P915	Elizabeth VanStaavern	\N	\N	\N	\N	2016-06-14 17:44:49.134015-07	2016-06-14 17:44:49.134041-07	Journalist		Philanthropist	Oregonians for Immigration Reform
5694	P1674	Luke Whitson	\N	\N	\N	\N	2016-06-14 17:44:49.140173-07	2016-06-14 17:44:49.140198-07	Web Developer	https://www.linkedin.com/in/lwhitson	Software and Techology	
5695	P1040	Walt Bowen	\N	\N	\N	\N	2016-06-14 17:44:49.142136-07	2016-06-14 17:44:49.14216-07	CEO at BPM Senior Living Company, CEO at Regent Assisted Living Inc.		Real Estate	BPM Senior Living BPM Senior Living
5696	P283	Katherine Keane	\N	\N	\N	\N	2016-06-14 17:44:49.147972-07	2016-06-14 17:44:49.147997-07	VP Director Marketing	http://www.thedvi.com/	Software and Techology	On Humane Society & Audubon boards, listed as Patron on Portland Art museum side.
5697	P383	Corette Cross	\N	\N	\N	\N	2016-06-14 17:44:49.158617-07	2016-06-14 17:44:49.158645-07	Office Manager	http://www.wvcross.com/	Real Estate	
5698	P1906	Ed McNamara	\N	\N	\N	\N	2016-06-14 17:44:49.160605-07	2016-06-14 17:44:49.160628-07	Owner	Turtle Island Development LLC	Real Estate	Office of the Mayor, 1000 Friends of Oregon, Home Forward (formerly Housing Authority of Portland)
5699	P1699	John Bollier	\N	\N	\N	\N	2016-06-14 17:44:49.166426-07	2016-06-14 17:44:49.166451-07	President of Stacy and Witbeck	http://www.stacywitbeck.com/	Transportation	
5700	P1523	M. Albin Jubitz	\N	\N	\N	\N	2016-06-14 17:44:49.168361-07	2016-06-14 17:44:49.168385-07	Retired Co-President of the Jubitz Corporation	http://www.jubitz.com/	Transportation	Donates to almost all Democrats (with some statewide moderate Republicans) from Orestar data, Leadership Councils of the Portland Children's Museum, Environmental Defense Fund, Outward Bound Wilderness School, Morrison Child and Family Services
5701	P1455	Sherman Olsrud	\N	\N	\N	\N	2016-06-14 17:44:49.190356-07	2016-06-14 17:44:49.190383-07	President	http://www.shermsmarkets.com/	Grocery	
5702	p1616	Philip Kalberer	\N	\N	\N	\N	2016-06-14 17:44:49.192262-07	2016-06-14 17:44:49.192286-07	Real Estate Owner		Real Estate	
5703	P1784	Daniel Bunn	\N	\N	\N	\N	2016-06-14 17:44:49.194193-07	2016-06-14 17:44:49.194215-07	Investor		Banking and Finance	Medford Council Member
5704	P1878	Loyd Henion	\N	\N	\N	\N	2016-06-14 17:44:49.200182-07	2016-06-14 17:44:49.200205-07	President	Integrated Transportation Solutions (can't find website)	Transportation	Linn County Chair for Democratic Party of Oregon
5705	P1076	William Appel	\N	\N	\N	\N	2016-06-14 17:44:49.206241-07	2016-06-14 17:44:49.206266-07	Chief Operating Officer	http://thc-foundation.org/	Healthcare Professionals	Campaign for the Restoration and Regulation of Hemp (CRRH)
5706	p451	Steven Olsrud	\N	\N	\N	\N	2016-06-14 17:44:49.212052-07	2016-06-14 17:44:49.212076-07	Manager		Real Estate	
5707	P37	Jay Henry	\N	\N	\N	\N	2016-06-14 17:44:49.21419-07	2016-06-14 17:44:49.214213-07	Chief Marketing Officer	Ringgold Inc. 	Software and Techology	
5708	P1768	Larry Deckman	\N	\N	\N	\N	2016-06-14 17:44:49.216252-07	2016-06-14 17:44:49.216275-07	Attorney 	http://pview.findlaw.com/view/2022626_1	Lawyers	
5709	P269	Wanda Olsrud	\N	\N	\N	\N	2016-06-14 17:44:49.218189-07	2016-06-14 17:44:49.218213-07	Owner	http://www.shermsmarkets.com/	Grocery	Olsrud Scholarship Fund
5710	P1715	Frederick D. Crowell	\N	\N	\N	\N	2016-06-14 17:44:49.224159-07	2016-06-14 17:44:49.224183-07	Wood products executive	Self-employed	Forestry and Timber	
5711	P882	Jewel Lansing	\N	\N	\N	\N	2016-06-14 17:44:49.226082-07	2016-06-14 17:44:49.226105-07	Retired politician/writer	http://www.jewellansing.com/	Arts, Entertainment, Music, and Recreation	Lansing gave $150 to Friends of LaVonne Griffin-Valade's2009 campaign for Portland City Auditor. 
5712	P324	Philip Bogue	\N	\N	\N	\N	2016-06-14 17:44:49.232052-07	2016-06-14 17:44:49.232077-07	Retired		Philanthropist	Portland Art Museum
5713	p1240	Prudence Miller	\N	\N	\N	\N	2016-06-14 17:44:49.238339-07	2016-06-14 17:44:49.238372-07	individual		Philanthropist	Portland Art Museum; Oregon Symphony Board
5714	P967	Ramsey McPhillips	\N	\N	\N	\N	2016-06-14 17:44:49.244938-07	2016-06-14 17:44:49.244962-07	Farmer		Agriculture and Farming	1000 Friends of Oregon
5715	P1949	Bruce Abernethy	\N	\N	\N	\N	2016-06-14 17:44:49.250891-07	2016-06-14 17:44:49.250917-07	Grantwriter, Bend-La Pine School District	https://www.bend.k12.or.us/district/	Education	Donor to Democrats in Orestar, Surdna Foundation Board Member, Bend-La Pine School District Grantwriter
5716	P703	J. Clayton Hering	\N	\N	\N	\N	2016-06-14 17:44:49.264459-07	2016-06-14 17:44:49.264486-07		Chairman of the Board	Real Estate	
5717	P688	R. Dennis Wiancko	\N	\N	\N	\N	2016-06-14 17:44:49.266394-07	2016-06-14 17:44:49.266416-07	Photographer	http://www.buildlocalalliance.org/bla-members/ross-mountain-forest-resources/	Forestry and Timber	
5718	P846	Tom Bowerman	\N	\N	\N	\N	2016-06-14 17:44:49.268395-07	2016-06-14 17:44:49.268419-07	Property Management	(Self Employed)	Education	Project Direcor, Climate & Public Policy Research Project
5719	p78	Lori Kalani	\N	\N	\N	\N	2016-06-14 17:44:49.27435-07	2016-06-14 17:44:49.274376-07		https://www.cozen.com/people/bios/kalani-lori	Lawyers	
5720	P1765	Timothy Hershey	\N	\N	\N	\N	2016-06-14 17:44:49.280405-07	2016-06-14 17:44:49.28043-07	VP Global Merchandising	http://www.nike.com	Apparel	Board Chairman for Big Brothers, Big Sisters Northwest
5721	P1015	Dan Wieden	\N	\N	\N	\N	2016-06-14 17:44:49.289522-07	2016-06-14 17:44:49.289549-07	Cofounder	https://en.wikipedia.org/wiki/Dan_Wieden	Marketing and Creative Agencies	Caldera Foundation
5722	P1585	Carol Olwell	\N	\N	\N	\N	2016-06-14 17:44:49.295254-07	2016-06-14 17:44:49.295279-07	Retired			
5723	P427	James Culbertson	\N	\N	\N	\N	2016-06-14 17:44:49.297064-07	2016-06-14 17:44:49.297087-07	CEO	http://www.tcmcorp.com/	Construction	
5724	P1412	James Abramson	\N	\N	\N	\N	2016-06-14 17:44:49.299277-07	2016-06-14 17:44:49.299312-07	Vice President, Stacy & Whitbeck	http://www.stacywitbeck.com/	Construction	
5725	P1588	Nathaniel Applefield	\N	\N	\N	\N	2016-06-14 17:44:49.309794-07	2016-06-14 17:44:49.309824-07	Statewide Field Director	http://www.outdoorschoolforall.org/#home	Education	Outdoor School for All PAC
5727	P1326	Katherine ONeil	\N	\N	\N	\N	2016-06-14 17:44:49.338805-07	2016-06-14 17:44:49.338832-07	Lawyer	http://www.hatchvt.com/	Lawyers	
5728	P1385	Mary P. DeFrank	\N	\N	\N	\N	2016-06-14 17:44:49.340735-07	2016-06-14 17:44:49.340758-07	Ophthalmologist 	http://www.hillsboroeyeclinic.com/our-physicians/mary-p-defrank-m-d/	Healthcare Professionals	Executive Board member of the Oregon Academy of Ophthalmology
5729	P1351	William Thompson	\N	\N	\N	\N	2016-06-14 17:44:49.346635-07	2016-06-14 17:44:49.34666-07	Division Commander	www.uscg.mil	Government and Public Service	
5730	P1324	Narendra Varma	\N	\N	\N	\N	2016-06-14 17:44:49.348577-07	2016-06-14 17:44:49.3486-07	Owner of Our People COOP	http://www.ourtable.us/our-people.html	Grocery	
5731	P816	Lee Kearney	\N	\N	\N	\N	2016-06-14 17:44:49.350487-07	2016-06-14 17:44:49.350509-07			Philanthropist	multi-million dollar donations to OSU School of Engineering, Breast cancer research, many republican candidates, etc  
5732	P1641	Clifford Curry	\N	\N	\N	\N	2016-06-14 17:44:49.372447-07	2016-06-14 17:44:49.372476-07	Architect	Self-employed	Construction	
5733	P1021	John Appleton	\N	\N	\N	\N	2016-06-14 17:44:49.37454-07	2016-06-14 17:44:49.374565-07	President/CEO	http://ablmanagement.com/	Food and Agribusiness	
5734	P515	Dino Vendetti	\N	\N	\N	\N	2016-06-14 17:44:49.376602-07	2016-06-14 17:44:49.376628-07	Managing Partner of Seven Peaks Ventures	http://sevenpeaksventures.com/	Banking and Finance	
5735	p978	Stephen Kafoury	\N	\N	\N	\N	2016-06-14 17:44:49.37868-07	2016-06-14 17:44:49.378706-07	Government Relations Consultant		Government and Public Service	Hevanet Communications
5736	P697	John Arnold	\N	\N	\N	\N	2016-06-14 17:44:49.385148-07	2016-06-14 17:44:49.385178-07	Not Employed			
5737	P511	Dinah Larsen	\N	\N	\N	\N	2016-06-14 17:44:49.387115-07	2016-06-14 17:44:49.387138-07		NA		Orestar records show that Larsen donated $1000 but doesn't to whom.
5738	P1541	James Verheyden	\N	\N	\N	\N	2016-06-14 17:44:49.389097-07	2016-06-14 17:44:49.38912-07	Orthapedic Surgeon	http://www.google.com/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=1&cad=rja&uact=8&sqi=2&ved=0ahUKEwjFk5_DoNDLAhURy2MKHWg2D_0QFggdMAA&url=http%3A%2F%2Fwww.thecenteroregon.com%2Fdoctors-surgeons%2Forthopedic-surgery%2Fjames-verheyden-md%2F&usg=AFQjCNFaRRFSvRI6l_30zCuz9cRltg6tUQ&sig2=s0aPtdHhmuHttn4Ds1UHhA&bvm=bv.117218890,d.cGc	Healthcare Professionals	
5739	P1795	Justin Delaney	\N	\N	\N	\N	2016-06-14 17:44:49.391073-07	2016-06-14 17:44:49.391095-07	Vice President, Corporate Legal & Public Affairs at The Standard	https://www.linkedin.com/in/justin-delaney-4543164	Insurance 	
5740	P1341	William Thompson	\N	\N	\N	\N	2016-06-14 17:44:49.392935-07	2016-06-14 17:44:49.392956-07	Division Commander	www.uscg.mil	Government and Public Service	
5741	P1689	Peter Dale Nickerson	\N	\N	\N	\N	2016-06-14 17:44:49.39485-07	2016-06-14 17:44:49.394873-07	Sports Apparel Manufacturing Company Owner 	Self-employed	Sports apparel	
5742	P708	Henry Hewitt	\N	\N	\N	\N	2016-06-14 17:44:49.396777-07	2016-06-14 17:44:49.396799-07	Senior Counsel	http://www.stoel.com/showbio.aspx?show=313	Lawyers	 Hampton Resources, Columbia Forest Products, Bank of the Cascades, Willamette University, 
5743	P606	Peggy Allen	\N	\N	\N	\N	2016-06-14 17:44:49.409793-07	2016-06-14 17:44:49.409819-07	Chief Financial Officer, Oregon Association of Hospitals and Health Systems	http://www.oahhs.org/	Healthcare Professionals	Oregon Association of Hospitals and Health Systems, Essentially only donates to her employer PAC
5744	P500	Christine Vernier	\N	\N	\N	\N	2016-06-14 17:44:49.415687-07	2016-06-14 17:44:49.415711-07	Founder and CFO of Vernier Technologies	http://www.google.com/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwivwOPmoNDLAhUO72MKHUgaDhsQFggcMAA&url=http%3A%2F%2Fwww.vernier.com%2Fcompany%2Fthe-vernier-story%2F&usg=AFQjCNE8RA5DOxuXyc_KCNUSb7mODoheAw&sig2=ePSQWThAEg3vKnNEOGcVcw&bvm=bv.117218890,d.cGc	Software and Techology	Portland State University, Oregon Chapter of The Nature Conservatory
5745	P190	Scott Hibbs	\N	\N	\N	\N	2016-06-14 17:44:49.42999-07	2016-06-14 17:44:49.430018-07	Director of Engineering	http://extremeaccessinc.com/	providing bridge inspection services, geotechnical services, high-angle rescue, and specialized climbing access	
5746	p1598	Gregory Kafoury	\N	\N	\N	\N	2016-06-14 17:44:49.431978-07	2016-06-14 17:44:49.432-07	Attorney	http://kafourymcdougal.com/	Lawyers	
5747	P53	Dave Vernier	\N	\N	\N	\N	2016-06-14 17:44:49.433941-07	2016-06-14 17:44:49.433964-07	Co-President o Vernier	http://www.vernier.com/support/team/dvernier/	Software and Techology	
5748	P141	William Thorndike	\N	\N	\N	\N	2016-06-14 17:44:49.439783-07	2016-06-14 17:44:49.439807-07	Owner	www.medfab.com	Industrial Manufacturing	
5749	P1975	John McVea	\N	\N	\N	\N	2016-06-14 17:44:49.441761-07	2016-06-14 17:44:49.441784-07	Lawyer	http://mcvealaw.com/?hg=0&nr=0	Lawyers	
5750	P1511	Dike Dame	\N	\N	\N	\N	2016-06-14 17:44:49.44366-07	2016-06-14 17:44:49.443682-07	Partner	http://williamsanddame.com/	Construction	Dike is on the Advisory Board of Portland State University’s School of Urban Affairs and Planning, and Vice Chairman of a Project Apprentice Committee that promotes union apprenticeships for women and ethnic minorities.
5751	P763	Gary Hibler	\N	\N	\N	\N	2016-06-14 17:44:49.449698-07	2016-06-14 17:44:49.449722-07	Retired	https://www.jenseninvestment.com/		
5752	P976	Lane Hickey	\N	\N	\N	\N	2016-06-14 17:44:49.451541-07	2016-06-14 17:44:49.451563-07	CEO	DermPath Specialists (no website), http://www.cta-lab.com/		
5753	P864	T. B. Dame	\N	\N	\N	\N	2016-06-14 17:44:49.453438-07	2016-06-14 17:44:49.453461-07	President	http://williamsanddame.com/	Construction	
5754	P1050	Tom Bowerman	\N	\N	\N	\N	2016-06-14 17:44:49.455275-07	2016-06-14 17:44:49.455297-07				
5755	P1807	Vicki Arnold	\N	\N	\N	\N	2016-06-14 17:44:49.457098-07	2016-06-14 17:44:49.45712-07	Executive Coach for non profit leaders		Government and Public Service	
5757	P474	Eric Bunn	\N	\N	\N	\N	2016-06-14 17:44:49.464995-07	2016-06-14 17:44:49.465019-07	President		management services	
5758	P467	Joaquin Hidalgo	\N	\N	\N	\N	2016-06-14 17:44:49.466948-07	2016-06-14 17:44:49.466972-07	Vice President and General Manager, Nike North America	http://www.nike.com	Apparel	
5759	p928	Francis Jungers	\N	\N	\N	\N	2016-06-14 17:44:49.468887-07	2016-06-14 17:44:49.468909-07	Former CEO & Chairman of PacStar	http://pacstar.com	Chemical, Oil, Gas, Electric	Donaldson, Lufkin & Jenrette; Common Sense Partners
5761	P1211	Lawrence Viehl	\N	\N	\N	\N	2016-06-14 17:44:49.480723-07	2016-06-14 17:44:49.480747-07	CEO of Asante	http://www.asante.org/	Healthcare Professionals	
5762	P844	Jeanne Atkinson	\N	\N	\N	\N	2016-06-14 17:44:49.482733-07	2016-06-14 17:44:49.482757-07	State director	http://sos.oregon.gov/Pages/index.aspx	Government and Public Service	
5763	P1265	Gene Mechanic	\N	\N	\N	\N	2016-06-14 17:44:49.484829-07	2016-06-14 17:44:49.484854-07	Attorney	http://mechaniclaw.com/	Lawyers	Former chairperson of Portland, Oregon public high school advisory council, Member, Board of Directors, AFL-CIO Lawyers Coordinating Committee (2002-2005),Chairman, Oregon State Bar Labor and Employment Law Section (1991-1992),  
5764	P677	Michael Thornton	\N	\N	\N	\N	2016-06-14 17:44:49.494544-07	2016-06-14 17:44:49.494568-07	Partner	www.tenlaw.com	Lawyers	
5765	p1597	Joe Jumalon	\N	\N	\N	\N	2016-06-14 17:44:49.496501-07	2016-06-14 17:44:49.496523-07	President of Elite Bath	www.elitebath.com	Lodging, Tourism, Restaurants	
5766	P404	Brett Wilcox	\N	\N	\N	\N	2016-06-14 17:44:49.498468-07	2016-06-14 17:44:49.498491-07	Director	http://investors.kaiseraluminum.com/directors.cfm	Industrial Manufacturing	Vice Chair Oregon Progress Board
5768	P604	Denis Hijmans	\N	\N	\N	\N	2016-06-14 17:44:49.507215-07	2016-06-14 17:44:49.507237-07	Agent	https://www.statefarm.com/agent/US/OR/Eugene/Denis-Hijmans-NM44P1YS000	Insurance	Lane County Budget Committee Chair 
5769	P1741	Marc Visnick	\N	\N	\N	\N	2016-06-14 17:44:49.512943-07	2016-06-14 17:44:49.512967-07	Engineering Service Manager		engineering	
5770	P1786	Michelle Atkinson	\N	\N	\N	\N	2016-06-14 17:44:49.514989-07	2016-06-14 17:44:49.515011-07	Not Employed			
5771	P192	Ray Auel	\N	\N	\N	\N	2016-06-14 17:44:49.516917-07	2016-06-14 17:44:49.516941-07	Not Employed			
5772	P89	Craig Danielson	\N	\N	\N	\N	2016-06-14 17:44:49.518844-07	2016-06-14 17:44:49.518868-07	Investor	Parker Properties, Inc. no web site	Real Estate	
5773	p84	Randolph Miller	\N	\N	\N	\N	2016-06-14 17:44:49.520783-07	2016-06-14 17:44:49.520806-07	President		Real Estate	PGE Foundation;World Affairs Council, Oregon Sports Authority, the Community Investment Initiative and several business boards
5774	P1905	Martin Kehoe	\N	\N	\N	\N	2016-06-14 17:44:49.527262-07	2016-06-14 17:44:49.527287-07	Real Estate Developer	http://www.kehoenw.com/	Real Estate	
5767	P418	Tom D'Amore	\N	\N	\N	\N	2016-06-14 17:44:49.505281-07	2016-06-14 17:45:06.739091-07	Attorney	http://damorelaw.com/	Lawyers	
5756	P783	Jon McWiliams	\N	\N	\N	\N	2016-06-14 17:44:49.459116-07	2016-06-14 17:45:08.497913-07	PCP -333 Tanasbourne to Willow Creek; House District Leader, HD 30 Rep. Joe Gallegos.	http://www.washcodems.org/wcd-leaders	Government and Public Service	OLCV Steering Committee Washington County
5775	P1913	Rex Burkholder	\N	\N	\N	\N	2016-06-14 17:44:49.529241-07	2016-06-14 17:44:49.529263-07	Elected Official	http://www.oregonmetro.gov/	Government and Public Service	Oregon Outdoor Education Coalition
5776	P1054	John von Schlegell	\N	\N	\N	\N	2016-06-14 17:44:49.542695-07	2016-06-14 17:44:49.542721-07	CoFounder at Endeavor	http://www.endeavourcapital.com/ec/john-von-schlegell/	Banking and Finance	The Nature Conservancy, the National Fish and Wildlife Foundation, Oregon State Board of Higher Education
5777	P40	Randy Miller	\N	\N	\N	\N	2016-06-14 17:44:49.55229-07	2016-06-14 17:44:49.552314-07	self-employed		Real Estate	PGE Foundation
5779	P1560	jeffrey bowersox	\N	\N	\N	\N	2016-06-14 17:44:49.564517-07	2016-06-14 17:44:49.564544-07	Founder of BOWERSOX LAW FIRM	http://www.bowersoxlaw.com/index	Lawyers	Safety Lawyer/class Actions
5780	P143	Richard Akerman	\N	\N	\N	\N	2016-06-14 17:44:49.570538-07	2016-06-14 17:44:49.570564-07	President, Brandco. Real Estate Investor	http://egov.sos.state.or.us/br/pkg_web_name_srch_inq.show_detl?p_be_rsn=213354&p_srce=BR_INQ&p_print=FALSE	Real Estate	
5781	P603	Daniel Hill	\N	\N	\N	\N	2016-06-14 17:44:49.576356-07	2016-06-14 17:44:49.57638-07	Director	https://www.linkedin.com/company/red-capital-group?trk=ppro_cprof, http://viridisassetmanagement.com/ 		
5782	P1491	Kurt von Wasmuth	\N	\N	\N	\N	2016-06-14 17:44:49.578313-07	2016-06-14 17:44:49.578336-07	President and CEO of RMLS	http://www.rmls.com/RC2/UI/Home.asp	Software and Techology	
5783	P852	John E. Von Schlegell	\N	\N	\N	\N	2016-06-14 17:44:49.580159-07	2016-06-14 17:44:49.580181-07	Founder and Ceo of Endeavour Captalists		Banking and Finance	
5784	P1770	Jeffrey Bowersox	\N	\N	\N	\N	2016-06-14 17:44:49.582126-07	2016-06-14 17:44:49.582151-07	Founder of Bowersox Law Firm	Bowersox Law Firm	Lawyers	Product Safety Lawyer/class Actions
5785	P1273	John E Von Schlegell	\N	\N	\N	\N	2016-06-14 17:44:49.588019-07	2016-06-14 17:44:49.588047-07	Founder and CEO of Endeavour		Banking and Finance	
5786	P483	Elliott Hill	\N	\N	\N	\N	2016-06-14 17:44:49.589985-07	2016-06-14 17:44:49.590007-07	President of Geographies and Sales, Nike Inc. 	http://www.nike.com, http://www.bloomberg.com/research/stocks/people/person.asp?personId=2328185&privcapId=291981	Apparel	Cambia Health Solutions, Big Brothers Big Sisters Columbia Northwest, Ohio University Sports Administration program
5787	P849	Ken Thrasher	\N	\N	\N	\N	2016-06-14 17:44:49.600405-07	2016-06-14 17:44:49.60043-07	President and CEO	www.fredmeyer.com	Grocery	Chairman - Children's Institute, Board Member - Jensen Growth Fund, Friends of the Children, Oregon Mentors, College Possible, PSU Foundation, All Hands Raised, Senior Director - Oregon Business Counsel
5788	P396	Charles Wilhoite	\N	\N	\N	\N	2016-06-14 17:44:49.610396-07	2016-06-14 17:44:49.610421-07	Managing Director	https://www.linkedin.com/in/charles-wilhoite-52a38b29	Banking and Finance	Current Board: Legacy Health, Meyer Memorial Trust, Oregon State Bar, The Nature Conservancy, Federal Reserve Bank San Francisco. Past: PDC, Portland Business Alliance, OHSU, SMART, Urban League of Portland, Jesuit High School
5789	P1350	Susan Burmeister-Brown	\N	\N	\N	\N	2016-06-14 17:44:49.620389-07	2016-06-14 17:44:49.620417-07	Owner/Editor	http://www.glimmertrain.com/	Arts, Entertainment, Music, and Recreation	deeply steeped as an editor and mentor in the literary community.
5790	P1813	Loren Later	\N	\N	\N	\N	2016-06-14 17:44:49.626202-07	2016-06-14 17:44:49.626229-07	Vice President, Knife River, Eugene, OR 	http://www.kniferiver.com/	Construction	Mr. Later gave $100 to the Lane County Republican Central Committee on April 14, 2013
5791	p904	Albin Jubitz	\N	\N	\N	\N	2016-06-14 17:44:49.631986-07	2016-06-14 17:44:49.632013-07	Director of Transcore Holdings Inc.	https://www.transcore.com/	Transportation	Monsoon Inc
5792	P356	Matthew Kehoe	\N	\N	\N	\N	2016-06-14 17:44:49.639031-07	2016-06-14 17:44:49.639063-07	Attorney	http://kehoelawoffices.com/	Lawyers	
5793	P351	Kenneth Thrasher	\N	\N	\N	\N	2016-06-14 17:44:49.641004-07	2016-06-14 17:44:49.64103-07	President & CEO	www.fredmeyer.com	Grocery	
5794	P69	Robert Miller	\N	\N	\N	\N	2016-06-14 17:44:49.643132-07	2016-06-14 17:44:49.643161-07	Electronic Engineer	usnavy.gov	Government and Public Service	
5795	P1226	Lisa Wade	\N	\N	\N	\N	2016-06-14 17:44:49.650433-07	2016-06-14 17:44:49.650465-07	Professor at Occidental College	http://lisa-wade.com/	Education	
5796	P713	Andy Davidson	\N	\N	\N	\N	2016-06-14 17:44:49.652545-07	2016-06-14 17:44:49.652569-07	President and CEO 	http://www.oahhs.org/	Healthcare Professionals	
5798	P1488	George Austin, Jr.	\N	\N	\N	\N	2016-06-14 17:44:49.660784-07	2016-06-14 17:44:49.660808-07	Founder/Director	http://us.a-dec.com/en/	Industrial Manufacturing	
5799	P34	Homer Williams	\N	\N	\N	\N	2016-06-14 17:44:49.662862-07	2016-06-14 17:44:49.662886-07	Chairman	http://williamsanddame.com/team/	Real Estate	Board of River District Steering Committee, Special Olympics of Oregon, CAWS
5800	P998	Milo Wadlin	\N	\N	\N	\N	2016-06-14 17:44:49.668822-07	2016-06-14 17:44:49.668846-07	Retired			Obama for America, ACTBLUE, MOVEON.ORG, Emily's List
5801	P1025	Jane Hill	\N	\N	\N	\N	2016-06-14 17:44:49.674891-07	2016-06-14 17:44:49.674916-07	Mediator	https://www.linkedin.com/in/jane-hill-81767454, http://www.bizapedia.com/or/JJAJ-ASSOCIATES.html, Sunset Empire Resolution Services	Alternative Dispute Resolution Services	
5803	P1884	Mary Peveto	\N	\N	\N	\N	2016-06-14 17:44:49.685273-07	2016-06-14 17:44:49.6853-07	Executive Director, Neighbors for Clean Air	http://www.whatsinourair.org	Marketing and Creative Agencies	
5804	P27	Danton Wagner	\N	\N	\N	\N	2016-06-14 17:44:49.695646-07	2016-06-14 17:44:49.695673-07	Retired			ACTBLUE, Oregon Votes, Democratic Party of Oregon, Progress for Oregon
5805	P1660	Thane Tienson	\N	\N	\N	\N	2016-06-14 17:44:49.701846-07	2016-06-14 17:44:49.701876-07	Attorney	www.lbblawyers.com	Lawyers	
5806	P920	Steven Hill	\N	\N	\N	\N	2016-06-14 17:44:49.704285-07	2016-06-14 17:44:49.70431-07	Lawyer	http://www.stevehilllaw.com/		Oregon East Symphony, Children's Museum of Eastern Oregon, Pendleton Center for the Arts, Babe Ruth Baseball
5807	P385	Michael Meculloch	\N	\N	\N	\N	2016-06-14 17:44:49.718602-07	2016-06-14 17:44:49.718634-07	Architect	www.mmcarch.com	Construction	
5808	P611	Mark Burnham	\N	\N	\N	\N	2016-06-14 17:44:49.724723-07	2016-06-14 17:44:49.724749-07	Investor - Self-Employed		Banking and Finance	University of Montana Foundation Board Member, President of Boys & Girls Club Marion & Polk Counties
5809	P755	Scott Hinsdale	\N	\N	\N	\N	2016-06-14 17:44:49.736687-07	2016-06-14 17:44:49.736718-07	Owner	SH-Financial, no URL but mentioned on https://www.linkedin.com/in/scott-hinsdale-74514b16	Real Estate	
5810	P10	Elizabeth Tilbury	\N	\N	\N	\N	2016-06-14 17:44:49.738775-07	2016-06-14 17:44:49.738799-07	Real Estate Broker	www.tfn-ire.com	Real Estate	
5811	P458	Neil Lathen	\N	\N	\N	\N	2016-06-14 17:44:49.740706-07	2016-06-14 17:44:49.740728-07	Attorney at Swanson, Lathen attorneys	http://www.slamlaw.com/attorneys/neil-lathen/	Lawyers	Lathen gave $825 in aggregate dollars to the Oregon Trial Lawyers Association PAC on 10/22/2013.
5812	P1089	Dan Meek	\N	\N	\N	\N	2016-06-14 17:44:49.749879-07	2016-06-14 17:44:49.749907-07	Attorney	http://progparty.org/category/tags/dan-meek	Lawyers	
5813	P1749	Frederic Tiplady	\N	\N	\N	\N	2016-06-14 17:44:49.759873-07	2016-06-14 17:44:49.759901-07	Director of Strategic Accounts	www.alcon.com	Healthcare Professionals	
5814	P549	Michael Keiser	\N	\N	\N	\N	2016-06-14 17:44:49.761845-07	2016-06-14 17:44:49.761868-07	oil & natural gas producer\t	Black Dragon Resource Co	Chemical, Oil, Gas, Electric	213 Million in donations: http://www.milliondollarlist.org/donors/michael-l-keiser-and-rosalind-c-keiser-charitable-trust
6226	P22015	Mary L. Campbell	\N	\N	\N	\N	2016-06-14 17:45:06.47434-07	2016-06-14 17:45:06.474366-07				
5778	P1779	Gregory Mecklam	\N	\N	\N	\N	2016-06-14 17:44:49.558319-07	2016-06-14 17:45:08.503104-07	Candidate: Washington County Commission in District 4	http://gregmecklem.brianbeinlich.com/about.php	Government and Public Service	Oregon Small Woodlands Association, Washington County Farm Bureau Board of Directors
5802	P1916	Keith Tichener	\N	\N	\N	\N	2016-06-14 17:44:49.676841-07	2016-06-14 17:45:10.217722-07	Partner	www.tdinjurylaw.com	Lawyers	
5815	P1	Gun Denhart	\N	\N	\N	\N	2016-06-14 17:44:49.785628-07	2016-06-14 17:44:49.78566-07	Founder of Hanna Andersson	http://www.ecotrust.org/staff/gun-denhart/	Retail Services	Mercy Corps, the Stand for Children Oregon Advisory Board and Oregon Business Assoication 
5816	P36	Gary Hirshberg	\N	\N	\N	\N	2016-06-14 17:44:49.791653-07	2016-06-14 17:44:49.791678-07	Chairman/Founder	http://www.stonyfield.com/about-us	Food and Agribusiness	
5817	P1853	Daniel Meek	\N	\N	\N	\N	2016-06-14 17:44:49.793739-07	2016-06-14 17:44:49.793761-07	Attorney	http://progparty.org/category/tags/dan-meek	Government and Public Service	
5818	P459	Michael L. Keiser	\N	\N	\N	\N	2016-06-14 17:44:49.803613-07	2016-06-14 17:44:49.803639-07	President 	http://www.bandondunesgolf.com/	Lodging, Tourism, Restaurants	http://www.milliondollarlist.org/donors/michael-l-keiser-and-rosalind-c-keiser-charitable-trust
5819	P1876	Katherine Tippens Wiper	\N	\N	\N	\N	2016-06-14 17:44:49.828808-07	2016-06-14 17:44:49.828836-07	Teacher	www.shs.lane.edu	Education	CSB Oregon, Eugene Public Library Foundation
5820	P745	Mark Davidson	\N	\N	\N	\N	2016-06-14 17:44:49.834752-07	2016-06-14 17:44:49.834777-07	 Director Union County 	http://union-county.org/	Government and Public Service	Co-Chair of the Public Lands & Natural Resources Steering Committee
5821	P925	Sue Davidson	\N	\N	\N	\N	2016-06-14 17:44:49.84052-07	2016-06-14 17:44:49.840544-07	Not employed			
5822	P1700	William "Bud" Pierce	\N	\N	\N	\N	2016-06-14 17:44:49.842428-07	2016-06-14 17:44:49.84245-07	Physician, Salem Hospital	http://www.salemhealth.org/	Healthcare Professionals	Candidate for Oregon Governor, 2016, Republican Primary
5823	P1869	Reid Hoffman	\N	\N	\N	\N	2016-06-14 17:44:49.851908-07	2016-06-14 17:44:49.851931-07	Entrepreneur, Venture Capitalist, Co-Founder of LinkedIn	https://en.wikipedia.org/wiki/Reid_Hoffman	Software and Techology	Mozilla, Kiva, Endeavor Global, Do Something, MIT Media Lab, QuestBridge, Open AI
5824	P1066	Roger Burt	\N	\N	\N	\N	2016-06-14 17:44:49.870304-07	2016-06-14 17:44:49.870335-07	unemployed			
5825	P1606	Debi Laue	\N	\N	\N	\N	2016-06-14 17:44:49.872963-07	2016-06-14 17:44:49.872989-07	Realtor, The Laue Team Real Estate	http://www.thelaueteam.com/	Real Estate	Lauer gave $800 to the Portland Metropolitan Association of Realtors PAC on 5/28/2015. 
5826	P1174	Beverly Meeker	\N	\N	\N	\N	2016-06-14 17:44:49.879075-07	2016-06-14 17:44:49.879102-07	Retired	Not Employed		Community Help in Music Education (CHIME) 
5827	P529	Cynthia L. Davis	\N	\N	\N	\N	2016-06-14 17:44:49.885034-07	2016-06-14 17:44:49.88506-07	President	http://www.nike.com/us/en_us/c/golf	Sporting goods	Active supporter of the Furman University Athletic Department 
5828	P897	Edward Boyle	\N	\N	\N	\N	2016-06-14 17:44:49.890892-07	2016-06-14 17:44:49.890919-07	Founder and Chairman ClearFlow, Inc.	www.clearflow.com	Healthcare Professionals	ClearFlow, Inc., Inovia Vein Speicialty Center, MDI Partners
5829	P1014	Larry Keith	\N	\N	\N	\N	2016-06-14 17:44:49.897714-07	2016-06-14 17:44:49.89774-07	Business and tech manufacturer	http://entek.com/	Software and Techology	$100K Donation to community college
5830	P126	Albert Hoagland	\N	\N	\N	\N	2016-06-14 17:44:49.903688-07	2016-06-14 17:44:49.903711-07	Trustee, Charles Babbage Foundation	https://www.computer.org/web/cshistory/albert-hoagland	Philanthropist	
5831	P764	Joan Austin	\N	\N	\N	\N	2016-06-14 17:44:49.905656-07	2016-06-14 17:44:49.905681-07	CEO/Owner	http://us.a-dec.com/en/	Industrial Manufacturing	
5832	P491	Jennifer Davis	\N	\N	\N	\N	2016-06-14 17:44:49.907569-07	2016-06-14 17:44:49.907591-07	Financial Advisor	http://financialservicesinc.ubs.com/branch/portlandll/	Banking and Finance	
5833	p57	Ronald Miller	\N	\N	\N	\N	2016-06-14 17:44:49.909443-07	2016-06-14 17:44:49.909464-07	self-employed		Marketing and Creative Agencies	
5834	P267	William Lazar	\N	\N	\N	\N	2016-06-14 17:44:49.915405-07	2016-06-14 17:44:49.915428-07	Not employed	NA		Lazar gave $250 to "Restore our Natural Areas" on 4/15/2013.
5835	P1466	Dan Hobin	\N	\N	\N	\N	2016-06-14 17:44:49.921346-07	2016-06-14 17:44:49.921373-07	CEO	https://www.linkedin.com/in/danhobin, http://www.getg5.com/	Software and Techology	
5836	P1241	Charles Meeker	\N	\N	\N	\N	2016-06-14 17:44:49.923358-07	2016-06-14 17:44:49.923383-07	Candidate of North Carolina Commissioner of Labor	http://www.charlesmeeker.org/	Government and Public Service	former mayor of Raleigh, North Carolina, USA
5837	P804	Maryellen Hockensmith	\N	\N	\N	\N	2016-06-14 17:44:49.933573-07	2016-06-14 17:44:49.9336-07	Owner	http://www.yogacowgirls.com/about/	Agriculture and Farming	
5838	P16	James Orr	\N	\N	\N	\N	2016-06-14 17:44:49.935975-07	2016-06-14 17:44:49.935998-07	Retired			
5839	P1829	Leonard Meeker	\N	\N	\N	\N	2016-06-14 17:44:49.939747-07	2016-06-14 17:44:49.939771-07	Deceased		Lawyers	http://ocracokeobserver.com/2014/12/05/leonard-meeker-1916-2014-2/
5840	p1804	Walter R Miller	\N	\N	\N	\N	2016-06-14 17:44:49.946041-07	2016-06-14 17:44:49.946068-07	self-employed	Emco of oregon	Retail Services	
5841	P1128	Tim Boyle	\N	\N	\N	\N	2016-06-14 17:44:49.952074-07	2016-06-14 17:44:49.952098-07	President and CEO of Columbia Sportswear	http://www.columbia.com/	Retail Services	Charlie Hales for Mayor
5842	P174	David Pollock	\N	\N	\N	\N	2016-06-14 17:44:49.957971-07	2016-06-14 17:44:49.957996-07	Board of Directors, Vigor Industrial	http://vigor.net/	Industrial Manufacturing	Donated to Stand For Children and Children's Levy as well, potentially donating to curry favor with local elected officials.
5843	P1802	Michael Bloomberg	\N	\N	\N	\N	2016-06-14 17:44:49.967454-07	2016-06-14 17:44:49.967489-07	Retired		Philanthropist	Climate Change Envoy for United Nations, Founder of Bloomberg Philanthopies 
5844	P590	Loren Parks	\N	\N	\N	\N	2016-06-14 17:44:49.990612-07	2016-06-14 17:44:49.990643-07	Owner	http://www.parksmed.com/	Healthcare Professionals	Owner of Parks Foundation
5845	P1663	Tom Hormel	\N	\N	\N	\N	2016-06-14 17:44:50.001582-07	2016-06-14 17:44:50.001614-07	Hormel foods heir		Philanthropist	GMO activism
5847	P331	Winthrop McCormack	\N	\N	\N	\N	2016-06-14 17:44:50.017238-07	2016-06-14 17:44:50.017264-07	Publisher		Communication and Telecommunications	Chair of the Oregon Democratic Party’s President’s Council, Board member Oregon Council for the Humanities, Board member of Oregon Tourism Commission, Board of Overseers of Emerson College, co-founder of the Liberty Hill Foundation
5848	P997	Philip Knight	\N	\N	\N	\N	2016-06-14 17:44:50.031666-07	2016-06-14 17:44:50.031693-07	Co-founder and Chairman	www.nike.com	Retail Services	Philanthropic donations to Stanford University, University of Oregon, OHSU, Education PAC, and political campaigns
5849	P803	James Young	\N	\N	\N	\N	2016-06-14 17:44:50.045427-07	2016-06-14 17:44:50.045454-07	Former CEO	http://entek.com/	Industrial Manufacturing	multiple republican campaign donations
5850	P1453	Jeffrey Weston	\N	\N	\N	\N	2016-06-14 17:44:50.051174-07	2016-06-14 17:44:50.051198-07				Libertarian Party of Oregon Committee member 
5851	P698	Eric Lemelson	\N	\N	\N	\N	2016-06-14 17:44:50.05685-07	2016-06-14 17:44:50.056874-07	Owner, Manager	http://www.lemelsonvineyards.com/	Beer, Wine, Liquor, Tobacco, Marijuana	Vice President and Treasurer of Lamelson Foundation, Board Member, Oregon League of Conservation Voters, Board member of Potential Energy, Board member of 1000 Friends of Oregon, 
5893	P1814	John Childs	\N	\N	\N	\N	2016-06-14 17:44:50.342957-07	2016-06-14 17:45:06.57956-07	Founder J. W. Childs Associates	www.jwchilds.com	Banking and Finance	Chairman of Kosta Browne and a director of KeyImpact, Esselte, Mattress Firm, WS Packaging and SIMCOM
5892	P721	Jeff Heatherington	\N	\N	\N	\N	2016-06-14 17:44:50.341006-07	2016-06-14 17:45:07.622469-07	President and CEO, FamilyCare	https://www.familycareinc.org/	Healthcare Professionals	
5897	P934	John Helm	\N	\N	\N	\N	2016-06-14 17:44:50.433248-07	2016-06-14 17:45:07.626104-07	Manager	http://transwesternaviation.com/	Transportation	
5894	P3	Alan Leiman	\N	\N	\N	\N	2016-06-14 17:44:50.348986-07	2016-06-14 17:45:08.171555-07	Attorney	http://www.leimanlaw.com/	Lawyers	
5896	P1883	Wayne Miller	\N	\N	\N	\N	2016-06-14 17:44:50.41988-07	2016-06-14 17:45:08.902128-07	Retired	none	Construction	International Union of Operating Engineers Local 701 Misc PAC 
5884	P184	Steven Naito	\N	\N	\N	\N	2016-06-14 17:44:50.307982-07	2016-06-14 17:44:50.308009-07	Lawyer	www.tnslaw.net/attorneys/steve-naito.html	Lawyers	
5858	P1760	Paul W Ables	\N	\N	\N	\N	2016-06-14 17:44:50.163067-07	2016-06-14 17:45:05.910676-07			Construction	
5860	P1052	Cheryl Ables	\N	\N	\N	\N	2016-06-14 17:44:50.171664-07	2016-06-14 17:45:05.914566-07	Spouse Paul Ables		Construction	
5861	P1298	Richard Adams	\N	\N	\N	\N	2016-06-14 17:44:50.173712-07	2016-06-14 17:45:05.918266-07	Lawyer	http://roguefirm.com/the-firm/richard-adams	Lawyers	
5874	P1928	John A Adams	\N	\N	\N	\N	2016-06-14 17:44:50.256094-07	2016-06-14 17:45:05.921898-07	dentist		Healthcare Professionals	
5879	P1415	Carol Adler	\N	\N	\N	\N	2016-06-14 17:44:50.282231-07	2016-06-14 17:45:05.929493-07	retiree		Education	
5886	P1116	Martin Alvey	\N	\N	\N	\N	2016-06-14 17:44:50.316272-07	2016-06-14 17:45:05.968636-07	Lawyer	http://martinalvey.com/	Lawyers	oregon trial lawyers association
5889	P1918	Kelly Anderson	\N	\N	\N	\N	2016-06-14 17:44:50.326375-07	2016-06-14 17:45:05.988815-07	Lawyer	andersenlaw.com/	Lawyers	
5857	P1018	Carlos Barrera	\N	\N	\N	\N	2016-06-14 17:44:50.140877-07	2016-06-14 17:45:06.130371-07	Chairman	Chairman at Friendly Area Neighborhood Association	Philanthropist	Friendly Area Neighbors, Funded many democratic candidates
5868	P1213	Julian Bell	\N	\N	\N	\N	2016-06-14 17:44:50.203713-07	2016-06-14 17:45:06.219846-07	Medical Doctor		Healthcare Professionals	He ran for Democratic Secretary of State, his contributions are not listed on ORESTAR, but those are his issues listed on his website
5873	P1670	Andrew Berwick Jr.	\N	\N	\N	\N	2016-06-14 17:44:50.246306-07	2016-06-14 17:45:06.276385-07	President & CEO	Berwick-Pacific Corporation	Real Estate	Oregonians For Higher Education Excellence; Kitzhaber 2010
5887	P161	Robert M. Decker	\N	\N	\N	\N	2016-06-14 17:44:50.322449-07	2016-06-14 17:45:06.776773-07	Founder and President	http://westcaremgt.com/	Healthcare Professionals	
5878	P1102	Harriet Denison	\N	\N	\N	\N	2016-06-14 17:44:50.276865-07	2016-06-14 17:45:06.802738-07	Writer	http://travelswithharriet.org/index.html	Arts, Entertainment, Music, and Recreation	
5871	P346	Daniel Deutsch	\N	\N	\N	\N	2016-06-14 17:44:50.238468-07	2016-06-14 17:45:06.81746-07	Developer	http://leftbankproject.com/	Construction	
5853	P1004	Dean Devlin	\N	\N	\N	\N	2016-06-14 17:44:50.11409-07	2016-06-14 17:45:06.828214-07	Television Director/Producer	http://www.electric-entertainment.com/	Arts, Entertainment, Music, and Recreation	
5859	P636	John DiLorenzo	\N	\N	\N	\N	2016-06-14 17:44:50.169293-07	2016-06-14 17:45:06.852976-07	Attorney and Lobbyist	http://www.dwt.com/	Lawyers	
5865	P436	Leanne DiLorenzo	\N	\N	\N	\N	2016-06-14 17:44:50.189542-07	2016-06-14 17:45:06.856472-07	Founder and President	http://www.voteera.org/	Lobbyists and Unions	http://www.voteera.org/
5881	P813	Margaret Doherty	\N	\N	\N	\N	2016-06-14 17:44:50.290336-07	2016-06-14 17:45:06.871041-07	Politician/Democratic Representative	http://margaretdoherty.com/	Government and Public Service	http://www.culturaltrust.org/
5891	P1911	Valerie A Johnson (Johnson Eves)	\N	\N	\N	\N	2016-06-14 17:44:50.330495-07	2016-06-14 17:45:07.864004-07	President, D.R. Johnson Lumber Co	http://www.drjlumber.com/, http://oregonclt.com/	Forestry and Timber	Former Chair, Oregon Lands Coalition, Co-Chair Save the Salmon Coalition (http://www.oia.org/wp-content/uploads/2013/10/LookingForwardMarch-April2003.TL_.pdf), "Saint" Donor to West Linn Music and Arts Partners (http://www.musicandartspartners.org/wp-content/uploads/2013/12/Newsletter-Winter-2012.pdf)
5864	P1620	Jody Jones	\N	\N	\N	\N	2016-06-14 17:44:50.187647-07	2016-06-14 17:45:07.885298-07	Co-Owner, Seneca Family of Companies	http://senecasawmill.com/about/becky-kathy-jody-jones/	Forestry and Timber	
5869	P1011	Rebecca L (Becky) Jones	\N	\N	\N	\N	2016-06-14 17:44:50.230069-07	2016-06-14 17:45:07.888879-07	Co-Owner, Seneca Family of Companies	http://senecasawmill.com/about/becky-kathy-jody-jones/	Forestry and Timber	board member for the High Desert Museum
5856	P1748	James Kelly	\N	\N	\N	\N	2016-06-14 17:44:50.130928-07	2016-06-14 17:45:07.962257-07	Owner/Founder	www.rejuvenation.com	Retail Services	Oregon Historical Society (Donor), Oregon Business Association (Top 10 Donor),  
5877	P1960	John Koza	\N	\N	\N	\N	2016-06-14 17:44:50.27012-07	2016-06-14 17:45:08.072791-07	Founder (Genetic Programming Inc.)	genetic-programming.com	Software and Techology	National Popular Vote (Founder)
5872	P235	Barbara Lee	\N	\N	\N	\N	2016-06-14 17:44:50.240376-07	2016-06-14 17:45:08.147112-07	Founder	http://www.barbaraleefoundation.org/	Lobbyists and Unions	Barbara Lee Foundation
5875	P1416	Debra Lee	\N	\N	\N	\N	2016-06-14 17:44:50.262347-07	2016-06-14 17:45:08.150945-07	Attorney and Executive Director	http://cnpls.org/	Lawyers	
5880	P1536	Steve Lee	\N	\N	\N	\N	2016-06-14 17:44:50.288357-07	2016-06-14 17:45:08.154435-07	President of Stingray Development	http://www.stingraydevelopment.com/	Real Estate	
5882	P22073	Mary Lee Ward	\N	\N	\N	\N	2016-06-14 17:44:50.296108-07	2016-06-14 17:45:08.158092-07	Retired		Philanthropist	
5885	P1370	Daniel Leeds	\N	\N	\N	\N	2016-06-14 17:44:50.309873-07	2016-06-14 17:45:08.161815-07	President		Banking and Finance	National Public Education Support Fund, PBS, and The Enfranchisement Foundation
5888	P1398	John Lees	\N	\N	\N	\N	2016-06-14 17:44:50.324432-07	2016-06-14 17:45:08.165054-07	Ophthalmologist	http://www.eyecareassociates.net/	Healthcare Professionals	
5890	P809	Douglas LeFevre	\N	\N	\N	\N	2016-06-14 17:44:50.328338-07	2016-06-14 17:45:08.168367-07	Not-employed		Philanthropist	
5855	P494	Peter Lewis	\N	\N	\N	\N	2016-06-14 17:44:50.123334-07	2016-06-14 17:45:08.212711-07	Died in 11/23/2013	https://www.progressive.com/	Banking and Finance	Chairman of the Board Progressive Auto Insurance
5863	P1030	Charles Lillis	\N	\N	\N	\N	2016-06-14 17:44:50.185778-07	2016-06-14 17:45:08.23906-07	Co-Founder & Managing Partner	LoneTree Capital Partners - No Website	Banking and Finance	
5867	P1173	Leanne Littrell DiLorenzo	\N	\N	\N	\N	2016-06-14 17:44:50.201804-07	2016-06-14 17:45:08.251427-07	Founder and President	VoteERA.org	Lobbyists and Unions	
5870	P840	Carolyn Loacker	\N	\N	\N	\N	2016-06-14 17:44:50.236433-07	2016-06-14 17:45:08.256498-07	Not Employed		Lobbyists and Unions	
5862	P77	Andrew Miller	\N	\N	\N	\N	2016-06-14 17:44:50.179934-07	2016-06-14 17:45:08.895082-07	CEO	http://www.stimsonlumber.com/	Forestry and Timber	Friends of Matt Wingard, Protect The People PAC - Recall Senator Courtney, Friends of Julie Parrish,  Friends of Jodi Bailey, Oregon Transformation Project PAC, Public Employee Choice Act Committee, Friends of Dan Mason, PolitiCoach PAC  
5876	P1283	Vanessa Morgan	\N	\N	\N	\N	2016-06-14 17:44:50.26427-07	2016-06-14 17:45:08.982391-07	Research Assistant	www.pdx.edu/esm/staff-0	Education	Apart of Natural Resource Management Professionals
5866	P1835	J. Franklin Morse	\N	\N	\N	\N	2016-06-14 17:44:50.195753-07	2016-06-14 17:45:09.006648-07	Retired Oregon Senator	www.oregonlegislature.gov/	Government and Public Service	Oregon Senator District 8
5929	p650	Robert Ball	\N	\N	\N	\N	2016-06-14 17:44:50.561516-07	2016-06-14 17:44:50.561539-07	Developer	robertball.com	Real Estate	
5900	P1782	John Andrews	\N	\N	\N	\N	2016-06-14 17:44:50.463872-07	2016-06-14 17:45:05.999919-07	IT	Bonaventure Senior Living	Software and Techology	
5910	P731	George Austin	\N	\N	\N	\N	2016-06-14 17:44:50.492534-07	2016-06-14 17:45:06.018216-07	Education Management Professional		Education	
5913	P244	Stephen Babson	\N	\N	\N	\N	2016-06-14 17:44:50.498029-07	2016-06-14 17:45:06.03561-07	Managing Director, Endeavour Capital, Inc.	www.endeavourcapital.com/	Transportation	
5923	P1203	Curtis Baker	\N	\N	\N	\N	2016-06-14 17:44:50.542256-07	2016-06-14 17:45:06.053264-07	Investment Banking		Banking and Finance	
5934	P1397	Phil Barnhart	\N	\N	\N	\N	2016-06-14 17:44:50.575258-07	2016-06-14 17:45:06.102834-07	Oregon house of representatives	https://www.oregonlegislature.gov/barnhart	Government and Public Service	
5938	P1551	Florence Barnhart	\N	\N	\N	\N	2016-06-14 17:44:50.591373-07	2016-06-14 17:45:06.111299-07	Spouse phil Barnhart		Government and Public Service	
5941	P1685	Brendan Barnicle	\N	\N	\N	\N	2016-06-14 17:44:50.597373-07	2016-06-14 17:45:06.118885-07	Research Analyst, pacific crest securities	http://www.pacific-crest.com/managers/brendan-barnicle/	Banking and Finance	
5901	P1811	Mark Bocci	\N	\N	\N	\N	2016-06-14 17:44:50.466256-07	2016-06-14 17:45:06.332598-07	Attorney		Lawyers	
5907	P1894	Jennifer Clark	\N	\N	\N	\N	2016-06-14 17:44:50.485841-07	2016-06-14 17:45:06.58941-07	Oil and Gas Investor	self employed	Chemical, Oil, Gas, Electric	
5911	P916	Richard Clark	\N	\N	\N	\N	2016-06-14 17:44:50.494404-07	2016-06-14 17:45:06.592985-07	\tCoaster Properties, LLC Beaverton OR	none	Real Estate	
5931	P455	Kristin Collins	\N	\N	\N	\N	2016-06-14 17:44:50.565244-07	2016-06-14 17:45:06.641038-07	Professor of Art History	www.lclark.edu	Education	
5935	P343	Truman Collins Jr	\N	\N	\N	\N	2016-06-14 17:44:50.577245-07	2016-06-14 17:45:06.648979-07	Software developer	www.mentor.com	Software and Techology	 trustee of the Collins Foundation and the Collins Medical Trust, OHSU Foundation Board of Trustees
5936	P1978	Dennis Denton	\N	\N	\N	\N	2016-06-14 17:44:50.583421-07	2016-06-14 17:45:06.806225-07	CEO Denton Plastics Inc.	http://www.dentonplastics.com/	Industrial Manufacturing	
5939	P1249	Aaron DeShaw	\N	\N	\N	\N	2016-06-14 17:44:50.593302-07	2016-06-14 17:45:06.809991-07	Attorney	http://deshawlaw.com/	Lawyers	
5942	P770	George Detrick	\N	\N	\N	\N	2016-06-14 17:44:50.599244-07	2016-06-14 17:45:06.81385-07	CEO Brolin Corp	http://www.brolinsoftware.com/home.asp?uri=1000	Software and Techology	
5930	P1866	David A. deVilleneuve	\N	\N	\N	\N	2016-06-14 17:44:50.56339-07	2016-06-14 17:45:06.820962-07	Attorney	http://letusfightforyou.com/	Lawyers	
5943	P1563	John Devlin	\N	\N	\N	\N	2016-06-14 17:44:50.601106-07	2016-06-14 17:45:06.82452-07	Attorney	http://rgdpdx.com/	Lawyers	
5906	P22019	Joaquin Hidalgo	\N	\N	\N	\N	2016-06-14 17:44:50.480058-07	2016-06-14 17:45:07.649821-07	President and General Manager of Nike North America	http://www.nike.com/us/en_us/	Retail Services	http://wish.org/
5902	P1254	John R. Hoke III	\N	\N	\N	\N	2016-06-14 17:44:50.468208-07	2016-06-14 17:45:07.670696-07	VP Nike Design	http://www.nike.com/us/en_us/c/nikeid	Retail Services	
5918	P911	Clyde Holland	\N	\N	\N	\N	2016-06-14 17:44:50.527944-07	2016-06-14 17:45:07.674325-07	Developer	http://www.hollandpartnergroup.com/	Construction	
5920	P1589	Michael Hollern	\N	\N	\N	\N	2016-06-14 17:44:50.53237-07	2016-06-14 17:45:07.677973-07	Developer	http://brooksresources.com/	Real Estate	
5922	P587	Shelda Holmes	\N	\N	\N	\N	2016-06-14 17:44:50.540409-07	2016-06-14 17:45:07.691066-07	Family Nurse Practioner	https://handsonmedicine.net/	Healthcare Professionals	
5912	P670	Steve Holwerda	\N	\N	\N	\N	2016-06-14 17:44:50.496219-07	2016-06-14 17:45:07.698237-07	Chief Operating Officer	http://www.fergusonwellman.com/	Banking and Finance	
5924	P373	Lee Holzman	\N	\N	\N	\N	2016-06-14 17:44:50.544147-07	2016-06-14 17:45:07.702403-07	CEO	https://www.reliablecredit.com/	Banking and Finance	
5927	P579	Irwin Holzman	\N	\N	\N	\N	2016-06-14 17:44:50.550059-07	2016-06-14 17:45:07.706025-07	Past Chairman; Retired	https://www.reliablecredit.com/	Banking and Finance	Holzman Foundation Inc
5908	P22020	Alex Honnold	\N	\N	\N	\N	2016-06-14 17:44:50.488709-07	2016-06-14 17:45:07.713022-07	Rock Climber		Sports/Athletics	
5898	P128	Nancy Lematta	\N	\N	\N	\N	2016-06-14 17:44:50.435924-07	2016-06-14 17:45:08.175543-07	Chairman of the Board	http://www.colheli.com/	Transportation	Portland Art Museum, Columbia Helicopters, Providence Portland Medical Foundation, Lematta Foundation, I Have a Dream Foundation
5905	P627	Patrick Leonard	\N	\N	\N	\N	2016-06-14 17:44:50.478051-07	2016-06-14 17:45:08.182917-07	Unemployed		Philanthropist	
5914	P1379	John Lesowski	\N	\N	\N	\N	2016-06-14 17:44:50.503812-07	2016-06-14 17:45:08.186567-07	Retired		Philanthropist	
5916	P142	Holly Lev	\N	\N	\N	\N	2016-06-14 17:44:50.51164-07	2016-06-14 17:45:08.189869-07	Self-Employed		Lobbyists and Unions	
5919	P439	Irving Levin	\N	\N	\N	\N	2016-06-14 17:44:50.530138-07	2016-06-14 17:45:08.193542-07	Chairman of Genesis Financial Solutions	http://www.genesis-fs.com/	Banking and Finance	
5925	P22037	Sue Levin	\N	\N	\N	\N	2016-06-14 17:44:50.546133-07	2016-06-14 17:45:08.196895-07	CEO of Lucy Activewear	http://www.lucy.com/	Sports/Athletics	Stand for the Children
5933	P1637	Barbara Levy	\N	\N	\N	\N	2016-06-14 17:44:50.569386-07	2016-06-14 17:45:08.200595-07	Farmer		Agriculture and Farming	Eastern Oregon Women's Coalition, President
5932	P951	Robert Levy	\N	\N	\N	\N	2016-06-14 17:44:50.567279-07	2016-06-14 17:45:08.204017-07	Farmer at L & L Farms LLC		Agriculture and Farming	
5940	P1659	Kenneth Lewis	\N	\N	\N	\N	2016-06-14 17:44:50.59518-07	2016-06-14 17:45:08.208771-07	Retired Electrician		Construction	
5921	P1985	Jean Martwick	\N	\N	\N	\N	2016-06-14 17:44:50.534436-07	2016-06-14 17:45:08.394698-07	Judge of the Circuit Court, 19th District, Position 1 	http://courts.oregon.gov/columbia/Pages/index.aspx	Government and Public Service	Elect Judge Jean Marie Martwick 
5917	P561	Steven McGeady	\N	\N	\N	\N	2016-06-14 17:44:50.513655-07	2016-06-14 17:45:08.47101-07	Managing Director	Drumlin Holdings, LLC	Banking and Finance	Save Outdoor School for All , Tawna Sanchez for Oregon , Kate Brown Committee, Friends of Ted Wheeler, Elect Deborah Kafoury,  \tPortlanders for Schools, Planned Parenthood PAC of Oregon, Charlie Hales for Mayor, Restore Our Natural Areas, Future PAC, House Builders, Yes on 49 
5904	P189	David Nierenberg	\N	\N	\N	\N	2016-06-14 17:44:50.471994-07	2016-06-14 17:45:09.110848-07	Founder of Nierenberg Investment Management Company	http://www.sec.gov/Archives/edgar/data/1282683/000116923208002077/d74304_13fhr.txt	Banking and Finance	Washington State Investment Board
5915	P1407	Karen Packer	\N	\N	\N	\N	2016-06-14 17:44:50.505754-07	2016-06-14 17:45:09.186068-07	First Vice-Chair, Democratic Party of Oregon	dpo.org	Government and Public Service	First Vice-Chair, Democratic Party of Oregon
5909	P1925	Mark Parker	\N	\N	\N	\N	2016-06-14 17:44:50.490627-07	2016-06-14 17:45:09.21168-07	CEO	http://www.nike.com/us/en_us/	Retail Services	
5928	P1417	Richard Parker III	\N	\N	\N	\N	2016-06-14 17:44:50.55964-07	2016-06-14 17:45:09.218816-07	President/CEO	https://www.unitedfinance.com/	Banking and Finance	
5926	P761	Richard Parker Jr.	\N	\N	\N	\N	2016-06-14 17:44:50.548032-07	2016-06-14 17:45:09.226219-07	Financial Advisor	https://www.unitedfinance.com/	Banking and Finance	
5962	p99	beth bagley	\N	\N	\N	\N	2016-06-14 17:44:50.679788-07	2016-06-14 17:44:50.679813-07	Judge	courts.oregon.gov/	Lawyers	
5973	P953	Dean Aldrich	\N	\N	\N	\N	2016-06-14 17:44:50.717359-07	2016-06-14 17:45:05.939385-07	Attorney	www.aldrichlawoffice.com/	Lawyers	
5985	P631	Dean Alterman	\N	\N	\N	\N	2016-06-14 17:44:50.771124-07	2016-06-14 17:45:05.954253-07	Attorney\t Alterman Law Office 	www.farlawfirm.com/dean_alterman.php	Lawyers	
5954	P718	Sheila Babbie	\N	\N	\N	\N	2016-06-14 17:44:50.636839-07	2016-06-14 17:45:06.028696-07	unemployed		Education	
5957	P539	David Baca	\N	\N	\N	\N	2016-06-14 17:44:50.659165-07	2016-06-14 17:45:06.03936-07	Attorney	www.dwt.com/people/davebaca/	Lawyers	
5963	P1229	Jan Baisch	\N	\N	\N	\N	2016-06-14 17:44:50.681689-07	2016-06-14 17:45:06.049719-07	attorney	www.bctriallaw.com/	Lawyers	
5949	P1483	Gwen Baldwin	\N	\N	\N	\N	2016-06-14 17:44:50.613653-07	2016-06-14 17:45:06.069929-07	Business Consultant	http://www.baldwinconsulting.biz/	Communication and Telecommunications	
5945	P219	John L. Ballard	\N	\N	\N	\N	2016-06-14 17:44:50.605793-07	2016-06-14 17:45:06.075023-07	Attorney	http://www.attorneyballard.com/	Lawyers	
5952	P1113	Bob Barman	\N	\N	\N	\N	2016-06-14 17:44:50.629084-07	2016-06-14 17:45:06.091833-07	Gas Station Owner		Chemical, Oil, Gas, Electric	
5967	P940	Keith Barnes	\N	\N	\N	\N	2016-06-14 17:44:50.689575-07	2016-06-14 17:45:06.099374-07	Organic Distillery Proprieter	http://www.bainbridgedistillers.com/	Beer, Wine, Liquor, Tobacco, Marijuana	
5958	P1223	Kathryn Clarke	\N	\N	\N	\N	2016-06-14 17:44:50.661279-07	2016-06-14 17:45:06.599579-07	attorney	www.oregontriallawyers.org	Lawyers	
5988	P1850	Beverly Cleary	\N	\N	\N	\N	2016-06-14 17:44:50.781588-07	2016-06-14 17:45:06.606378-07	Author	beverlycleary.com	Arts, Entertainment, Music, and Recreation	
5951	P1622	Maribeth Collins	\N	\N	\N	\N	2016-06-14 17:44:50.622805-07	2016-06-14 17:45:06.645016-07	Trustee Emeritus	Collinsfoundation.org	Forestry and Timber	Life Trustee and Secretary of the Board of Trustees Willamette University
5965	P1168	Quinn Delaney	\N	\N	\N	\N	2016-06-14 17:44:50.685578-07	2016-06-14 17:45:06.787349-07	Founder and President of Akonadi Foundation	http://akonadi.org/	Philanthropist	
5946	P762	Spencer Dick	\N	\N	\N	\N	2016-06-14 17:44:50.607931-07	2016-06-14 17:45:06.831792-07	CEO TigerStop	http://www.tigerstop.com/	Industrial Manufacturing	
5960	P191	Mark Dodson	\N	\N	\N	\N	2016-06-14 17:44:50.666871-07	2016-06-14 17:45:06.867421-07	Retired; former CEO of NW Natural Gas	https://www.nwnatural.com/	Chemical, Oil, Gas, Electric	Medical Teams International; Chair, Executive Committee
5972	P1331	Matthew Donegan	\N	\N	\N	\N	2016-06-14 17:44:50.715442-07	2016-06-14 17:45:06.878026-07	Former Co-Founder & Co-President of Forest Capital Partners	http://www.forestcap.com/	Forestry and Timber	
5974	P22056	Timothy J. Hershey	\N	\N	\N	\N	2016-06-14 17:44:50.719341-07	2016-06-14 17:45:07.641397-07	VP Global Merchandising at Nike	http://www.nike.com/us/en_us/	Retail Services	
5977	P22033	Mark Hettervig	\N	\N	\N	\N	2016-06-14 17:44:50.73846-07	2016-06-14 17:45:07.645913-07	Self Employed; Northern Lights Wreath Company	n/a	Retail Services	
5983	P1144	Stephen Houze	\N	\N	\N	\N	2016-06-14 17:44:50.757956-07	2016-06-14 17:45:07.734267-07	Criminal Defense Lawyer	http://www.shouze.com/	Lawyers	Member, Board of Directors, Metropolitan Public Defender (according to his website)
5987	P1956	Steve Hughes	\N	\N	\N	\N	2016-06-14 17:44:50.779487-07	2016-06-14 17:45:07.743998-07	 \tOrganizer, AFSCME Council 75 Portland OR 	http://www.oregonafscme.com/	Lobbyists and Unions	
5948	P1908	Thomas Johnston	\N	\N	\N	\N	2016-06-14 17:44:50.611704-07	2016-06-14 17:45:07.87259-07	Councilor at large, Forest Grove (retired policeman, Forest Grove)	http://dpo.org/people/thomas-johnston	Government and Public Service	
5984	P217	Nathaniel Klipper	\N	\N	\N	\N	2016-06-14 17:44:50.764826-07	2016-06-14 17:45:08.042128-07	Portfolio Manager at ADK Capital	N/A (ADK Capital LLC)	Banking and Finance	Australia's Renewable Energy Target (Investor), 
5971	P387	Howard Koff	\N	\N	\N	\N	2016-06-14 17:44:50.701325-07	2016-06-14 17:45:08.055533-07	President of Westbury Enterprises	westburyent.com	Banking and Finance	Menninger Foundation (Topeka, Kansas) Board of Trustees, D.A.R.E. California Executive Committee Member, Cedars Sinai Hospital Associates 
5955	P405	E. Randolph Labbe	\N	\N	\N	\N	2016-06-14 17:44:50.642879-07	2016-06-14 17:45:08.099889-07	President of Kerr Pacific Corporation		Food and Agribusiness	Reed College Board of Trustees (Secretary) Oregon Board of Trustees (Chair Emeritus), Deschutes River Conservancy (Donor), The Freshwater Trust (Donor)
5944	P1356	Kathleen Lewis	\N	\N	\N	\N	2016-06-14 17:44:50.603368-07	2016-06-14 17:45:08.216632-07	Film Producer for Embargo	http://www.embargofilms.com/	Arts, Entertainment, Music, and Recreation	
5947	P1319	Christine Lewis	\N	\N	\N	\N	2016-06-14 17:44:50.609833-07	2016-06-14 17:45:08.220377-07	Campaign Manager for Jules Bailey	http://www.julesbailey.com/	Government and Public Service	
5961	P336	Kate Lieber	\N	\N	\N	\N	2016-06-14 17:44:50.674934-07	2016-06-14 17:45:08.230176-07	Attorney at PCC	https://www.pcc.edu/scripts/sdquery.pl?all=kate.lieber15%40pcc.edu	Education	
5964	P325	Ross Lienhart	\N	\N	\N	\N	2016-06-14 17:44:50.683647-07	2016-06-14 17:45:08.235247-07	Managing Member ELF Investments, LLC	http://www.pccstructurals.com/home/	Banking and Finance	
5966	P1472	Eric Lindauer	\N	\N	\N	\N	2016-06-14 17:44:50.687543-07	2016-06-14 17:45:08.244058-07	Mediator	http://www.lindauermediation.com/	Lawyers	
5969	P1723	Susan Linder	\N	\N	\N	\N	2016-06-14 17:44:50.697495-07	2016-06-14 17:45:08.247631-07	Unemployed		Philanthropist	
5976	P1258	Edward Maletis	\N	\N	\N	\N	2016-06-14 17:44:50.736507-07	2016-06-14 17:45:08.325024-07	President at Columbia Distribution	http://www.coldist.com/Home.aspx	Transportation	
5986	P630	Chris Maletis	\N	\N	\N	\N	2016-06-14 17:44:50.773098-07	2016-06-14 17:45:08.330253-07	President of Maletis Brewing	http://www.maletis.com/	Beer, Wine, Liquor, Tobacco, Marijuana	
5981	P1342	Chris Maletis III	\N	\N	\N	\N	2016-06-14 17:44:50.754056-07	2016-06-14 17:45:08.338077-07	Co-Owner of Langden Farms Golf Club	http://www.langdonfarms.com/	Arts, Entertainment, Music, and Recreation	
5975	P1696	Melvin Mark	\N	\N	\N	\N	2016-06-14 17:44:50.721388-07	2016-06-14 17:45:08.362469-07	CEO	http://www.melvinmarkcompanies.com/	Real Estate	Friends of Ted Wheeler, Fix Our Streets Portland, Jose for Portland Schools, Vote 4 Lou Ogden, Friends of Dan Saltzman,  Buehler For a United Oregon, Charlie Hales for Mayor, Friends of Chris Dudley, Committee for Safe and Successful Children, Oregon Zoo 2008  
5953	P22005	Erika Miller	\N	\N	\N	\N	2016-06-14 17:44:50.63106-07	2016-06-14 17:45:08.907062-07	Retired	None	Philanthropist	Boylston for Oregon, Friends of Allen Alley, Buehler For a United Oregon, 
5968	P690	Norris Monson	\N	\N	\N	\N	2016-06-14 17:44:50.691502-07	2016-06-14 17:45:08.937089-07	CEO	http://www.cultivatedindustries.com/	Beer, Wine, Liquor, Tobacco, Marijuana	Oregon Cannabis PAC
5980	P937	Cheryl Munro	\N	\N	\N	\N	2016-06-14 17:44:50.75212-07	2016-06-14 17:45:09.016971-07	Treatment Coordinator	www.lakeoswegobraces.com/	Healthcare Professionals	
5959	P131	Scott Nelson	\N	\N	\N	\N	2016-06-14 17:44:50.664168-07	2016-06-14 17:45:09.063531-07	Lobbyst and Former Jobs & Economy Advisor to Governor  Kitzhaber 	https://web.archive.org/web/20130725163559/http://dasapp.oregon.gov/statephonebook/display.asp?agency=12100&division=12108	Government and Public Service	
5956	P548	Jane Paulson	\N	\N	\N	\N	2016-06-14 17:44:50.652821-07	2016-06-14 17:45:09.250805-07	Lawyer	http://www.paulsoncoletti.com/	Lawyers	
5950	P993	Charles Paulson	\N	\N	\N	\N	2016-06-14 17:44:50.6161-07	2016-06-14 17:45:09.254279-07	Lawyer	http://www.paulsoncoletti.com/	Lawyers	
5978	P1063	Marcia Petty	\N	\N	\N	\N	2016-06-14 17:44:50.740433-07	2016-06-14 17:45:09.325881-07	Not Employed		Arts, Entertainment, Music, and Recreation	
6068	p1282	john banes	\N	\N	\N	\N	2016-06-14 17:44:51.181872-07	2016-06-14 17:44:51.181896-07	self-employed		Beer, Wine, Liquor, Tobacco, Marijuana	
5996	P1573	Michael Amaranthus	\N	\N	\N	\N	2016-06-14 17:44:50.838509-07	2016-06-14 17:45:05.977429-07	Scientist/Chief financial officer	Mycorrhizal Applications	Food and Agribusiness	
6000	P1047	Jamsheed Ameri	\N	\N	\N	\N	2016-06-14 17:44:50.861978-07	2016-06-14 17:45:05.981231-07	Real Estate Investor	www.kaproperties.com	Real Estate	
6004	P1800	Mike Anderly	\N	\N	\N	\N	2016-06-14 17:44:50.870582-07	2016-06-14 17:45:05.984937-07	Self-Employed	www.cloudcitygardens.com/	Beer, Wine, Liquor, Tobacco, Marijuana	
6021	P991	James Bentz	\N	\N	\N	\N	2016-06-14 17:44:50.958679-07	2016-06-14 17:45:06.23282-07	Rancher	Self-Employed	Agriculture and Farming	
5998	P353	Katherine Bradley	\N	\N	\N	\N	2016-06-14 17:44:50.842328-07	2016-06-14 17:45:06.349749-07	Clinical Associate Professor	http://www.ohsu.edu/xd/	Healthcare Professionals	Evaluator, Interprofessional Care Access Network; HRSA, Bureau of Health Professions, Nursing Education, Practice, Quality, and Retention Grant (current)
6019	P1134	Eileen Brady	\N	\N	\N	\N	2016-06-14 17:44:50.945804-07	2016-06-14 17:45:06.356591-07	Advisor/Founding Board Member	https://ecodistricts.org/	Government and Public Service	https://ecodistricts.org/about/vision-mission-values/
6023	P1150	Peter Bragdon	\N	\N	\N	\N	2016-06-14 17:44:50.968637-07	2016-06-14 17:45:06.360384-07	Executive Vice President, Chief Administrative Officer and General Counsel at Columbia Sportswear Company	http://www.columbia.com/	Retail Services	https://www.facebook.com/portlandersforschools/
5997	P546	Christopher Clipper	\N	\N	\N	\N	2016-06-14 17:44:50.840425-07	2016-06-14 17:45:06.613333-07	VP, Global Planning & Development	www.nike.com	Sports/Athletics	
6003	P1580	Leigh Colby	\N	\N	\N	\N	2016-06-14 17:44:50.86831-07	2016-06-14 17:45:06.625409-07	Dentist	www.oregondentalcare.com	Healthcare Professionals	
6013	P1508	John Coletti	\N	\N	\N	\N	2016-06-14 17:44:50.898562-07	2016-06-14 17:45:06.632791-07	attorney	www.paulsoncoletti.com	Lawyers	Board member of the Make-A-Wish Foundation
6067	P955	Leslie Elms	\N	\N	\N	\N	2016-06-14 17:44:51.179861-07	2016-06-14 17:45:07.010228-07	Optometric Physician	http://www.bakervisionclinic.com/	Healthcare Professionals	
6008	P1823	Megan Hull	\N	\N	\N	\N	2016-06-14 17:44:50.879283-07	2016-06-14 17:45:07.750455-07	Independent Financial Consultant	https://www.linkedin.com/in/megan-hull-7b8263a	Banking and Finance	Board member, Hull Family Foundation, http://www.hullfamilyfoundation.org/about.asp
6006	P874	Judy Ilg	\N	\N	\N	\N	2016-06-14 17:44:50.875182-07	2016-06-14 17:45:07.766454-07	Homemaker; husband's/family's business is Kalberer Co., a Portland property management firm	No website, referred to in this PBJ article: http://www.bizjournals.com/portland/stories/2010/05/03/story1.html	Real Estate	
6015	P1016	Donald Jacobs	\N	\N	\N	\N	2016-06-14 17:44:50.906451-07	2016-06-14 17:45:07.785675-07	Attorney, Northwest Injury Law Center	http://www.nwinjurylawcenter.com/	Lawyers	
5994	P1537	Stephen (T) Janik	\N	\N	\N	\N	2016-06-14 17:44:50.818541-07	2016-06-14 17:45:07.797801-07	Partner (Attorney), Ball Janik, LLP	http://www.balljanik.com/bio-detail/janik-stephen-t	Lawyers	Mr. Janik has served on numerous civic boards, regional task forces and special projects. He has served as a Trustee of the Portland School District Real Estate Trust; a member of the Board of Pioneer Courthouse Square, 2000-2006; President of the Board of Pioneer Courthouse Square, 2004-2006; Trustee of the Oregon Health & Science University Foundation, 2011-present; Oregon Health & Science University Foundation Nominating Committee Chair, 2016; Vice Chair of Oregon Health & Science University Foundation, 2016; Trustee of the Portland Art Museum, 2009-2015; Chair of the Portland Art Museum Governance Committee, 2012-2015; Knight Cancer Council Board Member, 2013-present.
6020	P1650	Roy Jay	\N	\N	\N	\N	2016-06-14 17:44:50.952416-07	2016-06-14 17:45:07.806399-07	Entrepreneur, Roy Jay Enterprises, GIACOMETTI PARTNERS LLC 	http://www.royjay.com/	Banking and Finance	African American Chamber of Commerce, Project Clean Slate
6001	P1320	Sarah St. John	\N	\N	\N	\N	2016-06-14 17:44:50.864083-07	2016-06-14 17:45:07.815898-07	Co-owner, Sons of Agronomy and Spark Marketing, LLC	http://www.sonsofagronomy.com/, https://www.instagram.com/sonsofagronomy/	Beer, Wine, Liquor, Tobacco, Marijuana	
6017	P1776	Ronni Lacroute	\N	\N	\N	\N	2016-06-14 17:44:50.924356-07	2016-06-14 17:45:08.105118-07	Co-Founder at WillaKenzie Estate	willakenzie.com	Beer, Wine, Liquor, Tobacco, Marijuana	Artist Repertory Theater (sponsor), Chamber Music Northwest (sponsor), Oregon Public Radio (sponsor), YCAP Yamhill Regional Food Bank (sponsor), Linfield College (trustee)
5999	P1419	Mark Long	\N	\N	\N	\N	2016-06-14 17:44:50.855095-07	2016-06-14 17:45:08.26564-07	Attorney at Schwabe, Williamson & Wyatt	http://www.schwabe.com/	Lawyers	
6002	P1450	Linda Love	\N	\N	\N	\N	2016-06-14 17:44:50.866184-07	2016-06-14 17:45:08.276694-07	Attorney at Williams, Love, O'Leary & Powers, PC	http://www.wdolaw.com/	Lawyers	
6005	P1562	Sean Luse	\N	\N	\N	\N	2016-06-14 17:44:50.873082-07	2016-06-14 17:45:08.286726-07	Retail Management	http://www.mybpg.com/	Healthcare Professionals	
6007	P952	Mark Madden	\N	\N	\N	\N	2016-06-14 17:44:50.877345-07	2016-06-14 17:45:08.311834-07	Developer		Real Estate	
6009	P857	Shirley Malcolm	\N	\N	\N	\N	2016-06-14 17:44:50.886611-07	2016-06-14 17:45:08.321329-07	Doctor	https://www.laclinicahealth.org/Page.asp?NavID=234	Healthcare Professionals	
5990	P1969	Tom Maletis	\N	\N	\N	\N	2016-06-14 17:44:50.786156-07	2016-06-14 17:45:08.334063-07	Co-Owner of Langdon Farms Golf Course	http://www.langdonfarms.com/	Arts, Entertainment, Music, and Recreation	
6010	P1354	Julie Mancini	\N	\N	\N	\N	2016-06-14 17:44:50.888588-07	2016-06-14 17:45:08.35233-07	Executive Director	http://www.collegepossible.org/	Education	
6012	P683	Phillip Margolin	\N	\N	\N	\N	2016-06-14 17:44:50.896591-07	2016-06-14 17:45:08.358812-07	Best Selling Author	http://www.phillipmargolin.com/about-phillip-margolin.php	Arts, Entertainment, Music, and Recreation	
5992	P753	Melvin Jr. Mark	\N	\N	\N	\N	2016-06-14 17:44:50.797967-07	2016-06-14 17:45:08.366324-07	Real estate developer 	http://www.melvinmarkcompanies.com/	Real Estate	Schools and Arts Together, Charlie Hales for Mayor, Nick Fish for City Council, Committee to Elect Betsy Johnson,  Oregon History Yes 
6022	P1555	Dennis Marsh	\N	\N	\N	\N	2016-06-14 17:44:50.960642-07	2016-06-14 17:45:08.379072-07	Retired	Buck Medical Services	Healthcare Professionals	Friends of Jim Bernard, Save Gladstone, Friends of Martha Schrader, Citizens for 1,000,000. Building Vote   
5991	P1882	Roy Moore	\N	\N	\N	\N	2016-06-14 17:44:50.792076-07	2016-06-14 17:45:08.949618-07	President	www.themeigroup.com/MEI_new.html	Construction	Member of Northwest Utility Contractors Association PAC
6018	P702	John Morgan	\N	\N	\N	\N	2016-06-14 17:44:50.939777-07	2016-06-14 17:45:08.985876-07	CFO	www.argus-health.com	Healthcare Professionals	Board Member at Cambia Health Solutions
6014	P715	Mark Morrell	\N	\N	\N	\N	2016-06-14 17:44:50.904318-07	2016-06-14 17:45:09.003498-07	Attorney		Lawyers	
6011	P391	Douglas Obletz	\N	\N	\N	\N	2016-06-14 17:44:50.894562-07	2016-06-14 17:45:09.143778-07	President	http://www.shielsobletzjohnsen.com/	Construction	
6066	p1615	Scott Ballo	\N	\N	\N	\N	2016-06-14 17:44:51.177555-07	2016-06-14 17:44:51.177579-07	Sales	www.morelink.biz/	Retail Services	
6040	P1583	Brad Avakian	\N	\N	\N	\N	2016-06-14 17:44:51.061282-07	2016-06-14 17:45:06.021777-07	Politician	www.bradavakian.com/	Government and Public Service	
6043	P1493	Paula Babb	\N	\N	\N	\N	2016-06-14 17:44:51.067487-07	2016-06-14 17:45:06.025258-07	CEO	Delta Sand and Gravel Eugene	Industrial Manufacturing	
6045	P1160	Lloyd Babler Jr.	\N	\N	\N	\N	2016-06-14 17:44:51.071767-07	2016-06-14 17:45:06.032172-07	Truck Driver		Transportation	
6049	P87	Michelle Bain	\N	\N	\N	\N	2016-06-14 17:44:51.094904-07	2016-06-14 17:45:06.046168-07	Planner		Retail Services	
6052	P301	Todd Baker	\N	\N	\N	\N	2016-06-14 17:44:51.106889-07	2016-06-14 17:45:06.058861-07	Owner - Officer Baker Rock Resources 	www.baker-rock.com/	Industrial Manufacturing	
6055	P957	Gary Baker	\N	\N	\N	\N	2016-06-14 17:44:51.136466-07	2016-06-14 17:45:06.062966-07	CEO, Baker Rock Resources	www.baker-rock.com/	Construction	
6057	P1698	Nancy Baker	\N	\N	\N	\N	2016-06-14 17:44:51.141326-07	2016-06-14 17:45:06.066506-07	Policy Analysis - Attorney, \tPublic Power Council 	www.ppcpdx.org/ab-staff.html	Lawyers	
6061	P1636	Robert Ballin	\N	\N	\N	\N	2016-06-14 17:44:51.163354-07	2016-06-14 17:45:06.078816-07	Insurance agent, Ward Insurance	www.wardinsurance.net/	Lodging, Tourism, Restaurants	
6064	P1923	Connie Balmer	\N	\N	\N	\N	2016-06-14 17:44:51.173568-07	2016-06-14 17:45:06.082379-07	community volunteer and Chair of philanthropy	https://trustees.uoregon.edu/board-member/connie-ballmer	Education	
6050	P1744	Thomas Barreto	\N	\N	\N	\N	2016-06-14 17:44:51.096831-07	2016-06-14 17:45:06.134185-07	Optometrist	http://eyesonbroadway.com/	Healthcare Professionals	On the advisory board for The Equity Foundation (LGBTQ)
6058	P1181	Chris Barreto	\N	\N	\N	\N	2016-06-14 17:44:51.143496-07	2016-06-14 17:45:06.137905-07	Co-Owner	http://barretomfg.com/	Industrial Manufacturing	Associate Director of Willamette Valley Concert Band
6030	P685	James Bisenius	\N	\N	\N	\N	2016-06-14 17:44:51.033347-07	2016-06-14 17:45:06.289451-07	nvestment Counselor & Chief Investment Officer	N/A (Common Sense Investment Mgmt.)	Banking and Finance	
6038	P1761	Michael Bloom	\N	\N	\N	\N	2016-06-14 17:44:51.057056-07	2016-06-14 17:45:06.316189-07	Attorney	http://bloompc.com/	Lawyers	
6044	P1221	Pamela Bloom	\N	\N	\N	\N	2016-06-14 17:44:51.069823-07	2016-06-14 17:45:06.320178-07	President	http://bbleasingco.com/	Construction	
6024	P22011	T. B. Dame	\N	\N	\N	\N	2016-06-14 17:44:50.97963-07	2016-06-14 17:45:06.728631-07	President	williamsanddane.com	Real Estate	Advisory Board of Portland State University’s School of Urban Affairs and Planning, Vice Chairman of a Project Apprentice Committee that promotes union apprenticeships for women and ethnic minorities,  serves on the Board of Portland State University’s First Stop Portland program
6037	P22017	Cynthia L Davis	\N	\N	\N	\N	2016-06-14 17:44:51.054732-07	2016-06-14 17:45:06.745644-07	President	www.nike.com	Sports/Athletics	Vice President of The Ladies Professional Golf Association (LPGA). Chief Executive Officer and President of The Arnold Palmer Golf Company.  Independent Director of Buffalo Wild Wings.  Independent Director of Kennametal Inc. Chairman of the National Golf Foundation. 
6042	P680	Matthew Day	\N	\N	\N	\N	2016-06-14 17:44:51.065157-07	2016-06-14 17:45:06.760545-07	owner	none; Matthew and Lesley day group day care center	Healthcare Professionals	
6051	P22013	Howard M. Day	\N	\N	\N	\N	2016-06-14 17:44:51.103845-07	2016-06-14 17:45:06.764289-07	President	www.hookercreek.net	Construction	
6032	P129	Ann Edlen	\N	\N	\N	\N	2016-06-14 17:44:51.041153-07	2016-06-14 17:45:06.977802-07	Managing Partner 	http://thinkjoule.com/	Marketing and Creative Agencies	
6034	P558	Mark Edlen	\N	\N	\N	\N	2016-06-14 17:44:51.045133-07	2016-06-14 17:45:06.98142-07	Managing Partner	http://www.gerdingedlen.com/	Real Estate	
6039	P318	Amy Edwards	\N	\N	\N	\N	2016-06-14 17:44:51.059081-07	2016-06-14 17:45:06.985342-07	Partner		Lawyers	
6041	P202	Vernon Egge	\N	\N	\N	\N	2016-06-14 17:44:51.063214-07	2016-06-14 17:45:06.98951-07	Owner	http://www.eugenesand.com/, http://crqrocks.com/	Construction	
6046	P890	Jay Eisenhofer	\N	\N	\N	\N	2016-06-14 17:44:51.073899-07	2016-06-14 17:45:06.993238-07	Managing Director, Attorney	http://www.gelaw.com/	Lawyers	
6056	P276	Fuad El-Hibri	\N	\N	\N	\N	2016-06-14 17:44:51.139228-07	2016-06-14 17:45:06.997819-07	Director	http://eastwestprotection.com/	Banking and Finance	
6062	P22053	Sean Eldridge	\N	\N	\N	\N	2016-06-14 17:44:51.165359-07	2016-06-14 17:45:07.001675-07	Investor	http://www.hudsonriverventures.com/	Banking and Finance	
6065	P948	Kenneth Elmore	\N	\N	\N	\N	2016-06-14 17:44:51.175537-07	2016-06-14 17:45:07.00537-07	Attorney	http://jeslaw.com/	Lawyers	
6026	P1179	Neil Jackson	\N	\N	\N	\N	2016-06-14 17:44:51.002285-07	2016-06-14 17:45:07.779109-07	Attorney at Neil Jackson Attorney LLC	https://www.linkedin.com/in/neil-jackson-a3995556	Lawyers	
6060	P1726	Ed King	\N	\N	\N	\N	2016-06-14 17:44:51.161163-07	2016-06-14 17:45:08.021846-07	Partner/CEO at King Estate Winery 	kingestate.com	Beer, Wine, Liquor, Tobacco, Marijuana	
6047	P568	Wayne Kingsley	\N	\N	\N	\N	2016-06-14 17:44:51.077256-07	2016-06-14 17:45:08.025645-07	General Manager of Portland Spirit	portlandspirit.com	Lodging, Tourism, Restaurants	Portland Business Alliance (board member), Central Eastside Industrial Council (board member), Northwest Pipe (board member), 
6028	P1375	Douglas Knight	\N	\N	\N	\N	2016-06-14 17:44:51.010781-07	2016-06-14 17:45:08.045558-07	City Council Member of the City of Bend, Oregon Government	ci.bend.or.us	Government and Public Service	River West Neighborhood Association (Land Use Chair), Deschutes County Landmarks Commission (Vice Chair), City of Bend Planning Commission (Chair) 
6029	P1028	Stephen McCarthy	\N	\N	\N	\N	2016-06-14 17:44:51.023216-07	2016-06-14 17:45:08.42444-07	Distiller	http://www.clearcreekdistillery.com/	Beer, Wine, Liquor, Tobacco, Marijuana	Kate Brown Committee, Novick for Portland, Committee to Elect Brad Avakian, Kitzhaber for Governor,  \tNew Approach Oregon, Restore Our Natural Areas   
6027	P796	Ellison C. Morgan	\N	\N	\N	\N	2016-06-14 17:44:51.004253-07	2016-06-14 17:45:08.990215-07	Chief Executive Officer and Chairman	No URL for 2030 Investors LLC	Banking and Finance	Director at Sirena Apparel Group
6048	P872	Mike Nearman	\N	\N	\N	\N	2016-06-14 17:44:51.092844-07	2016-06-14 17:45:09.051725-07	Oregon House Representative - District 23	www.oregonlegislature.gov/	Government and Public Service	precinct committee person for Polk County Republican party
6035	P288	Willie Nelson	\N	\N	\N	\N	2016-06-14 17:44:51.047044-07	2016-06-14 17:45:09.067963-07	Singer & Songwritier	www.willienelson.com/	Arts, Entertainment, Music, and Recreation	Owner of Willie's Reserve
6059	P1889	Linda Nicholes	\N	\N	\N	\N	2016-06-14 17:44:51.153338-07	2016-06-14 17:45:09.091459-07	Retired Orange County Superior Court Reporter		Government and Public Service	Board of Advisors for Ocean Defenders Alliance
6053	P167	Craig Nichols	\N	\N	\N	\N	2016-06-14 17:44:51.109155-07	2016-06-14 17:45:09.095274-07	Attorney & Founder	www.thenicholslawgroup.com	Lawyers	Board of Directors for the Oregon Trial Lawyers Association
6031	P1049	Deborah Noble	\N	\N	\N	\N	2016-06-14 17:44:51.035289-07	2016-06-14 17:45:09.123162-07	Owner	www.westwindfp.com/index.html	Forestry and Timber	Founder of Be Noble Foundation
6033	P589	David J Orr	\N	\N	\N	\N	2016-06-14 17:44:51.043173-07	2016-06-14 17:45:09.161962-07	Deputy District Attorney	http://jacksoncountyor.org/da	Lawyers	
6025	P665	Lynn Partin	\N	\N	\N	\N	2016-06-14 17:44:50.991578-07	2016-06-14 17:45:09.237305-07	Lobbyist / Affordable Housing Advocate	http://www.partinco.com/	Industrial Manufacturing	
6054	P1706	Eric Paulson	\N	\N	\N	\N	2016-06-14 17:44:51.115528-07	2016-06-14 17:45:09.258147-07	President and CEO	http://www.lektro.com/	Industrial Manufacturing	
6100	p482	walter gorman	\N	\N	\N	\N	2016-06-14 17:44:51.354444-07	2016-06-14 17:44:51.354476-07	retired		Lobbyists and Unions	
6104	p1953	walt gorman	\N	\N	\N	\N	2016-06-14 17:44:51.363069-07	2016-06-14 17:44:51.363093-07	Director 	www.olcv.org/board-of-directors/	Lobbyists and Unions	
6077	P859	Kent Anderson	\N	\N	\N	\N	2016-06-14 17:44:51.206854-07	2016-06-14 17:45:05.992357-07	Lawyer\t	www.kentandersonlaw.com/	Lawyers	
6070	P1403	R J Barman	\N	\N	\N	\N	2016-06-14 17:44:51.187593-07	2016-06-14 17:45:06.095897-07	President, Fast Serv California	http://listings.findthecompany.com/l/22636033/Woodburn-Fast-Serv-Inc-in-Lake-Oswego-OR	Chemical, Oil, Gas, Electric	
6073	P1082	Laura Barnhart	\N	\N	\N	\N	2016-06-14 17:44:51.197871-07	2016-06-14 17:45:06.115182-07			Government and Public Service	
6074	P1329	Lawrence Baron	\N	\N	\N	\N	2016-06-14 17:44:51.200197-07	2016-06-14 17:45:06.122572-07	Attorney at Law 	www.baronlawfirm.com/	Lawyers	
6076	P249	Stuart Barr	\N	\N	\N	\N	2016-06-14 17:44:51.204628-07	2016-06-14 17:45:06.126375-07	Owner/Operator - Industrial Finishes\t	industrialfinishes.com/our-office/our-company/	Industrial Manufacturing	
6079	P634	Rachael Barry-Dame	\N	\N	\N	\N	2016-06-14 17:44:51.214846-07	2016-06-14 17:45:06.14548-07	Executive Director	http://www.safeofcolumbiacounty.org/	Government and Public Service	
6087	P880	Richard Barth	\N	\N	\N	\N	2016-06-14 17:44:51.257731-07	2016-06-14 17:45:06.153097-07	Retired, former Controller	https://www.rambus.com/	Software and Techology	Committee Member of The Ashland Fiber Network Options Committee
6093	P1996	W Scott Bartlett	\N	\N	\N	\N	2016-06-14 17:44:51.311073-07	2016-06-14 17:45:06.15704-07	Investor, Political Consultant		Government and Public Service	
6094	P1430	Jeff Barton	\N	\N	\N	\N	2016-06-14 17:44:51.313063-07	2016-06-14 17:45:06.16112-07	Vice President/Insurance Agency	https://www.statefarm.com/	Transportation	
6097	P197	Brent Barton	\N	\N	\N	\N	2016-06-14 17:44:51.319022-07	2016-06-14 17:45:06.164755-07	Attorney	http://bartontrialattorneys.com/	Lawyers	served on the board of directors of the Oregon Bus Project (Engages young people in progressive politics)
6102	P1742	Alan Bates	\N	\N	\N	\N	2016-06-14 17:44:51.358679-07	2016-06-14 17:45:06.179944-07	Senator & Osteopathic Physician 	https://www.oregonlegislature.gov/bates	Government and Public Service	
6105	P791	Ray Batra	\N	\N	\N	\N	2016-06-14 17:44:51.365166-07	2016-06-14 17:45:06.183485-07	Gas Station Owner		Chemical, Oil, Gas, Electric	
6109	P154	Margaret Bear	\N	\N	\N	\N	2016-06-14 17:44:51.390016-07	2016-06-14 17:45:06.194287-07	Business Manager	http://www.pattilloconstruction.com/	Construction	
6111	P1456	Robert Beatty-Walters	\N	\N	\N	\N	2016-06-14 17:44:51.393818-07	2016-06-14 17:45:06.199087-07	Attorney	http://beattywalterslaw.com/	Lawyers	
6113	P22074	Peter Bechen	\N	\N	\N	\N	2016-06-14 17:44:51.398014-07	2016-06-14 17:45:06.204478-07	CEO	http://www.pactrust.com/	Real Estate	
6072	P1346	Cook Thomas	\N	\N	\N	\N	2016-06-14 17:44:51.195887-07	2016-06-14 17:45:06.683449-07	Executive Manager	www.pacificbells.com	Food and Agribusiness	
6075	P147	Roger Cooke	\N	\N	\N	\N	2016-06-14 17:44:51.202594-07	2016-06-14 17:45:06.687137-07	attorney	self employed	Lawyers	
6088	P499	Ryan Covey	\N	\N	\N	\N	2016-06-14 17:44:51.264201-07	2016-06-14 17:45:06.698664-07	Electrician	unemployed	Chemical, Oil, Gas, Electric	
6092	P1189	Crooks Sarah	\N	\N	\N	\N	2016-06-14 17:44:51.301011-07	2016-06-14 17:45:06.702402-07	Attorney	www.perkinscoie.com	Lawyers	Volunteer attorney for Legal Aid Services of Oregon representing victims of domestic violence in obtaining restraining orders. Also involved with the American Bar Association, the Multnomah Bar Association (past President), and Oregon Women Lawyers (past President, Campaign for Equal Justice, Board Member, Vice President, 2008 - present.
6096	P789	David Crowell	\N	\N	\N	\N	2016-06-14 17:44:51.31708-07	2016-06-14 17:45:06.705936-07	Investor	self employed	Banking and Finance	
6107	P954	Cortlandt Cuffee	\N	\N	\N	\N	2016-06-14 17:44:51.37808-07	2016-06-14 17:45:06.712578-07	Local sales manager	www.kgw.com	Arts, Entertainment, Music, and Recreation	Board Member Self Enhancement, Inc., Board Chairman Z-Man Scholarship Foundation, Board Member Inukai Family Foundation
6110	P330	Richard Cundiff	\N	\N	\N	\N	2016-06-14 17:44:51.391927-07	2016-06-14 17:45:06.716196-07	Substitute teacher	www.lesd.k12.or.us	Education	
6069	P542	Regina Davis	\N	\N	\N	\N	2016-06-14 17:44:51.18505-07	2016-06-14 17:45:06.74919-07	Research Assistant Project Coordinator	dhmresearch.com	Marketing and Creative Agencies	
6080	P410	John Emrick	\N	\N	\N	\N	2016-06-14 17:44:51.217039-07	2016-06-14 17:45:07.017089-07	CEO	http://normthompson.blair.com/	Retail Services	
6086	P8	Stephen English	\N	\N	\N	\N	2016-06-14 17:44:51.255736-07	2016-06-14 17:45:07.020623-07	Partner	www.perkinscoie.com	Lawyers	
6101	P678	Edward Epstein	\N	\N	\N	\N	2016-06-14 17:44:51.356535-07	2016-06-14 17:45:07.02817-07	Retired Partner		Lawyers	
6108	P867	Paul Erickson	\N	\N	\N	\N	2016-06-14 17:44:51.388034-07	2016-06-14 17:45:07.032475-07	Retired Principal		Education	
6112	P1120	Christy Eugenis	\N	\N	\N	\N	2016-06-14 17:44:51.396042-07	2016-06-14 17:45:07.036188-07	Owner	http://www.newvillages.com/	Real Estate	
6099	P1981	James Frick	\N	\N	\N	\N	2016-06-14 17:44:51.327059-07	2016-06-14 17:45:07.189505-07	Real Estate Agent	http://www.c21harristaylor.com/cave-junction-oregon-real-estate-agent/jim-frick	Banking and Finance	Citizens for Safe Communities (in grant pass)
6098	P696	Hala Gores	\N	\N	\N	\N	2016-06-14 17:44:51.324999-07	2016-06-14 17:45:07.422632-07	Attorney\t	www.goreslaw.com/	Lawyers	
6090	P1425	Tom Kelly	\N	\N	\N	\N	2016-06-14 17:44:51.276524-07	2016-06-14 17:45:07.958637-07	President at Neil Kelly Co.	neilkelly.com	Local Craftsmen and Artisans	Portland Development Commission Chair, Oregon Remodelers Association (past President/Chairman), Columbia Riverkeeper (past Board Member), Oregon Business Association (Founding Board Chairman) 
6084	P1166	Christopher Kelly	\N	\N	\N	\N	2016-06-14 17:44:51.23822-07	2016-06-14 17:45:07.969735-07	Investor, formerly a lawyer	Self-Employed	Banking and Finance	Georgetown University Board of Regents, New Leaders Council (National Board Chairman), Progressive Policy Institute (Board of Trustees), San Francisco 49ers Academy (Board of Directors)
6103	P402	Paul Kerley	\N	\N	\N	\N	2016-06-14 17:44:51.360821-07	2016-06-14 17:45:07.995916-07	Owner/President at Commercial Property Resources, Inc.	N/A (Commercial Property Resources, Inc.)	Real Estate	
6106	P1746	Harry Merlo	\N	\N	\N	\N	2016-06-14 17:44:51.367199-07	2016-06-14 17:45:08.553882-07	CEO, Retired	http://lpcorp.com	Forestry and Timber	Citizens to Elect Dennis Richardson,  Committee to Elect Betsy Johnson, Friends of Eileen Brady, Friends of Ted Wheeler, Friends of Chris Dudley
6083	P742	Richard Michaelson	\N	\N	\N	\N	2016-06-14 17:44:51.227507-07	2016-06-14 17:45:08.850429-07	real estate developer	http://www.icppdx.com/	Real Estate	Novick for Portland, Committee to Elect Brad Avakian, Charlie Hales for Mayor, Outdoor School for All PAC,  \tCommittee for Safe and Successful Children 
6089	P999	John Miller	\N	\N	\N	\N	2016-06-14 17:44:51.26619-07	2016-06-14 17:45:08.91146-07	Urban Design/Development	http://wildwoodco.com/	Construction	Kate Brown Committee, Friends of Jules, Kitzhaber 2010, Oregonians for Water, Parks and Wildlife - A Project of the Conservation Campaign
6071	P1505	Mary Nolan	\N	\N	\N	\N	2016-06-14 17:44:51.189749-07	2016-06-14 17:45:09.127072-07	Executive Director	www.ppaoregon.org	Lobbyists and Unions	Adjunct Professor at Oregon State University
6078	P1873	Brian Obie	\N	\N	\N	\N	2016-06-14 17:44:51.20879-07	2016-06-14 17:45:09.14006-07	Managing Partner	http://www.5stmarket.com/	Retail Services	
6091	P1470	Nawzad Othman	\N	\N	\N	\N	2016-06-14 17:44:51.290523-07	2016-06-14 17:45:09.172593-07	CEO/Founder	http://theothmangroup.com/	Real Estate	
6095	P169	Mark Palmer	\N	\N	\N	\N	2016-06-14 17:44:51.315061-07	2016-06-14 17:45:09.193459-07	President/CEO	http://www.oceanbeauty.com/	Agriculture and Farming	
6135	p1642	Michael Greene	\N	\N	\N	\N	2016-06-14 17:44:51.46566-07	2016-06-14 17:44:51.465686-07	Tax preparer\t	H & R Block	Lodging, Tourism, Restaurants	
6147	p374	Robert Guarrasi	\N	\N	\N	\N	2016-06-14 17:44:51.512548-07	2016-06-14 17:44:51.512572-07	Attorney\t	www.robglaw.com/rob-guarrasi-respected-injury-lawyer/	Lawyers	
6150	p22055	timothy gunn	\N	\N	\N	\N	2016-06-14 17:44:51.518555-07	2016-06-14 17:44:51.518577-07	Author\t		Arts, Entertainment, Music, and Recreation	
6152	p1609	richard gustafson	\N	\N	\N	\N	2016-06-14 17:44:51.52641-07	2016-06-14 17:44:51.526445-07	Project Manager\t	www.shielsobletzjohnsen.com/	Real Estate	
5854	P38	Terrance Aarnio	\N	\N	\N	\N	2016-06-14 17:44:50.116194-07	2016-06-14 17:45:05.901517-07	Chairman, Oregon Iron Works, LLC	http://www.oregoniron.com/	Industrial Manufacturing	
5970	P259	Robert H. Adams	\N	\N	\N	\N	2016-06-14 17:44:50.699405-07	2016-06-14 17:45:05.925613-07	Photographer/writer		Arts, Entertainment, Music, and Recreation	
6155	B48	Advantage Dental	\N	\N	\N	\N	2016-06-14 17:45:05.93321-07	2016-06-14 17:45:05.933236-07				
6156	B16	AGC - Oregon Columbia Chapter	\N	\N	\N	\N	2016-06-14 17:45:05.936265-07	2016-06-14 17:45:05.936289-07				
5895	P980	Richard Alexander	\N	\N	\N	\N	2016-06-14 17:44:50.351043-07	2016-06-14 17:45:05.943348-07	Lawyer	http://www.stoel.com/ralexander	Lawyers	
6085	P127	Vince Alexander	\N	\N	\N	\N	2016-06-14 17:44:51.252707-07	2016-06-14 17:45:05.947141-07	Unemployed		Government and Public Service	
5982	P231	Scott Alldridge	\N	\N	\N	\N	2016-06-14 17:44:50.756057-07	2016-06-14 17:45:05.950721-07	President, IP Services 	https://www.ipservices.com/	Software and Techology	
5883	P1291	Donald Althoff	\N	\N	\N	\N	2016-06-14 17:44:50.298184-07	2016-06-14 17:45:05.957729-07	Chief Executive officer Veresen Inc	http://www.vereseninc.com/	Chemical, Oil, Gas, Electric	val hoyle, arnie roblan democrats
5989	P1943	Roger Altman	\N	\N	\N	\N	2016-06-14 17:44:50.784221-07	2016-06-14 17:45:05.961166-07	Banker	Evercore Partners	Banking and Finance	
6157	B52	Altria Client Services Inc.	\N	\N	\N	\N	2016-06-14 17:45:05.965502-07	2016-06-14 17:45:05.965535-07				
5995	P1644	Cherry amabisca	\N	\N	\N	\N	2016-06-14 17:44:50.836514-07	2016-06-14 17:45:05.972077-07	 Intel supercomputing	www.intel.com/	Software and Techology	
6082	P1155	George Anderson	\N	\N	\N	\N	2016-06-14 17:44:51.225401-07	2016-06-14 17:45:05.996111-07	Janitor, \tPortland Habilitation Ctr	https://www.phcnw.com/	Retail Services	
6122	P22048	Vicki Becker	\N	\N	\N	\N	2016-06-14 17:44:51.432092-07	2016-06-14 17:45:06.212812-07	Vice President	http://www.mikebeckergc.com/	Construction	
6125	P52	Paul Begala	\N	\N	\N	\N	2016-06-14 17:44:51.43799-07	2016-06-14 17:45:06.216304-07	Political Analyst		Government and Public Service	
6134	P367	David Bell	\N	\N	\N	\N	2016-06-14 17:44:51.463564-07	2016-06-14 17:45:06.223502-07	Sales Manager	http://apollo.com.sg/	Retail Services	
6137	P939	Ronald Beltz	\N	\N	\N	\N	2016-06-14 17:44:51.46953-07	2016-06-14 17:45:06.227391-07	Real Estate Investor	http://www.apicincus.com/	Real Estate	Board Member: Portland Business Alliance
6132	P941	William D Chambers	\N	\N	\N	\N	2016-06-14 17:44:51.455597-07	2016-06-14 17:45:06.54401-07	Farmer	self employed	Agriculture and Farming	
6143	P1107	Kevin Coluccio	\N	\N	\N	\N	2016-06-14 17:44:51.492861-07	2016-06-14 17:45:06.658315-07	Attorney	www.stritmatter.com	Lawyers	
6154	P1433	Gary L Combs	\N	\N	\N	\N	2016-06-14 17:44:51.53051-07	2016-06-14 17:45:06.665672-07	Vice President Marketing	www.campbellglobal.com/	Forestry and Timber	
6120	P497	James Curtis	\N	\N	\N	\N	2016-06-14 17:44:51.424882-07	2016-06-14 17:45:06.720248-07	Attorney	Currently unemployed	Lawyers	
6127	P1096	Bill Dalton	\N	\N	\N	\N	2016-06-14 17:44:51.441773-07	2016-06-14 17:45:06.724579-07	Grant Specialist (currently unemployed)	unemployed	Education	
6149	P1098	Alan Davis	\N	\N	\N	\N	2016-06-14 17:44:51.516536-07	2016-06-14 17:45:06.752758-07	Whiskey bar owner	https://mwlpdx.com	Beer, Wine, Liquor, Tobacco, Marijuana	
6153	P1012	Danny Davison	\N	\N	\N	\N	2016-06-14 17:44:51.528582-07	2016-06-14 17:45:06.756747-07	District Manager	www.farmers.com	Retail Services	
6118	P112	Grace Evenstad	\N	\N	\N	\N	2016-06-14 17:44:51.42089-07	2016-06-14 17:45:07.039708-07	Owner	www.domaineserene.com	Beer, Wine, Liquor, Tobacco, Marijuana	
6124	P1927	Linda Eyerman	\N	\N	\N	\N	2016-06-14 17:44:51.436058-07	2016-06-14 17:45:07.043486-07	Attorney	http://www.gaylordeyerman.com	Lawyers	
6129	P1243	Michael Fahey	\N	\N	\N	\N	2016-06-14 17:44:51.44547-07	2016-06-14 17:45:07.046923-07	President	http://www.colheli.com/	Industrial Manufacturing	
6136	P1803	John Fainter	\N	\N	\N	\N	2016-06-14 17:44:51.467657-07	2016-06-14 17:45:07.051809-07	Senior Vice President	http://www.cypressequities.com/	Real Estate	
6138	P1297	John Falk	\N	\N	\N	\N	2016-06-14 17:44:51.471433-07	2016-06-14 17:45:07.055761-07	Professor	http://education.oregonstate.edu/	Education	
6141	P1713	Ronald Fallert	\N	\N	\N	\N	2016-06-14 17:44:51.488969-07	2016-06-14 17:45:07.059553-07	CEO	http://www.pacificwoodlaminates.com/	Forestry and Timber	
6148	P334	Edward Faneuil	\N	\N	\N	\N	2016-06-14 17:44:51.514512-07	2016-06-14 17:45:07.069665-07	Attorney	http://www.globalp.com/	Lawyers	
6116	P1068	Eric Friedenwald-Fishman	\N	\N	\N	\N	2016-06-14 17:44:51.407826-07	2016-06-14 17:45:07.193371-07	Public relations executive	http://www.metgroup.com/	Marketing and Creative Agencies	Portlanders for Schools; Senate Democratic Leadership Fund
6130	P819	Stacey Friedman	\N	\N	\N	\N	2016-06-14 17:44:51.447531-07	2016-06-14 17:45:07.196979-07	Retail store operator	http://www.urbino-pdx.com/	Retail Services	Washington county democratic central committee
6140	P1494	Jack Friedman	\N	\N	\N	\N	2016-06-14 17:44:51.479138-07	2016-06-14 17:45:07.201213-07	not employed / retired "Health Plan Executive Officer" for Providence Portland		Banking and Finance	Oregonians for High School Success; numerous candidate donations
6151	P806	Foster Friess	\N	\N	\N	\N	2016-06-14 17:44:51.520443-07	2016-06-14 17:45:07.206171-07	retired Financial Investor (Friess Associates Jackson WY)		Banking and Finance	supported Dudley and Dennis Richardson's campaigns
6115	P134	michael gough	\N	\N	\N	\N	2016-06-14 17:44:51.405917-07	2016-06-14 17:45:07.432758-07	filmmaker		Arts, Entertainment, Music, and Recreation	
6117	P1885	Amy Gould	\N	\N	\N	\N	2016-06-14 17:44:51.418925-07	2016-06-14 17:45:07.4365-07	attorney	www.globalp.com/	Lawyers	
6121	P233	Tiffany Grabenhorst	\N	\N	\N	\N	2016-06-14 17:44:51.426966-07	2016-06-14 17:45:07.440211-07	Fundraising consultant\t	www.tgfundraising.com/home.html	Lobbyists and Unions	
6123	P1293	Jon Gramstad	\N	\N	\N	\N	2016-06-14 17:44:51.43414-07	2016-06-14 17:45:07.44391-07	President\t	www.lookmodern.com/	Retail Services	
6126	P181	John Gray	\N	\N	\N	\N	2016-06-14 17:44:51.43987-07	2016-06-14 17:45:07.447492-07	Farmer\t	www.wintergreenfarm.com/	Agriculture and Farming	
6128	P22009	Jack Gray	\N	\N	\N	\N	2016-06-14 17:44:51.443623-07	2016-06-14 17:45:07.452385-07	unemployed	winter green farm	Agriculture and Farming	
6131	P1937	Samuel Gray	\N	\N	\N	\N	2016-06-14 17:44:51.453654-07	2016-06-14 17:45:07.456645-07	none	none	Agriculture and Farming	
6142	P1257	Jacqueline Gregerson	\N	\N	\N	\N	2016-06-14 17:44:51.490941-07	2016-06-14 17:45:07.466349-07	unemployed	none	Retail Services	
6145	P1130	kimberly Gregory	\N	\N	\N	\N	2016-06-14 17:44:51.500704-07	2016-06-14 17:45:07.470015-07	unemployed	none	Retail Services	
6133	P1997	Richard Lane	\N	\N	\N	\N	2016-06-14 17:44:51.457481-07	2016-06-14 17:45:08.115348-07	Attorney at Wobbrock & Lane	N/A (Wobbrock & Lane)	Lawyers	Oregon Trial Lawyers Association (Former Legislative Committee Chair)
6114	P1632	Steve Larson	\N	\N	\N	\N	2016-06-14 17:44:51.39992-07	2016-06-14 17:45:08.125683-07	Business Litigation Attorney at Stoll Berne	stollberne.com	Lawyers	National Employment Lawyers Association (Member), Oregon Trial Lawyers Association (Board member)
6144	P22022	Steven L Olsrud	\N	\N	\N	\N	2016-06-14 17:44:51.494814-07	2016-06-14 17:45:09.150724-07	Manager	http://www.shermsmarkets.com/index.htm	Grocery	
5903	P1463	William Anfuso	\N	\N	\N	\N	2016-06-14 17:44:50.470135-07	2016-06-14 17:45:06.00363-07	President Cordant Wealth Partners	cordantwealth.com	Banking and Finance	
5584	P1605	Joseph Angel	\N	\N	\N	\N	2016-06-14 17:44:48.601231-07	2016-06-14 17:45:06.007538-07	Real estate investment	http://www.pfstar.com/	Industrial Manufacturing	
6158	B56	AOL Services, Inc.	\N	\N	\N	\N	2016-06-14 17:45:06.011594-07	2016-06-14 17:45:06.011622-07				
6036	P1865	Thomas Aschenbrener	\N	\N	\N	\N	2016-06-14 17:44:51.052877-07	2016-06-14 17:45:06.014601-07	Foundation Executive	www.northwesthealth.org/	Healthcare Professionals	
6159	P99	Beth Bagley	\N	\N	\N	\N	2016-06-14 17:45:06.043284-07	2016-06-14 17:45:06.043312-07				
6160	P1282	John Banes	\N	\N	\N	\N	2016-06-14 17:45:06.088283-07	2016-06-14 17:45:06.088308-07				
6063	P1704	Douglas Barrett	\N	\N	\N	\N	2016-06-14 17:44:51.167398-07	2016-06-14 17:45:06.141854-07	Product Testing Laboratory Owner	http://www.cascadetek.com/	Industrial Manufacturing	“Outstanding Business Leader Award” from Community Action, a Hillsboro-based nonprofit organization that supports low-income families with financial and housing assistance. The award is given to key partners who go above and beyond in the battle to end poverty in Washington County.
5993	P139	Alice Bartelt	\N	\N	\N	\N	2016-06-14 17:44:50.811835-07	2016-06-14 17:45:06.149057-07	Retired, former attorney	http://www.saif.com/	Government and Public Service	Governance Committee Chair American Association of University Women (AAUW), Action Chair League of Women Voters of Oregon
6161	P490	William Barton	\N	\N	\N	\N	2016-06-14 17:45:06.168457-07	2016-06-14 17:45:06.168483-07				
6162	P1347	Bill Barton	\N	\N	\N	\N	2016-06-14 17:45:06.171297-07	2016-06-14 17:45:06.171321-07				
6163	P1081	Daniel Bates	\N	\N	\N	\N	2016-06-14 17:45:06.174162-07	2016-06-14 17:45:06.174185-07				
6164	P461	Dan Bates	\N	\N	\N	\N	2016-06-14 17:45:06.17703-07	2016-06-14 17:45:06.177053-07				
6165	P419	Terrence Bean	\N	\N	\N	\N	2016-06-14 17:45:06.189276-07	2016-06-14 17:45:06.189309-07				
6119	P22047	Michael Becker	\N	\N	\N	\N	2016-06-14 17:44:51.422867-07	2016-06-14 17:45:06.208928-07	Sr. Director, State Government Affairs	http://oregon.providence.org/	Healthcare Professionals	
6016	P230	Cliff Bentz	\N	\N	\N	\N	2016-06-14 17:44:50.908583-07	2016-06-14 17:45:06.23643-07	Attorney	Self Employed	Lawyers	Chair, 8C School District Board of Directors, 2005-present Member, Oregon Historical Society Board of Directors, 2003-present Member, Eastern Oregon University Foundation Board of Trustees, 2002-present Member, Church Folk Mass Group Member, Idaho Bar Association Member, Malheur County Bar Association Member, Oregon Bar Association Member, Oregon Cattleman's Association Former Member, Project Dove Former Chair, Saint Peter Elementary School Board of Directors Chair, Oregon Water Resources Commission, 1988-1996
6166	P248	Leonard Bergstein	\N	\N	\N	\N	2016-06-14 17:45:06.240098-07	2016-06-14 17:45:06.240123-07				
6167	P175	Len Bergstein	\N	\N	\N	\N	2016-06-14 17:45:06.245252-07	2016-06-14 17:45:06.245284-07				
6168	P1591	William Berkshire	\N	\N	\N	\N	2016-06-14 17:45:06.248259-07	2016-06-14 17:45:06.248285-07				
6169	P620	Steven Berman	\N	\N	\N	\N	2016-06-14 17:45:06.25115-07	2016-06-14 17:45:06.251175-07				
6170	P945	Jim Bernard	\N	\N	\N	\N	2016-06-14 17:45:06.253985-07	2016-06-14 17:45:06.254009-07				
6171	P1581	James Bernard	\N	\N	\N	\N	2016-06-14 17:45:06.2568-07	2016-06-14 17:45:06.256822-07				
6172	P1602	James Bernau	\N	\N	\N	\N	2016-06-14 17:45:06.261296-07	2016-06-14 17:45:06.26132-07				
6173	P886	Jim Bernau	\N	\N	\N	\N	2016-06-14 17:45:06.265923-07	2016-06-14 17:45:06.265953-07				
6174	P666	Gary Berne	\N	\N	\N	\N	2016-06-14 17:45:06.268943-07	2016-06-14 17:45:06.268971-07				
6175	P1117	Neil Bernstein	\N	\N	\N	\N	2016-06-14 17:45:06.272041-07	2016-06-14 17:45:06.272067-07				
6176	P1019	Vincent Beusan	\N	\N	\N	\N	2016-06-14 17:45:06.280496-07	2016-06-14 17:45:06.280523-07				
6177	P173	Sudhir Bhagwan	\N	\N	\N	\N	2016-06-14 17:45:06.283586-07	2016-06-14 17:45:06.283615-07				
6178	B8	Bimbo Bakeries USA, Inc.	\N	\N	\N	\N	2016-06-14 17:45:06.286439-07	2016-06-14 17:45:06.286461-07				
6179	P124	Mary Blair	\N	\N	\N	\N	2016-06-14 17:45:06.294166-07	2016-06-14 17:45:06.294191-07				
6180	P1269	Donald W Blair	\N	\N	\N	\N	2016-06-14 17:45:06.297036-07	2016-06-14 17:45:06.297059-07				
6181	P1732	Tracy Blakeslee	\N	\N	\N	\N	2016-06-14 17:45:06.300024-07	2016-06-14 17:45:06.300049-07				
6182	P1339	Jesse Blanchard	\N	\N	\N	\N	2016-06-14 17:45:06.303052-07	2016-06-14 17:45:06.303081-07				
6183	P1335	Sheryl Blankenship	\N	\N	\N	\N	2016-06-14 17:45:06.306181-07	2016-06-14 17:45:06.306209-07				
6184	P22040	Andreas Blech	\N	\N	\N	\N	2016-06-14 17:45:06.310084-07	2016-06-14 17:45:06.31013-07				
6185	P626	Patrick Block	\N	\N	\N	\N	2016-06-14 17:45:06.313297-07	2016-06-14 17:45:06.313323-07				
6186	P1447	David Blount	\N	\N	\N	\N	2016-06-14 17:45:06.323865-07	2016-06-14 17:45:06.323889-07				
6187	P1035	Joseph Blubaugh	\N	\N	\N	\N	2016-06-14 17:45:06.326756-07	2016-06-14 17:45:06.32678-07				
6188	P1234	Robert S Bobosky	\N	\N	\N	\N	2016-06-14 17:45:06.329683-07	2016-06-14 17:45:06.329708-07				
6189	P625	Neil Bornstein	\N	\N	\N	\N	2016-06-14 17:45:06.336244-07	2016-06-14 17:45:06.336269-07				
6190	P22049	Gertrude Boyle	\N	\N	\N	\N	2016-06-14 17:45:06.33916-07	2016-06-14 17:45:06.339186-07				
6191	P1146	William Bradbury	\N	\N	\N	\N	2016-06-14 17:45:06.342253-07	2016-06-14 17:45:06.342281-07				
6192	P1657	Todd Bradley	\N	\N	\N	\N	2016-06-14 17:45:06.346936-07	2016-06-14 17:45:06.346965-07				
6193	P704	John Bradley	\N	\N	\N	\N	2016-06-14 17:45:06.353576-07	2016-06-14 17:45:06.353601-07				
6194	P7	Casey Branham	\N	\N	\N	\N	2016-06-14 17:45:06.364685-07	2016-06-14 17:45:06.36471-07				
6195	P1405	Margaret Branson	\N	\N	\N	\N	2016-06-14 17:45:06.367654-07	2016-06-14 17:45:06.367678-07				
5846	P1521	Norman Brenden	\N	\N	\N	\N	2016-06-14 17:44:50.00761-07	2016-06-14 17:45:06.370641-07	Board member of Colson Family Foundation		Philanthropist	Colson Family Foundation, Coastal Conservation Association
6196	P1513	Thomas Brenneke	\N	\N	\N	\N	2016-06-14 17:45:06.377854-07	2016-06-14 17:45:06.377886-07				
6197	P1935	Michael Brian	\N	\N	\N	\N	2016-06-14 17:45:06.381055-07	2016-06-14 17:45:06.381085-07				
6198	P609	Michael Brightwood	\N	\N	\N	\N	2016-06-14 17:45:06.384073-07	2016-06-14 17:45:06.384097-07				
6199	P449	Julia Brim	\N	\N	\N	\N	2016-06-14 17:45:06.387026-07	2016-06-14 17:45:06.38705-07				
6200	P421	Julia Brim-Edwards	\N	\N	\N	\N	2016-06-14 17:45:06.389899-07	2016-06-14 17:45:06.389922-07				
6201	P1444	Peter Brix	\N	\N	\N	\N	2016-06-14 17:45:06.393653-07	2016-06-14 17:45:06.393684-07				
6202	P1122	Eli Broad	\N	\N	\N	\N	2016-06-14 17:45:06.399046-07	2016-06-14 17:45:06.399073-07				
6203	P749	Gretchen Brooks	\N	\N	\N	\N	2016-06-14 17:45:06.402055-07	2016-06-14 17:45:06.40208-07				
6204	P1872	Samuel Brooks	\N	\N	\N	\N	2016-06-14 17:45:06.405101-07	2016-06-14 17:45:06.405127-07				
6205	P1106	Margaret Brooks	\N	\N	\N	\N	2016-06-14 17:45:06.408091-07	2016-06-14 17:45:06.408117-07				
6206	P788	Jack Brooks	\N	\N	\N	\N	2016-06-14 17:45:06.411101-07	2016-06-14 17:45:06.411126-07				
6207	P1966	Sam Brooks	\N	\N	\N	\N	2016-06-14 17:45:06.413951-07	2016-06-14 17:45:06.413974-07				
6208	P1750	David Brown	\N	\N	\N	\N	2016-06-14 17:45:06.417129-07	2016-06-14 17:45:06.41716-07				
6209	P1990	John Brown	\N	\N	\N	\N	2016-06-14 17:45:06.420062-07	2016-06-14 17:45:06.42009-07				
6210	P1387	Greg Brown	\N	\N	\N	\N	2016-06-14 17:45:06.423043-07	2016-06-14 17:45:06.423067-07				
6211	P425	John H Brown	\N	\N	\N	\N	2016-06-14 17:45:06.426433-07	2016-06-14 17:45:06.426474-07				
6212	P85	D. Elizabeth Brown	\N	\N	\N	\N	2016-06-14 17:45:06.429739-07	2016-06-14 17:45:06.429768-07				
6213	P862	Judd Brown	\N	\N	\N	\N	2016-06-14 17:45:06.43279-07	2016-06-14 17:45:06.432814-07				
6214	P214	Fred Bruning	\N	\N	\N	\N	2016-06-14 17:45:06.435788-07	2016-06-14 17:45:06.435811-07				
6215	P1877	Mark Bruun	\N	\N	\N	\N	2016-06-14 17:45:06.439181-07	2016-06-14 17:45:06.439205-07				
6216	P22001	John D Bryan	\N	\N	\N	\N	2016-06-14 17:45:06.442311-07	2016-06-14 17:45:06.442334-07				
6217	P22050	George E Bulkeley	\N	\N	\N	\N	2016-06-14 17:45:06.445257-07	2016-06-14 17:45:06.445282-07				
6218	P22014	Barbara Buono	\N	\N	\N	\N	2016-06-14 17:45:06.448077-07	2016-06-14 17:45:06.4481-07				
6219	P310	Annie Burns	\N	\N	\N	\N	2016-06-14 17:45:06.451003-07	2016-06-14 17:45:06.451027-07				
6220	P136	Sara Byers	\N	\N	\N	\N	2016-06-14 17:45:06.454353-07	2016-06-14 17:45:06.454382-07				
6221	P1443	John Calhoun	\N	\N	\N	\N	2016-06-14 17:45:06.457513-07	2016-06-14 17:45:06.457543-07				
6222	P901	Sallie Calhoun	\N	\N	\N	\N	2016-06-14 17:45:06.460601-07	2016-06-14 17:45:06.460633-07				
6223	P1859	Lydia Callaghan	\N	\N	\N	\N	2016-06-14 17:45:06.463839-07	2016-06-14 17:45:06.463865-07				
6224	B35	Cambia Health Solutions	\N	\N	\N	\N	2016-06-14 17:45:06.466807-07	2016-06-14 17:45:06.466833-07				
6225	P1361	Scott Campbell	\N	\N	\N	\N	2016-06-14 17:45:06.46974-07	2016-06-14 17:45:06.469764-07				
6227	P1840	Linda Campbell	\N	\N	\N	\N	2016-06-14 17:45:06.477166-07	2016-06-14 17:45:06.47719-07				
6228	P1870	Cynthia Campbell	\N	\N	\N	\N	2016-06-14 17:45:06.479982-07	2016-06-14 17:45:06.480008-07				
6229	P335	Claude L Campbell	\N	\N	\N	\N	2016-06-14 17:45:06.48291-07	2016-06-14 17:45:06.482935-07				
6230	P1372	J Duncan Campbell	\N	\N	\N	\N	2016-06-14 17:45:06.485969-07	2016-06-14 17:45:06.485994-07				
6231	P574	Sandra K Campbell	\N	\N	\N	\N	2016-06-14 17:45:06.488972-07	2016-06-14 17:45:06.488996-07				
6232	P1393	Leslie Campbell	\N	\N	\N	\N	2016-06-14 17:45:06.492208-07	2016-06-14 17:45:06.492239-07				
6233	P1819	Thomas Campion	\N	\N	\N	\N	2016-06-14 17:45:06.495304-07	2016-06-14 17:45:06.495331-07				
6234	P1764	Cal Cannon	\N	\N	\N	\N	2016-06-14 17:45:06.499078-07	2016-06-14 17:45:06.499106-07				
6235	P656	Douglas Carnine	\N	\N	\N	\N	2016-06-14 17:45:06.502135-07	2016-06-14 17:45:06.50216-07				
6236	P1006	Kenneth Carr	\N	\N	\N	\N	2016-06-14 17:45:06.505211-07	2016-06-14 17:45:06.505235-07				
6237	P1129	Candace Carr	\N	\N	\N	\N	2016-06-14 17:45:06.508214-07	2016-06-14 17:45:06.50824-07				
6238	P1806	John Carroll	\N	\N	\N	\N	2016-06-14 17:45:06.512092-07	2016-06-14 17:45:06.512123-07				
6239	P1267	John Carter	\N	\N	\N	\N	2016-06-14 17:45:06.51519-07	2016-06-14 17:45:06.515218-07				
6240	P252	Robert Cary	\N	\N	\N	\N	2016-06-14 17:45:06.518148-07	2016-06-14 17:45:06.518172-07				
6241	P1844	CARL CASALE	\N	\N	\N	\N	2016-06-14 17:45:06.521094-07	2016-06-14 17:45:06.521119-07				
6242	P246	Anna Cassily	\N	\N	\N	\N	2016-06-14 17:45:06.524006-07	2016-06-14 17:45:06.52403-07				
6243	P50	Robin Castro	\N	\N	\N	\N	2016-06-14 17:45:06.526828-07	2016-06-14 17:45:06.526853-07				
6244	P19	Jane Cease	\N	\N	\N	\N	2016-06-14 17:45:06.529899-07	2016-06-14 17:45:06.52993-07				
6245	P362	Floyd Chadee	\N	\N	\N	\N	2016-06-14 17:45:06.533037-07	2016-06-14 17:45:06.533066-07				
6246	P1495	Karla Chambers	\N	\N	\N	\N	2016-06-14 17:45:06.536025-07	2016-06-14 17:45:06.536048-07				
6247	P1634	Carolyn Chambers	\N	\N	\N	\N	2016-06-14 17:45:06.540727-07	2016-06-14 17:45:06.540753-07				
6139	P545	Linyee Chang	\N	\N	\N	\N	2016-06-14 17:44:51.473426-07	2016-06-14 17:45:06.547888-07	Physician	www.centraloregoncancer.com	Healthcare Professionals	medical director for St. Charles Cancer Center
6248	P156	Matt Chapman	\N	\N	\N	\N	2016-06-14 17:45:06.551521-07	2016-06-14 17:45:06.551547-07				
6249	P535	Matthew Chapman	\N	\N	\N	\N	2016-06-14 17:45:06.57264-07	2016-06-14 17:45:06.572673-07				
6250	P1325	Adela Chavez	\N	\N	\N	\N	2016-06-14 17:45:06.576125-07	2016-06-14 17:45:06.576157-07				
6251	P285	Christine Chin Ryan	\N	\N	\N	\N	2016-06-14 17:45:06.583328-07	2016-06-14 17:45:06.583355-07				
6252	P521	Thomas V Clarey	\N	\N	\N	\N	2016-06-14 17:45:06.586378-07	2016-06-14 17:45:06.586404-07				
6253	P22016	Jeffrey Clark	\N	\N	\N	\N	2016-06-14 17:45:06.596677-07	2016-06-14 17:45:06.596704-07				
6254	P22029	Diane Clary	\N	\N	\N	\N	2016-06-14 17:45:06.603201-07	2016-06-14 17:45:06.603226-07				
6255	P1574	Trevor Cleveland	\N	\N	\N	\N	2016-06-14 17:45:06.610426-07	2016-06-14 17:45:06.610454-07				
6256	P552	Bob Cockell	\N	\N	\N	\N	2016-06-14 17:45:06.61647-07	2016-06-14 17:45:06.616495-07				
6257	P1348	Thomas Cody	\N	\N	\N	\N	2016-06-14 17:45:06.619382-07	2016-06-14 17:45:06.619407-07				
6258	P1649	Michael Colbach	\N	\N	\N	\N	2016-06-14 17:45:06.622362-07	2016-06-14 17:45:06.62239-07				
6259	P1901	John Coletii	\N	\N	\N	\N	2016-06-14 17:45:06.629755-07	2016-06-14 17:45:06.629787-07				
6260	P1499	Z Idelle Collins	\N	\N	\N	\N	2016-06-14 17:45:06.636365-07	2016-06-14 17:45:06.636391-07				
6261	P1709	Mark Colman	\N	\N	\N	\N	2016-06-14 17:45:06.652529-07	2016-06-14 17:45:06.652556-07				
6262	P65	Rosa Colquitt	\N	\N	\N	\N	2016-06-14 17:45:06.6554-07	2016-06-14 17:45:06.655424-07				
6263	B21	Columbia Distributing	\N	\N	\N	\N	2016-06-14 17:45:06.662786-07	2016-06-14 17:45:06.662817-07				
6264	B1	Comcast	\N	\N	\N	\N	2016-06-14 17:45:06.670447-07	2016-06-14 17:45:06.670472-07				
6265	B97	Comcast Financial Agency Corporation	\N	\N	\N	\N	2016-06-14 17:45:06.673407-07	2016-06-14 17:45:06.67343-07				
6266	B7	Common Sense for Oregon, Incorporated	\N	\N	\N	\N	2016-06-14 17:45:06.677187-07	2016-06-14 17:45:06.677217-07				
6267	B61	ConAgra Foods	\N	\N	\N	\N	2016-06-14 17:45:06.680195-07	2016-06-14 17:45:06.680221-07				
6081	P1830	W. Richard Cooley	\N	\N	\N	\N	2016-06-14 17:44:51.21942-07	2016-06-14 17:45:06.690732-07	Managing partner	www.cooleypartners.com	Real Estate	Portland Homebuilders Board, the Multnomah County Planning Commission, the Portland Planning Commission (where he served as chair), and chair of the Portland Streetcar Board. 
5656	P342	Kathleen Courian-Sanchez	\N	\N	\N	\N	2016-06-14 17:44:48.951293-07	2016-06-14 17:45:06.694583-07	Graphic Designer	https://kcouriansanchez.wordpress.com/	Arts, Entertainment, Music, and Recreation	
6268	P1220	Nancy Crumpacker	\N	\N	\N	\N	2016-06-14 17:45:06.709567-07	2016-06-14 17:45:06.709593-07				
5760	P1148	Thomas D'Amore	\N	\N	\N	\N	2016-06-14 17:44:49.474641-07	2016-06-14 17:45:06.733328-07	Lawyer	http://damorelaw.com/	Lawyers	Good Deeds is a not-for-profit charitable organization that provides assistance to families with special medical circumstances. Attorney Tom D’Amore, a long-time board member, is proud to support the local organization. Visit www.gooddeeds.org to learn more about Good Deeds.
6269	P179	Marc Davidson	\N	\N	\N	\N	2016-06-14 17:45:06.74278-07	2016-06-14 17:45:06.742806-07				
6270	P700	H.M. Day Sr	\N	\N	\N	\N	2016-06-14 17:45:06.767823-07	2016-06-14 17:45:06.767847-07				
6271	P22018	Lester A DeAsis	\N	\N	\N	\N	2016-06-14 17:45:06.770753-07	2016-06-14 17:45:06.770777-07				
6272	P22051	David Dechman	\N	\N	\N	\N	2016-06-14 17:45:06.773695-07	2016-06-14 17:45:06.773717-07				
6273	P1338	Gina DeFazio	\N	\N	\N	\N	2016-06-14 17:45:06.781133-07	2016-06-14 17:45:06.781162-07				
6274	P1045	James DeFrancesco	\N	\N	\N	\N	2016-06-14 17:45:06.784269-07	2016-06-14 17:45:06.784295-07				
6275	P1147	Merry Demarest	\N	\N	\N	\N	2016-06-14 17:45:06.790794-07	2016-06-14 17:45:06.790818-07				
6276	P1662	Harry Demarest	\N	\N	\N	\N	2016-06-14 17:45:06.7936-07	2016-06-14 17:45:06.793624-07				
6277	P287	Harold Demarest	\N	\N	\N	\N	2016-06-14 17:45:06.796722-07	2016-06-14 17:45:06.796751-07				
6278	P28	Neal Dempsey	\N	\N	\N	\N	2016-06-14 17:45:06.799808-07	2016-06-14 17:45:06.799836-07				
6279	P569	Bill Dickey	\N	\N	\N	\N	2016-06-14 17:45:06.835756-07	2016-06-14 17:45:06.835787-07				
6280	P1280	William Dickey	\N	\N	\N	\N	2016-06-14 17:45:06.838937-07	2016-06-14 17:45:06.838965-07				
6281	P1661	Howard Dierich	\N	\N	\N	\N	2016-06-14 17:45:06.843853-07	2016-06-14 17:45:06.843886-07				
6282	P1437	John Dillion	\N	\N	\N	\N	2016-06-14 17:45:06.847091-07	2016-06-14 17:45:06.847121-07				
6283	P802	John Dillon	\N	\N	\N	\N	2016-06-14 17:45:06.850115-07	2016-06-14 17:45:06.850141-07				
6284	P1682	John DiLorenzo Jr.	\N	\N	\N	\N	2016-06-14 17:45:06.86163-07	2016-06-14 17:45:06.86166-07				
6285	P1228	James Doane	\N	\N	\N	\N	2016-06-14 17:45:06.864617-07	2016-06-14 17:45:06.864643-07				
6286	P22052	Ronald Dollens	\N	\N	\N	\N	2016-06-14 17:45:06.874723-07	2016-06-14 17:45:06.87475-07				
6287	P22026	Shawn Donnille	\N	\N	\N	\N	2016-06-14 17:45:06.882191-07	2016-06-14 17:45:06.882217-07				
6288	P1635	James DOrta	\N	\N	\N	\N	2016-06-14 17:45:06.885296-07	2016-06-14 17:45:06.885322-07				
6289	P22	Phillip K Doud	\N	\N	\N	\N	2016-06-14 17:45:06.888218-07	2016-06-14 17:45:06.888242-07				
6290	B23	Douglas County IPA Inc. (DCIPA, Inc.)	\N	\N	\N	\N	2016-06-14 17:45:06.891083-07	2016-06-14 17:45:06.891106-07				
6291	P275	Bruce Dow	\N	\N	\N	\N	2016-06-14 17:45:06.894159-07	2016-06-14 17:45:06.894183-07				
6292	P1149	Dennis Doyle	\N	\N	\N	\N	2016-06-14 17:45:06.897243-07	2016-06-14 17:45:06.897272-07				
6293	P209	Carolyn H Dozois	\N	\N	\N	\N	2016-06-14 17:45:06.900171-07	2016-06-14 17:45:06.900195-07				
6294	P1564	Eileen Drake	\N	\N	\N	\N	2016-06-14 17:45:06.903091-07	2016-06-14 17:45:06.903115-07				
6295	P1815	Scott Draper	\N	\N	\N	\N	2016-06-14 17:45:06.90623-07	2016-06-14 17:45:06.906256-07				
6296	P1284	Wayne Drinkward	\N	\N	\N	\N	2016-06-14 17:45:06.909772-07	2016-06-14 17:45:06.909803-07				
6297	B22	Drug Policy Action	\N	\N	\N	\N	2016-06-14 17:45:06.912922-07	2016-06-14 17:45:06.912949-07				
6298	P1216	Keith Dubanevich	\N	\N	\N	\N	2016-06-14 17:45:06.915906-07	2016-06-14 17:45:06.915932-07				
6299	P845	John A Duke	\N	\N	\N	\N	2016-06-14 17:45:06.918979-07	2016-06-14 17:45:06.919004-07				
6300	P972	Marilyn R Duke	\N	\N	\N	\N	2016-06-14 17:45:06.92201-07	2016-06-14 17:45:06.922034-07				
6301	P537	Kyle Dukelow	\N	\N	\N	\N	2016-06-14 17:45:06.924997-07	2016-06-14 17:45:06.92502-07				
6302	P226	Tom Dulcich	\N	\N	\N	\N	2016-06-14 17:45:06.928104-07	2016-06-14 17:45:06.928137-07				
6303	P1793	Frank Dulcich	\N	\N	\N	\N	2016-06-14 17:45:06.93175-07	2016-06-14 17:45:06.931778-07				
6304	P1154	Kim Duncan	\N	\N	\N	\N	2016-06-14 17:45:06.934777-07	2016-06-14 17:45:06.934804-07				
6305	P1115	Richard Duncan	\N	\N	\N	\N	2016-06-14 17:45:06.937856-07	2016-06-14 17:45:06.93788-07				
6306	P255	Katherine Durant	\N	\N	\N	\N	2016-06-14 17:45:06.940794-07	2016-06-14 17:45:06.940818-07				
6307	P453	Dan Dutton	\N	\N	\N	\N	2016-06-14 17:45:06.943919-07	2016-06-14 17:45:06.943943-07				
6308	P211	James Dwyer	\N	\N	\N	\N	2016-06-14 17:45:06.946959-07	2016-06-14 17:45:06.946989-07				
6309	P23	Roy Dwyer	\N	\N	\N	\N	2016-06-14 17:45:06.950125-07	2016-06-14 17:45:06.950154-07				
6310	P225	Daniel Dziuba	\N	\N	\N	\N	2016-06-14 17:45:06.953115-07	2016-06-14 17:45:06.95314-07				
6311	P1017	Andrea Easton	\N	\N	\N	\N	2016-06-14 17:45:06.956737-07	2016-06-14 17:45:06.956762-07				
6312	P91	Jim Eastridge	\N	\N	\N	\N	2016-06-14 17:45:06.959874-07	2016-06-14 17:45:06.9599-07				
6313	P1955	Robert L Eberhard	\N	\N	\N	\N	2016-06-14 17:45:06.963746-07	2016-06-14 17:45:06.963797-07				
6314	P489	Robert (Bob) L Eberhard	\N	\N	\N	\N	2016-06-14 17:45:06.968815-07	2016-06-14 17:45:06.968842-07				
6315	P224	Kathryn P Eckman	\N	\N	\N	\N	2016-06-14 17:45:06.971855-07	2016-06-14 17:45:06.97188-07				
6316	P1899	Peter Edberg	\N	\N	\N	\N	2016-06-14 17:45:06.974694-07	2016-06-14 17:45:06.974717-07				
6317	P1209	Robert Emmons	\N	\N	\N	\N	2016-06-14 17:45:07.014111-07	2016-06-14 17:45:07.014135-07				
6318	P1718	Marilyn Epstein	\N	\N	\N	\N	2016-06-14 17:45:07.024783-07	2016-06-14 17:45:07.024815-07				
6319	B51	FamilyCare, Inc.	\N	\N	\N	\N	2016-06-14 17:45:07.063445-07	2016-06-14 17:45:07.066457-07				
6320	P1352	Ken Fawcett	\N	\N	\N	\N	2016-06-14 17:45:07.073328-07	2016-06-14 17:45:07.073352-07				
6321	P93	Foster Fell	\N	\N	\N	\N	2016-06-14 17:45:07.07624-07	2016-06-14 17:45:07.076267-07				
6322	P49	Mary Fellows	\N	\N	\N	\N	2016-06-14 17:45:07.07943-07	2016-06-14 17:45:07.079464-07				
6323	P833	Matthew Felton	\N	\N	\N	\N	2016-06-14 17:45:07.082765-07	2016-06-14 17:45:07.082793-07				
6324	P516	Andrew G Ferguson	\N	\N	\N	\N	2016-06-14 17:45:07.085686-07	2016-06-14 17:45:07.085713-07				
6325	P1561	Felix Ferrero	\N	\N	\N	\N	2016-06-14 17:45:07.088713-07	2016-06-14 17:45:07.088739-07				
6326	P1725	Gordon Fiddes	\N	\N	\N	\N	2016-06-14 17:45:07.091778-07	2016-06-14 17:45:07.091802-07				
6327	P1805	Norman Fincher	\N	\N	\N	\N	2016-06-14 17:45:07.09473-07	2016-06-14 17:45:07.094754-07				
6328	P769	Ryan Finley	\N	\N	\N	\N	2016-06-14 17:45:07.097969-07	2016-06-14 17:45:07.097998-07				
6329	P1708	Dennis Fioravanti	\N	\N	\N	\N	2016-06-14 17:45:07.101232-07	2016-06-14 17:45:07.101261-07				
6330	P386	David Fischer	\N	\N	\N	\N	2016-06-14 17:45:07.104179-07	2016-06-14 17:45:07.104204-07				
6331	P1365	Michael A Fitz	\N	\N	\N	\N	2016-06-14 17:45:07.107233-07	2016-06-14 17:45:07.107258-07				
6332	P1175	Bradford Fletcher	\N	\N	\N	\N	2016-06-14 17:45:07.110604-07	2016-06-14 17:45:07.110636-07				
6333	P22072	James Flynn	\N	\N	\N	\N	2016-06-14 17:45:07.114057-07	2016-06-14 17:45:07.114087-07				
6334	P22035	Phillip Fogg	\N	\N	\N	\N	2016-06-14 17:45:07.117094-07	2016-06-14 17:45:07.11712-07				
6335	P176	Phillip Fogg JR	\N	\N	\N	\N	2016-06-14 17:45:07.119995-07	2016-06-14 17:45:07.120019-07				
6336	P996	Richard Fohs Sohn	\N	\N	\N	\N	2016-06-14 17:45:07.12393-07	2016-06-14 17:45:07.123955-07				
6337	P907	Alan J Folkman	\N	\N	\N	\N	2016-06-14 17:45:07.126872-07	2016-06-14 17:45:07.126896-07				
6338	P1675	Sharon Folkman	\N	\N	\N	\N	2016-06-14 17:45:07.129886-07	2016-06-14 17:45:07.129911-07				
6339	P621	David Folsom	\N	\N	\N	\N	2016-06-14 17:45:07.132883-07	2016-06-14 17:45:07.132907-07				
6340	P1246	John Foraker	\N	\N	\N	\N	2016-06-14 17:45:07.136246-07	2016-06-14 17:45:07.136278-07				
6341	P1714	Leslie Ford	\N	\N	\N	\N	2016-06-14 17:45:07.139403-07	2016-06-14 17:45:07.139432-07				
6342	P1984	Allyn Ford	\N	\N	\N	\N	2016-06-14 17:45:07.142464-07	2016-06-14 17:45:07.142491-07				
6343	P560	Lester Fordham	\N	\N	\N	\N	2016-06-14 17:45:07.146464-07	2016-06-14 17:45:07.146503-07				
6344	P1614	Eric Forrest	\N	\N	\N	\N	2016-06-14 17:45:07.149858-07	2016-06-14 17:45:07.149887-07				
6345	P1337	Todd Foster	\N	\N	\N	\N	2016-06-14 17:45:07.152972-07	2016-06-14 17:45:07.152998-07				
6346	P1833	Frank Foti	\N	\N	\N	\N	2016-06-14 17:45:07.156012-07	2016-06-14 17:45:07.156036-07				
6347	P1177	Dirk Fournier	\N	\N	\N	\N	2016-06-14 17:45:07.15912-07	2016-06-14 17:45:07.159146-07				
6348	P536	Alan Fournier	\N	\N	\N	\N	2016-06-14 17:45:07.162062-07	2016-06-14 17:45:07.162087-07				
6349	P1652	Diane Fraiman	\N	\N	\N	\N	2016-06-14 17:45:07.165159-07	2016-06-14 17:45:07.165183-07				
6350	P1067	Dennis Frank	\N	\N	\N	\N	2016-06-14 17:45:07.168096-07	2016-06-14 17:45:07.16812-07				
6351	P63	Ted L Freeman Jr.	\N	\N	\N	\N	2016-06-14 17:45:07.171001-07	2016-06-14 17:45:07.171026-07				
6352	P245	Matthew French	\N	\N	\N	\N	2016-06-14 17:45:07.174027-07	2016-06-14 17:45:07.174057-07				
6353	P243	Rob Freres	\N	\N	\N	\N	2016-06-14 17:45:07.177135-07	2016-06-14 17:45:07.177166-07				
6354	P464	Robert Freres Jr.	\N	\N	\N	\N	2016-06-14 17:45:07.18038-07	2016-06-14 17:45:07.180412-07				
6355	B77	Freres Lumber Co., Inc.	\N	\N	\N	\N	2016-06-14 17:45:07.183544-07	2016-06-14 17:45:07.183571-07				
6356	B76	Freres Timber, Inc.	\N	\N	\N	\N	2016-06-14 17:45:07.186603-07	2016-06-14 17:45:07.186629-07				
6357	P442	Denise Frisbee	\N	\N	\N	\N	2016-06-14 17:45:07.210055-07	2016-06-14 17:45:07.210085-07				
6358	P486	Amanda Fritz	\N	\N	\N	\N	2016-06-14 17:45:07.213524-07	2016-06-14 17:45:07.213555-07				
6359	P1666	Mira Frohnmayer	\N	\N	\N	\N	2016-06-14 17:45:07.216884-07	2016-06-14 17:45:07.216913-07				
6360	P1787	David Fryefield	\N	\N	\N	\N	2016-06-14 17:45:07.219897-07	2016-06-14 17:45:07.219923-07				
6361	P1062	James Fuiten	\N	\N	\N	\N	2016-06-14 17:45:07.222992-07	2016-06-14 17:45:07.223018-07				
6362	P39	William Furman	\N	\N	\N	\N	2016-06-14 17:45:07.227837-07	2016-06-14 17:45:07.227869-07				
6363	P254	Elizabeth Furse	\N	\N	\N	\N	2016-06-14 17:45:07.231546-07	2016-06-14 17:45:07.231577-07				
6364	P877	Gwyneth Gamble Booth	\N	\N	\N	\N	2016-06-14 17:45:07.234777-07	2016-06-14 17:45:07.234803-07				
6365	P1864	Mark Ganz	\N	\N	\N	\N	2016-06-14 17:45:07.237859-07	2016-06-14 17:45:07.237883-07				
6366	P22036	Timothy L Gard	\N	\N	\N	\N	2016-06-14 17:45:07.240906-07	2016-06-14 17:45:07.240931-07				
6367	P109	Judah Garfinkle	\N	\N	\N	\N	2016-06-14 17:45:07.243974-07	2016-06-14 17:45:07.243998-07				
6368	P717	James Garvey	\N	\N	\N	\N	2016-06-14 17:45:07.246851-07	2016-06-14 17:45:07.246875-07				
6369	P1334	Susan Gates	\N	\N	\N	\N	2016-06-14 17:45:07.249941-07	2016-06-14 17:45:07.24997-07				
6370	P699	Patricia Gates	\N	\N	\N	\N	2016-06-14 17:45:07.253121-07	2016-06-14 17:45:07.25315-07				
6371	P294	Roger Gatewood	\N	\N	\N	\N	2016-06-14 17:45:07.256142-07	2016-06-14 17:45:07.256171-07				
6372	P681	Bonnie Gauer	\N	\N	\N	\N	2016-06-14 17:45:07.259187-07	2016-06-14 17:45:07.259213-07				
6373	P1345	William Gaylord	\N	\N	\N	\N	2016-06-14 17:45:07.262594-07	2016-06-14 17:45:07.262626-07				
6374	P316	Richard Geary	\N	\N	\N	\N	2016-06-14 17:45:07.266017-07	2016-06-14 17:45:07.266047-07				
6375	P654	Sean Geary	\N	\N	\N	\N	2016-06-14 17:45:07.269391-07	2016-06-14 17:45:07.269418-07				
6376	P1143	Anna Geller	\N	\N	\N	\N	2016-06-14 17:45:07.311663-07	2016-06-14 17:45:07.311698-07				
6377	P1208	Jay Gellert	\N	\N	\N	\N	2016-06-14 17:45:07.315177-07	2016-06-14 17:45:07.315204-07				
6378	P786	Sara Gelser	\N	\N	\N	\N	2016-06-14 17:45:07.318542-07	2016-06-14 17:45:07.31857-07				
6379	B29	General Mills	\N	\N	\N	\N	2016-06-14 17:45:07.32214-07	2016-06-14 17:45:07.322169-07				
6380	P162	Wendy Gerlach	\N	\N	\N	\N	2016-06-14 17:45:07.325218-07	2016-06-14 17:45:07.325243-07				
6381	P1383	Richard J Germond	\N	\N	\N	\N	2016-06-14 17:45:07.328244-07	2016-06-14 17:45:07.328268-07				
6382	P198	Michelle Giguere	\N	\N	\N	\N	2016-06-14 17:45:07.331288-07	2016-06-14 17:45:07.331313-07				
6383	P578	Phillip Gilbert	\N	\N	\N	\N	2016-06-14 17:45:07.334408-07	2016-06-14 17:45:07.334432-07				
6384	P237	Mark Gilbert	\N	\N	\N	\N	2016-06-14 17:45:07.337349-07	2016-06-14 17:45:07.337373-07				
6385	P389	Ted Gilbert	\N	\N	\N	\N	2016-06-14 17:45:07.342112-07	2016-06-14 17:45:07.342138-07				
6386	P403	Frank C Gill	\N	\N	\N	\N	2016-06-14 17:45:07.345475-07	2016-06-14 17:45:07.345505-07				
6387	P1457	Tim Gill	\N	\N	\N	\N	2016-06-14 17:45:07.350422-07	2016-06-14 17:45:07.35045-07				
6388	P1286	Vic Gilliam	\N	\N	\N	\N	2016-06-14 17:45:07.353462-07	2016-06-14 17:45:07.353486-07				
6389	P973	Mark Ginsberg	\N	\N	\N	\N	2016-06-14 17:45:07.356865-07	2016-06-14 17:45:07.356889-07				
6390	P1180	Debra Gisriel	\N	\N	\N	\N	2016-06-14 17:45:07.360547-07	2016-06-14 17:45:07.360575-07				
6391	P1543	E. Danell Giustina	\N	\N	\N	\N	2016-06-14 17:45:07.363713-07	2016-06-14 17:45:07.363744-07				
6392	P12	Jess Glaeser	\N	\N	\N	\N	2016-06-14 17:45:07.367076-07	2016-06-14 17:45:07.367109-07				
6393	P784	Patricia Glass	\N	\N	\N	\N	2016-06-14 17:45:07.370417-07	2016-06-14 17:45:07.370448-07				
6394	P544	Peter Glazer	\N	\N	\N	\N	2016-06-14 17:45:07.373541-07	2016-06-14 17:45:07.373568-07				
6395	P22054	K. R. Gleason	\N	\N	\N	\N	2016-06-14 17:45:07.376626-07	2016-06-14 17:45:07.376653-07				
6396	P215	Robert Gluckman	\N	\N	\N	\N	2016-06-14 17:45:07.379706-07	2016-06-14 17:45:07.379731-07				
6397	P297	Anne Golden	\N	\N	\N	\N	2016-06-14 17:45:07.382785-07	2016-06-14 17:45:07.382815-07				
6398	P1360	Peter Goldman	\N	\N	\N	\N	2016-06-14 17:45:07.385864-07	2016-06-14 17:45:07.385893-07				
6399	P1392	Harold Goldstein	\N	\N	\N	\N	2016-06-14 17:45:07.388857-07	2016-06-14 17:45:07.388881-07				
6400	P1064	Mike Golub	\N	\N	\N	\N	2016-06-14 17:45:07.391814-07	2016-06-14 17:45:07.391839-07				
6401	P821	Stephen Gomez	\N	\N	\N	\N	2016-06-14 17:45:07.394931-07	2016-06-14 17:45:07.394959-07				
6402	P1302	Joseph Gonyea III	\N	\N	\N	\N	2016-06-14 17:45:07.398514-07	2016-06-14 17:45:07.398545-07				
6403	P730	James N Gonzales	\N	\N	\N	\N	2016-06-14 17:45:07.401657-07	2016-06-14 17:45:07.401682-07				
6404	P145	Greg Goodman	\N	\N	\N	\N	2016-06-14 17:45:07.404605-07	2016-06-14 17:45:07.404628-07				
6405	P1196	Robert Goodman	\N	\N	\N	\N	2016-06-14 17:45:07.407881-07	2016-06-14 17:45:07.407908-07				
6406	P1391	Laird Goodman DVM	\N	\N	\N	\N	2016-06-14 17:45:07.410771-07	2016-06-14 17:45:07.410796-07				
6407	P1378	Robert Gootee	\N	\N	\N	\N	2016-06-14 17:45:07.413678-07	2016-06-14 17:45:07.413703-07				
6408	P59	Douglas Gordon	\N	\N	\N	\N	2016-06-14 17:45:07.416509-07	2016-06-14 17:45:07.416532-07				
6409	P371	Charlotte Gordon	\N	\N	\N	\N	2016-06-14 17:45:07.41969-07	2016-06-14 17:45:07.41972-07				
6410	P482	Walter Gorman	\N	\N	\N	\N	2016-06-14 17:45:07.426279-07	2016-06-14 17:45:07.426305-07				
6411	P1953	Walt Gorman	\N	\N	\N	\N	2016-06-14 17:45:07.429638-07	2016-06-14 17:45:07.429669-07				
6412	P200	Stephen M Greenleaf	\N	\N	\N	\N	2016-06-14 17:45:07.463004-07	2016-06-14 17:45:07.463037-07				
6413	P22055	Timothy Gunn	\N	\N	\N	\N	2016-06-14 17:45:07.475338-07	2016-06-14 17:45:07.475362-07				
6414	P1609	Richard Gustafson	\N	\N	\N	\N	2016-06-14 17:45:07.478793-07	2016-06-14 17:45:07.478827-07				
6415	P1861	Mike Gutzler	\N	\N	\N	\N	2016-06-14 17:45:07.482588-07	2016-06-14 17:45:07.482616-07				
6416	P1640	David Gwyther	\N	\N	\N	\N	2016-06-14 17:45:07.485784-07	2016-06-14 17:45:07.485808-07				
6417	P247	Allan Hadley	\N	\N	\N	\N	2016-06-14 17:45:07.488634-07	2016-06-14 17:45:07.488658-07				
6418	P868	Michael Haglund	\N	\N	\N	\N	2016-06-14 17:45:07.491517-07	2016-06-14 17:45:07.491539-07				
6419	P22041	John H Haines	\N	\N	\N	\N	2016-06-14 17:45:07.494746-07	2016-06-14 17:45:07.494776-07				
6420	P1846	James Hale	\N	\N	\N	\N	2016-06-14 17:45:07.497887-07	2016-06-14 17:45:07.497916-07				
6421	P885	Frank W Hale	\N	\N	\N	\N	2016-06-14 17:45:07.500803-07	2016-06-14 17:45:07.500828-07				
6422	P799	Robert C Hale	\N	\N	\N	\N	2016-06-14 17:45:07.503829-07	2016-06-14 17:45:07.503852-07				
6423	P1198	Barbara Hall	\N	\N	\N	\N	2016-06-14 17:45:07.506778-07	2016-06-14 17:45:07.506802-07				
6424	P430	Ted Halton	\N	\N	\N	\N	2016-06-14 17:45:07.509686-07	2016-06-14 17:45:07.509709-07				
6425	P793	Alexander Hamalian	\N	\N	\N	\N	2016-06-14 17:45:07.51293-07	2016-06-14 17:45:07.51296-07				
6426	P968	Candace Hamel	\N	\N	\N	\N	2016-06-14 17:45:07.516504-07	2016-06-14 17:45:07.516535-07				
6427	P1687	Clare  L Hamill	\N	\N	\N	\N	2016-06-14 17:45:07.519673-07	2016-06-14 17:45:07.519699-07				
6428	P1888	Gale Hamilton	\N	\N	\N	\N	2016-06-14 17:45:07.522658-07	2016-06-14 17:45:07.522683-07				
6429	P263	Tom Hammer	\N	\N	\N	\N	2016-06-14 17:45:07.525564-07	2016-06-14 17:45:07.525588-07				
6430	P441	Lynn W Hampton	\N	\N	\N	\N	2016-06-14 17:45:07.528489-07	2016-06-14 17:45:07.528513-07				
6431	P1498	James Hampton	\N	\N	\N	\N	2016-06-14 17:45:07.531772-07	2016-06-14 17:45:07.531802-07				
6432	P1164	Joe Hanauer	\N	\N	\N	\N	2016-06-14 17:45:07.535124-07	2016-06-14 17:45:07.535153-07				
6433	P1672	J. Bradford Handley	\N	\N	\N	\N	2016-06-14 17:45:07.538144-07	2016-06-14 17:45:07.538169-07				
6434	P1771	Lisa A Handley	\N	\N	\N	\N	2016-06-14 17:45:07.541145-07	2016-06-14 17:45:07.541171-07				
6435	P1411	J. B. Handley	\N	\N	\N	\N	2016-06-14 17:45:07.544254-07	2016-06-14 17:45:07.544279-07				
6436	P1009	Jonathan Handley	\N	\N	\N	\N	2016-06-14 17:45:07.547489-07	2016-06-14 17:45:07.547521-07				
6437	P1232	R. Patrick Hanlin	\N	\N	\N	\N	2016-06-14 17:45:07.550763-07	2016-06-14 17:45:07.550791-07				
6438	P472	Peter Hansen	\N	\N	\N	\N	2016-06-14 17:45:07.55382-07	2016-06-14 17:45:07.553846-07				
6439	P264	Stephen J Harder	\N	\N	\N	\N	2016-06-14 17:45:07.557003-07	2016-06-14 17:45:07.557026-07				
6440	P1763	Chris Harker	\N	\N	\N	\N	2016-06-14 17:45:07.560028-07	2016-06-14 17:45:07.560053-07				
6441	P412	Scott Harman	\N	\N	\N	\N	2016-06-14 17:45:07.562912-07	2016-06-14 17:45:07.562936-07				
6442	P1390	Dan Harmon	\N	\N	\N	\N	2016-06-14 17:45:07.565833-07	2016-06-14 17:45:07.565857-07				
6443	P1422	Edwin Harnden	\N	\N	\N	\N	2016-06-14 17:45:07.570611-07	2016-06-14 17:45:07.570641-07				
6444	P1290	Richard Harpootlian	\N	\N	\N	\N	2016-06-14 17:45:07.573699-07	2016-06-14 17:45:07.573727-07				
6445	P1037	William Harris	\N	\N	\N	\N	2016-06-14 17:45:07.576784-07	2016-06-14 17:45:07.576809-07				
6446	P1109	Rick Harris	\N	\N	\N	\N	2016-06-14 17:45:07.579979-07	2016-06-14 17:45:07.580017-07				
6447	P909	Mabel Harris	\N	\N	\N	\N	2016-06-14 17:45:07.583817-07	2016-06-14 17:45:07.583846-07				
6448	P881	Patrick Harrison	\N	\N	\N	\N	2016-06-14 17:45:07.586961-07	2016-06-14 17:45:07.586987-07				
6449	P210	Byron L Harrison	\N	\N	\N	\N	2016-06-14 17:45:07.589996-07	2016-06-14 17:45:07.590021-07				
6450	P1627	Philip Harvey	\N	\N	\N	\N	2016-06-14 17:45:07.592995-07	2016-06-14 17:45:07.59302-07				
6451	P344	Tinker Hatfield	\N	\N	\N	\N	2016-06-14 17:45:07.595887-07	2016-06-14 17:45:07.595911-07				
6452	P206	Rosaria Haugland	\N	\N	\N	\N	2016-06-14 17:45:07.598839-07	2016-06-14 17:45:07.598863-07				
6453	P1903	Joseph R Hawes	\N	\N	\N	\N	2016-06-14 17:45:07.601851-07	2016-06-14 17:45:07.601874-07				
6454	P854	Ken Hayes	\N	\N	\N	\N	2016-06-14 17:45:07.606638-07	2016-06-14 17:45:07.606668-07				
6455	P655	Kenneth Hayes	\N	\N	\N	\N	2016-06-14 17:45:07.60969-07	2016-06-14 17:45:07.609718-07				
6456	P986	Dick Heard	\N	\N	\N	\N	2016-06-14 17:45:07.613996-07	2016-06-14 17:45:07.614029-07				
6457	P29	Letha Heard	\N	\N	\N	\N	2016-06-14 17:45:07.619551-07	2016-06-14 17:45:07.619581-07				
6458	P912	David Helm	\N	\N	\N	\N	2016-06-14 17:45:07.629779-07	2016-06-14 17:45:07.629805-07				
6459	P1421	Laura Henderson	\N	\N	\N	\N	2016-06-14 17:45:07.632759-07	2016-06-14 17:45:07.632784-07				
6460	P712	Donna Henderson	\N	\N	\N	\N	2016-06-14 17:45:07.635658-07	2016-06-14 17:45:07.635682-07				
6461	P1369	Robert Henigson	\N	\N	\N	\N	2016-06-14 17:45:07.638519-07	2016-06-14 17:45:07.638541-07				
6462	P758	Riley J Hill	\N	\N	\N	\N	2016-06-14 17:45:07.653487-07	2016-06-14 17:45:07.65352-07				
5797	P861	Gina Garnero-Hill	\N	\N	\N	\N	2016-06-14 17:44:49.654504-07	2016-06-14 17:45:07.656389-07		http://www.campaignmoney.com/political/contributions/gina-garnero-hill.asp?cycle=16, https://www.linkedin.com/in/gina-garnero-hill-37505128	Philanthropist	Central Catholic High School
6463	P22027	Albert S. Hoagland	\N	\N	\N	\N	2016-06-14 17:45:07.660397-07	2016-06-14 17:45:07.660422-07				
6464	P22057	Mary E Hockensmith	\N	\N	\N	\N	2016-06-14 17:45:07.663739-07	2016-06-14 17:45:07.663767-07				
6465	P1743	Eric Hoffman	\N	\N	\N	\N	2016-06-14 17:45:07.667547-07	2016-06-14 17:45:07.667578-07				
6466	P1381	Mike Hollern	\N	\N	\N	\N	2016-06-14 17:45:07.68193-07	2016-06-14 17:45:07.681959-07				
6467	P484	Wayne Holm	\N	\N	\N	\N	2016-06-14 17:45:07.684999-07	2016-06-14 17:45:07.685027-07				
6468	P55	Benjamin Holm	\N	\N	\N	\N	2016-06-14 17:45:07.687999-07	2016-06-14 17:45:07.688024-07				
6469	P429	Jack Holt	\N	\N	\N	\N	2016-06-14 17:45:07.694601-07	2016-06-14 17:45:07.694626-07				
6470	B54	Home Builders Association of Metro Portland	\N	\N	\N	\N	2016-06-14 17:45:07.709625-07	2016-06-14 17:45:07.709652-07				
6471	P1952	Robert Hopkins	\N	\N	\N	\N	2016-06-14 17:45:07.716849-07	2016-06-14 17:45:07.716876-07				
6472	P1201	Jack Hopkins	\N	\N	\N	\N	2016-06-14 17:45:07.720149-07	2016-06-14 17:45:07.72018-07				
6473	B20	Horizon Wind Energy	\N	\N	\N	\N	2016-06-14 17:45:07.723576-07	2016-06-14 17:45:07.723606-07				
5979	P1394	Marisa Hormel	\N	\N	\N	\N	2016-06-14 17:44:50.74244-07	2016-06-14 17:45:07.726689-07	Philanthropist and Founder, Yello!	http://www.yellofl.com/people	Philanthropist	She is a proud sponsor of the New York Foundation for the Arts, Chillfest, the Professional Dancers Society, the Fruit Tree Planting Foundation, the Organic Consumers Association and the Organic Farming Research Foundation.
6474	P236	Mitchell Hornecker	\N	\N	\N	\N	2016-06-14 17:45:07.730528-07	2016-06-14 17:45:07.730559-07				
6475	P641	Kenneth Howard	\N	\N	\N	\N	2016-06-14 17:45:07.73801-07	2016-06-14 17:45:07.738038-07				
6476	P1707	David Howitt	\N	\N	\N	\N	2016-06-14 17:45:07.741034-07	2016-06-14 17:45:07.74106-07				
6477	P22058	Christopher Hughes	\N	\N	\N	\N	2016-06-14 17:45:07.747588-07	2016-06-14 17:45:07.747613-07				
6478	P1977	Courtney Hull	\N	\N	\N	\N	2016-06-14 17:45:07.753725-07	2016-06-14 17:45:07.753748-07				
6479	B91	Humane Society of the United States	\N	\N	\N	\N	2016-06-14 17:45:07.756784-07	2016-06-14 17:45:07.756812-07				
6480	P1702	Dave Hunt	\N	\N	\N	\N	2016-06-14 17:45:07.759969-07	2016-06-14 17:45:07.759998-07				
6481	P892	Damian Idiart	\N	\N	\N	\N	2016-06-14 17:45:07.763223-07	2016-06-14 17:45:07.763252-07				
6482	P1206	Thomas Imeson	\N	\N	\N	\N	2016-06-14 17:45:07.770335-07	2016-06-14 17:45:07.77036-07				
6483	P1219	Ellsworth Ingraham	\N	\N	\N	\N	2016-06-14 17:45:07.773373-07	2016-06-14 17:45:07.773398-07				
6484	P775	Jonathan Isaacs	\N	\N	\N	\N	2016-06-14 17:45:07.776285-07	2016-06-14 17:45:07.776309-07				
6485	P1245	Cary Jackson	\N	\N	\N	\N	2016-06-14 17:45:07.78263-07	2016-06-14 17:45:07.782653-07				
6486	P686	Milford (Jake) Jacobson	\N	\N	\N	\N	2016-06-14 17:45:07.788825-07	2016-06-14 17:45:07.788847-07				
6487	P776	Bronson James	\N	\N	\N	\N	2016-06-14 17:45:07.791723-07	2016-06-14 17:45:07.791746-07				
6488	P726	Renee James Cooney	\N	\N	\N	\N	2016-06-14 17:45:07.794571-07	2016-06-14 17:45:07.794596-07				
6489	P1202	Jon V Jaqua	\N	\N	\N	\N	2016-06-14 17:45:07.803104-07	2016-06-14 17:45:07.803132-07				
6490	P110	David Jensen	\N	\N	\N	\N	2016-06-14 17:45:07.80964-07	2016-06-14 17:45:07.809664-07				
6491	P435	Sarah Jensen	\N	\N	\N	\N	2016-06-14 17:45:07.812538-07	2016-06-14 17:45:07.812564-07				
6492	P1745	James John	\N	\N	\N	\N	2016-06-14 17:45:07.819706-07	2016-06-14 17:45:07.819732-07				
6493	P392	Kevin Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.822672-07	2016-06-14 17:45:07.822696-07				
6494	P1910	Betsy Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.825637-07	2016-06-14 17:45:07.825661-07				
6495	P1057	Elizabeth Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.830351-07	2016-06-14 17:45:07.830375-07				
6496	P1729	Lara Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.833675-07	2016-06-14 17:45:07.833705-07				
6497	P1919	Derek Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.836744-07	2016-06-14 17:45:07.836774-07				
5852	P495	Arthur C Johnson	\N	\N	\N	\N	2016-06-14 17:44:50.06736-07	2016-06-14 17:45:07.839607-07	Litigation Attorney (Partner)	http://justicelawyers.com/attorneys-and-staff/arthur-johnson/	Lawyers	Governor's Willamette River Greenway Committee, Chair 1975-1978.  Oregon Land Conservation and Development Commission, 1991-1994.  Oregon Public Officials Compensation Commission, 1984-2000.      Lane County Circuit Court Juvenile Advisory Council, 1966-1969 (Chair 1968).  Lane County Parks Commission, 1965-1966.  Eugene Human Rights Commission, Chair 1969.  University of Oregon, School of Law, Board of Visitors, 1980-1986.  Pacific Rivers Council, Board of Director s, 1993 to present, Board President 1995-1997.  Environmental Defense Fund.  American Alpine Club.  National Audubon Society.  Sierra Club.  Sierra Club Legal Defense Fund.  Friends of the University of Oregon Library.  University of Oregon Development Fund, 1963-1964.  Maude Kerns Art Center, Board Member, Chair 1982. President, Oregon State Bar Assn, and many committees on the Oregon and Lane County Bar Assns
6498	P987	James Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.844863-07	2016-06-14 17:45:07.844889-07				
6499	P707	Robert Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.847959-07	2016-06-14 17:45:07.847989-07				
6500	P1734	John Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.85135-07	2016-06-14 17:45:07.85138-07				
6501	P1305	Steven Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.854399-07	2016-06-14 17:45:07.854425-07				
6502	P946	Forrest N Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.857807-07	2016-06-14 17:45:07.857832-07				
6503	P1308	Dwayne Johnson	\N	\N	\N	\N	2016-06-14 17:45:07.86092-07	2016-06-14 17:45:07.860945-07				
6504	P1643	Andy Johnson-Laird	\N	\N	\N	\N	2016-06-14 17:45:07.869341-07	2016-06-14 17:45:07.86937-07				
6505	P924	Timothy Jones	\N	\N	\N	\N	2016-06-14 17:45:07.876497-07	2016-06-14 17:45:07.876527-07				
6506	P751	Marie D Jones	\N	\N	\N	\N	2016-06-14 17:45:07.880026-07	2016-06-14 17:45:07.880053-07				
6507	P921	Marie Jones	\N	\N	\N	\N	2016-06-14 17:45:07.892107-07	2016-06-14 17:45:07.892133-07				
6508	P1821	Kathleen W Jones	\N	\N	\N	\N	2016-06-14 17:45:07.895103-07	2016-06-14 17:45:07.895128-07				
6509	P1625	Kevin Jones	\N	\N	\N	\N	2016-06-14 17:45:07.898282-07	2016-06-14 17:45:07.898307-07				
6510	P22059	Randall  D Jones	\N	\N	\N	\N	2016-06-14 17:45:07.901395-07	2016-06-14 17:45:07.90142-07				
6511	P478	Kathy Jones-McCann	\N	\N	\N	\N	2016-06-14 17:45:07.90436-07	2016-06-14 17:45:07.904385-07				
6512	P740	Kathleen W Jones-McCann	\N	\N	\N	\N	2016-06-14 17:45:07.911055-07	2016-06-14 17:45:07.911088-07				
6513	P1556	Dan Jordan	\N	\N	\N	\N	2016-06-14 17:45:07.914476-07	2016-06-14 17:45:07.914511-07				
6514	P1263	Jack Joyce	\N	\N	\N	\N	2016-06-14 17:45:07.91843-07	2016-06-14 17:45:07.918463-07				
6515	P754	James Justice	\N	\N	\N	\N	2016-06-14 17:45:07.921576-07	2016-06-14 17:45:07.921612-07				
6516	P220	Amed Kahn	\N	\N	\N	\N	2016-06-14 17:45:07.924778-07	2016-06-14 17:45:07.924804-07				
5937	P1653	Mary Kamppi	\N	\N	\N	\N	2016-06-14 17:44:50.585418-07	2016-06-14 17:45:07.927824-07	(Retired? Homemaker? Deceased husband was a schoolteacher) President, Citywatch	https://sites.google.com/site/salemcitywatch/SalemCityWatch/board	Education	President of Citywatch (Salem civic organization),   Watershed Chair  Faye Wright Neighborhood Association
6517	P22060	Debra Kantola	\N	\N	\N	\N	2016-06-14 17:45:07.931604-07	2016-06-14 17:45:07.93163-07				
6518	P22038	Gordon Keane	\N	\N	\N	\N	2016-06-14 17:45:07.934549-07	2016-06-14 17:45:07.934572-07				
6519	P1322	Robert Keating	\N	\N	\N	\N	2016-06-14 17:45:07.937506-07	2016-06-14 17:45:07.937531-07				
6520	P1080	Timothy Keenen	\N	\N	\N	\N	2016-06-14 17:45:07.940424-07	2016-06-14 17:45:07.940447-07				
6521	P1799	Ted E Keizer	\N	\N	\N	\N	2016-06-14 17:45:07.943709-07	2016-06-14 17:45:07.943734-07				
6522	P601	Teddy Keizer	\N	\N	\N	\N	2016-06-14 17:45:07.949407-07	2016-06-14 17:45:07.94944-07				
6523	P5	Wendie Kellington	\N	\N	\N	\N	2016-06-14 17:45:07.95254-07	2016-06-14 17:45:07.952565-07				
6524	B87	Kellogg Company	\N	\N	\N	\N	2016-06-14 17:45:07.95565-07	2016-06-14 17:45:07.955674-07				
6525	P388	Gordon L Kelly	\N	\N	\N	\N	2016-06-14 17:45:07.973471-07	2016-06-14 17:45:07.973496-07				
6526	P135	Thomas Kelly	\N	\N	\N	\N	2016-06-14 17:45:07.976495-07	2016-06-14 17:45:07.976522-07				
6527	P871	Michael Kendrick	\N	\N	\N	\N	2016-06-14 17:45:07.980215-07	2016-06-14 17:45:07.980243-07				
6528	P22061	Bobby Kennedy	\N	\N	\N	\N	2016-06-14 17:45:07.983345-07	2016-06-14 17:45:07.983371-07				
6529	P1898	Bradley Kent	\N	\N	\N	\N	2016-06-14 17:45:07.986568-07	2016-06-14 17:45:07.986597-07				
6530	P1798	Alissa Keny-Guyer	\N	\N	\N	\N	2016-06-14 17:45:07.989786-07	2016-06-14 17:45:07.989814-07				
6531	P341	Brent Kenyon	\N	\N	\N	\N	2016-06-14 17:45:07.992858-07	2016-06-14 17:45:07.992882-07				
6532	P15	Keith Ketterling	\N	\N	\N	\N	2016-06-14 17:45:08.001609-07	2016-06-14 17:45:08.001641-07				
6533	P1816	Nitin Khanna	\N	\N	\N	\N	2016-06-14 17:45:08.004608-07	2016-06-14 17:45:08.004633-07				
5899	P674	Patrick Kilkenny	\N	\N	\N	\N	2016-06-14 17:44:50.453084-07	2016-06-14 17:45:08.007467-07	Former CEO of Arrowhead General Insurance Agency, Founder at Lucky Duck Foundation	luckyduckfoundation.org	Banking and Finance	Gonzaga University (Major Benefactor), University of Oregon Foundation (Board of Trustees), University of Oregon (Athletic Department Advisory Board), UC San Diego (Athletic Advisory Board Member), San Diego State University (member of Athletic Director's Cabinet), San Diego International Sports Council (Board of Directors),
6534	P983	Rod Killen	\N	\N	\N	\N	2016-06-14 17:45:08.012822-07	2016-06-14 17:45:08.012847-07				
6535	P1465	Heather Killough	\N	\N	\N	\N	2016-06-14 17:45:08.015782-07	2016-06-14 17:45:08.015806-07				
6536	P1138	Shane Kim	\N	\N	\N	\N	2016-06-14 17:45:08.018767-07	2016-06-14 17:45:08.018793-07				
6537	P333	Clay Kirk	\N	\N	\N	\N	2016-06-14 17:45:08.029517-07	2016-06-14 17:45:08.029545-07				
6538	P1860	Margaret Kirkpatrick	\N	\N	\N	\N	2016-06-14 17:45:08.033115-07	2016-06-14 17:45:08.033156-07				
6539	P1010	Robert Klein	\N	\N	\N	\N	2016-06-14 17:45:08.036264-07	2016-06-14 17:45:08.036291-07				
6540	P898	Michael Kleinman	\N	\N	\N	\N	2016-06-14 17:45:08.039182-07	2016-06-14 17:45:08.039204-07				
6541	P463	Penny Knight	\N	\N	\N	\N	2016-06-14 17:45:08.049474-07	2016-06-14 17:45:08.0495-07				
6542	P1071	Scott Kocher	\N	\N	\N	\N	2016-06-14 17:45:08.052601-07	2016-06-14 17:45:08.052626-07				
6543	P949	Molly Kohnstamm	\N	\N	\N	\N	2016-06-14 17:45:08.059443-07	2016-06-14 17:45:08.059473-07				
6544	P1665	Kevin Kohnstamm	\N	\N	\N	\N	2016-06-14 17:45:08.062585-07	2016-06-14 17:45:08.062612-07				
6545	P1705	Amy Kohnstamm	\N	\N	\N	\N	2016-06-14 17:45:08.06585-07	2016-06-14 17:45:08.065882-07				
6546	P643	William Korach	\N	\N	\N	\N	2016-06-14 17:45:08.069785-07	2016-06-14 17:45:08.069813-07				
6547	B15	Kraft Foods	\N	\N	\N	\N	2016-06-14 17:45:08.077505-07	2016-06-14 17:45:08.077537-07				
6548	P268	Mark Kralj	\N	\N	\N	\N	2016-06-14 17:45:08.080702-07	2016-06-14 17:45:08.080726-07				
6549	P1785	Hilary K Krane	\N	\N	\N	\N	2016-06-14 17:45:08.083667-07	2016-06-14 17:45:08.083691-07				
6550	B3	Kroger	\N	\N	\N	\N	2016-06-14 17:45:08.086862-07	2016-06-14 17:45:08.086889-07				
6551	P616	John Kroger	\N	\N	\N	\N	2016-06-14 17:45:08.090093-07	2016-06-14 17:45:08.090122-07				
6552	P137	Mary Ann Kunkel	\N	\N	\N	\N	2016-06-14 17:45:08.09331-07	2016-06-14 17:45:08.093339-07				
6553	P399	Yoshio Kurosaki	\N	\N	\N	\N	2016-06-14 17:45:08.096434-07	2016-06-14 17:45:08.096464-07				
6554	B73	Land OLakes	\N	\N	\N	\N	2016-06-14 17:45:08.108754-07	2016-06-14 17:45:08.108779-07				
6555	P1856	Thomas Landye	\N	\N	\N	\N	2016-06-14 17:45:08.112052-07	2016-06-14 17:45:08.112077-07				
6556	P20	Margaret C Lanfri	\N	\N	\N	\N	2016-06-14 17:45:08.119691-07	2016-06-14 17:45:08.119721-07				
6557	P22062	Edward Langerveld	\N	\N	\N	\N	2016-06-14 17:45:08.122826-07	2016-06-14 17:45:08.122852-07				
6558	P416	Leland Larson	\N	\N	\N	\N	2016-06-14 17:45:08.129298-07	2016-06-14 17:45:08.129323-07				
6559	P829	Lealand Larson	\N	\N	\N	\N	2016-06-14 17:45:08.133992-07	2016-06-14 17:45:08.134017-07				
6560	P1124	Sue Larson	\N	\N	\N	\N	2016-06-14 17:45:08.137545-07	2016-06-14 17:45:08.137577-07				
6561	P22021	June Lattin	\N	\N	\N	\N	2016-06-14 17:45:08.1408-07	2016-06-14 17:45:08.140829-07				
6562	P1013	Georges St. Laurent Jr.	\N	\N	\N	\N	2016-06-14 17:45:08.143849-07	2016-06-14 17:45:08.143875-07				
6563	P1480	Kellie M Leonard	\N	\N	\N	\N	2016-06-14 17:45:08.179658-07	2016-06-14 17:45:08.179684-07				
6564	P847	Carol Lewis	\N	\N	\N	\N	2016-06-14 17:45:08.224076-07	2016-06-14 17:45:08.224103-07				
6565	P280	Scott Lewis	\N	\N	\N	\N	2016-06-14 17:45:08.227131-07	2016-06-14 17:45:08.227156-07				
6566	P826	Carolynn Loacker	\N	\N	\N	\N	2016-06-14 17:45:08.259687-07	2016-06-14 17:45:08.25971-07				
6567	P734	Arlene Loble	\N	\N	\N	\N	2016-06-14 17:45:08.262607-07	2016-06-14 17:45:08.262631-07				
6568	P48	Rosemary Long	\N	\N	\N	\N	2016-06-14 17:45:08.270041-07	2016-06-14 17:45:08.270071-07				
6569	P930	John Loosley	\N	\N	\N	\N	2016-06-14 17:45:08.273608-07	2016-06-14 17:45:08.273633-07				
6570	P1101	Stewart Loving-Gibbard	\N	\N	\N	\N	2016-06-14 17:45:08.280633-07	2016-06-14 17:45:08.280658-07				
6571	P608	Stephen Luczo	\N	\N	\N	\N	2016-06-14 17:45:08.283558-07	2016-06-14 17:45:08.283608-07				
6572	P1482	Elisabeth Lyon	\N	\N	\N	\N	2016-06-14 17:45:08.290144-07	2016-06-14 17:45:08.290172-07				
6573	P496	Dick Lytle	\N	\N	\N	\N	2016-06-14 17:45:08.293164-07	2016-06-14 17:45:08.293189-07				
6574	P1971	Albert Machemehl	\N	\N	\N	\N	2016-06-14 17:45:08.296069-07	2016-06-14 17:45:08.296092-07				
6575	P1119	Carter MacNichol	\N	\N	\N	\N	2016-06-14 17:45:08.299197-07	2016-06-14 17:45:08.299228-07				
6576	P1075	D. Carter MacNichol	\N	\N	\N	\N	2016-06-14 17:45:08.30277-07	2016-06-14 17:45:08.302801-07				
6577	P100	Gregory Macpherson	\N	\N	\N	\N	2016-06-14 17:45:08.305862-07	2016-06-14 17:45:08.305886-07				
6578	P1210	Marjorie MacQueen	\N	\N	\N	\N	2016-06-14 17:45:08.308878-07	2016-06-14 17:45:08.308902-07				
6579	P1858	Nichole Maher	\N	\N	\N	\N	2016-06-14 17:45:08.315504-07	2016-06-14 17:45:08.315527-07				
6580	P917	Jonathan Major	\N	\N	\N	\N	2016-06-14 17:45:08.318497-07	2016-06-14 17:45:08.31852-07				
6581	P1087	Christoper Malott	\N	\N	\N	\N	2016-06-14 17:45:08.343064-07	2016-06-14 17:45:08.343091-07				
6582	P1681	Bradley Malsin	\N	\N	\N	\N	2016-06-14 17:45:08.34602-07	2016-06-14 17:45:08.346045-07				
6583	P1958	Brad Malsin	\N	\N	\N	\N	2016-06-14 17:45:08.349244-07	2016-06-14 17:45:08.34927-07				
6584	P1224	Steve March	\N	\N	\N	\N	2016-06-14 17:45:08.355819-07	2016-06-14 17:45:08.355844-07				
6585	P834	Kyle N Markley	\N	\N	\N	\N	2016-06-14 17:45:08.369892-07	2016-06-14 17:45:08.369915-07				
6586	P944	David Markowitz	\N	\N	\N	\N	2016-06-14 17:45:08.372967-07	2016-06-14 17:45:08.372992-07				
6587	P1159	Steve Marsden	\N	\N	\N	\N	2016-06-14 17:45:08.376007-07	2016-06-14 17:45:08.376031-07				
6588	P80	Chrys Martin	\N	\N	\N	\N	2016-06-14 17:45:08.383155-07	2016-06-14 17:45:08.383187-07				
6589	P1586	Kelly Martin	\N	\N	\N	\N	2016-06-14 17:45:08.386501-07	2016-06-14 17:45:08.386532-07				
6590	P1169	Jayme Martin	\N	\N	\N	\N	2016-06-14 17:45:08.390206-07	2016-06-14 17:45:08.390232-07				
6591	P576	Jerry A Mason	\N	\N	\N	\N	2016-06-14 17:45:08.399037-07	2016-06-14 17:45:08.399067-07				
6592	P668	Harris Matarazzo	\N	\N	\N	\N	2016-06-14 17:45:08.402354-07	2016-06-14 17:45:08.402384-07				
6593	P306	Ralph Matt	\N	\N	\N	\N	2016-06-14 17:45:08.405451-07	2016-06-14 17:45:08.405477-07				
6594	P777	Brian Matza	\N	\N	\N	\N	2016-06-14 17:45:08.408658-07	2016-06-14 17:45:08.408685-07				
6595	P498	Travis Maurer	\N	\N	\N	\N	2016-06-14 17:45:08.41182-07	2016-06-14 17:45:08.411846-07				
6596	P938	Richard Mayo	\N	\N	\N	\N	2016-06-14 17:45:08.414961-07	2016-06-14 17:45:08.414986-07				
6597	P1238	Joseph Mazzara	\N	\N	\N	\N	2016-06-14 17:45:08.418166-07	2016-06-14 17:45:08.418196-07				
6598	P661	Joe Mazzara	\N	\N	\N	\N	2016-06-14 17:45:08.421443-07	2016-06-14 17:45:08.421467-07				
6599	P628	Doug Mccaslin	\N	\N	\N	\N	2016-06-14 17:45:08.430355-07	2016-06-14 17:45:08.430388-07				
6600	P415	Steven  P McCoid	\N	\N	\N	\N	2016-06-14 17:45:08.435354-07	2016-06-14 17:45:08.435388-07				
6601	P22010	Win McCormick	\N	\N	\N	\N	2016-06-14 17:45:08.438859-07	2016-06-14 17:45:08.438889-07				
6602	P1043	Gail McCormick	\N	\N	\N	\N	2016-06-14 17:45:08.442545-07	2016-06-14 17:45:08.442573-07				
6603	P1152	Bill McCormick	\N	\N	\N	\N	2016-06-14 17:45:08.445684-07	2016-06-14 17:45:08.445708-07				
6146	P1029	Michael McCulloch	\N	\N	\N	\N	2016-06-14 17:44:51.502645-07	2016-06-14 17:45:08.44871-07	Architect/urban designer 	http://www.pdxplore.org/abstracts/mike-mcculloch/	Construction	Stuart Emmons for Portland, Friends of Sarah for Portland, Novick for Portland, Restore Our Natural Areas, John Kroger for Attorney General, Charlie Hales for Mayor 
6604	P551	James McDermott	\N	\N	\N	\N	2016-06-14 17:45:08.452706-07	2016-06-14 17:45:08.452737-07				
6605	P1484	David McDonald	\N	\N	\N	\N	2016-06-14 17:45:08.455877-07	2016-06-14 17:45:08.455903-07				
6606	P1968	Sandra McDonough	\N	\N	\N	\N	2016-06-14 17:45:08.459064-07	2016-06-14 17:45:08.45909-07				
6607	P1507	Mark McDougal	\N	\N	\N	\N	2016-06-14 17:45:08.462068-07	2016-06-14 17:45:08.462092-07				
6608	P31	Duane McDougall	\N	\N	\N	\N	2016-06-14 17:45:08.465072-07	2016-06-14 17:45:08.465098-07				
6609	P1777	Ashley McFerron	\N	\N	\N	\N	2016-06-14 17:45:08.468061-07	2016-06-14 17:45:08.468084-07				
6610	P1008	Martha H McGinnis	\N	\N	\N	\N	2016-06-14 17:45:08.475545-07	2016-06-14 17:45:08.475575-07				
6611	P1655	Bernard J McGinnis	\N	\N	\N	\N	2016-06-14 17:45:08.478768-07	2016-06-14 17:45:08.478796-07				
6612	P727	Timothy McGinnis	\N	\N	\N	\N	2016-06-14 17:45:08.48189-07	2016-06-14 17:45:08.481917-07				
6613	P1277	John McGrory Jr.	\N	\N	\N	\N	2016-06-14 17:45:08.485083-07	2016-06-14 17:45:08.485113-07				
6614	P376	Malcolm McIver	\N	\N	\N	\N	2016-06-14 17:45:08.488543-07	2016-06-14 17:45:08.488573-07				
6615	P1190	Elizabeth McKanna	\N	\N	\N	\N	2016-06-14 17:45:08.491838-07	2016-06-14 17:45:08.491868-07				
6616	P485	Megan L. McKinnon	\N	\N	\N	\N	2016-06-14 17:45:08.494931-07	2016-06-14 17:45:08.49496-07				
6617	P1880	Laura Meier	\N	\N	\N	\N	2016-06-14 17:45:08.50774-07	2016-06-14 17:45:08.507766-07				
6618	P305	Sharon Meieran	\N	\N	\N	\N	2016-06-14 17:45:08.510875-07	2016-06-14 17:45:08.510901-07				
6619	P13	Shawn Menashe	\N	\N	\N	\N	2016-06-14 17:45:08.523528-07	2016-06-14 17:45:08.523562-07				
6620	B18	Mercola.Com Health Resources LLC	\N	\N	\N	\N	2016-06-14 17:45:08.526992-07	2016-06-14 17:45:08.530252-07				
6621	P480	W George Meredith	\N	\N	\N	\N	2016-06-14 17:45:08.550289-07	2016-06-14 17:45:08.550323-07				
6622	P527	Eric Meslow	\N	\N	\N	\N	2016-06-14 17:45:08.560481-07	2016-06-14 17:45:08.560515-07				
6623	P1492	Samuel Metz	\N	\N	\N	\N	2016-06-14 17:45:08.564355-07	2016-06-14 17:45:08.564387-07				
6624	P1757	James Meyer	\N	\N	\N	\N	2016-06-14 17:45:08.568877-07	2016-06-14 17:45:08.56893-07				
6625	P74	David Mihm	\N	\N	\N	\N	2016-06-14 17:45:08.890684-07	2016-06-14 17:45:08.890725-07				
6626	P979	Brent Miller	\N	\N	\N	\N	2016-06-14 17:45:08.915843-07	2016-06-14 17:45:08.915905-07				
6627	P900	Ann Miller	\N	\N	\N	\N	2016-06-14 17:45:08.919034-07	2016-06-14 17:45:08.919058-07				
6628	P22044	Mark Miller	\N	\N	\N	\N	2016-06-14 17:45:08.922614-07	2016-06-14 17:45:08.922645-07				
6629	P177	James David Mills	\N	\N	\N	\N	2016-06-14 17:45:08.9266-07	2016-06-14 17:45:08.92663-07				
6630	B70	Mondelez Global, LLC	\N	\N	\N	\N	2016-06-14 17:45:08.929864-07	2016-06-14 17:45:08.92989-07				
6631	P113	Chris Mongrain	\N	\N	\N	\N	2016-06-14 17:45:08.933012-07	2016-06-14 17:45:08.933037-07				
6632	P815	Robin Moody	\N	\N	\N	\N	2016-06-14 17:45:08.941159-07	2016-06-14 17:45:08.941186-07				
6633	P583	Christopher Moore	\N	\N	\N	\N	2016-06-14 17:45:08.94611-07	2016-06-14 17:45:08.946143-07				
6634	P1772	Scott Moore	\N	\N	\N	\N	2016-06-14 17:45:08.953056-07	2016-06-14 17:45:08.95308-07				
6635	P158	Michael Moore	\N	\N	\N	\N	2016-06-14 17:45:08.956453-07	2016-06-14 17:45:08.956476-07				
6636	P1995	Gary D Moore	\N	\N	\N	\N	2016-06-14 17:45:08.959741-07	2016-06-14 17:45:08.95977-07				
6637	P277	Bill Moore	\N	\N	\N	\N	2016-06-14 17:45:08.963315-07	2016-06-14 17:45:08.963345-07				
6638	P327	Lloyd Moore	\N	\N	\N	\N	2016-06-14 17:45:08.966572-07	2016-06-14 17:45:08.966599-07				
6639	P1789	Michael Morasch	\N	\N	\N	\N	2016-06-14 17:45:08.969941-07	2016-06-14 17:45:08.969973-07				
6640	P22063	Alberto Moreno	\N	\N	\N	\N	2016-06-14 17:45:08.9733-07	2016-06-14 17:45:08.973328-07				
6641	P615	Edward Morey	\N	\N	\N	\N	2016-06-14 17:45:08.976488-07	2016-06-14 17:45:08.976513-07				
6642	P843	Clark Morgan	\N	\N	\N	\N	2016-06-14 17:45:08.979376-07	2016-06-14 17:45:08.979401-07				
6643	P667	Wayman L Morgan	\N	\N	\N	\N	2016-06-14 17:45:08.994026-07	2016-06-14 17:45:08.994049-07				
6644	P1256	Jay Morgensen	\N	\N	\N	\N	2016-06-14 17:45:08.996984-07	2016-06-14 17:45:08.99701-07				
6645	P193	Don Morissette	\N	\N	\N	\N	2016-06-14 17:45:09.00032-07	2016-06-14 17:45:09.000348-07				
6646	P543	Martha Moyer	\N	\N	\N	\N	2016-06-14 17:45:09.013467-07	2016-06-14 17:45:09.013493-07				
6647	P538	John Murphy	\N	\N	\N	\N	2016-06-14 17:45:09.021325-07	2016-06-14 17:45:09.021357-07				
6648	P355	Duncan Murray	\N	\N	\N	\N	2016-06-14 17:45:09.024488-07	2016-06-14 17:45:09.024514-07				
6649	P1003	Kelly Muskat	\N	\N	\N	\N	2016-06-14 17:45:09.027631-07	2016-06-14 17:45:09.027655-07				
6650	P651	Jeffrey Mutnick	\N	\N	\N	\N	2016-06-14 17:45:09.03073-07	2016-06-14 17:45:09.030752-07				
6651	P1987	Barbara Myers	\N	\N	\N	\N	2016-06-14 17:45:09.033767-07	2016-06-14 17:45:09.033791-07				
6652	P1767	Robert Nagel	\N	\N	\N	\N	2016-06-14 17:45:09.036969-07	2016-06-14 17:45:09.036998-07				
6653	P22064	Tim Nagel	\N	\N	\N	\N	2016-06-14 17:45:09.040319-07	2016-06-14 17:45:09.040348-07				
6654	P372	Jeff Napoli	\N	\N	\N	\N	2016-06-14 17:45:09.04527-07	2016-06-14 17:45:09.045295-07				
6655	P687	Ralph Nauman	\N	\N	\N	\N	2016-06-14 17:45:09.048304-07	2016-06-14 17:45:09.048327-07				
6656	P772	Scott Nehring	\N	\N	\N	\N	2016-06-14 17:45:09.057323-07	2016-06-14 17:45:09.057356-07				
6657	P1728	James Nelson	\N	\N	\N	\N	2016-06-14 17:45:09.060578-07	2016-06-14 17:45:09.060602-07				
6658	P1157	Philip Nelson	\N	\N	\N	\N	2016-06-14 17:45:09.072198-07	2016-06-14 17:45:09.072224-07				
6659	P444	David Nemarnik	\N	\N	\N	\N	2016-06-14 17:45:09.075524-07	2016-06-14 17:45:09.075554-07				
6660	P1083	Robert Neuberger	\N	\N	\N	\N	2016-06-14 17:45:09.078682-07	2016-06-14 17:45:09.078709-07				
6661	P1236	Jessica Neuwirth	\N	\N	\N	\N	2016-06-14 17:45:09.081756-07	2016-06-14 17:45:09.08178-07				
6662	P1950	Terry Newsom	\N	\N	\N	\N	2016-06-14 17:45:09.084791-07	2016-06-14 17:45:09.084818-07				
6663	P1462	Cynthia Newton	\N	\N	\N	\N	2016-06-14 17:45:09.088295-07	2016-06-14 17:45:09.088325-07				
6664	P44	William Nicholson	\N	\N	\N	\N	2016-06-14 17:45:09.100102-07	2016-06-14 17:45:09.100135-07				
6665	P320	Maia Nickel	\N	\N	\N	\N	2016-06-14 17:45:09.103335-07	2016-06-14 17:45:09.103358-07				
6666	P22028	Peter Nickerson	\N	\N	\N	\N	2016-06-14 17:45:09.10752-07	2016-06-14 17:45:09.107552-07				
6667	B19	Nike Inc. and Affiliates	\N	\N	\N	\N	2016-06-14 17:45:09.115055-07	2016-06-14 17:45:09.115086-07				
6668	P919	Marko Nikolovski	\N	\N	\N	\N	2016-06-14 17:45:09.119498-07	2016-06-14 17:45:09.119563-07				
6669	B4	Northwest Grocery Association	\N	\N	\N	\N	2016-06-14 17:45:09.130847-07	2016-06-14 17:45:09.130873-07				
6670	B41	NW Natural	\N	\N	\N	\N	2016-06-14 17:45:09.13396-07	2016-06-14 17:45:09.133984-07				
6671	P61	David A Nygaard	\N	\N	\N	\N	2016-06-14 17:45:09.137061-07	2016-06-14 17:45:09.137087-07				
6672	P657	Chris Olson	\N	\N	\N	\N	2016-06-14 17:45:09.147429-07	2016-06-14 17:45:09.147457-07				
6673	B93	Oregon Entertainment Center	\N	\N	\N	\N	2016-06-14 17:45:09.154705-07	2016-06-14 17:45:09.154733-07				
6674	B81	Oregon Healthcare Enterprises, Inc	\N	\N	\N	\N	2016-06-14 17:45:09.157759-07	2016-06-14 17:45:09.157784-07				
6675	P66	John Oswald	\N	\N	\N	\N	2016-06-14 17:45:09.168506-07	2016-06-14 17:45:09.168537-07				
6676	P1794	Anita Pace	\N	\N	\N	\N	2016-06-14 17:45:09.176538-07	2016-06-14 17:45:09.176563-07				
6677	P1187	Stephen Packer	\N	\N	\N	\N	2016-06-14 17:45:09.17972-07	2016-06-14 17:45:09.179745-07				
6678	P1118	Steve Packer	\N	\N	\N	\N	2016-06-14 17:45:09.182881-07	2016-06-14 17:45:09.182905-07				
6679	P605	Bob Packwood	\N	\N	\N	\N	2016-06-14 17:45:09.190274-07	2016-06-14 17:45:09.190305-07				
6680	P805	Mary Susan Pape	\N	\N	\N	\N	2016-06-14 17:45:09.197247-07	2016-06-14 17:45:09.197271-07				
6681	P1533	Mary Pape	\N	\N	\N	\N	2016-06-14 17:45:09.200268-07	2016-06-14 17:45:09.200293-07				
6682	P1822	Susie Pape	\N	\N	\N	\N	2016-06-14 17:45:09.203896-07	2016-06-14 17:45:09.203931-07				
6683	P1158	David Park	\N	\N	\N	\N	2016-06-14 17:45:09.207402-07	2016-06-14 17:45:09.207431-07				
6684	P1514	Richard Parker	\N	\N	\N	\N	2016-06-14 17:45:09.215575-07	2016-06-14 17:45:09.215604-07				
6685	P208	Timothy Parks	\N	\N	\N	\N	2016-06-14 17:45:09.230282-07	2016-06-14 17:45:09.230311-07				
6686	P434	Scott Parrish	\N	\N	\N	\N	2016-06-14 17:45:09.233454-07	2016-06-14 17:45:09.233481-07				
6687	P1610	Linda Paschke	\N	\N	\N	\N	2016-06-14 17:45:09.241386-07	2016-06-14 17:45:09.241416-07				
6688	P22065	Betsy Pattullo	\N	\N	\N	\N	2016-06-14 17:45:09.244465-07	2016-06-14 17:45:09.244491-07				
6689	P1679	David Paul	\N	\N	\N	\N	2016-06-14 17:45:09.247794-07	2016-06-14 17:45:09.247819-07				
6690	P766	Merritt Paulson	\N	\N	\N	\N	2016-06-14 17:45:09.26192-07	2016-06-14 17:45:09.261948-07				
6691	P46	Norma Paulus	\N	\N	\N	\N	2016-06-14 17:45:09.265217-07	2016-06-14 17:45:09.265246-07				
6692	P22045	Alex Payne	\N	\N	\N	\N	2016-06-14 17:45:09.268417-07	2016-06-14 17:45:09.268446-07				
6693	P765	Thomas M Peddie	\N	\N	\N	\N	2016-06-14 17:45:09.272178-07	2016-06-14 17:45:09.27223-07				
6694	P1962	Greg Peden	\N	\N	\N	\N	2016-06-14 17:45:09.275357-07	2016-06-14 17:45:09.275381-07				
6695	P820	Dale Pellow	\N	\N	\N	\N	2016-06-14 17:45:09.278426-07	2016-06-14 17:45:09.27845-07				
6696	P105	Luann Pelton	\N	\N	\N	\N	2016-06-14 17:45:09.281484-07	2016-06-14 17:45:09.281508-07				
6697	P797	Greg Penner	\N	\N	\N	\N	2016-06-14 17:45:09.284533-07	2016-06-14 17:45:09.284558-07				
6698	B49	Pepsi Bottling Group	\N	\N	\N	\N	2016-06-14 17:45:09.287544-07	2016-06-14 17:45:09.287567-07				
6699	P855	Joseph Perko	\N	\N	\N	\N	2016-06-14 17:45:09.290702-07	2016-06-14 17:45:09.290726-07				
6700	P737	George Pernsteiner	\N	\N	\N	\N	2016-06-14 17:45:09.293729-07	2016-06-14 17:45:09.293753-07				
6701	P1285	Cheryl Perrin	\N	\N	\N	\N	2016-06-14 17:45:09.296698-07	2016-06-14 17:45:09.296722-07				
6702	P448	Hugh D Perrine	\N	\N	\N	\N	2016-06-14 17:45:09.299663-07	2016-06-14 17:45:09.29969-07				
6703	P1774	Nicholas Perrins	\N	\N	\N	\N	2016-06-14 17:45:09.304564-07	2016-06-14 17:45:09.304595-07				
6704	P1090	Linda Peters	\N	\N	\N	\N	2016-06-14 17:45:09.307561-07	2016-06-14 17:45:09.307587-07				
6705	P1235	Jesse Peters	\N	\N	\N	\N	2016-06-14 17:45:09.310524-07	2016-06-14 17:45:09.310547-07				
6706	P1368	Todd Peterson	\N	\N	\N	\N	2016-06-14 17:45:09.313521-07	2016-06-14 17:45:09.313545-07				
6707	P4	Daniel Petrusich	\N	\N	\N	\N	2016-06-14 17:45:09.316443-07	2016-06-14 17:45:09.316466-07				
6708	P1110	Stephen Petruzelli	\N	\N	\N	\N	2016-06-14 17:45:09.319484-07	2016-06-14 17:45:09.319516-07				
6709	P1473	Steven Petruzelli	\N	\N	\N	\N	2016-06-14 17:45:09.322923-07	2016-06-14 17:45:09.322952-07				
6710	P787	Marcia Ann Petty	\N	\N	\N	\N	2016-06-14 17:45:09.330815-07	2016-06-14 17:45:09.33084-07				
6711	P1656	Tim Phillips	\N	\N	\N	\N	2016-06-14 17:45:09.333759-07	2016-06-14 17:45:09.333782-07				
6712	P1504	Steve Phillips	\N	\N	\N	\N	2016-06-14 17:45:09.336934-07	2016-06-14 17:45:09.336958-07				
6713	P22066	Timothy C Phillips	\N	\N	\N	\N	2016-06-14 17:45:09.340334-07	2016-06-14 17:45:09.340365-07				
6714	P1427	lisa phipps	\N	\N	\N	\N	2016-06-14 17:45:09.343644-07	2016-06-14 17:45:09.343671-07				
6715	P863	Randolph Pickett	\N	\N	\N	\N	2016-06-14 17:45:09.346771-07	2016-06-14 17:45:09.346796-07				
6716	P118	Jeff Pickhardt	\N	\N	\N	\N	2016-06-14 17:45:09.349812-07	2016-06-14 17:45:09.349836-07				
6717	P1188	Linda Pitchford	\N	\N	\N	\N	2016-06-14 17:45:09.352775-07	2016-06-14 17:45:09.352801-07				
6718	P1162	Ethan Pittleman	\N	\N	\N	\N	2016-06-14 17:45:09.355984-07	2016-06-14 17:45:09.356015-07				
6719	P239	Stephen Piucci	\N	\N	\N	\N	2016-06-14 17:45:09.359369-07	2016-06-14 17:45:09.359399-07				
6720	P1070	Sandra Polishuk	\N	\N	\N	\N	2016-06-14 17:45:09.362491-07	2016-06-14 17:45:09.362515-07				
6721	P729	Harold Pollin	\N	\N	\N	\N	2016-06-14 17:45:09.3655-07	2016-06-14 17:45:09.365525-07				
6722	P9	Josephine Pope	\N	\N	\N	\N	2016-06-14 17:45:09.368567-07	2016-06-14 17:45:09.368599-07				
6723	B10	Portland Entertainment Group	\N	\N	\N	\N	2016-06-14 17:45:09.371936-07	2016-06-14 17:45:09.371965-07				
6724	P1730	Alice Powell	\N	\N	\N	\N	2016-06-14 17:45:09.375029-07	2016-06-14 17:45:09.375058-07				
6725	P891	Michael Powell	\N	\N	\N	\N	2016-06-14 17:45:09.378443-07	2016-06-14 17:45:09.378472-07				
6726	P227	Jerry Powell	\N	\N	\N	\N	2016-06-14 17:45:09.381879-07	2016-06-14 17:45:09.381909-07				
6727	P94	Donald Powell	\N	\N	\N	\N	2016-06-14 17:45:09.384941-07	2016-06-14 17:45:09.384966-07				
6728	P329	Scott Pratt	\N	\N	\N	\N	2016-06-14 17:45:09.388542-07	2016-06-14 17:45:09.388598-07				
6729	P207	Steven D Pratt	\N	\N	\N	\N	2016-06-14 17:45:09.391879-07	2016-06-14 17:45:09.391905-07				
6730	B72	Presence Marketing, Inc.	\N	\N	\N	\N	2016-06-14 17:45:09.396679-07	2016-06-14 17:45:09.396705-07				
6731	P1002	Peter Preston	\N	\N	\N	\N	2016-06-14 17:45:09.399872-07	2016-06-14 17:45:09.399897-07				
6732	P22076	Seth Prickett	\N	\N	\N	\N	2016-06-14 17:45:09.402803-07	2016-06-14 17:45:09.402827-07				
6733	P1645	Craig H Pubols	\N	\N	\N	\N	2016-06-14 17:45:09.405887-07	2016-06-14 17:45:09.405911-07				
6734	P1133	Roy Pulvers	\N	\N	\N	\N	2016-06-14 17:45:09.40892-07	2016-06-14 17:45:09.408944-07				
6735	P1967	Azam Qayum	\N	\N	\N	\N	2016-06-14 17:45:09.411951-07	2016-06-14 17:45:09.411977-07				
6736	P573	Tim Quenelle	\N	\N	\N	\N	2016-06-14 17:45:09.415183-07	2016-06-14 17:45:09.415212-07				
6737	P314	Timothy Quenelle	\N	\N	\N	\N	2016-06-14 17:45:09.418512-07	2016-06-14 17:45:09.418542-07				
6738	P1692	Kathy Querin	\N	\N	\N	\N	2016-06-14 17:45:09.421912-07	2016-06-14 17:45:09.421944-07				
6739	P1571	Jack Quigley	\N	\N	\N	\N	2016-06-14 17:45:09.425156-07	2016-06-14 17:45:09.425182-07				
6740	P256	Robert Quillin	\N	\N	\N	\N	2016-06-14 17:45:09.428137-07	2016-06-14 17:45:09.428161-07				
6741	P35	Ralph Quinsey	\N	\N	\N	\N	2016-06-14 17:45:09.431397-07	2016-06-14 17:45:09.431421-07				
6742	P1026	Mel Rader	\N	\N	\N	\N	2016-06-14 17:45:09.434427-07	2016-06-14 17:45:09.434464-07				
6743	P1237	Jim Rafferty	\N	\N	\N	\N	2016-06-14 17:45:09.439066-07	2016-06-14 17:45:09.43909-07				
6744	P1274	Maurice Rahming	\N	\N	\N	\N	2016-06-14 17:45:09.441963-07	2016-06-14 17:45:09.441988-07				
6745	P644	Nitin Rai	\N	\N	\N	\N	2016-06-14 17:45:09.444892-07	2016-06-14 17:45:09.444916-07				
6746	B84	RAI Services Company	\N	\N	\N	\N	2016-06-14 17:45:09.448146-07	2016-06-14 17:45:09.448169-07				
6747	P507	Timothy Ramis	\N	\N	\N	\N	2016-06-14 17:45:09.451224-07	2016-06-14 17:45:09.451252-07				
6748	P1060	Peter Rapp	\N	\N	\N	\N	2016-06-14 17:45:09.45435-07	2016-06-14 17:45:09.454378-07				
6749	P261	Bart P Rask	\N	\N	\N	\N	2016-06-14 17:45:09.457833-07	2016-06-14 17:45:09.45786-07				
6750	P947	William Rasmussen	\N	\N	\N	\N	2016-06-14 17:45:09.460841-07	2016-06-14 17:45:09.460865-07				
6751	P1544	James Ratzlaff	\N	\N	\N	\N	2016-06-14 17:45:09.463901-07	2016-06-14 17:45:09.463925-07				
6752	P524	Ralph Rayburn	\N	\N	\N	\N	2016-06-14 17:45:09.466967-07	2016-06-14 17:45:09.466991-07				
6753	P865	Don Reedy	\N	\N	\N	\N	2016-06-14 17:45:09.470534-07	2016-06-14 17:45:09.470563-07				
6754	P1260	Barbara Regan	\N	\N	\N	\N	2016-06-14 17:45:09.473959-07	2016-06-14 17:45:09.473989-07				
6755	P1686	Bobbie Regan	\N	\N	\N	\N	2016-06-14 17:45:09.477048-07	2016-06-14 17:45:09.477073-07				
6756	B88	Regence BlueCross BlueShield of Oregon	\N	\N	\N	\N	2016-06-14 17:45:09.480239-07	2016-06-14 17:45:09.480264-07				
6757	P673	Jeffrey Reingold	\N	\N	\N	\N	2016-06-14 17:45:09.483264-07	2016-06-14 17:45:09.483287-07				
6758	P647	Walter Remmers	\N	\N	\N	\N	2016-06-14 17:45:09.486211-07	2016-06-14 17:45:09.486235-07				
6759	P1434	Patricia Reser	\N	\N	\N	\N	2016-06-14 17:45:09.491172-07	2016-06-14 17:45:09.491212-07				
6760	P895	Pat Reser	\N	\N	\N	\N	2016-06-14 17:45:09.494413-07	2016-06-14 17:45:09.494442-07				
6761	P47	Lisa Reynolds	\N	\N	\N	\N	2016-06-14 17:45:09.497551-07	2016-06-14 17:45:09.497577-07				
6762	P910	Walden Rhines	\N	\N	\N	\N	2016-06-14 17:45:09.500494-07	2016-06-14 17:45:09.500518-07				
6763	P743	Bob Rice	\N	\N	\N	\N	2016-06-14 17:45:09.504024-07	2016-06-14 17:45:09.504056-07				
6764	P689	Bonnie Richardson	\N	\N	\N	\N	2016-06-14 17:45:09.507436-07	2016-06-14 17:45:09.507465-07				
6765	P102	Paige Richardson	\N	\N	\N	\N	2016-06-14 17:45:09.510595-07	2016-06-14 17:45:09.51062-07				
6766	P223	James Richardson	\N	\N	\N	\N	2016-06-14 17:45:09.513524-07	2016-06-14 17:45:09.513547-07				
6767	P759	Peter Richter	\N	\N	\N	\N	2016-06-14 17:45:09.516391-07	2016-06-14 17:45:09.516414-07				
6768	P503	Marlene Ricketts	\N	\N	\N	\N	2016-06-14 17:45:09.519747-07	2016-06-14 17:45:09.519783-07				
6769	P363	Thron Riggs	\N	\N	\N	\N	2016-06-14 17:45:09.523094-07	2016-06-14 17:45:09.52312-07				
6770	P1242	Doug Riggs	\N	\N	\N	\N	2016-06-14 17:45:09.526247-07	2016-06-14 17:45:09.526274-07				
6771	P1227	Brian Rila	\N	\N	\N	\N	2016-06-14 17:45:09.529477-07	2016-06-14 17:45:09.529511-07				
6772	P509	Chuck Riley	\N	\N	\N	\N	2016-06-14 17:45:09.532754-07	2016-06-14 17:45:09.532781-07				
6773	P1278	Charles D Riley	\N	\N	\N	\N	2016-06-14 17:45:09.535952-07	2016-06-14 17:45:09.535979-07				
6774	P1296	James Rippey	\N	\N	\N	\N	2016-06-14 17:45:09.539733-07	2016-06-14 17:45:09.539782-07				
6775	P1197	Henry Ritz	\N	\N	\N	\N	2016-06-14 17:45:09.542883-07	2016-06-14 17:45:09.542908-07				
6776	P165	Henry Pat Ritz	\N	\N	\N	\N	2016-06-14 17:45:09.546013-07	2016-06-14 17:45:09.546038-07				
6777	P381	Pat Ritz	\N	\N	\N	\N	2016-06-14 17:45:09.549018-07	2016-06-14 17:45:09.549042-07				
6778	P1264	Jeffrey L Robberson	\N	\N	\N	\N	2016-06-14 17:45:09.552002-07	2016-06-14 17:45:09.552027-07				
6779	P395	Joe Robertson	\N	\N	\N	\N	2016-06-14 17:45:09.554894-07	2016-06-14 17:45:09.554918-07				
6780	P508	Joseph Robertson	\N	\N	\N	\N	2016-06-14 17:45:09.557835-07	2016-06-14 17:45:09.55786-07				
6781	P710	Charles Robinowitz	\N	\N	\N	\N	2016-06-14 17:45:09.560968-07	2016-06-14 17:45:09.561003-07				
6782	P103	William Robinson	\N	\N	\N	\N	2016-06-14 17:45:09.56437-07	2016-06-14 17:45:09.564398-07				
6783	P1600	Art P Robinson	\N	\N	\N	\N	2016-06-14 17:45:09.567648-07	2016-06-14 17:45:09.567678-07				
6784	P122	Arthur B Robinson	\N	\N	\N	\N	2016-06-14 17:45:09.570794-07	2016-06-14 17:45:09.570823-07				
6785	P1055	David Robinson	\N	\N	\N	\N	2016-06-14 17:45:09.57429-07	2016-06-14 17:45:09.574319-07				
6786	P1225	Arnold Rochlin	\N	\N	\N	\N	2016-06-14 17:45:09.577424-07	2016-06-14 17:45:09.577448-07				
6787	P108	Arthur Rock	\N	\N	\N	\N	2016-06-14 17:45:09.580352-07	2016-06-14 17:45:09.580377-07				
6788	P1546	Reynold Roeder	\N	\N	\N	\N	2016-06-14 17:45:09.583272-07	2016-06-14 17:45:09.583296-07				
6789	P725	Charese Rohny	\N	\N	\N	\N	2016-06-14 17:45:09.586297-07	2016-06-14 17:45:09.586323-07				
6790	P1778	Brian Rohter	\N	\N	\N	\N	2016-06-14 17:45:09.589393-07	2016-06-14 17:45:09.589428-07				
6791	P671	Claire Rolfs	\N	\N	\N	\N	2016-06-14 17:45:09.592664-07	2016-06-14 17:45:09.592689-07				
6792	P265	James Root	\N	\N	\N	\N	2016-06-14 17:45:09.596216-07	2016-06-14 17:45:09.59624-07				
6793	P1059	Jim Root	\N	\N	\N	\N	2016-06-14 17:45:09.599283-07	2016-06-14 17:45:09.599308-07				
6794	P1991	Peter Roscoe	\N	\N	\N	\N	2016-06-14 17:45:09.602302-07	2016-06-14 17:45:09.602331-07				
6795	P617	Robert Rose	\N	\N	\N	\N	2016-06-14 17:45:09.605342-07	2016-06-14 17:45:09.605369-07				
6796	P1410	Michael Rosenbaum	\N	\N	\N	\N	2016-06-14 17:45:09.610091-07	2016-06-14 17:45:09.610117-07				
6797	P1364	Paul Rosenbaum	\N	\N	\N	\N	2016-06-14 17:45:09.613132-07	2016-06-14 17:45:09.613157-07				
6798	P1036	Ellen Rosenblum	\N	\N	\N	\N	2016-06-14 17:45:09.616132-07	2016-06-14 17:45:09.616155-07				
6799	P291	Warren Rosenfeld	\N	\N	\N	\N	2016-06-14 17:45:09.619136-07	2016-06-14 17:45:09.619162-07				
6800	P170	Elden Rosenthal	\N	\N	\N	\N	2016-06-14 17:45:09.622407-07	2016-06-14 17:45:09.622438-07				
6801	P319	Barbara Ross	\N	\N	\N	\N	2016-06-14 17:45:09.625927-07	2016-06-14 17:45:09.625954-07				
6802	P469	Marjorie Roswell	\N	\N	\N	\N	2016-06-14 17:45:09.628905-07	2016-06-14 17:45:09.628929-07				
6803	P1414	Richard Rothman	\N	\N	\N	\N	2016-06-14 17:45:09.631834-07	2016-06-14 17:45:09.631858-07				
6804	P1651	Herbert Rothschild	\N	\N	\N	\N	2016-06-14 17:45:09.63483-07	2016-06-14 17:45:09.634854-07				
6805	P1366	Jeanne Roy	\N	\N	\N	\N	2016-06-14 17:45:09.649485-07	2016-06-14 17:45:09.649517-07				
6806	P270	Richard Roy	\N	\N	\N	\N	2016-06-14 17:45:09.652743-07	2016-06-14 17:45:09.652771-07				
6807	P266	Jeane Roy	\N	\N	\N	\N	2016-06-14 17:45:09.656902-07	2016-06-14 17:45:09.656934-07				
6808	P1313	Tracy Royer	\N	\N	\N	\N	2016-06-14 17:45:09.660178-07	2016-06-14 17:45:09.660204-07				
6809	P240	Robert Rubin	\N	\N	\N	\N	2016-06-14 17:45:09.663226-07	2016-06-14 17:45:09.66325-07				
6810	P450	Paul Rudd	\N	\N	\N	\N	2016-06-14 17:45:09.666223-07	2016-06-14 17:45:09.666247-07				
6811	P982	James Rudd	\N	\N	\N	\N	2016-06-14 17:45:09.669176-07	2016-06-14 17:45:09.6692-07				
6812	P525	Rene Ruiz	\N	\N	\N	\N	2016-06-14 17:45:09.672341-07	2016-06-14 17:45:09.672367-07				
6813	P1752	Aubrey Russell	\N	\N	\N	\N	2016-06-14 17:45:09.675257-07	2016-06-14 17:45:09.675281-07				
6814	P1658	John Russell	\N	\N	\N	\N	2016-06-14 17:45:09.678268-07	2016-06-14 17:45:09.678292-07				
6815	P25	Shelley Russell	\N	\N	\N	\N	2016-06-14 17:45:09.681837-07	2016-06-14 17:45:09.681866-07				
6816	P1327	Dennis Russell	\N	\N	\N	\N	2016-06-14 17:45:09.685073-07	2016-06-14 17:45:09.685102-07				
6817	P1545	Thomas Russell	\N	\N	\N	\N	2016-06-14 17:45:09.688571-07	2016-06-14 17:45:09.688603-07				
6818	P1502	Stephanie Ruttert	\N	\N	\N	\N	2016-06-14 17:45:09.691831-07	2016-06-14 17:45:09.69186-07				
6819	P22067	Peter Saladino	\N	\N	\N	\N	2016-06-14 17:45:09.69491-07	2016-06-14 17:45:09.694936-07				
6820	P1077	Antonia Salm	\N	\N	\N	\N	2016-06-14 17:45:09.697995-07	2016-06-14 17:45:09.698022-07				
6821	B80	Salmon for All, Inc.	\N	\N	\N	\N	2016-06-14 17:45:09.701212-07	2016-06-14 17:45:09.701239-07				
6822	P22068	Chris Saltveit	\N	\N	\N	\N	2016-06-14 17:45:09.704307-07	2016-06-14 17:45:09.704332-07				
6823	P1827	Dan Saltzman	\N	\N	\N	\N	2016-06-14 17:45:09.70746-07	2016-06-14 17:45:09.707488-07				
6824	P1755	Sheryl Sandberg	\N	\N	\N	\N	2016-06-14 17:45:09.712321-07	2016-06-14 17:45:09.71235-07				
6825	P58	David Sanders	\N	\N	\N	\N	2016-06-14 17:45:09.715329-07	2016-06-14 17:45:09.715356-07				
6826	P1489	Cheryl Saul	\N	\N	\N	\N	2016-06-14 17:45:09.718357-07	2016-06-14 17:45:09.718383-07				
6827	P1123	J. Savage	\N	\N	\N	\N	2016-06-14 17:45:09.721843-07	2016-06-14 17:45:09.721874-07				
6828	P693	J. William Savage	\N	\N	\N	\N	2016-06-14 17:45:09.725226-07	2016-06-14 17:45:09.725257-07				
6829	P1924	Robert Scanlan	\N	\N	\N	\N	2016-06-14 17:45:09.728305-07	2016-06-14 17:45:09.72833-07				
6830	P1476	Doug Schaller	\N	\N	\N	\N	2016-06-14 17:45:09.7313-07	2016-06-14 17:45:09.731325-07				
6831	P408	Stephen Schiedler	\N	\N	\N	\N	2016-06-14 17:45:09.734471-07	2016-06-14 17:45:09.734498-07				
6832	P1624	FREDERICK SCHILLING	\N	\N	\N	\N	2016-06-14 17:45:09.737783-07	2016-06-14 17:45:09.737814-07				
6833	P292	Barry Schlesinger	\N	\N	\N	\N	2016-06-14 17:45:09.741551-07	2016-06-14 17:45:09.741583-07				
6834	P956	Sandra Schmaier	\N	\N	\N	\N	2016-06-14 17:45:09.744783-07	2016-06-14 17:45:09.744808-07				
6835	P779	Arlene Schnitzer	\N	\N	\N	\N	2016-06-14 17:45:09.748015-07	2016-06-14 17:45:09.74804-07				
6836	P1418	Susan Schnitzer	\N	\N	\N	\N	2016-06-14 17:45:09.75098-07	2016-06-14 17:45:09.751004-07				
6837	P533	Jordan Schnitzer	\N	\N	\N	\N	2016-06-14 17:45:09.754003-07	2016-06-14 17:45:09.754027-07				
6838	P623	Karen Schoenfeld	\N	\N	\N	\N	2016-06-14 17:45:09.757031-07	2016-06-14 17:45:09.757058-07				
6839	P622	Steven Schoenfeld	\N	\N	\N	\N	2016-06-14 17:45:09.760323-07	2016-06-14 17:45:09.760352-07				
6840	P1323	Ryan Scholz	\N	\N	\N	\N	2016-06-14 17:45:09.763436-07	2016-06-14 17:45:09.763462-07				
6841	P242	Dick Schouten	\N	\N	\N	\N	2016-06-14 17:45:09.76643-07	2016-06-14 17:45:09.766454-07				
6842	P54	Karen Schouten	\N	\N	\N	\N	2016-06-14 17:45:09.769404-07	2016-06-14 17:45:09.769428-07				
6843	P691	Stacy Schusterman	\N	\N	\N	\N	2016-06-14 17:45:09.772904-07	2016-06-14 17:45:09.772938-07				
6844	P432	William Scott	\N	\N	\N	\N	2016-06-14 17:45:09.776288-07	2016-06-14 17:45:09.776316-07				
6845	P879	Nona Scott	\N	\N	\N	\N	2016-06-14 17:45:09.779375-07	2016-06-14 17:45:09.7794-07				
6846	P155	Karl Scronce	\N	\N	\N	\N	2016-06-14 17:45:09.782459-07	2016-06-14 17:45:09.782483-07				
6847	P357	Gene* Scrutton	\N	\N	\N	\N	2016-06-14 17:45:09.785521-07	2016-06-14 17:45:09.785545-07				
6848	P45	Constance Seeley	\N	\N	\N	\N	2016-06-14 17:45:09.788555-07	2016-06-14 17:45:09.78858-07				
6849	P1424	Wendy Seldon	\N	\N	\N	\N	2016-06-14 17:45:09.79155-07	2016-06-14 17:45:09.791574-07				
6850	B75	Seneca Jones Timber Co.	\N	\N	\N	\N	2016-06-14 17:45:09.794534-07	2016-06-14 17:45:09.794558-07				
6851	B26	Seneca Jones Timber Company	\N	\N	\N	\N	2016-06-14 17:45:09.797873-07	2016-06-14 17:45:09.797904-07				
6852	B43	Seneca Sustainable Energy	\N	\N	\N	\N	2016-06-14 17:45:09.801043-07	2016-06-14 17:45:09.801071-07				
6853	P365	Bonnie Serkin	\N	\N	\N	\N	2016-06-14 17:45:09.804177-07	2016-06-14 17:45:09.804205-07				
6854	P354	Patricia Serrurier	\N	\N	\N	\N	2016-06-14 17:45:09.807622-07	2016-06-14 17:45:09.807653-07				
6855	P1607	Casey Shaar	\N	\N	\N	\N	2016-06-14 17:45:09.810696-07	2016-06-14 17:45:09.810721-07				
6856	P1100	Mitra Shahri	\N	\N	\N	\N	2016-06-14 17:45:09.813731-07	2016-06-14 17:45:09.813756-07				
6857	P1477	Howard Shapiro	\N	\N	\N	\N	2016-06-14 17:45:09.816886-07	2016-06-14 17:45:09.81691-07				
6858	P584	George Sheldon	\N	\N	\N	\N	2016-06-14 17:45:09.819866-07	2016-06-14 17:45:09.8199-07				
6859	P338	Linda Shelk	\N	\N	\N	\N	2016-06-14 17:45:09.823042-07	2016-06-14 17:45:09.823067-07				
6860	P1500	Stuart Shelk Jr.	\N	\N	\N	\N	2016-06-14 17:45:09.82637-07	2016-06-14 17:45:09.826394-07				
6861	P199	Charles (Chuck) N Shepard	\N	\N	\N	\N	2016-06-14 17:45:09.829416-07	2016-06-14 17:45:09.829442-07				
6862	P1832	John Sherman	\N	\N	\N	\N	2016-06-14 17:45:09.834191-07	2016-06-14 17:45:09.83422-07				
6863	P1941	William Shields	\N	\N	\N	\N	2016-06-14 17:45:09.837566-07	2016-06-14 17:45:09.837595-07				
6864	P1301	Roger Shiels	\N	\N	\N	\N	2016-06-14 17:45:09.84064-07	2016-06-14 17:45:09.840666-07				
6865	P22030	R. Mike Shirtcliff	\N	\N	\N	\N	2016-06-14 17:45:09.843571-07	2016-06-14 17:45:09.843595-07				
6866	P1349	Itzik Shlesinger	\N	\N	\N	\N	2016-06-14 17:45:09.846628-07	2016-06-14 17:45:09.846652-07				
6867	P1538	Scott Shorr	\N	\N	\N	\N	2016-06-14 17:45:09.849577-07	2016-06-14 17:45:09.8496-07				
6868	P1847	Stanley A. Shulster	\N	\N	\N	\N	2016-06-14 17:45:09.852562-07	2016-06-14 17:45:09.852585-07				
6869	P1854	Steve Silberstein	\N	\N	\N	\N	2016-06-14 17:45:09.855537-07	2016-06-14 17:45:09.855565-07				
6870	P1404	Steven M. Silberstein	\N	\N	\N	\N	2016-06-14 17:45:09.859482-07	2016-06-14 17:45:09.859512-07				
6871	P488	Gerald Silk	\N	\N	\N	\N	2016-06-14 17:45:09.862657-07	2016-06-14 17:45:09.862682-07				
6872	P1792	R Philip Silver	\N	\N	\N	\N	2016-06-14 17:45:09.865696-07	2016-06-14 17:45:09.86572-07				
6873	P1722	Robert Simon	\N	\N	\N	\N	2016-06-14 17:45:09.868825-07	2016-06-14 17:45:09.868849-07				
6874	P795	Eric Simpson	\N	\N	\N	\N	2016-06-14 17:45:09.871985-07	2016-06-14 17:45:09.872014-07				
6875	P222	Paul Singer	\N	\N	\N	\N	2016-06-14 17:45:09.875238-07	2016-06-14 17:45:09.875266-07				
6876	P22069	David Singer	\N	\N	\N	\N	2016-06-14 17:45:09.878837-07	2016-06-14 17:45:09.878868-07				
6877	P1915	Michael Smith	\N	\N	\N	\N	2016-06-14 17:45:09.882324-07	2016-06-14 17:45:09.882354-07				
6878	P271	Tom W. Smith	\N	\N	\N	\N	2016-06-14 17:45:09.88539-07	2016-06-14 17:45:09.885414-07				
6879	P413	William L Smith	\N	\N	\N	\N	2016-06-14 17:45:09.889311-07	2016-06-14 17:45:09.889354-07				
6880	P778	William Smith	\N	\N	\N	\N	2016-06-14 17:45:09.893522-07	2016-06-14 17:45:09.893553-07				
6881	P1559	Carole Smith	\N	\N	\N	\N	2016-06-14 17:45:09.896755-07	2016-06-14 17:45:09.89678-07				
6882	P618	Charles H.E. Smith	\N	\N	\N	\N	2016-06-14 17:45:09.899759-07	2016-06-14 17:45:09.899784-07				
6883	P850	Denny Smith	\N	\N	\N	\N	2016-06-14 17:45:09.902689-07	2016-06-14 17:45:09.902712-07				
6884	P260	Clyde W. Smith Jr.	\N	\N	\N	\N	2016-06-14 17:45:09.905816-07	2016-06-14 17:45:09.90584-07				
6885	P1539	Steve Smucker	\N	\N	\N	\N	2016-06-14 17:45:09.908827-07	2016-06-14 17:45:09.908851-07				
6886	P22075	Dave R Snazuk	\N	\N	\N	\N	2016-06-14 17:45:09.911983-07	2016-06-14 17:45:09.91201-07				
6887	P962	Sharon Snow	\N	\N	\N	\N	2016-06-14 17:45:09.915626-07	2016-06-14 17:45:09.915655-07				
6888	P559	Julie Snowden	\N	\N	\N	\N	2016-06-14 17:45:09.918676-07	2016-06-14 17:45:09.918705-07				
6889	P159	Judy Snyder	\N	\N	\N	\N	2016-06-14 17:45:09.922269-07	2016-06-14 17:45:09.922317-07				
6890	P172	Joan Snyder	\N	\N	\N	\N	2016-06-14 17:45:09.925809-07	2016-06-14 17:45:09.925837-07				
6891	P748	Robert Soehnlen	\N	\N	\N	\N	2016-06-14 17:45:09.929232-07	2016-06-14 17:45:09.929259-07				
6892	P125	Richard F Sohn	\N	\N	\N	\N	2016-06-14 17:45:09.932273-07	2016-06-14 17:45:09.932298-07				
6893	P629	Albert Solheim	\N	\N	\N	\N	2016-06-14 17:45:09.935217-07	2016-06-14 17:45:09.935241-07				
6894	P1579	Al Solheim	\N	\N	\N	\N	2016-06-14 17:45:09.938379-07	2016-06-14 17:45:09.938405-07				
6895	P397	Richard Solomon	\N	\N	\N	\N	2016-06-14 17:45:09.941359-07	2016-06-14 17:45:09.941382-07				
6896	P1845	Gordon Sondland	\N	\N	\N	\N	2016-06-14 17:45:09.944322-07	2016-06-14 17:45:09.944348-07				
6897	P440	Jeanne Sorensen Siegel	\N	\N	\N	\N	2016-06-14 17:45:09.947444-07	2016-06-14 17:45:09.94747-07				
6898	P1439	Janelle Sorenson	\N	\N	\N	\N	2016-06-14 17:45:09.950497-07	2016-06-14 17:45:09.950521-07				
6899	P96	Benjamin Souede	\N	\N	\N	\N	2016-06-14 17:45:09.953765-07	2016-06-14 17:45:09.953794-07				
6900	P1554	Gregory Specht	\N	\N	\N	\N	2016-06-14 17:45:09.957118-07	2016-06-14 17:45:09.957146-07				
6901	P1442	Robert Speltz	\N	\N	\N	\N	2016-06-14 17:45:09.960227-07	2016-06-14 17:45:09.960251-07				
6902	P828	John Sperling	\N	\N	\N	\N	2016-06-14 17:45:09.963298-07	2016-06-14 17:45:09.963323-07				
6903	P132	Alexander Spivak	\N	\N	\N	\N	2016-06-14 17:45:09.966296-07	2016-06-14 17:45:09.966319-07				
6904	P1038	Randall Sprick	\N	\N	\N	\N	2016-06-14 17:45:09.969268-07	2016-06-14 17:45:09.969291-07				
6905	P360	Thomas Sprott	\N	\N	\N	\N	2016-06-14 17:45:09.972599-07	2016-06-14 17:45:09.972647-07				
6906	P1753	Eric D Spunk	\N	\N	\N	\N	2016-06-14 17:45:09.976706-07	2016-06-14 17:45:09.976773-07				
6907	P437	Mark Squire	\N	\N	\N	\N	2016-06-14 17:45:09.980273-07	2016-06-14 17:45:09.980303-07				
6908	P935	Wendy Squires	\N	\N	\N	\N	2016-06-14 17:45:09.983563-07	2016-06-14 17:45:09.983592-07				
6909	P22012	Georges C St. Laurent	\N	\N	\N	\N	2016-06-14 17:45:09.986766-07	2016-06-14 17:45:09.986793-07				
6910	P1603	Crystal Staberg	\N	\N	\N	\N	2016-06-14 17:45:09.989812-07	2016-06-14 17:45:09.989839-07				
6911	P564	Jody Stahancyk	\N	\N	\N	\N	2016-06-14 17:45:09.993567-07	2016-06-14 17:45:09.993596-07				
6912	B94	Stand for Children, Inc.	\N	\N	\N	\N	2016-06-14 17:45:09.996793-07	2016-06-14 17:45:09.996819-07				
6913	P1022	Robert Starke	\N	\N	\N	\N	2016-06-14 17:45:09.999908-07	2016-06-14 17:45:09.999934-07				
6914	P1628	Arthella Starke	\N	\N	\N	\N	2016-06-14 17:45:10.003139-07	2016-06-14 17:45:10.003164-07				
6915	P1825	B. Bond Starker	\N	\N	\N	\N	2016-06-14 17:45:10.006507-07	2016-06-14 17:45:10.006538-07				
6916	P1314	Aaron Starr	\N	\N	\N	\N	2016-06-14 17:45:10.009908-07	2016-06-14 17:45:10.009935-07				
6917	P216	Daniel Stearns	\N	\N	\N	\N	2016-06-14 17:45:10.012886-07	2016-06-14 17:45:10.01291-07				
6918	P1791	Mike Stebbins	\N	\N	\N	\N	2016-06-14 17:45:10.01594-07	2016-06-14 17:45:10.015964-07				
6919	P553	Bryan Steelman	\N	\N	\N	\N	2016-06-14 17:45:10.019074-07	2016-06-14 17:45:10.0191-07				
6920	P1690	Janet Stein	\N	\N	\N	\N	2016-06-14 17:45:10.022094-07	2016-06-14 17:45:10.022119-07				
6921	P82	Joshua Steiner	\N	\N	\N	\N	2016-06-14 17:45:10.02518-07	2016-06-14 17:45:10.025205-07				
6922	P936	Elizabeth Steiner Hayward	\N	\N	\N	\N	2016-06-14 17:45:10.028269-07	2016-06-14 17:45:10.028299-07				
6923	P1382	Clara Steiner-Jay	\N	\N	\N	\N	2016-06-14 17:45:10.031578-07	2016-06-14 17:45:10.031606-07				
6924	P612	Dennis Steinman	\N	\N	\N	\N	2016-06-14 17:45:10.034686-07	2016-06-14 17:45:10.03471-07				
6925	P1613	Mark Stell	\N	\N	\N	\N	2016-06-14 17:45:10.037962-07	2016-06-14 17:45:10.037989-07				
6926	P1553	David Stelzer	\N	\N	\N	\N	2016-06-14 17:45:10.041291-07	2016-06-14 17:45:10.041322-07				
6927	P1828	Cornelia Stevens	\N	\N	\N	\N	2016-06-14 17:45:10.044586-07	2016-06-14 17:45:10.044613-07				
6928	P22006	Mark Stevens	\N	\N	\N	\N	2016-06-14 17:45:10.047603-07	2016-06-14 17:45:10.047627-07				
6929	P22042	William Stevens	\N	\N	\N	\N	2016-06-14 17:45:10.050654-07	2016-06-14 17:45:10.050679-07				
6930	P140	Larry Stockman	\N	\N	\N	\N	2016-06-14 17:45:10.053709-07	2016-06-14 17:45:10.053734-07				
6931	P1930	N. Robert Stoll	\N	\N	\N	\N	2016-06-14 17:45:10.056742-07	2016-06-14 17:45:10.060043-07				
6932	P1914	Robert Stoll	\N	\N	\N	\N	2016-06-14 17:45:10.063325-07	2016-06-14 17:45:10.063349-07				
6933	P1871	Bill Stoller	\N	\N	\N	\N	2016-06-14 17:45:10.066575-07	2016-06-14 17:45:10.066604-07				
6934	P614	Wayne Stolz	\N	\N	\N	\N	2016-06-14 17:45:10.069714-07	2016-06-14 17:45:10.069741-07				
6935	P1027	Patrick Stone	\N	\N	\N	\N	2016-06-14 17:45:10.072975-07	2016-06-14 17:45:10.073006-07				
6936	P1781	H. Frank Storey	\N	\N	\N	\N	2016-06-14 17:45:10.076442-07	2016-06-14 17:45:10.076471-07				
6937	P922	Peter Stott	\N	\N	\N	\N	2016-06-14 17:45:10.079669-07	2016-06-14 17:45:10.079695-07				
6938	P289	Cynthia Strawn	\N	\N	\N	\N	2016-06-14 17:45:10.084447-07	2016-06-14 17:45:10.084482-07				
6939	P168	David Stroble	\N	\N	\N	\N	2016-06-14 17:45:10.087513-07	2016-06-14 17:45:10.087538-07				
6940	P595	Terence Strom	\N	\N	\N	\N	2016-06-14 17:45:10.090636-07	2016-06-14 17:45:10.09066-07				
6941	P457	Paul Stromberg	\N	\N	\N	\N	2016-06-14 17:45:10.093646-07	2016-06-14 17:45:10.093669-07				
6942	P1998	Erik Stromquist	\N	\N	\N	\N	2016-06-14 17:45:10.096586-07	2016-06-14 17:45:10.09661-07				
6943	P98	Jon Stryker	\N	\N	\N	\N	2016-06-14 17:45:10.099574-07	2016-06-14 17:45:10.099599-07				
6944	P660	Larry Stuber	\N	\N	\N	\N	2016-06-14 17:45:10.102537-07	2016-06-14 17:45:10.102565-07				
6945	P1426	Carol Studenmund	\N	\N	\N	\N	2016-06-14 17:45:10.105682-07	2016-06-14 17:45:10.105711-07				
6946	P401	Tina Stupasky	\N	\N	\N	\N	2016-06-14 17:45:10.108801-07	2016-06-14 17:45:10.108826-07				
6947	P563	Vanessa Sturgeon	\N	\N	\N	\N	2016-06-14 17:45:10.111885-07	2016-06-14 17:45:10.111909-07				
6948	P853	David Sugerman	\N	\N	\N	\N	2016-06-14 17:45:10.115071-07	2016-06-14 17:45:10.115095-07				
6949	P1900	Margo Sulkosky	\N	\N	\N	\N	2016-06-14 17:45:10.118028-07	2016-06-14 17:45:10.118052-07				
6950	P205	Dana Sullivan	\N	\N	\N	\N	2016-06-14 17:45:10.120929-07	2016-06-14 17:45:10.120953-07				
6951	P1979	Melissa Sullivan	\N	\N	\N	\N	2016-06-14 17:45:10.124761-07	2016-06-14 17:45:10.124807-07				
6952	P148	Rita Sullivan	\N	\N	\N	\N	2016-06-14 17:45:10.128357-07	2016-06-14 17:45:10.128384-07				
6953	P475	James Summerton	\N	\N	\N	\N	2016-06-14 17:45:10.131537-07	2016-06-14 17:45:10.131563-07				
6954	P760	Karen Swift	\N	\N	\N	\N	2016-06-14 17:45:10.13631-07	2016-06-14 17:45:10.136336-07				
6955	P1849	Sean Swift	\N	\N	\N	\N	2016-06-14 17:45:10.141079-07	2016-06-14 17:45:10.141108-07				
6956	P1287	John Swift	\N	\N	\N	\N	2016-06-14 17:45:10.144343-07	2016-06-14 17:45:10.144372-07				
6957	P577	Henry Swigert	\N	\N	\N	\N	2016-06-14 17:45:10.14758-07	2016-06-14 17:45:10.147606-07				
6958	P241	Charles Swindells	\N	\N	\N	\N	2016-06-14 17:45:10.152428-07	2016-06-14 17:45:10.152455-07				
6959	P1547	William Swindells	\N	\N	\N	\N	2016-06-14 17:45:10.157698-07	2016-06-14 17:45:10.157742-07				
6960	P1578	Anne Taft	\N	\N	\N	\N	2016-06-14 17:45:10.161063-07	2016-06-14 17:45:10.161091-07				
6961	P790	Brian Tarabochia	\N	\N	\N	\N	2016-06-14 17:45:10.164101-07	2016-06-14 17:45:10.164126-07				
6962	P1304	Charles Tauman	\N	\N	\N	\N	2016-06-14 17:45:10.167193-07	2016-06-14 17:45:10.167217-07				
6963	P1948	Kathryn Taylor	\N	\N	\N	\N	2016-06-14 17:45:10.170233-07	2016-06-14 17:45:10.170258-07				
6964	P1548	Laura B Taylor	\N	\N	\N	\N	2016-06-14 17:45:10.173356-07	2016-06-14 17:45:10.173382-07				
6965	P1041	Martin Taylor	\N	\N	\N	\N	2016-06-14 17:45:10.176694-07	2016-06-14 17:45:10.176728-07				
6966	P1023	Bradford Taylor	\N	\N	\N	\N	2016-06-14 17:45:10.18019-07	2016-06-14 17:45:10.180222-07				
6967	P728	Tamsin Taylor	\N	\N	\N	\N	2016-06-14 17:45:10.183324-07	2016-06-14 17:45:10.183352-07				
6968	P1261	Shawn Teevin	\N	\N	\N	\N	2016-06-14 17:45:10.186453-07	2016-06-14 17:45:10.186478-07				
6969	B36	The Greenbrier Companies	\N	\N	\N	\N	2016-06-14 17:45:10.189929-07	2016-06-14 17:45:10.18996-07				
6970	B9	The J.M. Smucker Company	\N	\N	\N	\N	2016-06-14 17:45:10.193713-07	2016-06-14 17:45:10.193742-07				
6971	B14	The Standard	\N	\N	\N	\N	2016-06-14 17:45:10.196769-07	2016-06-14 17:45:10.196794-07				
6972	P1126	Swanson Thomas Coon & Newton	\N	\N	\N	\N	2016-06-14 17:45:10.199818-07	2016-06-14 17:45:10.199845-07				
6973	P22031	David R Thomason	\N	\N	\N	\N	2016-06-14 17:45:10.203038-07	2016-06-14 17:45:10.203063-07				
6974	P22032	Doneta A Thomason	\N	\N	\N	\N	2016-06-14 17:45:10.206062-07	2016-06-14 17:45:10.206087-07				
6975	P22025	William E Thompson	\N	\N	\N	\N	2016-06-14 17:45:10.209424-07	2016-06-14 17:45:10.209452-07				
6976	P22070	David A Thompson	\N	\N	\N	\N	2016-06-14 17:45:10.212839-07	2016-06-14 17:45:10.212869-07				
6977	P841	Joseph O Tobin II	\N	\N	\N	\N	2016-06-14 17:45:10.22198-07	2016-06-14 17:45:10.22201-07				
6978	P659	Larry E Tokarski	\N	\N	\N	\N	2016-06-14 17:45:10.226175-07	2016-06-14 17:45:10.226209-07				
6979	P798	L.E. Tokarski	\N	\N	\N	\N	2016-06-14 17:45:10.232804-07	2016-06-14 17:45:10.235949-07				
6980	P1467	Keta Tom	\N	\N	\N	\N	2016-06-14 17:45:10.239387-07	2016-06-14 17:45:10.239412-07				
6981	P1820	Jon D Tompkins	\N	\N	\N	\N	2016-06-14 17:45:10.242556-07	2016-06-14 17:45:10.242581-07				
6982	B12	Tonkon Torp LLP	\N	\N	\N	\N	2016-06-14 17:45:10.245773-07	2016-06-14 17:45:10.245799-07				
6983	P370	Thomas Toomey	\N	\N	\N	\N	2016-06-14 17:45:10.249335-07	2016-06-14 17:45:10.249361-07				
6984	P1194	Alan Tresidder	\N	\N	\N	\N	2016-06-14 17:45:10.25249-07	2016-06-14 17:45:10.252515-07				
6985	P104	Kim Trewhela	\N	\N	\N	\N	2016-06-14 17:45:10.255746-07	2016-06-14 17:45:10.255775-07				
6986	P1193	Leslie Trim	\N	\N	\N	\N	2016-06-14 17:45:10.258948-07	2016-06-14 17:45:10.258976-07				
6987	P1826	Valerie Trout	\N	\N	\N	\N	2016-06-14 17:45:10.262021-07	2016-06-14 17:45:10.262046-07				
6988	P151	Clifford Trow	\N	\N	\N	\N	2016-06-14 17:45:10.265095-07	2016-06-14 17:45:10.26512-07				
6989	P30	Cliff Trow	\N	\N	\N	\N	2016-06-14 17:45:10.268041-07	2016-06-14 17:45:10.268065-07				
6990	P1413	Christine N. Tunstall	\N	\N	\N	\N	2016-06-14 17:45:10.27129-07	2016-06-14 17:45:10.271314-07				
6991	P22002	Donald Tykeson	\N	\N	\N	\N	2016-06-14 17:45:10.274322-07	2016-06-14 17:45:10.274353-07				
6992	P22008	Richard E Uihlein	\N	\N	\N	\N	2016-06-14 17:45:10.277959-07	2016-06-14 17:45:10.277987-07				
6993	P1336	Sharon Ungerleider	\N	\N	\N	\N	2016-06-14 17:45:10.28112-07	2016-06-14 17:45:10.281144-07				
6994	P22023	Johannes HR van Alebeek	\N	\N	\N	\N	2016-06-14 17:45:10.285975-07	2016-06-14 17:45:10.285999-07				
6995	P818	John Vandermosten	\N	\N	\N	\N	2016-06-14 17:45:10.289136-07	2016-06-14 17:45:10.289161-07				
6996	P1626	Richard Vangelisti	\N	\N	\N	\N	2016-06-14 17:45:10.292391-07	2016-06-14 17:45:10.29242-07				
6997	P22071	Elizabeth K VanStaavern	\N	\N	\N	\N	2016-06-14 17:45:10.295606-07	2016-06-14 17:45:10.295635-07				
5726	P1328	Stehanie Vandavas	\N	\N	\N	\N	2016-06-14 17:44:49.316201-07	2016-06-14 17:45:10.298627-07	CEO of Row99.com	www.row99.com		Multnomah County Library, Emerge, Portland Art Museum, Mercy Corp, ACLU
6998	P1184	Stephanie Villanueva	\N	\N	\N	\N	2016-06-14 17:45:10.302349-07	2016-06-14 17:45:10.302373-07				
6999	P723	Roger Vrilakas	\N	\N	\N	\N	2016-06-14 17:45:10.305355-07	2016-06-14 17:45:10.30538-07				
7000	P1408	Mary Wagley	\N	\N	\N	\N	2016-06-14 17:45:10.308635-07	2016-06-14 17:45:10.308666-07				
7001	P1839	Wes Wagner	\N	\N	\N	\N	2016-06-14 17:45:10.312124-07	2016-06-14 17:45:10.31215-07				
7002	P773	Diane Wagner	\N	\N	\N	\N	2016-06-14 17:45:10.31529-07	2016-06-14 17:45:10.315315-07				
7003	P1959	Guy Wagner	\N	\N	\N	\N	2016-06-14 17:45:10.318303-07	2016-06-14 17:45:10.318328-07				
7004	P1401	Mary Waldner	\N	\N	\N	\N	2016-06-14 17:45:10.321401-07	2016-06-14 17:45:10.321425-07				
7005	P18	Jay Waldron	\N	\N	\N	\N	2016-06-14 17:45:10.324471-07	2016-06-14 17:45:10.324495-07				
7006	P1300	Douglas Walker	\N	\N	\N	\N	2016-06-14 17:45:10.327474-07	2016-06-14 17:45:10.327498-07				
7007	P950	Marianne Walker	\N	\N	\N	\N	2016-06-14 17:45:10.330725-07	2016-06-14 17:45:10.330755-07				
7008	P958	Jonathan Wallace	\N	\N	\N	\N	2016-06-14 17:45:10.335698-07	2016-06-14 17:45:10.335727-07				
7009	P22043	Nicholas Walrod	\N	\N	\N	\N	2016-06-14 17:45:10.338815-07	2016-06-14 17:45:10.338843-07				
7010	P1733	Tom Walsh	\N	\N	\N	\N	2016-06-14 17:45:10.34248-07	2016-06-14 17:45:10.342534-07				
7011	P1178	Robert Walsh	\N	\N	\N	\N	2016-06-14 17:45:10.345737-07	2016-06-14 17:45:10.345762-07				
7012	P72	Phil Walsh	\N	\N	\N	\N	2016-06-14 17:45:10.349259-07	2016-06-14 17:45:10.349284-07				
7013	P315	Matthew Walstatter	\N	\N	\N	\N	2016-06-14 17:45:10.352447-07	2016-06-14 17:45:10.352472-07				
7014	P1780	Mabel Walters	\N	\N	\N	\N	2016-06-14 17:45:10.3555-07	2016-06-14 17:45:10.355525-07				
7015	P701	Scott Walters	\N	\N	\N	\N	2016-06-14 17:45:10.358536-07	2016-06-14 17:45:10.35856-07				
7016	P1440	Emery Wang	\N	\N	\N	\N	2016-06-14 17:45:10.361474-07	2016-06-14 17:45:10.361497-07				
7017	P1608	Brian Wannamaker	\N	\N	\N	\N	2016-06-14 17:45:10.364431-07	2016-06-14 17:45:10.364455-07				
7018	P1501	Jan Ward	\N	\N	\N	\N	2016-06-14 17:45:10.367573-07	2016-06-14 17:45:10.367662-07				
7019	P1142	Jody Ward	\N	\N	\N	\N	2016-06-14 17:45:10.370852-07	2016-06-14 17:45:10.370879-07				
7020	P1125	Kim Ward	\N	\N	\N	\N	2016-06-14 17:45:10.374283-07	2016-06-14 17:45:10.374339-07				
7021	P97	Steve Waring	\N	\N	\N	\N	2016-06-14 17:45:10.377719-07	2016-06-14 17:45:10.377747-07				
7022	P768	Hon. Mark Warner	\N	\N	\N	\N	2016-06-14 17:45:10.381-07	2016-06-14 17:45:10.381025-07				
7023	P41	Gina A Warren	\N	\N	\N	\N	2016-06-14 17:45:10.384142-07	2016-06-14 17:45:10.384168-07				
7024	P60	Nani Warren	\N	\N	\N	\N	2016-06-14 17:45:10.387327-07	2016-06-14 17:45:10.387352-07				
7025	P1890	Charles E Warren	\N	\N	\N	\N	2016-06-14 17:45:10.390418-07	2016-06-14 17:45:10.390442-07				
7026	P1667	Robert Warren Jr.	\N	\N	\N	\N	2016-06-14 17:45:10.393753-07	2016-06-14 17:45:10.393777-07				
7027	P1458	Elizabeth Warriner	\N	\N	\N	\N	2016-06-14 17:45:10.396862-07	2016-06-14 17:45:10.396886-07				
7028	P284	Donald Washburn	\N	\N	\N	\N	2016-06-14 17:45:10.399879-07	2016-06-14 17:45:10.399904-07				
7029	P1831	Willow Washburn	\N	\N	\N	\N	2016-06-14 17:45:10.406824-07	2016-06-14 17:45:10.406855-07				
7030	P1843	Brian Watkins	\N	\N	\N	\N	2016-06-14 17:45:10.410151-07	2016-06-14 17:45:10.41018-07				
7031	P752	Hayden Watson	\N	\N	\N	\N	2016-06-14 17:45:10.413392-07	2016-06-14 17:45:10.413419-07				
7032	P1532	Samuel Watson	\N	\N	\N	\N	2016-06-14 17:45:10.416569-07	2016-06-14 17:45:10.416594-07				
7033	P505	Peter Watts	\N	\N	\N	\N	2016-06-14 17:45:10.419522-07	2016-06-14 17:45:10.419546-07				
7034	P977	Janet Webster	\N	\N	\N	\N	2016-06-14 17:45:10.422487-07	2016-06-14 17:45:10.422512-07				
7035	P187	Doris A Wehler	\N	\N	\N	\N	2016-06-14 17:45:10.425858-07	2016-06-14 17:45:10.42589-07				
7036	P348	Richard Weissman	\N	\N	\N	\N	2016-06-14 17:45:10.430856-07	2016-06-14 17:45:10.430882-07				
7037	P1946	David Wells	\N	\N	\N	\N	2016-06-14 17:45:10.433988-07	2016-06-14 17:45:10.434015-07				
7038	P1838	Ronald Wells	\N	\N	\N	\N	2016-06-14 17:45:10.437129-07	2016-06-14 17:45:10.437154-07				
7039	P1289	Roderick Wendt	\N	\N	\N	\N	2016-06-14 17:45:10.440995-07	2016-06-14 17:45:10.44102-07				
7040	P22039	Mark Wendt	\N	\N	\N	\N	2016-06-14 17:45:10.446121-07	2016-06-14 17:45:10.446152-07				
7041	P1428	Warren West	\N	\N	\N	\N	2016-06-14 17:45:10.449504-07	2016-06-14 17:45:10.44953-07				
7042	B99	Western Beverage Company	\N	\N	\N	\N	2016-06-14 17:45:10.45255-07	2016-06-14 17:45:10.452575-07				
7043	P1738	Joseph Weston	\N	\N	\N	\N	2016-06-14 17:45:10.455636-07	2016-06-14 17:45:10.455661-07				
7044	B98	Weyerhaeuser	\N	\N	\N	\N	2016-06-14 17:45:10.459081-07	2016-06-14 17:45:10.459114-07				
7045	P876	Bruce G Wheeler	\N	\N	\N	\N	2016-06-14 17:45:10.462637-07	2016-06-14 17:45:10.462665-07				
7046	P22046	Priscilla Wieden	\N	\N	\N	\N	2016-06-14 17:45:10.46572-07	2016-06-14 17:45:10.465746-07				
7047	P144	Tamif Wiedensmith	\N	\N	\N	\N	2016-06-14 17:45:10.468756-07	2016-06-14 17:45:10.46878-07				
7048	P1034	Jeffrey Wihtol	\N	\N	\N	\N	2016-06-14 17:45:10.471795-07	2016-06-14 17:45:10.471819-07				
7049	P1647	Karen Williams	\N	\N	\N	\N	2016-06-14 17:45:10.474786-07	2016-06-14 17:45:10.474809-07				
7050	P1266	Michael Williams	\N	\N	\N	\N	2016-06-14 17:45:10.477728-07	2016-06-14 17:45:10.477751-07				
7051	P669	Timothy Williams	\N	\N	\N	\N	2016-06-14 17:45:10.481315-07	2016-06-14 17:45:10.481345-07				
7052	P562	Veronica Williams	\N	\N	\N	\N	2016-06-14 17:45:10.484583-07	2016-06-14 17:45:10.484611-07				
7053	P722	Scott Williams	\N	\N	\N	\N	2016-06-14 17:45:10.487846-07	2016-06-14 17:45:10.48787-07				
7054	P1355	Kathleen Williams	\N	\N	\N	\N	2016-06-14 17:45:10.493752-07	2016-06-14 17:45:10.493801-07				
7055	P1954	Bill Willitts	\N	\N	\N	\N	2016-06-14 17:45:10.497077-07	2016-06-14 17:45:10.497102-07				
7056	P526	Brian Wilson	\N	\N	\N	\N	2016-06-14 17:45:10.500177-07	2016-06-14 17:45:10.500201-07				
7057	P1185	James Winkler	\N	\N	\N	\N	2016-06-14 17:45:10.503298-07	2016-06-14 17:45:10.503322-07				
7058	P1621	Katherine Wiper	\N	\N	\N	\N	2016-06-14 17:45:10.508243-07	2016-06-14 17:45:10.508269-07				
7059	P808	Michael Wise	\N	\N	\N	\N	2016-06-14 17:45:10.51121-07	2016-06-14 17:45:10.511235-07				
7060	P1818	Jody Wiser	\N	\N	\N	\N	2016-06-14 17:45:10.514275-07	2016-06-14 17:45:10.5143-07				
7061	P1204	JoAnn Wiser	\N	\N	\N	\N	2016-06-14 17:45:10.517308-07	2016-06-14 17:45:10.517335-07				
7062	P364	Gary Withers	\N	\N	\N	\N	2016-06-14 17:45:10.520859-07	2016-06-14 17:45:10.520889-07				
7063	P512	Richard Withnell	\N	\N	\N	\N	2016-06-14 17:45:10.524154-07	2016-06-14 17:45:10.524184-07				
7064	P195	Richard (Dick) Withnell	\N	\N	\N	\N	2016-06-14 17:45:10.527507-07	2016-06-14 17:45:10.527536-07				
7065	P1252	Gayle Withnell	\N	\N	\N	\N	2016-06-14 17:45:10.530699-07	2016-06-14 17:45:10.530725-07				
7066	P586	Lawrence Wobbrock	\N	\N	\N	\N	2016-06-14 17:45:10.533908-07	2016-06-14 17:45:10.533933-07				
7067	P359	Rory Wold	\N	\N	\N	\N	2016-06-14 17:45:10.537207-07	2016-06-14 17:45:10.537233-07				
7068	P1646	Robert Wolf	\N	\N	\N	\N	2016-06-14 17:45:10.540336-07	2016-06-14 17:45:10.54036-07				
7069	P1531	David Wolf	\N	\N	\N	\N	2016-06-14 17:45:10.543423-07	2016-06-14 17:45:10.543447-07				
7070	P26	Randall Wolfe	\N	\N	\N	\N	2016-06-14 17:45:10.546548-07	2016-06-14 17:45:10.546572-07				
7071	P22024	Ronald Woltjer	\N	\N	\N	\N	2016-06-14 17:45:10.549711-07	2016-06-14 17:45:10.549736-07				
7072	P186	Bing Wong	\N	\N	\N	\N	2016-06-14 17:45:10.552799-07	2016-06-14 17:45:10.552825-07				
7073	P379	Kenneth R Wood	\N	\N	\N	\N	2016-06-14 17:45:10.555922-07	2016-06-14 17:45:10.555951-07				
7074	P272	Carlton Woodard	\N	\N	\N	\N	2016-06-14 17:45:10.560957-07	2016-06-14 17:45:10.560988-07				
7075	P22007	Todd Woodley	\N	\N	\N	\N	2016-06-14 17:45:10.564005-07	2016-06-14 17:45:10.564031-07				
7076	P1271	Jay Woodworth	\N	\N	\N	\N	2016-06-14 17:45:10.567094-07	2016-06-14 17:45:10.567118-07				
7077	P1312	Michael Wray	\N	\N	\N	\N	2016-06-14 17:45:10.572111-07	2016-06-14 17:45:10.572136-07				
7078	P1475	Curtis Wright	\N	\N	\N	\N	2016-06-14 17:45:10.575251-07	2016-06-14 17:45:10.575282-07				
7079	B66	WVP Health Authority	\N	\N	\N	\N	2016-06-14 17:45:10.579087-07	2016-06-14 17:45:10.579116-07				
7080	P1762	William Wyatt	\N	\N	\N	\N	2016-06-14 17:45:10.582402-07	2016-06-14 17:45:10.582428-07				
7081	P1310	Daniel Yates	\N	\N	\N	\N	2016-06-14 17:45:10.585461-07	2016-06-14 17:45:10.585486-07				
7082	P1218	Michelle Yee	\N	\N	\N	\N	2016-06-14 17:45:10.588527-07	2016-06-14 17:45:10.588553-07				
7083	P295	Alan Yordy	\N	\N	\N	\N	2016-06-14 17:45:10.591633-07	2016-06-14 17:45:10.591658-07				
7084	P1519	Junki Yoshida	\N	\N	\N	\N	2016-06-14 17:45:10.594932-07	2016-06-14 17:45:10.594962-07				
7085	P1163	Candace Young	\N	\N	\N	\N	2016-06-14 17:45:10.599852-07	2016-06-14 17:45:10.599881-07				
7086	P1086	Julie Young	\N	\N	\N	\N	2016-06-14 17:45:10.602804-07	2016-06-14 17:45:10.602828-07				
7087	P445	Kelly Young	\N	\N	\N	\N	2016-06-14 17:45:10.60587-07	2016-06-14 17:45:10.605895-07				
7088	P11	William Young	\N	\N	\N	\N	2016-06-14 17:45:10.609074-07	2016-06-14 17:45:10.60912-07				
7089	P592	Mark Youngren	\N	\N	\N	\N	2016-06-14 17:45:10.612523-07	2016-06-14 17:45:10.612551-07				
7090	B59	Youngs Columbia	\N	\N	\N	\N	2016-06-14 17:45:10.615612-07	2016-06-14 17:45:10.615636-07				
7091	P1103	Richard Yugler	\N	\N	\N	\N	2016-06-14 17:45:10.61867-07	2016-06-14 17:45:10.618694-07				
7092	P1623	Tina Zaccaria	\N	\N	\N	\N	2016-06-14 17:45:10.621602-07	2016-06-14 17:45:10.621626-07				
7093	P378	Lois Zaerr	\N	\N	\N	\N	2016-06-14 17:45:10.624677-07	2016-06-14 17:45:10.624701-07				
7094	P1233	Gregory Zeuthen	\N	\N	\N	\N	2016-06-14 17:45:10.627626-07	2016-06-14 17:45:10.627651-07				
7095	P1582	Jason Zidell	\N	\N	\N	\N	2016-06-14 17:45:10.63083-07	2016-06-14 17:45:10.630859-07				
7096	P896	Jay Zidell	\N	\N	\N	\N	2016-06-14 17:45:10.634191-07	2016-06-14 17:45:10.63422-07				
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
3	Arts & Culture
11	Animal Rights
1	Science & Technology
6	Civic
5	Social Justice
\.


--
-- Data for Name: donordata_patronagecategory_donors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY donordata_patronagecategory_donors (id, patronagecategory_id, donor_id) FROM stdin;
2503	2	5556
2504	8	5556
2505	10	5556
2506	9	5557
2507	8	5559
2508	6	5560
2509	1	5562
2510	6	5562
2511	7	5562
2512	8	5563
2513	7	5564
2514	7	5565
2515	4	5566
2516	7	5567
2517	2	5568
2518	3	5568
2519	4	5568
2520	7	5568
2521	11	5568
2522	7	5569
2523	4	5571
2524	5	5571
2525	2	5574
2526	3	5574
2527	7	5577
2528	8	5578
2529	9	5579
2530	9	5580
2531	9	5583
2532	4	5587
2533	7	5588
2534	6	5590
2535	7	5590
2536	3	5592
2537	7	5593
2538	2	5598
2539	3	5602
2540	8	5605
2541	9	5606
2542	8	5608
2543	2	5613
2544	6	5613
2545	2	5615
2546	7	5615
2547	8	5617
2548	3	5624
2549	6	5626
2550	5	5627
2551	7	5627
2552	2	5628
2553	6	5628
2554	7	5628
2555	8	5628
2556	9	5629
2557	10	5629
2558	6	5631
2559	3	5632
2560	3	5633
2561	6	5633
2562	7	5633
2563	2	5635
2564	3	5637
2565	2	5638
2566	10	5638
2567	6	5639
2568	3	5640
2569	7	5641
2570	9	5641
2571	4	5643
2572	5	5645
2573	2	5646
2574	10	5646
2575	6	5647
2576	2	5650
2577	10	5650
2578	3	5652
2579	2	5654
2580	4	5654
2581	7	5654
2582	8	5654
2583	6	5657
2584	10	5661
2585	2	5663
2586	6	5663
2587	7	5663
2588	8	5663
2589	6	5664
2590	2	5666
2591	3	5666
2592	2	5668
2593	6	5668
2594	7	5668
2595	8	5668
2596	6	5672
2597	5	5675
2598	11	5675
2599	6	5677
2600	6	5678
2601	9	5682
2602	1	5683
2603	9	5683
2604	4	5685
2605	5	5687
2606	3	5689
2607	11	5689
2608	5	5691
2609	6	5693
2610	7	5695
2611	3	5696
2612	11	5696
2613	6	5698
2614	2	5700
2615	4	5700
2616	5	5700
2617	6	5700
2618	8	5700
2619	6	5703
2620	8	5704
2621	7	5705
2622	2	5709
2623	6	5711
2624	3	5712
2625	3	5713
2626	4	5714
2627	2	5715
2628	4	5715
2629	8	5715
2630	4	5718
2631	1	5719
2632	5	5720
2633	3	5721
2634	8	5724
2635	10	5724
2636	2	5725
2637	2	5726
2638	3	5726
2639	5	5726
2640	6	5726
2641	8	5726
2642	7	5728
2643	1	5731
2644	2	5731
2645	6	5731
2646	7	5731
2647	9	5731
2648	1	5735
2649	2	5742
2650	10	5742
2651	7	5743
2652	1	5744
2653	2	5744
2654	4	5744
2655	1	5747
2656	2	5750
2657	8	5756
2658	10	5759
2659	7	5760
2660	2	5763
2661	6	5763
2662	10	5766
2663	6	5768
2664	6	5773
2665	2	5775
2666	4	5775
2667	8	5775
2668	2	5776
2669	4	5776
2670	6	5777
2671	4	5778
2672	5	5779
2673	9	5780
2674	5	5784
2675	7	5786
2676	5	5786
2677	2	5787
2678	6	5787
2679	4	5788
2680	6	5788
2681	3	5789
2682	9	5790
2683	1	5791
2684	9	5794
2685	2	5797
2686	3	5799
2687	8	5800
2688	4	5803
2689	8	5803
2690	8	5804
2691	3	5806
2692	5	5806
2693	10	5806
2694	6	5807
2695	2	5808
2696	6	5808
2697	6	5811
2698	8	5812
2699	12	5812
2700	2	5814
2701	3	5814
2702	4	5814
2703	7	5814
2704	9	5814
2705	10	5815
2706	8	5817
2707	12	5817
2708	2	5818
2709	3	5818
2710	4	5818
2711	6	5818
2712	7	5818
2713	9	5818
2714	2	5819
2715	4	5820
2716	7	5822
2717	9	5822
2718	1	5823
2719	2	5823
2720	5	5823
2721	10	5823
2722	10	5825
2723	3	5826
2724	2	5827
2725	7	5828
2726	2	5829
2727	6	5833
2728	5	5834
2729	6	5836
2730	8	5836
2731	5	5839
2732	6	5840
2733	8	5841
2734	10	5842
2735	2	5843
2736	3	5843
2737	4	5843
2738	6	5843
2739	7	5843
2740	7	5844
2741	9	5844
2742	8	5845
2743	4	5846
2744	7	5846
2745	3	5847
2746	5	5847
2747	8	5847
2748	2	5848
2749	7	5848
2750	9	5848
2751	9	5849
2752	9	5850
2753	1	5851
2754	4	5851
2755	2	5852
2756	3	5852
2757	4	5852
2758	6	5852
2759	6	5854
2760	10	5855
2761	3	5856
2762	10	5856
2763	2	5857
2764	3	5857
2765	4	5857
2766	6	5857
2767	8	5857
2768	6	5858
2769	6	5861
2770	9	5862
2771	5	5865
2772	6	5866
2773	1	5868
2774	2	5868
2775	4	5868
2776	5	5868
2777	7	5868
2778	8	5868
2779	3	5869
2780	5	5872
2781	2	5873
2782	8	5873
2783	9	5874
2784	4	5876
2785	8	5877
2786	8	5879
2787	3	5881
2788	6	5883
2789	8	5883
2790	2	5885
2791	6	5886
2792	3	5891
2793	4	5891
2794	10	5893
2795	1	5896
2796	10	5896
2797	1	5898
2798	2	5898
2799	3	5898
2800	2	5899
2801	3	5899
2802	6	5904
2803	7	5906
2804	9	5913
2805	8	5915
2806	2	5917
2807	4	5917
2808	8	5917
2809	6	5921
2810	2	5927
2811	3	5927
2812	5	5933
2813	7	5935
2814	6	5937
2815	8	5950
2816	2	5951
2817	9	5953
2818	2	5954
2819	2	5955
2820	4	5955
2821	8	5956
2822	7	5960
2823	10	5968
2824	2	5971
2825	6	5971
2826	7	5971
2827	6	5975
2828	8	5975
2829	9	5975
2830	3	5979
2831	4	5979
2832	6	5983
2833	4	5984
2834	8	5986
2835	8	5990
2836	10	5991
2837	2	5992
2838	3	5992
2839	6	5992
2840	6	5993
2841	2	5994
2842	3	5994
2843	6	5994
2844	7	5994
2845	7	5998
2846	8	5998
2847	8	5999
2848	2	6008
2849	2	6010
2850	7	6013
2851	2	6016
2852	3	6016
2853	7	6016
2854	2	6017
2855	3	6017
2856	6	6017
2857	7	6018
2858	6	6019
2859	6	6020
2860	6	6022
2861	2	6023
2862	8	6023
2863	4	6024
2864	6	6024
2865	2	6025
2866	8	6025
2867	10	6027
2868	4	6028
2869	6	6028
2870	4	6029
2871	8	6029
2872	4	6031
2873	10	6035
2874	4	6047
2875	10	6047
2876	5	6050
2877	6	6053
2878	1	6054
2879	9	6054
2880	10	6054
2881	3	6058
2882	4	6059
2883	6	6063
2884	2	6071
2885	10	6078
2886	6	6081
2887	2	6083
2888	8	6083
2889	2	6084
2890	3	6084
2891	8	6084
2892	1	6087
2893	4	6089
2894	8	6089
2895	4	6090
2896	6	6090
2897	10	6090
2898	4	6091
2899	5	6091
2900	5	6092
2901	6	6092
2902	8	6097
2903	9	6099
2904	8	6106
2905	9	6106
2906	2	6107
2907	6	6107
2908	5	6114
2909	2	6116
2910	8	6116
2911	8	6130
2912	10	6133
2913	7	6139
2914	2	6140
2915	8	6140
2916	9	6144
2917	4	6146
2918	8	6146
2919	9	6151
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
-- Name: donordata_patronagecategory__patronagecategory_id_89295375_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY donordata_patronagecategory_donors
    ADD CONSTRAINT donordata_patronagecategory__patronagecategory_id_89295375_uniq UNIQUE (patronagecategory_id, donor_id);


--
-- Name: donordata_patronagecategory_donors_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY donordata_patronagecategory_donors
    ADD CONSTRAINT donordata_patronagecategory_donors_pkey PRIMARY KEY (id);


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
-- Name: donordata_patronagecategory_donors_029df19e; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX donordata_patronagecategory_donors_029df19e ON donordata_patronagecategory_donors USING btree (donor_id);


--
-- Name: donordata_patronagecategory_donors_9ce2ed5c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX donordata_patronagecategory_donors_9ce2ed5c ON donordata_patronagecategory_donors USING btree (patronagecategory_id);


--
-- Name: d5d22555a2cddbd1af24084d843bee9f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY donordata_patronagecategory_donors
    ADD CONSTRAINT d5d22555a2cddbd1af24084d843bee9f FOREIGN KEY (patronagecategory_id) REFERENCES donordata_patronagecategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: donordata_aliasmap_parent_id_df20e611_fk_donordata_donor_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY donordata_aliasmap
    ADD CONSTRAINT donordata_aliasmap_parent_id_df20e611_fk_donordata_donor_id FOREIGN KEY (parent_id) REFERENCES donordata_donor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: donordata_patronagecate_donor_id_91fcd2a0_fk_donordata_donor_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY donordata_patronagecategory_donors
    ADD CONSTRAINT donordata_patronagecate_donor_id_91fcd2a0_fk_donordata_donor_id FOREIGN KEY (donor_id) REFERENCES donordata_donor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

