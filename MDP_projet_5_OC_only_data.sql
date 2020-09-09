--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-09-07 21:11:55

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
-- TOC entry 2916 (class 0 OID 18533)
-- Dependencies: 205
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produit (produit_id, nom, description) FROM stdin;
1	Pizza napolitaine	pizza avec légumes et poisson
2	Pizza calzone	pizza avec fromage tomate et jambon
3	Pizza chèvre miel	pizza avec fromage chèvre miel et tomate
4	Pizza végétarienne	pizza avec uniquement des légumes
5	Pizza saumon fumé	pizza avec fromage saumon tomate olive
6	Pizza bolognèse	pizza avec viande haché tomate fromage légumes
7	Pizza chorizo	pizza avec chorizo fromage légumes
8	Pizza 4 fromages	pizza au fromages avec chèvre emmentale
9	Pizza jambon figue	pizza jambon fromage et figues
10	pizza au foie gras	pizza avec foie gras fromage sauce tomate
11	pizza reine	pizza tomate fromage champignon jambon
12	pizza aux légumes grillés	pizza sauce tomate aubergine poivront olive salade
13	pizza montagnarde	pizza avec pomme de terre crème fraiche et jambon
\.


--
-- TOC entry 2919 (class 0 OID 18546)
-- Dependencies: 208
-- Data for Name: aide_memoire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aide_memoire (aide_memoire_id, produit_id, description) FROM stdin;
1	1	pizza avec champignon jambon fromage et jambon
2	2	pizza fermée jambon fromage et jambon sauce tomate
3	3	pizza avec chèvre fromage et roquette
4	4	pizza végétarienne avec tomate champignon fromage
5	5	pizza avec saumon fumé crème fraiche et fromage
6	6	pizza avec sauce bolognèse viande fromage
7	7	pizza avec saucisse chorizo fromage tomate
8	8	pizza avec fromage manchego tomate
9	9	pizza avec jambon figue fromage chèvre
10	10	pizza avec foie gras et tomate fromage
\.


--
-- TOC entry 2927 (class 0 OID 18580)
-- Dependencies: 216
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (client_id, prenom, nom, adresse, code_postal, ville, pays, numero_de_telephone, mail, mot_de_passe) FROM stdin;
1	Luke	Skywalker	666 route de Tatooine	92100	Boulogne Billancourt	France	0690768900	dark.vador.nest.pas.mon.pere@gmail.com	dingdong89
2	Master	Yoda	23 curieux tu es de savoir	69200	Lyon	France	0143889900	Do.or.do.not.there.is.no.try@hotmail.com	Stormtroopersdonotknow666
3	Mario	Bros	45 avenues des champignons	75011	Paris	France	0143889900	super.etoile@yahoo.com	peachprincess
4	Mickey	Mouse	234 route de Disneyland	13002	Marseille	France	0789347788	hey.mickey@waltdisney.com	minnieismyminnie
5	Naruto	Uzumaki	56 rue des Hokage	93100	St Denis	France	0154778899	Rasengan@gmail.com	sakurachanjetekiffe90
6	Link	Hyrule	67 route des princesses	69100	Venicieux	France	0489239900	mon.prenom.nest.pas.zelda@gmail.com	hyrulepower00
7	Sora	Riku	34 impasse Destiny island	92150	St Germain en Lay	France	0756431234	myheartisyourheart@gmail.com	Myfriendsaremypower
8	KaKarot	DragonBall	56 route Tortue Génial	13002	Marseille	France	0789002378	ousontles7boulesdecrystals@gmail.com	Shenron87
9	Hatsune	Minku	234 route des chansons	75016	Paris	France	0609574311	dancedanceparty@gmail.com	45chantonsensemble
10	Cleopatre	Horus	1 place du soleil	69130	Lyon	France	0378901234	cleopatre.reine.des.reines@hotmail.com	monnezestsuperfin!!
11	Hello	Kitty	33 place du pays du soleil levant	92140	Sèvres	France	0690895643	kitty-chan@sanrio.com	mymelody666
12	Dark	Vador	666 route de etoile de la mort	13007	Marseille	France	0478345677	luke.je.suis.ton.pere@order666.com	princessLeia78
13	Emmmanuel	Macron	1 route des elysées	75001	Paris	France	0167890033	cenestpasmanumaismonsieulepresident@lafrance.com	heymanue75001
14	Lili	Ting	259 rue des dragons	75013	Paris	France	0167890943	goldenfish@gmail.com	89sekai45
15	Nick	Furry	234 impasse des Avengers	69100	Lyon	France	0389004277	nick.furry@avengersassemble.com	whereismyeyepatchagain
16	Peter	Parker	25 route des araignées	13400	Marseille	France	0789342211	unepetitearaignéegrimpegrimpe@hotmail.com	Spidemeryourfriendlyneighbor
17	Dory	Nemp	90 route des poissons clowns	94100	Vincenne	France	0145678900	nemo.where.is.dory@gmail.com	geronimo89
18	Marilyn	Pong	1678 rue de Sèvres	92100	Boulogne Billancourt	France	0767568900	super.marilyn@hotmail.com	ironmaidenenforce
19	Timon	Hakunamatata	34 rue des Lions	69103	Lyon	France	0689346789	hakuna.matata@hotmail.com	Simbaroideslions
20	Steve	Jobs	98 impasse des pommes	75017	Paris	France	0143789033	steve.jobs@apple.com	iphoneipadmytoys
\.


