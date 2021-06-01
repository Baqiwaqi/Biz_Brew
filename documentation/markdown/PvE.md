# **Programma van Eisen**

_Biz Brew_

Tim Bouma

05-05-2021



###

**[De Opdracht](#_4ksmpuwq7wsj)**

**[Functionele Requirements](#_hutbsa91lnkb)**

**[Verkregen Informatie](#_amo7h93l7bpz)**

**[Analyse](#_bqzha59ilid)**

**[Conclusie](#_raqp7uxlu08c)**



## De Opdracht

Bizworx is een IT bedrijf dat zich bezighoud met het opzetten van cloud architectuur. Als bedrijf zijn ze altijd op zoek naar manieren om te groeien. Het automatiseren van werkprocessen is onderdeel waar ik mijn rol in kan vervullen. Waarbij me stagebegeleider met ideeën komt en ze vertaal in code en applicaties.

Als stage opdracht hebben besloten om een applicatie te maken in de programmeertaal Dart waarbij we het framework Flutter gebruiken om de applicatie in elkaar te zetten. Om gegevens op te slaan kiezen we er voor om firebase firestore te gebruiken als database.

Hiervoor heb ik als barista gewerkt bij de CoffeeCompany. Bij de CoffeeCompany ben ik veel bezig geweest met het zetten en branden van koffie. Het lijkt ons leuk om een applicatie te bouwen waar gebruiker kunnen inloggen en vervolgens kan aangeven wat hun koffie voorkeur is. Als het lukt om deze applicatie opzetten via de voorgeschreven flutter ontwikkelmethodes krijg je een goed beeld van hoe je een cross-platform applicatie moet ontwikkelen.

Het documenteren van het ontwikkelprocessen wordt gedaan met Git. Hier kan je de code op committen. Elke keer als de code is aangepast kan je hem opnieuw committen naar je Github repository. Hierdoor krijg je een goed overzicht van elke verandering in de code en heb je gelijk een versie beheer.

### Functionele Requirements

_Gebruiker_

- Inloggen
- Registreren
- Opgeven van koffie voorkeur
  - Aantal suikers
  - Koffiesterkte
  - wel of geen melk (nieuw)
- Wachtwoord Reset (nieuw)
- Connectiviteit controle (nieuw)

_Systeem_

- Firebase Firestore database
- Firebase authenticatie
- Validatie van gegevens voordat dat ze worden opgeslagen in de database (nieuw)

### Non-Functionele Requirements

_Persoonlijk_

- Opzetten van een project
  - Ontwikkelomgeving (VM)
  - Documentatie
  - Git workflow (GitHub)
- Leren van de Flutter fundamentals
- Service van Firebase beheersen
- Hanteren van Github voor het archiveren en versiebeheer van de code (nieuw)

### Verkregen Informatie

Een groot deel van de opdracht is onderzoek doen naar de verschillende service die we willen gaan gebruiken. Dat houd in het maken van cook labs. Dit zijn kleine tutorials die je functionaliteiten van flutter en firebase praktisch uitleggen. Daarnaast is er ook de flutter, firebase en flutter fire documentatie die je kunne helpen bij het ontwikllen van de applcatie.

Flutter, Firebase en Git wordt al een aantal jaar gebruikt en heeft een grote community die artikelen en projecten post op website zoals: Medium, Reddit, Discord en stackoverflow. Deze bronnen kunnen je naast de officiële documentatie goed helpen bij het leren, programmeren en structureren van je applicatie.

### UItwerken Informatie

Het project begint met een aantal voorbereidingen voordat we gaan beginnen met het realiseren van de applicatie. Eerst wordt er een PvE opgesteld die de requirements van het programma bevat. Daarna moet er een applicatie structuur worden uitgewerkt die een duidelijk beeld geeft wat er in applicatie gebeurt. Na het goedkeuren van de documentatie door de opdrachtgever kan er een ontwikkelomgeving worden opgezet.

Voor de ontwikkelomgeving moet er een Virtuele machine van een android telefoon worden gemaakt. Door het downloaden van android studio kan je hiervan gebruik maken. Vervolgens kan er een firebase project opgezet worden in de Firebase console. Hierna kan er het realiseren beginnen.


Authenticatie class opzetten. Deze klasse gaat het registreren en inloggen regelen voor de applicatie. Eerst doen we een anonymous sign-in voor testen van de authenticatie. Later word dit uitgewerkt in een credentials sign-in. Naast het registreren en inloggen moet gebruiker ook kunnen uitloggen.

Database class opzetten. Hierin worden nieuwe gebruikers en hun gegevens opgeslagen. De gegevens die worden verwerkt zijn de gebruikersnamen, aantal suikers en sterkte van de koffie. Tijd aanmaken van het account worden vaste gegeven opgeslagen en weergegeven. De gebruiker kan daarna in de settings zijn voorkeuren voor koffie aanpassen.

### Analyse

Tijdens het programmeren van de Flutter applicatie zijn er meerdere iteraties van de applicatie gemaakt. Bij elke iteratie van de applicatie is gelet op de architectuur van de code en folderstructuur. Er is ook gebruik gemaakt van de laatste versie van alle packages. Hierdoor is code een paar keer opnieuw geschreven om aan de laatste specificatie te voldoen. BloC (Business Logic Components) is design method die is gebruikt bij het ontwikkelen van de applicatie. Deze methode wordt gebruikt om om applicaties productie klaar te ontwikkelen. Hierin staat het managen van de staat van de applicatie centraal.

Het valideren van gegevens voordat ze opgeslagen worden in de database was een van de functies die ik meerdere keren was vergeten. Zowel bij het registreren als het inloggen zijn er foutmeldingen naar boven gekomen die voor gebruikers onduidelijk waren. Bij het inloggen werd de gebruiker terug genavigeerd naar het home scherm na verkeerd invoeren van een e-mail of wachtwoord. Tijdens registreren was dit ook een probleem. Daarnaast was het voor de gebruiker onduidelijk welk account hij had aangemaakt. De oplossing die hiervoor is gebruikt was het toevoegen van een gebruikersnaam. Ook werd de gebruiker gelijk na het registreren doorverwezen naar het settings scherm waar hij zijn koffie gegevens kan aanpassen. In het settings scherm bleek achteraf veel fouten te zitten. Het was namelijk mogelijk dat er null gegevens werden opgeslagen in de database. Het gevolg hiervan was dat de applicatie vast liep. Dit probleem is verholpen door het alleen overschrijven van de gegevens die gewijzigd zijn.

### Conclusie

Door veel tijd te stoppen in het verbeteren van code en het onderzoeken van verschillende ontwikkelmethoden zoals BloC is er een goed basis opgebouwd voor het ontwikkelen van Flutter applicaties. Daarnaast is zijn werkproces zoals Git ook behandeld. Een proces dat bij nieuwe projecten van vast gaat komen. Fundamentals van Firebase zijn ook behandeld. Hierdoor is het mogelijk om weer snel een nieuwe firebase project opzetten. Tijdens het ontwikkelen zijn er natuurlijk ook fouten gemaakt. Deze fouten zie ik als ik ervaring voor nieuwe projecten die helpen bij het versnellen en verbeteren van het ontwikkelen.

De foutmeldingen die het meest zijn voorgekomen zijn veroorzaakt door het testen van maar een workflow. Door het testen van maar een workflow kwamen maar een bepaald aantal fouten omhoog. Pas nadat de acceptatietest werd uitgevoerd door een gebruiker die niet aan het project had gewerkt kwamen er nieuwe foutmeldingen naar boven. Dat komt doordat de gebruiker afweek van de eerder geteste scenario&#39;s. In het vervolg is het belangrijk dat een aantal scenario&#39;s worden uitgeschreven voordat er code wordt geschreven. Deze oplossing zal in de toekomst het aantal foutmeldingen die in de analyse staan beschreven voorkomen.