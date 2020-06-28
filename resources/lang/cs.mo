��    K      t  e   �      `  �   a  3   
  z   >  l   �     &  �   <  /   �  8   �  ^   3	  j   �	  ]   �	     [
  0  j
     �     �  1   �     �       !     %   8  c   ^  :   �     �  +     ;   1  c   m  M   �  5     `   U  �   �  /   a  H   �  �   �     a  +   p  /   �  V   �  I   #  T   m  k   �     .  =   B  |   �  a   �  /   _  V   �  @   �     '  T   =     �     �     �     �  ?   �  3   .  y   b  x   �      U  7   v  F   �     �  �        �  /   �  =   �     !     &     4  ]   S  ^   �               <     W  ~  ]  �   �  D   {  �   �  U   G     �  �   �  ?   H  ?   �  P   �  j     O   �     �  Y  �  &   @      g   7   x      �      �      �   $   �   a   !  =   m!     �!  +   �!  ?   �!  ^   #"  P   �"  F   �"  o   #  �   �#  6   K$  O   �$  �   �$     ~%  .   �%  (   �%  V   �%  F   B&  Q   �&  [   �&     7'  K   J'  �   �'  S   6(  -   �(  J   �(  K   )     O)  X   g)     �)     �)     �)     *  =   0*  4   n*  �   �*  y   %+  !   �+  C   �+  F   ,     L,  �   _,     �,  -   -  N   ;-     �-     �-  #   �-  Y   �-  ^   .     ~.  $   �.  5   �.     �.         D      ;       /       $   C       5   #   @       !       	   :       1   E                         4         F          A   -      
         0          ?   >             I                   ,   &       '   "   <   J   %          9   K           B   (                     7   2      +      )       3         8       G   .             6   =             *   H           (Why is German in particular singled out like this? Because the GOV gazetteer is currently rather German-language centric, and therefore many places have German names). A module integrating GOV (historic gazetteer) data. A module integrating GOV (historic gazetteer) data. Enhances places with GOV data via the extended 'Facts and events' tab. According to the current GOV specification, settlements are not supposed to be parents of other settlements. Administrative levels All data (except for the mapping of places to GOV ids, which has to be done manually) is retrieved from the GOV server and cached internally. Allow objects of type 'settlement' in hierarchy Compact display (administrative levels only as tooltips) Consequently, place hierarchy information can only be changed indirectly, via the GOV website. Determines strategy in case the place name is not available in the current language (for the given date):  Display a tooltip indicating the source of the GOV id. This is intended mainly for debugging. Displayed data Execute requests to the GOV server via NuSOAP, rather than using the native php SoapClient. The native SoapClient is usually enabled (you can check this in your php.ini settings), but may not be provided by all hosters. If the native client is not enabled/available, this option is checked automatically. Facts and Events Tab Settings Fallback language For events with a date range, use the median date GOV Id Management GOV id GOV id for %1$s has been removed. GOV id for %1$s has been set to %2$s. GOV ids are stored outside GEDCOM data by default, but ids stored via _GOV tags are also supported. GOV place hierarchy for %1$s will be reloaded from server. General Gov4Webtrees Module Location Data Providers If checked, attempt to fall back to the German place name.  If this is checked, the displayed GOV hierarchy uses place names from the GEDCOM data, if possible. If this option is checked, you usually want to disable the following option.  If unchecked, prefer any language other than German;  In particular, the Shared Places custom module may be used to manage GOV ids within GEDCOM data. In this case, the GOV ids are stored in a separate database table, which has to be managed manually when moving the respective tree to a different webtrees installation.  Internals (adjusted automatically if necessary) Invalid GOV id! Valid GOV ids are e.g. 'EITTZE_W3091', 'object_1086218'. It is recommended to use only one of the following options. You may also (temporarily) disable all editing via unchecking all of them. Local GOV data Look up a matching GOV id on the GOV server Mappings of places to GOV ids are not affected. Modules listed here are used (in the configured order) to determine GOV Ids of places. Note: The mapping from place to GOV id is stored outside the gedcom data. Note: Ultimately it's probably preferable to correct the respective GOV data itself. Otherwise, the start date is used (this is more consistent with other date-based calculations in webtrees). Outside GEDCOM data Outside GEDCOM data - editable by anyone (including visitors) Particularly useful in order to manage GOV ids via the Shared Places module. Ids are stored and exportable via GEDCOM tags.  Place hierarchies are displayed historically, i.e. according to the date of the respective event. Provides location data to other custom modules. Requires the '%1$s Vesta Common' module, and the '%1$s Vesta Facts and events' module. Reset GOV id (outside GEDCOM) and reload the GOV place hierarchy Reset GOV id for %1$s Save the current id in order to reload the place hierarchy data from the GOV server. Set GOV id (outside GEDCOM) Set GOV id for %1$s Show GOV hierarchy for Show additional info Subsequently, all data is retrieved again from the GOV server.  The GOV server seems to be temporarily unavailable. This option mainly exists for demo servers and is not recommended otherwise. It has precedence over the preceding option. This policy hasn't been strictly followed though. Check this option if you end up with incomplete hierarchies otherwise. Use NuSOAP instead of SoapClient Use place names and link to places existing in webtrees Usually only required in case of substantial changes of the GOV data.  Vesta Gov4Webtrees When this option is disabled, an alternative edit control is provided, which still allows to reload place hierarchies from the GOV server. Where to edit and store GOV ids Within GEDCOM data (via other custom modules).  You may also save an empty id in order to remove the mapping. both date of event fallback to German place names for events without a date, present time hierarchy will be used regardless of this preference. motivated by the assumption that place names in the local language are more useful in general  present time reload the GOV place hierarchy reset all cached data once today Project-Id-Version: vesta 1.0