--
-- TOC entry 2929 (class 0 OID 18588)
-- Dependencies: 218
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commande (numero, client_id, etat, date, etat_paiement) FROM stdin;
1	3	en cours	2020-08-16 13:45:55	t
2	12	annulée	2020-04-25 20:30:45	f
3	20	livrée	2020-03-16 15:15:12	t
4	6	en cours de livraison	2020-07-14 12:27:06	t
5	10	annulée	2020-05-21 19:10:15	f
6	18	en préparation	2020-06-20 16:34:22	t
7	15	en cours	2020-08-27 14:10:56	t
8	8	annulée	2020-01-12 22:13:01	f
9	1	en préparation	2020-02-15 18:32:15	t
10	17	livrée	2020-07-14 15:33:48	t
11	4	préparée	2020-08-25 17:18:38	t
12	5	en cours de livraison	2020-03-12 20:01:54	t
13	16	reçue	2020-05-11 23:14:36	t
14	2	annulée	2020-08-20 22:17:02	f
15	11	livrée	2020-06-17 17:17:03	t
16	9	en cours de livraison	2020-02-20 18:24:25	t
17	19	en préparation	2020-04-19 13:40:08	t
18	7	annulée	2020-03-02 23:45:07	f
19	13	préparée	2020-05-01 21:07:23	t
20	14	en cours de livraison	2020-07-18 14:54:01	t
\.


--
-- TOC entry 2931 (class 0 OID 18602)
-- Dependencies: 220
-- Data for Name: commande_produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commande_produit (produit_id, numero) FROM stdin;
10	1
5	19
4	5
7	12
8	10
9	14
8	20
5	8
3	17
9	15
6	18
8	7
9	2
5	3
9	4
1	6
7	16
8	13
5	12
5	11
\.


--
-- TOC entry 2923 (class 0 OID 18562)
-- Dependencies: 212
-- Data for Name: restaurant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restaurant (restaurant_id, nom, adresse, code_postal, ville, pays, numero_de_tel, mail, mot_de_passe) FROM stdin;
1	OC Pizza Paris	33 rue Cadets	75009	Paris	France	0145789033	oc.pizza.paris@oc.fr	OCpizzaparis75009
2	OC Pizza Boulogne Billancourt	123 rue Albert Khan	92130	Boulogne Billancourt	France	0156347899	oc.pizza.boulogne.billancourt@oc.fr	OCpizzaboulogne92100
3	OC Pizza Marseille	25 avenue des Calanques	13001	Marseille	France	0478902345	oc.pizza.marseille@oc.fr	OCpizzamarseille92100
4	OC Pizza Lyon	89 rue des Pinèdes	69001	Lyon	France	0390345678	oc.pizza.lyon@oc.fr	OCpizzalyon69000
5	Oc Pizza Vincenne	67 rue des fleurs	94100	Vincennes	France	0156902345	OC.pizza.vincennes@oc.fr	OCpizzavincennes94100
\.


--
-- TOC entry 2930 (class 0 OID 18597)
-- Dependencies: 219
-- Data for Name: commande_restaurant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commande_restaurant (numero, restaurant_id) FROM stdin;
5	4
8	3
7	2
16	3
2	4
9	1
14	1
11	2
10	4
17	5
4	3
12	3
20	5
6	4
18	2
13	5
19	4
3	1
1	2
\.


