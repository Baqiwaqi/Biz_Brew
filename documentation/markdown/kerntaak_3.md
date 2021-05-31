
# **Kerntaak 3**

_Optimaliseer een product_

Tim Bouma

10-05-2021

#

**[Inleiding](#_u993z6bz0c7l)**

**[Werkproces B1-K3-W1](#_qgozgt2dna3n)**

**[Optimaliseer een product](#_nj0st68tzqpd)**

[Acceptatietest](#_bxfm9uq19pkq) 

[Uitvoeren Acceptatietest](#_c5qgk3suk789) 

[Analyse acceptatietest](#_zaltbk3cpni6) 

[Aanpassingen na acceptatietest](#_46yrkv8q790c) 

[Documentatie van applicatie aanpassen](#_pxh50yqmieg4) 

**[Werkproces B1-K3-W2](#_yylr77aqs9nm)**

**[Levert het product op](#_k1otva8lprli)**

[De kandidaat demonstreert het product aan de hand van het programma van eisen, en vraagt om goedkeuring van de opdrachtgever.](#_7zc4j825j8ti) 

**[Werkproces B1-K3-W3](#_eeyzjwj5yrr)**

**[Evalueer het opgeleverde product](#_2tkvzu8w0tyq)**

[De kandidaat evalueert het product met de betrokkenen (wat is goed gegaan, verbeterpunten) en legt dit vast in een evaluatieverslag.](#_ssm97ql6an4u) 

[De kandidaat laat zijn evaluatieverslag accorderen.](#_166avdhjp1cn) 



# Inleiding

**Project**

Het project word een Flutter en Firebase applicatie. De applicatie is ontwikkeld met het framework Flutter van google. Voor de database gebruiken we Firebase Firestore en een authenticatie systeem met Firebase Authenticatie. Het idee om een applicatie om bouwen met Flutter en Firebase is ontstaan uit plan om eerst kennis op te bouwen. Deze kennis bestaat uit het opzetten, realiseren, testen, opleveren en onderhouden van een applicatie.

Voordat ik stage ben gaan lopen heb ik als barista gewerkt bij de CoffeeCompany. Bij de coffeecompany ben ik veel bezig geweest met het zetten en branden van koffie. Op die manier zijn we met het idee gekomen om een koffie applicatie te ontwikkelen. In de applicatie kunnen gebruiker inloggen en registreren met Firebase authenticatie. Daarna kan een gebruiker zijn koffie voorkeur te noteren. Zo weet de stagiaire van elke werknemer hoe hij zijn koffie wilt. Het halen van koffie is namelijk een van de taken van een stagiair..

Het project is succesvol als er na twee weken een werkende applicatie is neergezet. Als het lukt om deze applicatie opzetten via de voorgeschreven Flutter ontwikkelmethodes krijg je een goed beeld van hoe je een cross-platform applicatie moet ontwikkelen. Tijdens het ontwikkelen zelf word stagiair uitgedaagd om zich te verbeteren. Het kan dan ook voorkomen dat er extra functie worden ontwikkeld die buiten de scope van het PvE vallen. Deze functie worden bijgewerkt in de documentatie.


**Verslag**

In dit verslag worden exact drie werkprocessen beschreven:  

Het eerste werkproces (B1-K3-W1) is het optimaliseren van het product. Voor dit werkprocess stel ik een acceptatietest op voor het ontwikkelde product. Deze test laat ik uitvoeren door een of meerdere gebruikers en begeleidt ze hierbij. Foto’s zullen een extra informatie geven over het verloop van de acceptatietest. De feedback van de gebruikers wordt geanalyseerd en bepaald welke punten we gaan verwerken. Het feedback word doorgevoerd in de code en aan de hand van stukjes code beschreven. Hierbij laat ik een stuk code zien met toelichting. Daarnaast worden deze verandering verwerkt in de documentatie van de applicatie.

Werkproces (B1-K3-W2) is het opleveren van een product. Hierbij demonstreer ik het product aan de werkgever. Het demonstreren gaat via mail en Microsoft Teams. Het demonstreren word gedaan met afbeeldingen en documentatie. Daarna vraag ik om goed goedkeuring van het product via mail. Deze mail word verwerk in een verslag over het verloop van het opleverprocess..

Werkproces (B1-K3-W3) is het evalueren van het opgeleverde product met een evaluatieverslag. Hierin evalueer ik het product en opleverprocess met de betrokken en bepaal wat er wel of niet goed is gegaan. Daarnaast analyseer ik ook wat er verbeterd kan worden in volgende projecten. Deze verbetering worden hierin beschreven.

# Werkproces B1-K3-W1

## Optimaliseer een product 

### Acceptatietest

**Test 1 Inloggen**

Rol : Gebruiker

Functie : Inloggen

Beginpunt : Op het authenticatie scherm en niet ingelogd

Eindpunt : Op het home scherm en ingelogd.

Acties:

1. Vul e-mail in.
2. Vul password in.
3. Druk op inlogknop.

Resultaat : Gebruiker is Ingelogd en is aangekomen op het

home scherm


**Test 2 Registreren**

Rol : Gebruiker

Functie : Registreren

Beginpunt : Op het authenticatie scherm en niet ingelogd

Eindpunt : Op het home scherm, ingelogd en geregistreerd

Acties:

1. Vul e-mail in
2. Vul password in.
3. Druk op registratieknop

Resultaat : Gebruiker is geregistreerd in de database met gegevens(gebruikersnaam,suikers en coffee roast). Gebruiker is Ingelogd en aangekomen op het homescherm.

**Test 3 Settings updaten van gebruiker**

Rol : Gebruiker

Functie : Updaten van gebruikersgegevens

Beginpunt : Home scherm met vast gebruikersgegevens.

Eindpunt :Op het home scherm met up-to-dategebruikersgegevens.

Acties :

1. Klikt op settings wheel.
2. Aanpassen gebruikersnaam
3. Aanpassen aantal suiker
4. Aanpassen roast sterkte.
5. Klik op de update knop.

Resultaat : Gebruiker settings zijn aangepast

in de database en worden correct

weergegeven in de applicatie.


**Test 4 Uitloggen**

Rol : Gebruiker

Functie : Uitloggen

Beginpunt : Op het home scherm.

Eindpunt : Op het Authenticatie scherm en uitgelogd.

registreren of inloggen

Actie : Klikt op uitloggen.

Resultaat : Gebruiker is ingelogd.

## Uitvoeren Acceptatietest

De acceptatietest begint met korte en duidelijke inleiding welke functionaliteiten in de testen gaan voorkomen. Daarbij vraag ik aan de testpersonen of ze kunnen letten op mogelijke  verbeteringen. Verder geeft ik niet te veel informatie weg over hoe de test uitgevoerd moet worden. Tijdens het programmeren is er namelijk een happy path (happy flow) ontstaan. Dit is een scenario die geen Foutmelding geeft. Tijdens het zelftesten van de applicatie zijn telkens dezelfde parameters zijn gebruikt. Door de testpersoon niet verwachte parameters te laten gebruiken komen er nieuwe foutmeldingen naar boven. 

Een opvallende moment was dat de gebruiker op het authenticatie scherm via de tekst probeert  te navigeren. De tekst geef aan om naar registreren te gaan als je nieuw bent. Als je al een account hebt ga dan naar inloggen. Voor de gebruiker was dit  niet duidelijk.Verder gaat het registreren volgens begin en eind scenario. Gebruiker is ingelogd en gegevens zijn opgeslagen.

Het aanpassen van de gebruikers settings is niet helemaal duidelijk. Gebruiker ziet niet direct de settings knop.  De gebruiker probeer eerst door op verschillende onderdelen te klikken om naar het settings scherm te navigeren. Uiteindelijk klikt de gebruiker op de settings knop die hem brengt bij het settings scherm. Gebruiker past zijn gegevens aan. De aangepaste gegevens worden opgeslagen in de database en aangepaste op het home scherm zonder een foutmelding. Hierna vraag ik de gebruiker uit te loggen.

Gebruiker signed out en belandt weer op het homescherm. Nu moet de gebruiker weer inloggen. De gebruikere weet nog van het registren hoe hij moet navigeren.  Gebruiker beland op het inlogscherm. Hier vult hij zijn gegevens van het registreren in. Bij het invoeren wordt er alleen een foutief wachtwoord ingevuld. Vervolgens wordt de gebruiker teruggestuurd naar het homescherm. Gebruiker navigeert terug naar sign in en logt met de correcter credentials in en eindigt op het homescherm. Het inloggen gaat volgens begin en eind scenario. Dit scenario moet welk opnieuw worden uitgevoerd als er verkeerd gegevens worden ingevoerd. 

Resultaten van de acceptatietest

| **Functie** | **Acties** | **Feedback** | **Goed** |
| --- | --- | --- | --- |
| Navigeren | Navigeren naar signin of register scherm. | Via de tekst kunnen navigeren. | -/+ |
| Inloggen | Inloggen in applicatie | Gebruiker verwacht een foutmelding bij verkeerd invoeren van e-mail of wachtwoord. | - |
| Register | Registreren voor de applicatie | Gebruiker verwacht een foutmelding bij verkeerd invoeren van e-mail of wachtwoord. Ook wil de gebruiker de gebruiker gelijk na het registreren zijn username en koffie settings aanpassen. | - |
| Update Settings | Het veranderen van username, suikers en roast. | Verloopt goed als er net van de happy flow wordt afgeweken. Eventuele foutmeldingen geven bij het verkeerd invoeren van gegevens. | + |
| Sign Out | UItloggen in de applicatie | Verloopt goed en intuïtief | + |

## Analyse acceptatietest

_De feedback die ik ga verwerken uit de acceptatietest._

**Registreren**

Het registreren gaat zoals verwacht. De gebruiker beland op het home scherm. Op het home scherm zijn de verschillende koffie specificaties van de gebruikers te zien. De gebruiker was alleen verward welke gegevens van hem zijn. Een oplossing hiervoor is het toevoegen van een veld voor een  gebruikersnaam. Hierdoor is na het registreren gelijk duidelijk welke gegevens van de gebruiker is. Het zou ook mooi zijn als de gebruiker gelijk na het registreren zijn koffie voorkeur kan aanpassen. Het toevoegen van deze functie is makkelijk. De gebruiker hoeft namelijk alleen na het registreren naar op settings schermen worden doorverwezen.

**Inloggen**

Tijdens het inloggen is het voor de gebruiker is het belangrijk om te weten of er iets fout is gegaan. Nu is het geval dat de gebruiker terug naar het welkom scherm wordt gestuurd. Hierdoor weet de gebruiker niet wat er mis is gegaan bij het registreren. Als aanpassing stel ik voor om onderaan het inlog form foutmeldingen weer te geven . De foutmelding wordt weergegeven met een aan de van een snackbar bericht.

**Settings**

Feedback die ik heb gekregen voor de settings scherm is het valideren van de invulvelden. Als er niks in de velden wordt ingevuld is er de kans dat er gegevens in de database worden opgeslagen als null. Deze null gegevens zorgen voor een foutmelding op het home scherm. Hierdoor loopt de applicatie vast. Het is ook van groot belang dat een validatie van de invulvelden wordt toegevoegd. Dit moet voorkomen dat deze foutmelding opnieuwen plaats vind.

**Navigeren**

De gebruiker vindt het navigeren op het beginscherm onduidelijk. Voorstel van de gebruiker was het kunnen navigeren via tekst knoppen. De tekst knoppen moeten de gebruiker navigeren naar het inlog en registratiescherm. Het toevoegen van deze functionaliteiten gaat de gebruiker tijd besparen. 

Als alle aanpassingen zijn verwerk en toegepast in de code van de applicatie, voldoet de applicatie aan alle eisen van het PvE. Het slagen van alle acceptatietesten betekent ook dat de wrapper van de applicatie werkt. De wrapper is het onderdeel dat luistert naar de veranderingen in de authenticatie. De wrapper bepaald aan de hand van de authenticatie status(wel of niet ingelogd) of de gebruiker het authenticatie scherm of het home scherm krijgt te zien. 

**Design**

De gebruiker had even moeite met het vinden van de settings knop. Feedback van de gebruiker was om gebruikersgegevens ook klikbaar te maken. Dit ga ik alleen niet aanpassen. Mijn voorspelling is dat dit voor meer verwarring gaat zorgen bij andere gebruikers. Dit maakt de settings knop button voor nu de beste oplossing. Het is altijd nog mogelijk om in een nieuwe versie van de applicatie deze feature word aangepast. Feedback op de style van de applicatie worden niet meegenomen in de aanpassingen. Dit project was voornamelijk bedoeld om verschillende functionaliteiten te verwerken en niet om een design en graphics van een applicatie te ontwerpen. 

## Aanpassingen na acceptatietest

Na het analyseren van de feedback is besloten om een aantal onderdelen te verbeteren en aanpassen. Bij weergeven van de aanpassingen wordt GitHub gebruikt. Door het uitvoeren van een Github Commit voor en na de acceptatietest, worden de aanpassingen aan de code duidelijk zichtbaar. Zeker als je in een team werkt word vaak GitHub gebruikt. Tijdens dit project is GitHub gebruikt als versiebeheer en het makkelijk delen van de code met de opdrachtgever. 

**Github Project**
Het volledige project met documentatie is te zien op GitHub: [Biz Brew](https://github.com/Baqiwaqi/Biz_Brew)

**Inloggen**

De invulvelden voor het inloggen van de applicatie zijn voorzien van een formvalidator. Deze geven de gebruiker een foutmelding als er gegevens verkeerd worden ingevoerd. Bij het valideren zijn twee oplossingen toegepast. Als eerste is er in elke textformfield een validator toegevoegd. Als tweede oplossing heb ik een functie geschreven die controleert of de gebruiker een geldig e-mailadres gebruikt. Zeker voor het hergebruiken van code is dit handig. Tijdens het registreren moet er ook worden gecontroleerd op het e-mailadres.

**Registreren**

Het registratie form is uitgebreid met een username invulveld. Na het registreren is op home scherm is de gebruikersnaam van de gebruiker zichtbaar. Naast het uitbreiden  zijn alle velden voorzien van een validator om te voorkomen dat er verkeerde gegevens worden opgeslagen in de database. 

Na het registreren wordt de gebruiker direct doorverwezen met een navigator naar het settings scherm. Dit gebeurt alleen als de gebruiker registreert. Hier kan de gebruiker direct zijn gebruikersnaam en koffie voorkeur aan te passen. Na het aanpassen van zijn gegevens wordt de gebruiker weer terug genavigeerd naar het home scherm. 

De wrapper regelt wat de gebruiker te zien op basis van wat zijn authenticatie status is. Als het hierboven beschreven proces van registreren en inloggen goed werkt is dit gelijk ook een indicatie dat de wrapper ook voldoet aan zijn functionaliteit.

**Settings**

Aanpassingen in de code moeten voorkomen dat null gegevens worden opgeslagen in de database. Hiervoor heb ik eerst onderzoek gedaan naar hoe ik dit kan voorkomen. 

Als eerste oplossing heb ik invulveld validator toegevoegd. Deze validator controleert of het veld leeg is (.isEmpty). Deze oplossing gaf helaas niet het gewenste resultaat. Gegevens konden nog steeds worden opgeslagen als null gegeven. De tweede oplossing ben ik tegengekomen in de Flutter Fire documentatie. Deze oplossing verwijst eerst gegevens naar properties. Vervolgens worden de properties automatisch ingevuld en weergegeven in de invulvelden. Hierdoor kunnen er ook nooit meer null gegevens worden opgeslagen omdat er altijd een gegeven is ingevuld. 

De validatie .isEmpty word wel toegevoegd  aan de invulvelden. Een gebruiker kan namelijk wel gegevens updaten wanneer invulveld leeg is gemaakt. De validator gaat voorkomen dat dit ook word doorgevoerd in de database.

**Clean Code**

Flutter command zoals flutter analyze kan ook helpen bij het opschonen van je code. De functie geeft alle ongebruikte en foutmeldingen in de code terug. Zo kan je makkelijk achterhalen waar fouten zitten. Zeker als je code in productie genomen gaat worden, is het van belang dat er geen belangrijke informatie beschikbaar is voor een gebruiker. De meldingen die flutter analyze heeft gegeven heb ik vervolgens weggewerkt tot flutter analyse geen meldingen meer geeft.

## Documentatie van applicatie aanpassen

In het _Programma van Eisen_ heb ik twee stukken toegevoegd. Een analyse en een conclusie. In de analyse geeft aan hoe de acceptatietest is verwerkt en welke aanpassingen ik heb doorgevoerd aan de code. De conclusie is een reflectie op het project en iteratie van het project. Hierin worden fouten die ik heb gemaakt in dit project weerlegd en wat moet gebeuren om dit in de toekomst te voorkomen.

**Analyse**

Tijdens het programmeren van de Flutter applicatie zijn er meerdere iteraties van de applicatie gemaakt. Bij elke iteratie van de applicatie is gelet op de architectuur van de code en folderstructuur. Er is ook gebruik gemaakt van de laatste versie van alle packages. Hierdoor is code een paar keer opnieuw geschreven om aan de laatste specificatie te voldoen. BloC (Business Logic Components) is design method die is gebruikt bij het ontwikkelen van de applicatie. Deze methode wordt gebruikt om om applicaties productie klaar te ontwikkelen. Hierin staat het managen van de staat van de applicatie centraal.

Het valideren van gegevens voordat ze opgeslagen worden in de database was een van de functies die ik meerdere keren was vergeten. Zowel bij het registreren als het inloggen zijn er foutmeldingen naar boven gekomen die voor gebruikers onduidelijk waren. Bij het inloggen werd de gebruiker terug genavigeerd naar het home scherm na verkeerd invoeren van een e-mail of wachtwoord. Tijdens registreren was dit ook een probleem. Daarnaast was het voor de gebruiker onduidelijk welk account hij had aangemaakt. De oplossing die hiervoor is gebruikt was het toevoegen van een gebruikersnaam. Ook werd de gebruiker gelijk na het registreren doorverwezen naar het settings scherm waar hij zijn koffie gegevens kan aanpassen. In het settings scherm bleek achteraf veel fouten te zitten. Het was namelijk mogelijk dat er null gegevens werden opgeslagen in de database. Het gevolg hiervan was dat de applicatie vast liep. Dit probleem is verholpen door het alleen overschrijven van de gegevens die gewijzigd zijn.

**Conclusie**

Door veel tijd te stoppen in het verbeteren van code en het onderzoeken van verschillende ontwikkelmethoden zoals BloC is er een goed basis opgebouwd voor het ontwikkelen van Flutter applicaties. Daarnaast is zijn werkproces zoals Git ook behandeld. Een werkproces dat we als bedrijf bij nieuwe projecten ook willen gaan gebruiken. De basisfuncties van Firebase zijn ook behandeld. Hierdoor is het mogelijk om snel weer een nieuw firebase project op te zetten. Tijdens het ontwikkelen zijn er natuurlijk ook fouten gemaakt. Deze fouten zie ik persoonlijk als ik ervaring voor nieuwe projecten. Ervaring die ontwikkelen van software gaat versnellen en verbeteren. 

Veel foutmeldingen zijn voorgekomen omdat de ontwikkelaar voor elke functionaliteit maar één scenario heeft getest. Na het realiseren zijn tijdens de acceptatietest nieuwe scenario’s uitgevoerd. Tijdens het uitvoeren van deze testen zijn er foutmeldingen ontstaan die voorheen niet voorkwamen. In het vervolg is het belangrijk dat een aantal scenario’s worden uitgeschreven voordat de programmeur gaat ontwikkelen. In de toekomst zal tijdens de acceptatie dan minder of geen foutmeldingen ontstaan. 

# Werkproces B1-K3-W2

## Levert het product op

#### De kandidaat demonstreert het product aan de hand van het programma van eisen, en vraagt om goedkeuring van de opdrachtgever.

Verschillende iteraties zijn gedemonstreerd aan de op de opdrachtgever. Tijdens het ontwikkelen van de applicatie heb ik functionaliteiten van de applicatie aan de opdrachtgever laten zien. Op deze korte demonstraties heb ik feedback gekregen wat er moet worden verbeterd. Uiteindelijk was de applicatie klaar om er een acceptatietest er op uit te voeren.De acceptatietest is uitgevoerd door een collega. Resultaten uit de applicatie test zijn geanalyseerd, verwerkt en toegepast. Dit proces staat beschreven in werkproces B1-K3-W1. Aan de hand een verslag en afbeeldingen wordt dit gedemonstreerd en goedgekeurd door de opdrachtgever.. 
Functionele Eisen die in het PvE staan beschreven worden overtuigend aangetoont dat ze zijn verwerkt in de productieversie van de applicatie. Dit is gedaan door met een demonstratie nadat de aanpassingen van de acceptatietest zijn verwerkt. Vervolgens is de code in Git van development branch naar de Main branch gecommit. De Main branch is ook wel de productie branch. De code die in de Main branch staat is getest en aangepast en klaar voor gebruik. De applicatie die is ontwikkeld word nu gebruik genomen. In later examinering onderdeel P1-K1 worden incidentmelding uit deze applicatie opgenomen en verwerkt.

Een mail naar de opdrachtgever voor goedkeuring (Zie Afbeelding) is gestuurd. De inhoud van mail bestaat uit een beschrijving van de applicatie. Daarnaast word er in aangegeven dat het project is afgeronden en klaar voor gebruik. In de bijlage van mail is documentatie van de applicatie toegevoegd. Naast de documentatie is er een ook afbeelding van de applicatie toegevoegd. Zo kan de opdrachtgever nogmaals controleren of de applicatie voldoet naar zijn wensen. 

De demonstratie van het product heb ik tegelijkertijd gecombineerd met het examen spreken voor Nederlands. Tijdens het examen heb ik dit project gebruikt voor de presentatie. Deze zelfde presentatie heb ik in een vereenvoudigde vorm gegeven voor de opdrachtgever. Deze presentatie is opgenomen als bevestiging dat dit onderdeel is uitgevoerd.

_Verwerken Reactie opdrachtgever_

Requirement die zijn beschreven in het plan van aanpak zijn vergeleken met de werking van de applicatie en verwerkt. De documentatie geeft de opdrachtgever duidelijk beeld dat de applicatie werkt. Afbeeldingen van de acceptatietest geven de werking van de afgesproken functionaliteiten goed weer. De analyse was soms cryptisch en zinnen waren opgebouwd uit Nederlands en Engels. De  documentatie daarom gecontroleerd op spelling en waar nodig bijgewerkt. 



# Werkproces B1-K3-W3

# Evalueer het opgeleverde product

#### De kandidaat evalueert het product met de betrokkenen (wat is goed gegaan, verbeterpunten) en legt dit vast in een evaluatieverslag.

Het doel van dit project was dat de stagiaire kennis en werkervaring gaat op te bouwen voor het ontwikkelen van applicaties. Dit is voor de stagiair gelijk ook toegewezen als stageopdracht. Het resultaat waren meerder iteratie van een koffie applicatie. Het effect hiervan was de er een kennis op verschillende vlakken van ontwikkelen van software is behandeld. Daarnaast zijn de werkproces uitgewerkt en gedocumenteerd in de vorm van verschillende verslagen. 

De kennis die ik had rondom het ontwikkelen van software was minimaal. Daarom was het idee om gelijk te beginnen met ontwikkelen. Door metteen te gaan ontwikkelen, bouw je snel veel kennis op. Ondanks corona was het mogelijk op kantoor te werken. De opdrachtgever en stagebegeleider heeft ondanks zijn eigen werk tijd over om mij te begeleiden in het project. Hierdoor had ik een nauwe samenwerking waarin hij mij uitdaagt in het verbeteren van mijn werk. Door deze samenwerking ben je meer bewust van het project en heb ik het gevoel we naar een bepaald doel werken..

De samenwerking verliep goed. De samenwerking bestaat voornamelijk uit dat ik een functionaliteit aan de hand van de code demonstreer. Op deze demonstratie krijg ik feedback op de code. Daarna kreeg ik de opdracht om de applicatie verder uit te werken. Wat ik vanaf het begin beter had kunnen doen is meer vragen stel. Soms was het geval dat ik vastliep en lang op een regel code bleef hangen. Dit is zonde van de tijd want vaak als je iemand anders even naar je code laat kijken zien die gelijk het probleem.

Tijdens het coderen werd de focus gelegd op het schrijven van schaalbare, veilige en herbruikbare code. Wat ik heb behandeld van Flutter en software architectuur is nog maar het topje van de ijsberg. Software architectuur is een onderdeel waar ik me graag verder in wil verdiepen. Het begrijpen van concept en fundamentele structuren en de daarvan onderlinge relaties en eigenschappen.

De stageopdracht bestaat uit het documenteren van verschillende werkprocessen. Het uitwerken van de verschillende werkprocess heeft erg geholpen bij het vormgeven en visualiseren van het project. Door zorgvuldig een documentatie bij te houden kan er gericht aan de software worden gewerkt. Daarnaast is het voor mijn stagebegeleider duidelijk waar ik mee bezig ben en kan hij mij daarin worden begeleiden. Handelingen waar fouten in zijn gemaakt zijn beschreven in de documentatie. Om te voorkomen dat soortgelijk fouten in een volgend project weer ontstaan. 

De versiebeheer is bijgehouden met Git door middel van commits naar het Biz Brew project. De code is vervolgens gecontroleerd in de GitHub repository door de opdrachtgever. In theorie is werken met git workflows handig als je in teams werkt. Werk alleen aan een project ben je niet zo snel geneigd om gebruik te maken van een git workflow. Toch is tijdens dit project geprobeerd om dit werkproces te gebruiken. In volgend project moet er in de samenwerking met de opdrachtgever afspraken worden gemaakt voor het gebruik van een Git workflow.
Dit project kende 1 risico. Dat risico was het idee dat er niet genoeg functionaliteit in de applicatie waren verwerkt voor een stageopdracht.. Het project heeft daarom ook verschillende iteraties aangenomen. Om verwarring te voorkomen is ook met mijn mentor gesproken. In dat gesprek is goedkeuring gevraagd voor dit project en of het voldoende is voor een stage opdracht. Voor de volgende keer moeten deze afspraken eerste worden gemaakt voordat het project het ontwikkelproces in gaat. 

Er was kritiek vanuit de stageplek dat het Roc weinig informatie heeft geleverd over een stageopdracht. Door een gebrek aan informatie zijn we maar gaan ontwikkelen aan kleine projecten. Het gevolg hiervan was dat er wel te laat zijn begonnen aan het uitwerken van de stage opdracht. Dit is vervelend want we zijn nu bezig zijn aan een project dat we stop moeten zetten om aan de stage opdracht te werken. Als verbeterpunt zal ik mezelf meegeven om eerder de meegeleverd docoumenten van uit school te lezen. Dan kan er eerst aan de opdrachten worden gewerkt en is er daarna tijd om aan leuke projecten te werken.   

Verbeteringen om een volgend project succesvoller te maken is het eerst documenteren van een project. Dit geeft de programmeur en de opdrachtgever beide duidelijkheid. Deze documentatie hoeft niet zo uitgebreid te zijn als het schrijven van een : PvE, project plan, functioneel en technisch Ontwerp. Een overview waarbij de het probleem , de succescriteria en de scope met requirement worden omschreven is voldoende zijn voor een volgend project. Daarnaast is het ook handig om gebruik te maken van een kanban bord. Dit geeft overzicht van wat er nog moet gebeuren en wat is afgerond. Voor dit project is er nu wel een Plan van Aanpak en Functioneel Ontwerp geschreven. Dit heeft veel tijd gekost. Tijd die we beter kunnen stoppen in ontwikkelen van het programma.