Report-Msgid-Bugs-To: ric@richard-cissee.de
PO-Revision-Date: 2020-06-23 17:40+0200
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 2.3.1
Last-Translator: Josef Prause <josef.prause@gmail.com>
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n>=2 && n<=4 ? 1 : 2);
Language: cs
 (Proč se němčina takto vyzdvihuje? Protože zeměpisný slovník GOV je soustředěn právě kolem němčiny a proto mnohá místa mají německé názvy.) Modul začleňující údaje GOV (historický zeměpisný slovník). Modul začleňující údaje GOV (historický zeměpisný slovník). Vylepšuje místa o údaje GOV přes záložku Fakta a události. Podle současné specifikace GOV sídliště nemohou být rodiči jiných sídlišť. Administrativní úrovně Všechny údaje (vyjma údajů pro mapování míst na GOV idy, což se musí udělat ručně) se berou ze serveru GOV a interně se ukládají. V hierarchii připustit objekty typu 'sídliště' (settlement) Kompaktní zobrazení (administrační údaje jen jako tooltip) Tudíž informace o hierarchii místa lze měnit pouze nepřímo, přes web GOV. Určuje strategii pro případ, že název místa není dostupný v současném jazyce (pro dané datum):  Zobrazit tooltip naznačující pramen GOV idu. Hlavně pro účely debuggingu. Zobrazené údaje Požadavky směrem k serveru GOV provádět skrze NuSOAP, nikoliv s použitím vrozeného php SoapClient. Vrozený SoapClient je obvykle aktivován (lze ověřit nahlédnutím do nastavení php.ini), ale nemusí jej poskytovat všichni hostitelé. Jestliže vrozený klient není aktivován ani dostupný, pak se tato možnost volí automaticky. Nastavení záložky Fakta a události Záložní jazyk Pro události s rozsahem data použít středové datum Správa GOV id GOV id GOV id pro %1$s byl odstraněn. GOV id pro %1$s je nastaven na %2$s. GOV idy se normálně ukládají mimo údaje GEDCOM, ale je možno je ukládat i přes tagy _GOV. GOV hierarchie míst pro %1$s bude ze serveru znova stažena. Všeobecné Gov4Webtrees Module Location Data Providers Je-li zvoleno, pokusí se zůstat u německého názvu místa.  Je-li toto zvoleno, zobrazená hierarchie GOV bere jména míst pokud možno z údajů GEDCOM. Je-li zvolena tato možnost, obvykle se chce potlačit následující možnost.  Není-li zvoleno, preferuje se libovolný jiný jazyk než němčina.  Zejména pro manipulaci s GOV idy uvnitř údajů GEDCOM se dá použít modul Shared Places (Sílená místa). V tomto případě jsou GOV idy uloženy v samostatné databázové tabulce, se kterou se musí zacházet manuálně, když se příslušný rodokmen přemisťuje do jiné instalace webtrees.  Vnitřnosti (je-li nutno, přizpůsobené automaticky) Neplatný GOV id! Platné GOV idy jsou např. 'EITTZE_W3091', 'object_1086218'. Doporučuje se zvolit právě jen jednu z následujících možností. Je možno také (dočasně) potlačit (odstavit) veškerou editaci tím, že nezaškrtneme žádnou. Lokální údaje GOV Vyhledat odpovídající GOV id na serveru GOV Nedotkne se mapování míst na GOV idy. Moduly v tomto seznamu slouží (v uspořádaném pořadí) k určení GOV idů míst. Poznámka: zobrazení místa na GOV id se ukládá mimo údaje GEDCOM. Poznámka: nakonec dostane pravděpodobně přednost opravit údaje GOV samotné. Jinak se použije datum počátku (to se více shoduje s ostatními výpočty ve webtrees). Mimo údaje GEDCOM Mimo údaje GEDCOM ‒ může editovat kdokoliv (včetně návštěvníků) Zvláště užitečné, má-li se zacházet s GOV idy skrze modul Sdílená místa (Shared Places). Idy se ukládají a dají se exportovat skrze tagy GEDCOM.  Hierarchie míst se zobrazují historicky, t.j. podle data příslušné události. Poskytuje údaje o poloze ostatním modulům. Vyžaduje modul '%1$s Vesta Common' a modul '%1$s Vesta Facts and events'. Znovu nastavit GOV id (vně GEDCOMu) a znovu stáhnout GOV hierarchii míst Obnovit GOV id pro %1$s Uložit současný id kvůli novému stažení údajů hierarchie místa ze serveru GOV. Nastavit GOV id (vne GEDCOMu) Nastavit GOV id pro %1$s Zobrazit hierarchii GOV pro Zobrazit přidané informace Následně se všechny údaje znovu odeberou ze serveru GOV.  GOV server je pravděpodobně dočasně nedostupný. Tato možnost existuje hlavně pro předváděcí servery a jinak se nedoporučuje. Má přednost před předcházející volbou. Tato taktika se však nedodržuje přísně. Zvolte tuto možnost, pokud byste jinak skončili u neúplných hierarchií. Místo SoapClient použít NuSOAP Použít jména míst a spojení na místa existující ve webtrees Obvykle požadováno jen v případě podstatných změn údajů GOV.  Vesta Gov4Webtrees Když je tato volba odmítnuta, je po ruce alternativní řízení editace, které stále dovoluje stáhnout hierarchie míst ze serveru GOV. Kde editovat a ukládat GOV idy Uvnitř údajů GEDCOM (skrze jiné moduly).  Je možno také uložit prázdný id a tím odstranit zobrazení (mapování). obojí datum události zůstat u německých názvů míst pro nedatované události se použije hierarchie v současnosti bez ohledu na preferenci. motivováno předpokladem, že názvy míst v místním jazyce jsou obecně užitečnější.  současnost znovu stáhnout GOV hierarchii míst znovu nastavit všechna cachovaná data jednorázově dnes 