--
-- TOC entry 2914 (class 0 OID 18525)
-- Dependencies: 203
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredients (ingredient_id, nom, description) FROM stdin;
1	jambon	ingrédient pour pizza napolitaine
2	champignon	ingrédient pour pizza végétarienne
3	ananas	ingrédient pour pizza hawaienne
4	olive	ingrédient pour pizza vézuve
5	sauce tomate	ingrédient pour toute recette pizza
6	sauce blanche	ingrédient pour toute recette pizza
7	saucisse	ingrédient pour pizza viande
8	foie gras	ingrédient pour pizza foie gras
9	chèvre	ingrédient pour pizza 3 fromages
10	miel	ingrédient pour pizza miel et chèvre
11	jambon de parme	ingrédient pour pizza margarita vézuve hawaienne
12	oignon	accompagnement pizza végétarienne
13	saumon	accompagnement pizza saumon fumé
14	figue	accompagnement pizza jambon figue
15	sauce bolognèse	accompagnement pizza bolognèse
16	chorizo	accompagnement pizza chorizo et viande
17	manchego	accompagnement pizza 3 fromages
18	pomme de terre	accompagnant pizza foie gras
\.


--
-- TOC entry 2924 (class 0 OID 18568)
-- Dependencies: 213
-- Data for Name: ligne_de_stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ligne_de_stock (restaurant_id, ingredient_id, quantite) FROM stdin;
2	5	400
4	7	850
1	11	1265
5	18	560
4	14	290
1	9	345
2	3	678
4	10	900
2	15	460
1	4	1360
5	8	240
4	1	639
1	2	140
5	12	560
1	17	1000
3	6	2000
4	16	489
2	13	645
\.


--
-- TOC entry 2921 (class 0 OID 18554)
-- Dependencies: 210
-- Data for Name: personnel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personnel (personnel_id, prenom, nom, mail, mot_de_passe) FROM stdin;
1	Marc	Gésodio	marc.gesodio@oc.fr	gésodioMarc130945!
2	Sophie	Lila	sophie.lila@oc.fr	lilasophie901200!
3	Luca	Tickle	luca.tickle@oc.fr	tickleluca45!
4	Karen	Gorden	karen.gorden@oc.fr	karengorden01!
5	Mathieu	Cazillac	mathieu.cazillac@oc.fr	mathieucazillac02!
6	Catherine	Borden	catherine.borden@oc.fr	catherineborden90!
7	Sakura	Hinata	sakura.hinata@oc.fr	sakurahinata56!
8	Alain	Illamas	alain.illamas@oc.fr	alainillamas89!
9	Nicolas	Hughman	nicolas.hughman@oc.fr	hughmanNicolas56!
10	Benoit	Twitter	benoit.twitter@oc.fr	benoittwitter76!
\.


--
-- TOC entry 2917 (class 0 OID 18539)
-- Dependencies: 206
-- Data for Name: produit_ingredients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produit_ingredients (produit_id, ingredient_id, quantite) FROM stdin;
1	2	300
1	1	500
3	9	1500
7	7	300
8	10	456
6	15	1200
4	12	357
9	14	679
2	17	890
5	13	250
1	11	1400
5	18	689
3	6	897
2	5	450
8	17	150
\.


--
-- TOC entry 2925 (class 0 OID 18573)
-- Dependencies: 214
-- Data for Name: restaurant_personnel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restaurant_personnel (personnel_id, restaurant_id) FROM stdin;
3	4
10	1
5	4
1	3
7	2
6	1
8	3
7	1
2	4
9	3
\.


--
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 207
-- Name: aide_memoire_aide_memoire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aide_memoire_aide_memoire_id_seq', 10, true);


--
-- TOC entry 2938 (class 0 OID 0)
-- Dependencies: 215
-- Name: client_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_client_id_seq', 20, true);


--
-- TOC entry 2939 (class 0 OID 0)
-- Dependencies: 217
-- Name: commande__numero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande__numero_seq', 20, true);


--
-- TOC entry 2940 (class 0 OID 0)
-- Dependencies: 202
-- Name: ingredients_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingredients_ingredient_id_seq', 18, true);


--
-- TOC entry 2941 (class 0 OID 0)
-- Dependencies: 209
-- Name: personnel_personnel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personnel_personnel_id_seq', 10, true);


--
-- TOC entry 2942 (class 0 OID 0)
-- Dependencies: 204
-- Name: produit_produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produit_produit_id_seq', 13, true);


--
-- TOC entry 2943 (class 0 OID 0)
-- Dependencies: 211
-- Name: restaurant_restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.restaurant_restaurant_id_seq', 5, true);


-- Completed on 2020-09-07 21:11:56

--
-- PostgreSQL database dump complete
--

