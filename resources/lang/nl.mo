��    k      t  �   �       	  M   !	     o	  �   	  3   (
  z   \
  l   �
  �   D     �     �            �   0  I   �  �     8   �  ^   �  ]   4  0  �  �   �  1   _  p   �            !     %   =  c   c  n   �  ?   6  6   v  c   �  ;     c   M  M   �  5   �  X   5  ~   �  �     `   �  �     /   �  H   �  �   %  1   �     �     �  "   �  +     /   E  I   u  T   �  �     x   �     &     5  k   ;     �  =   �  |   �  a   v     �     �     �  	     @        ]  T   s  C   �          (  
   <  �   G     �     	  .     ?   M     �  3     :   A  �   |  y   #   |   �       !  [   ;!  "   �!  ^   �!  F   "  �   `"  �    #     �#  /   �#  j   �#  =   f$  ;   �$     �$     �$     �$  ]   %     p%  ^   u%     �%     �%      &  /   &     K&  $   Q&     v&  �  �&  a   Q(     �(  �   �(  C   _)  �   �)  y   P*  �   �*     g+     s+     �+     �+  �   �+  G   [,  �   �,  ?   e-  a   �-  `   .  ]  h.  �   �/  B   i0  z   �0     '1     51     <1  &   \1  �   �1  ~   2  =   �2  :   �2  s   �2  D   p3  t   �3  O   *4  M   z4  m   �4  �   65  �   �5  z   h6  �   �6  -   �7  T   �7  �   $8  0   �8     �8     
