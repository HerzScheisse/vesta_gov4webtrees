��    T      �  q   \         M   !     o  �     3   (  z   \  l   �  �   D	     �	  �   �	  2   |
  /   �
  I   �
  8   )  ^   b  ]   �  0    �   P  1   �          1  !   8  %   Z  c   �  ?   �  6   $  ;   [  c   �  M   �  5   I  `     �   �  /   �  H   �  �     1   �     �  +   �  /   �  I   (  T   r  U   �  k        �  =   �  |   �  a   X     �     �  @   �     %  T   ;     �     �     �     �  ?   �     ,  3   �  :   �  �     y   �  x   <  �   �      S  [   t  "   �  ^   �  F   R  �   �  �   Y     �  /     j   4  =   �     �     �     �  ]     ^   m     �     �     �       �    a   �      =!  �   P!  C   �!  �   -"  y   �"  �   T#     �#  �   $  <   �$  <   �$  G   $%  ?   l%  h   �%  `   &  ]  v&  �   �'  B   �(     �(     �(     �(  &   �(  �   ")  =   �)  :   �)  D   *  t   a*  O   �*  M   &+  z   t+  �   �+  -   �,  T   �,  �   0-  0   �-     	.  /   .  ?   M.  [   �.  t   �.  Y   ^/  t   �/     -0  G   D0  ~   �0  p   1     |1     �1  A   �1      �1  W   2     f2     u2     �2     �2  B   �2  |   3  /   �3  =   �3  �   �3  |   �4  �   5  �   �5  )   Y6  n   �6  $   �6  n   7  S   �7  �   �7  �   �8  4   O9  8   �9  s   �9  ?   1:     q:     y:  !   �:  e   �:  c   ;     ~;  #   �;  *   �;     �;           P   '   R      K                           =   T   %   	   !      #           5   N   .   3   J                 Q             &   B              /   A   -   H   +   "       <                                   :   7   @                )      *   8   9   4       1          M       F      D   
   ,             0   G       L   >   ;   S       O      6   I           2   $                      ?   C      (   E        'Classic' mode, extended to link to places from the GEDCOM data, if possible. 'Classic' mode. (Why is German in particular singled out like this? Because the GOV gazetteer is currently rather German-language centric, and therefore many places have German names). A module integrating GOV (historic gazetteer) data. A module integrating GOV (historic gazetteer) data. Enhances places with GOV data via the extended 'Facts and events' tab. According to the current GOV specification, settlements are not supposed to be parents of other settlements. Additionally, the module checks if the respective GOV id, or any of its parents within the hierarchy, has languages defined in the csv file '%1$s'. Administrative levels All data (except for the mapping of places to GOV ids, which has to be done manually) is retrieved from the GOV server and cached internally. Allow objects of type 'confederation' in hierarchy Allow objects of type 'settlement' in hierarchy As a final fallback, determine the place name according to this checkbox: Compact display (administrative levels only as tooltips) Consequently, place hierarchy information can only be changed indirectly, via the GOV website. Display a tooltip indicating the source of the GOV id. This is intended mainly for debugging. Execute requests to the GOV server via NuSOAP, rather than using the native php SoapClient. The native SoapClient is usually enabled (you can check this in your php.ini settings), but may not be provided by all hosters. If the native client is not enabled/available, this option is checked automatically. For a given place, this modules displays one or more names by matching the available names against a list of languages, according to the following strategy: For events with a date range, use the median date GOV Id Management GOV id GOV id for %1$s has been removed. GOV id for %1$s has been set to %2$s. GOV ids are stored outside GEDCOM data by default, but ids stored via _GOV tags are also supported. GOV place hierarchy for %1$s has been reloaded from GOV server. GOV place hierarchy has been reloaded from GOV server. If checked, attempt to fall back to the German place name.  If this is checked, the displayed GOV hierarchy uses place names from the GEDCOM data, if possible. If this option is checked, you usually want to disable the following option.  If unchecked, prefer any language other than German;  In particular, the Shared Places custom module may be used to manage GOV ids within GEDCOM data. In this case, the GOV ids are stored in a separate database table, which has to be managed manually when moving the respective tree to a different webtrees installation.  Internals (adjusted automatically if necessary) Invalid GOV id! Valid GOV ids are e.g. 'EITTZE_W3091', 'object_1086218'. It is recommended to use only one of the following options. You may also (temporarily) disable all editing via unchecking all of them. It will not be overwritten by subsequent updates. Local GOV data Look up a matching GOV id on the GOV server Mappings of places to GOV ids are not affected. Note: The mapping from place to GOV id is stored outside the gedcom data. Note: Ultimately it's probably preferable to correct the respective GOV data itself. Objects of this type arguably do not strictly belong to the administrative hierarchy. Otherwise, the start date is used (this is more consistent with other date-based calculations in webtrees). Outside GEDCOM data Outside GEDCOM data - editable by anyone (including visitors) Particularly useful in order to manage GOV ids via the Shared Places module. Ids are stored and exportable via GEDCOM tags.  Place hierarchies are displayed historically, i.e. according to the date of the respective event. Place names from GOV Place text and links Reset GOV id (outside GEDCOM) and reload the GOV place hierarchy Reset GOV id for %1$s Save the current id in order to reload the place hierarchy data from the GOV server. Set GOV id (outside GEDCOM) Set GOV id for %1$s Show GOV hierarchy for Show additional info Subsequently, all data is retrieved again from the GOV server.  The GOV server provides place names in different languages. However, there is no concept of an 'official language' for a place. The GOV server seems to be temporarily unavailable. The current user language always has the highest priority. These languages are then used, in the given order, either as fallbacks, or (if upper-cased) as additional languages (i.e. 'official languages' for a place hierarchy). This option mainly exists for demo servers and is not recommended otherwise. It has precedence over the preceding option. This policy hasn't been strictly followed though. Check this option if you end up with incomplete hierarchies otherwise. Uncheck this option if you do not want objects such as the European Union or the Holy Roman Empire to appear in hierarchies as parents of sovereign entities. Use NuSOAP instead of SoapClient Use place names and link to places existing in webtrees, additionally link to GOV via icons Use place names and links from GOV Use place names and links from GOV, additionally link to places existing in webtrees via icons Usually only required in case of substantial changes of the GOV data.  Vesta Gov4Webtrees: The displayed GOV hierarchy now additionally links to webtrees places where possible. You can switch back to the classic display (and others) via the module configuration. When this option is disabled, an alternative edit control is provided, which still allows to reload place hierarchies from the GOV server. Where to edit and store GOV ids Within GEDCOM data (via other custom modules).  You can create and modify this csv file according to your personal preferences, see '%1$s' for an example. You may also save an empty id in order to remove the mapping. both date of event fallback to German place names for events without a date, present time hierarchy will be used regardless of this preference. motivated by the assumption that place names in the local language are more useful in general  present time reload the GOV place hierarchy reset all cached data once today Project-Id-Version: Dutch (Vesta Webtrees Custom Modules)
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Dutch <https://hosted.weblate.org/projects/vesta-webtrees-custom-modules/vesta-gov4webtrees/nl/>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 4.7-dev
 'Klassieke' modus, uitgebreid om te linken naar plaatsen uit de GEDCOM-gegevens, indien mogelijk. 'Klassieke' modus. (Waarom wordt het Duits in het bijzonder genoemd? Omdat de GOV-gazetteer is momenteel nogal Duitstalig is, en daarom hebben veel plaatsen Duitse namen). Een module met geïntegreerde GOV (historische gazetteer) gegevens. Een module met geïntegreerde GOV (historische gazetteer) gegevens. Hiermee verbetert u de plaatsen met GOV-gegevens via het uitgebreide tabblad 'Feiten en gebeurtenissen'. Volgens de huidige GOV-specificatie worden nederzettingen niet verondersteld om ouders te zijn van andere nederzettingen. Bovendien controleert de module of de betreffende GOV-id, of een van de ouders binnen de hiërarchie, een taal heeft gedefinieerd in het csv-bestand '%1$s'. Bestuursniveaus Alle gegevens (behalve de toewijzing van plaatsen aan GOV-id's, die handmatig moeten worden gedaan) worden opgehaald van de GOV-server en intern in de cache opgeslagen. Objecten van het type 'confederatie' toestaan in hiërarchie Objecten van het type 'nederzetting' in hiërarchie toestaan Als laatste terugval bepaalt u de plaatsnaam volgens dit selectievakje: Compacte weergave (administratieve niveaus alleen als tooltips) Daarom kan informatie over hiërarchie van plaatsen alleen indirect worden gewijzigd via de GOV-website. Een tooltip weergeven die de bron van het GOV-id aangeeft. Dit is vooral bedoeld voor debugging. Voer aanvragen uit naar de GOV-server via NuSOAP, in plaats van de native php SoapClient te gebruiken. De native SoapClient is meestal ingeschakeld (u kunt dit controleren in uw php.ini-instellingen), maar kan niet worden verstrekt door alle hosters. Als de native client niet is ingeschakeld/beschikbaar is, wordt deze optie automatisch aangevinkt. Voor een bepaalde plaats worden in deze modules een of meer namen weergegeven door de beschikbare namen te vergelijken met een lijst met talen, volgens de volgende strategie: Voor gebeurtenissen met een datumbereik gebruikt u de mediaandatum GOV-id-beheer GOV-id GOV-id voor %1$s is verwijderd. GOV-id voor %1$s is ingesteld op %2$s. GOV-id's worden standaard buiten GEDCOM-gegevens opgeslagen, maar id's die zijn opgeslagen via _GOV-tags worden ook ondersteund. GOV-plaatshiërarchie voor %1$s is herladen vanaf GOV-server. GOV-plaatshiërarchie is opnieuw geladen vanaf GOV-server. Indien aangevinkt, probeer terug te vallen op de Duitse plaatsnaam.  Als dit is aangevinkt, gebruikt de weergegeven GOV-hiërarchie, indien mogelijk, plaatsnamen uit de GEDCOM-gegevens. Als deze optie is ingeschakeld, wilt u meestal de volgende optie uitschakelen.  Als dit niet is aangevinkt, geeft de voorkeur aan een andere taal dan Duits;  In het bijzonder kan de aangepaste module Gedeelde plaatsen worden gebruikt om GOV-id's binnen GEDCOM-gegevens te beheren. In dit geval worden de GOV-id's opgeslagen in een aparte databasetabel, die handmatig moet worden beheerd wanneer de betreffende boom naar een andere webtrees-installatie wordt verplaatst.  Internen (indien nodig automatisch aangepast) Ongeldig GOV-id! Geldige GOV-ids zijn bijvoorbeeld 'EITTZE_W3091', 'object_1086218'. Het wordt aanbevolen om slechts één van de volgende opties te gebruiken. U kunt ook (tijdelijk) alle bewerkingen uitschakelen via het uitvinken van alle bewerkingen. Het wordt niet overschreven door latere updates. Lokale GOV-gegevens Zoek een overeenkomende GOV-id op de GOV-server Toewijzingen van plaatsen naar GOV-id's worden niet beïnvloed. Opmerking: De toewijzing van plaats naar GOV-id wordt buiten de gedcom-gegevens opgeslagen. Opmerking: Uiteindelijk heeft het waarschijnlijk de voorkeur om de respectievelijke GOV-gegevens zelf te corrigeren. Objecten van dit type behoren aantoonbaar niet strikt tot de administratieve hiërarchie. Anders wordt de begindatum gebruikt (dit komt meer overeen met andere op datum gebaseerde berekeningen in webtrees). Buiten GEDCOM-gegevens Buiten GEDCOM-gegevens - bewerkbaar voor iedereen (inclusief bezoekers) Vooral handig om GOV-ids te beheren via de Gedeelde plaatsen module. Id's worden opgeslagen en geëxporteerd via GEDCOM tags.  Plaatshiërarchieën worden historisch weergegeven, d.w.z. op basis van de datum van de betreffende gebeurtenis. Plaatsnamen van GOV Plaatstekst en koppelingen Stel GOV-id opnieuw in en herlaad de GOV-hiërarchie van plaatsen Stel GOV-id opnieuw in voor %1$s Sla de huidige id op om de hiërarchie van plaatsen opnieuw te laden van de GOV-server. Stel GOV-id in Stel GOV-id in voor %1$s Toon GOV-hiërarchie voor Toon aanvullende informatie Vervolgens worden alle gegevens weer opgehaald van de GOV-server.  De GOV-server biedt plaatsnamen in verschillende talen. Er is echter geen concept van een 'officiële taal' voor een plaats. De GOV-server lijkt tijdelijk niet beschikbaar. De huidige gebruikerstaal heeft altijd de hoogste prioriteit. Deze talen worden vervolgens in de gegeven volgorde gebruikt als terugval, of (indien in hoofdletters) als extra talen (d.w.z. 'officiële talen' voor een plaatshiërarchie). Deze optie bestaat voornamelijk voor demoservers en wordt verder niet aanbevolen. Het heeft voorrang op de voorgaande optie. Dit beleid is echter niet strikt gevolgd. Vink deze optie aan als u op de een of andere manier in onvolledige hiërarchieën terechtkomt. Schakel deze optie uit als u niet wilt dat objecten zoals de Europese Unie of het Heilige Roomse Rijk in hiërarchieën worden weergegeven als ouders van soevereine entiteiten. NuSOAP gebruiken in plaats van SoapClient Gebruik plaatsnamen en link naar plaatsen die bestaan in webtrees, en link bovendien naar GOV via pictogrammen Gebruik plaatsnamen en links van GOV Gebruik plaatsnamen en links van GOV, en link bovendien naar plaatsen die in webtrees bestaan via pictogrammen Meestal alleen vereist in geval van substantiële wijzigingen van de GOV-gegevens.  Vesta Gov4Webtrees: De weergegeven GOV-hiërarchie linkt nu waar mogelijk ook naar webtrees-plaatsen. U kunt terugschakelen naar de klassieke weergave (en andere) via de moduleconfiguratie. Wanneer deze optie is uitgeschakeld, wordt een alternatief besturingselement voor bewerken geboden, waarmee hiërarchieën van de GOV-server nog steeds opnieuw kunnen worden geladen. Waar moeten de GOV-id's worden bewerkt en opgeslagen Binnen GEDCOM-gegevens (via andere aangepaste modules).  U kunt dit csv-bestand aanmaken en wijzigen op basis van uw persoonlijke voorkeuren, zie '%1$s' voor een voorbeeld. U kunt ook een lege id opslaan om de toewijzing te verwijderen. allebei datum van de gebeurtenis terugvallen op Duitse plaatsnamen voor gebeurtenissen zonder datum wordt de tegenwoordige hiërarchie gebruikt, ongeacht deze voorkeur. ingegeven door de veronderstelling dat plaatsnamen in de lokale taal in het algemeen nuttiger zijn  huidige tijd herlaad de hiërarchie van plaatsen reset alle gegevens in de cache één keer vandaag 