9  $   9  /   C9  ?   s9  [   �9  t   :  �   �:  �   $;     �;     �;  t   �;     ;<  G   R<  ~   �<  p   =     �=     �=     �=  	   �=  :   �=      >  P   1>  K   �>     �>     �>     �>  �   ?     �?     �?  1   @  B   :@  |   }@  /   �@  =   *A  �   hA  |   B  �   �B  )   C  n   @C  $   �C  n   �C  S   CD  �   �D  �   UE  4   F  8   AF  s   zF  ?   �F  H   .G     wG     G  !   �G  e   �G      H  c   %H     �H      �H  *   �H  &   �H     	I  *   I     <I            G       %   C   L   N   ,   c   ?       =   B   6   a   [   V       Y   d   e   <                 _             `   T      R   @          f              W          O                  
   &      X   5              Q          U   F   P      -   h   !   >   *      j      g       $      9   0   7   #         +   ]       S   A                     4   	       M       ^   ;              D   /       (   \       i       K   J   2             :   b                               )   1   8       "   H             E      '   3   Z           .   k   I               'Classic' mode, extended to link to places from the GEDCOM data, if possible. 'Classic' mode. (Why is German in particular singled out like this? Because the GOV gazetteer is currently rather German-language centric, and therefore many places have German names). A module integrating GOV (historic gazetteer) data. A module integrating GOV (historic gazetteer) data. Enhances places with GOV data via the extended 'Facts and events' tab. According to the current GOV specification, settlements are not supposed to be parents of other settlements. Additionally, the module checks if the respective GOV id, or any of its parents within the hierarchy, has languages defined in the csv file '%1$s'. Administrative Administrative (level %1$s) Administrative (other) Administrative levels All data (except for the mapping of places to GOV ids, which has to be done manually) is retrieved from the GOV server and cached internally. As a final fallback, determine the place name according to this checkbox: Check this option if you still want organizations to appear in hierarchies, e.g. the United Nations as a higher-level object of sovereign entities. Compact display (administrative levels only as tooltips) Consequently, place hierarchy information can only be changed indirectly, via the GOV website. Display a tooltip indicating the source of the GOV id. This is intended mainly for debugging. Execute requests to the GOV server via NuSOAP, rather than using the native php SoapClient. The native SoapClient is usually enabled (you can check this in your php.ini settings), but may not be provided by all hosters. If the native client is not enabled/available, this option is checked automatically. For a given place, this module displays one or more names by matching the available names against a list of languages, according to the following strategy: For events with a date range, use the median date For more fine-grained adjustments, and to view the list of the types and type groups, edit the GOV data locally. GOV Id Management GOV id GOV id for %1$s has been removed. GOV id for %1$s has been set to %2$s. GOV ids are stored outside GEDCOM data by default, but ids stored via _GOV tags are also supported. GOV objects belong to different type groups. The GOV place hierarchy is based on objects of type group '%1$s'. GOV place hierarchy for %1$s has been reloaded from GOV server. GOV place hierarchy has been reloaded from GOV server. Hide an object and stop the place hierarchy at that point by moving it to an irrelevant type group. If checked, attempt to fall back to the German place name.  If this is checked, the displayed GOV hierarchy uses place names from the GEDCOM data, if possible. If this option is checked, you usually want to disable the following option.  If unchecked, prefer any language other than German;  In any case, they are still used as fallbacks to determine further higher-level objects. In general, hide an object while preserving the overall place hierarchy by moving it to a hidden type group (see preferences). In particular you may want to revert locally some controversial changes made on the GOV server (such as the object type of the Holy Roman Empire). In particular, the Shared Places custom module may be used to manage GOV ids within GEDCOM data. In this case, the GOV ids are stored in a separate database table, which has to be managed manually when moving the respective tree to a different webtrees installation.  Internals (adjusted automatically if necessary) Invalid GOV id! Valid GOV ids are e.g. 'EITTZE_W3091', 'object_1086218'. It is recommended to use only one of the following options. You may also (temporarily) disable all editing via unchecking all of them. It will not be overwritten by subsequent updates. Judicial Local GOV data Local modifications are preserved. Look up a matching GOV id on the GOV server Mappings of places to GOV ids are not affected. Note: The mapping from place to GOV id is stored outside the gedcom data. Note: Ultimately it's probably preferable to correct the respective GOV data itself. Objects of this type strictly do not belong to the administrative hierarchy in the sense that they are no territorial entities (Gebietskörperschaften). Obvious mistakes should be corrected on the GOV server itself, but there may be cases where this is not easily possible. Organizational Other Otherwise, the start date is used (this is more consistent with other date-based calculations in webtrees). Outside GEDCOM data Outside GEDCOM data - editable by anyone (including visitors) Particularly useful in order to manage GOV ids via the Shared Places module. Ids are stored and exportable via GEDCOM tags.  Place hierarchies are displayed historically, i.e. according to the date of the respective event. Place hierarchy Place names from GOV Place text and links Religious Reset GOV id (outside GEDCOM) and reload the GOV place hierarchy Reset GOV id for %1$s Save the current id in order to reload the place hierarchy data from the GOV server. See also %1$s for the original list of types and type descriptions. Set GOV id (outside GEDCOM) Set GOV id for %1$s Settlement Several object types that are part of this type group in the original model can be seen as problematic in this context, and have been moved to a custom '%1$s' type group. Show GOV hierarchy for Show additional info Show objects of type group '%1$s' in hierarchy Subsequently, all data is retrieved again from the GOV server.  The GOV server provides place names in different languages. However, there is no concept of an 'official language' for a place. The GOV server seems to be temporarily unavailable. The current user language always has the highest priority. These languages are then used, in the given order, either as fallbacks, or (if upper-cased) as additional languages (i.e. 'official languages' for a place hierarchy). This option mainly exists for demo servers and is not recommended otherwise. It has precedence over the preceding option. This policy hasn't been strictly followed though. Check this option if you still want to display settlements in hierarchies. Use NuSOAP instead of SoapClient Use place names and link to places existing in webtrees, additionally link to GOV via icons Use place names and links from GOV Use place names and links from GOV, additionally link to places existing in webtrees via icons Usually only required in case of substantial changes of the GOV data.  Vesta Gov4Webtrees: The displayed GOV hierarchy now additionally links to webtrees places where possible. You can switch back to the classic display (and others) via the module configuration. When this option is disabled, an alternative edit control is provided, which still allows to reload place hierarchies from the GOV server. Where to edit and store GOV ids Within GEDCOM data (via other custom modules).  You can create and modify this csv file according to your personal preferences, see '%1$s' for an example. You may also save an empty id in order to remove the mapping. You may modify all data retrieved from the GOV server %1$s. both date of event fallback to German place names for events without a date, present time hierarchy will be used regardless of this preference. here motivated by the assumption that place names in the local language are more useful in general  present time reload the GOV place hierarchy reset all cached data once this place does not exist at this point in time today unknown GOV type (newly introduced?) with local modifications Project-Id-Version: Dutch (Vesta Webtrees Custom Modules)
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Dutch <https://hosted.weblate.org/projects/vesta-webtrees-custom-modules/vesta-gov4webtrees/nl/>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 4.9-dev
 'Klassieke' modus, uitgebreid om te linken naar plaatsen uit de GEDCOM-gegevens, indien mogelijk. 'Klassieke' modus. (Waarom wordt het Duits in het bijzonder genoemd? Omdat de GOV-gazetteer is momenteel nogal Duitstalig is, en daarom hebben veel plaatsen Duitse namen). Een module met geïntegreerde GOV (historische gazetteer) gegevens. Een module met geïntegreerde GOV (historische gazetteer) gegevens. Hiermee verbetert u de plaatsen met GOV-gegevens via het uitgebreide tabblad 'Feiten en gebeurtenissen'. Volgens de huidige GOV-specificatie worden nederzettingen niet verondersteld om ouders te zijn van andere nederzettingen. Bovendien controleert de module of de betreffende GOV-id, of een van de ouders binnen de hiërarchie, een taal heeft gedefinieerd in het csv-bestand '%1$s'. Bestuurlijk Bestuurlijk (niveau %1$s) Bestuurlijk (overig) Bestuursniveaus Alle gegevens (behalve de toewijzing van plaatsen aan GOV-id's, die handmatig moeten worden gedaan) worden opgehaald van de GOV-server en intern in de cache opgeslagen. Als laatste terugval bepaalt u de plaatsnaam volgens dit selectievakje: Schakel deze optie in als u nog steeds wilt dat organisaties in hiërarchieën worden weergegeven, bijvoorbeeld de Verenigde Naties als een object op een hoger niveau van soevereine entiteiten. Compacte weergave (administratieve niveaus alleen als tooltips) Daarom kan informatie over plaatshiërarchie alleen indirect worden gewijzigd via de GOV-website. Een tooltip weergeven die de bron van het GOV-id aangeeft. Dit is vooral bedoeld voor debugging. Voer aanvragen uit naar de GOV-server via NuSOAP, in plaats van de native php SoapClient te gebruiken. De native SoapClient is meestal ingeschakeld (u kunt dit controleren in uw php.ini-instellingen), maar kan niet worden verstrekt door alle hosters. Als de native client niet is ingeschakeld/beschikbaar is, wordt deze optie automatisch aangevinkt. Voor een bepaalde plaats geeft deze module een of meer namen weer door de beschikbare namen te vergelijken met een lijst met talen, volgens de volgende strategie: Voor gebeurtenissen met een datumbereik gebruikt u de mediaandatum Voor meer fijnmazige aanpassingen en om de lijst met typen en typegroepen weer te geven, bewerkt u de GOV-gegevens lokaal. GOV-id-beheer GOV-id GOV-id voor %1$s is verwijderd. GOV-id voor %1$s is ingesteld op %2$s. GOV-id's worden standaard buiten GEDCOM-gegevens opgeslagen, maar id's die zijn opgeslagen via _GOV-tags worden ook ondersteund. GOV-objecten behoren tot verschillende typegroepen. De GOV-plaatshiërarchie is gebaseerd op objecten van de typegroep '%1$s'. GOV-plaatshiërarchie voor %1$s is herladen vanaf GOV-server. GOV-plaatshiërarchie is opnieuw geladen vanaf GOV-server. Verberg een object en stop de plaatshiërarchie op dat punt door het naar een irrelevante typegroep te verplaatsen. Indien aangevinkt, probeer terug te vallen op de Duitse plaatsnaam.  Als dit is aangevinkt, gebruikt de weergegeven GOV-hiërarchie, indien mogelijk, plaatsnamen uit de GEDCOM-gegevens. Als deze optie is ingeschakeld, wilt u meestal de volgende optie uitschakelen.  Als dit niet is aangevinkt, geeft de voorkeur aan een andere taal dan Duits;  In ieder geval worden ze nog steeds gebruikt als terugval om verdere objecten op een hoger niveau te bepalen. Over het algemeen verbergt u een object met behoud van de algemene plaatshiërarchie door het naar een verborgen typegroep te verplaatsen (zie voorkeuren). In het bijzonder kunt u lokaal enkele controversiële wijzigingen op de GOV-server ongedaan maken (zoals het objecttype van het Heilige Roomse Rijk). In het bijzonder kan de aangepaste module Gedeelde plaatsen worden gebruikt om GOV-id's binnen GEDCOM-gegevens te beheren. In dit geval worden de GOV-id's opgeslagen in een aparte databasetabel, die handmatig moet worden beheerd wanneer de betreffende boom naar een andere webtrees-installatie wordt verplaatst.  Internen (indien nodig automatisch aangepast) Ongeldig GOV-id! Geldige GOV-ids zijn bijvoorbeeld 'EITTZE_W3091', 'object_1086218'. Het wordt aanbevolen om slechts één van de volgende opties te gebruiken. U kunt ook (tijdelijk) alle bewerkingen uitschakelen via het uitvinken van alle bewerkingen. Het wordt niet overschreven door latere updates. Gerechtelijk Lokale GOV-gegevens Lokale wijzigingen blijven behouden. Zoek een overeenkomende GOV-id op de GOV-server Toewijzingen van plaatsen naar GOV-id's worden niet beïnvloed. Opmerking: De toewijzing van plaats naar GOV-id wordt buiten de gedcom-gegevens opgeslagen. Opmerking: Uiteindelijk heeft het waarschijnlijk de voorkeur om de respectievelijke GOV-gegevens zelf te corrigeren. Objecten van dit type behoren strikt genomen niet tot de bestuurlijke hiërarchie in die zin dat ze geen territoriale entiteiten zijn (Gebietskörperschaften). Kennelijke fouten moeten worden gecorrigeerd op de GOV-server zelf, maar er kunnen gevallen zijn waarin dit niet gemakkelijk mogelijk is. Organisatorisch Overige Anders wordt de begindatum gebruikt (dit komt meer overeen met andere op datum gebaseerde berekeningen in webtrees). Buiten GEDCOM-gegevens Buiten GEDCOM-gegevens - bewerkbaar voor iedereen (inclusief bezoekers) Vooral handig om GOV-ids te beheren via de Gedeelde plaatsen module. Id's worden opgeslagen en geëxporteerd via GEDCOM tags.  Plaatshiërarchieën worden historisch weergegeven, d.w.z. op basis van de datum van de betreffende gebeurtenis. Plaatshiërarchie Plaatsnamen van GOV Plaatstekst en koppelingen Religieus Stel GOV-id opnieuw in en herlaad de GOV-plaatshiërarchie Stel GOV-id opnieuw in voor %1$s Sla de huidige id op om de plaatshiërarchie opnieuw te laden van de GOV-server. Zie ook %1$s voor de oorspronkelijke lijst met typen en typebeschrijvingen. Stel GOV-id in Stel GOV-id in voor %1$s Nederzetting Verschillende objecttypen die deel uitmaken van deze typegroep in het oorspronkelijke model kunnen in deze context als problematisch worden beschouwd en zijn verplaatst naar een aangepaste '%1$s' typegroep. Toon GOV-hiërarchie voor Toon aanvullende informatie Toon objecten van typegroep '%1$s' in hiërarchie Vervolgens worden alle gegevens weer opgehaald van de GOV-server.  De GOV-server biedt plaatsnamen in verschillende talen. Er is echter geen concept van een 'officiële taal' voor een plaats. De GOV-server lijkt tijdelijk niet beschikbaar. De huidige gebruikerstaal heeft altijd de hoogste prioriteit. Deze talen worden vervolgens in de gegeven volgorde gebruikt als terugval, of (indien in hoofdletters) als extra talen (d.w.z. 'officiële talen' voor een plaatshiërarchie). Deze optie bestaat voornamelijk voor demoservers en wordt verder niet aanbevolen. Het heeft voorrang op de voorgaande optie. Dit beleid is echter niet strikt gevolgd. Schakel deze optie in als u nog steeds nederzettingen in hiërarchieën wilt weergeven. NuSOAP gebruiken in plaats van SoapClient Gebruik plaatsnamen en link naar plaatsen die bestaan in webtrees, en link bovendien naar GOV via pictogrammen Gebruik plaatsnamen en links van GOV Gebruik plaatsnamen en links van GOV, en link bovendien naar plaatsen die in webtrees bestaan via pictogrammen Meestal alleen vereist in geval van substantiële wijzigingen van de GOV-gegevens.  Vesta Gov4Webtrees: De weergegeven GOV-hiërarchie linkt nu waar mogelijk ook naar webtrees-plaatsen. U kunt terugschakelen naar de klassieke weergave (en andere) via de moduleconfiguratie. Wanneer deze optie is uitgeschakeld, wordt een alternatief besturingselement voor bewerken geboden, waarmee hiërarchieën van de GOV-server nog steeds opnieuw kunnen worden geladen. Waar moeten de GOV-id's worden bewerkt en opgeslagen Binnen GEDCOM-gegevens (via andere aangepaste modules).  U kunt dit csv-bestand aanmaken en wijzigen op basis van uw persoonlijke voorkeuren, zie '%1$s' voor een voorbeeld. U kunt ook een lege id opslaan om de toewijzing te verwijderen. U kunt alle gegevens wijzigen die zijn opgehaald van de GOV-server %1$s. allebei datum van de gebeurtenis terugvallen op Duitse plaatsnamen voor gebeurtenissen zonder datum wordt de tegenwoordige hiërarchie gebruikt, ongeacht deze voorkeur. hier ingegeven door de veronderstelling dat plaatsnamen in de lokale taal in het algemeen nuttiger zijn  huidige tijd herlaad de GOV-plaatshiërarchie reset alle gegevens in de cache één keer deze plaats bestaat niet op dit moment vandaag onbekend GOV-type (nieuw geïntroduceerd?) met lokale wijzigingen 