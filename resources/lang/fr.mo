��    ~        �   �      �
  M   �
     �
  �     3   �  z   �  l   g  �   �     h     w     �     �  �   �  I   N  �   �     ,  8   2  ^   k  9  �  ]        b  0  u  �   �  1   B  p   t     �     �     �               #  
   3     >     G     T     f  !   m  %   �     �  c   �  n   5  ?   �  6   �  c     %     ;   �  c   �  M   E  5   �  X   �  ~   "  �   �  `   4  �   �  /   @  H   p  �   �  1   @     r     {  "   �  +   �  /   �  I   	  T   S  �   �  x   A     �     �  k   �     ;  =   O  |   �  a   
     l     |     �  $   �  	   �     �     �        @          a   T   w   C   �      !     ,!  
   @!  �   K!     �!     "  .   ""  ?   Q"     �"  3   #  :   E#  �   �#  y   '$  |   �$     %      !%  [   B%  "   �%  ^   �%  F    &  �   g&  �   ''     �'  /   �'  j   (  =   m(  ;   �(     �(     �(     �(  ]   )     w)  ^   |)     �)     �)     *  /   "*     R*  $   X*     }*  �  �*  ]   Y,     �,  �   �,  P   �-  �   �-  o   �.  �   /     �/     �/     �/     �/  �   �/  h   �0  �   	1     �1  M   �1  �   -2  �  �2  p   K4     �4  d  �4  �   96  H   �6  �   7     �7     �7     �7     �7     �7     �7  
   �7     8     8     %8     <8  .   L8  5   {8  *   �8  �   �8  �   ~9  Z   :  I   h:  z   �:  /   -;  7   ];  r   �;  Z   <  H   c<  ~   �<  �   +=  �   �=  �   v>  �   �>  2   �?  k   	@  �   u@  ;   A  
   WA     bA  ,   wA  >   �A  A   �A  ]   %B  h   �B  �   �B  �   �C     )D     9D  x   ?D     �D  Y   �D  �   0E  z   �E     JF     `F     uF  (   �F  	   �F     �F      �F     �F  b   G  *   yG  u   �G  N   H  0   iH  $   �H  
   �H  �   �H      �I  *   �I  @   �I  L   8J  �   �J  2   K  M   EK  �   �K  �   xL  �   M     �M  %   �M  �   �M  .   VN  z   �N  Z    O  �   [O  �   5P  ,   �P  @   Q  p   MQ  T   �Q  G   R     [R     dR  (   zR  y   �R     S  c   !S     �S  &   �S  :   �S  '   �S     T  ,   (T     UT                	   f   ~               /   L   \   }       $   4   ,       H   5   =      [   W                  t   '   V   q   E              B          7   o              -       #   "       C   D   M       1               A   X   Z   G   n              T   <   &   @      S   s   :   b   Q   N   e   8       {                     ]      >   6   K       x   R   +   ;                  !   a                     c   l   z           3   `   %   2      I   0      P                 w          
                 p             9   *   g   ?   m              (   u   U   d   r   |   v   .   F       Y          _   O             i   k      y   h       ^   J   )   j    'Classic' mode, extended to link to places from the GEDCOM data, if possible. 'Classic' mode. (Why is German in particular singled out like this? Because the GOV gazetteer is currently rather German-language centric, and therefore many places have German names). A module integrating GOV (historic gazetteer) data. A module integrating GOV (historic gazetteer) data. Enhances places with GOV data via the extended 'Facts and events' tab. According to the current GOV specification, settlements are not supposed to be parents of other settlements. Additionally, the module checks if the respective GOV id, or any of its parents within the hierarchy, has languages defined in the csv file '%1$s'. Administrative Administrative (level %1$s) Administrative (other) Administrative levels All data (except for the mapping of places to GOV ids, which has to be done manually) is retrieved from the GOV server and cached internally. As a final fallback, determine the place name according to this checkbox: Check this option if you still want organizations to appear in hierarchies, e.g. the United Nations as a higher-level object of sovereign entities. Civil Compact display (administrative levels only as tooltips) Consequently, place hierarchy information can only be changed indirectly, via the GOV website. Data obtained from GOV server. Edited data will be stored as local modifications (outside GEDCOM, just like the original data). Edited data always has precedence over original data. It will not be deleted when hierarchies are reloaded, but can be deleted explicitly here. No data is transferred to the GOV server. Display a tooltip indicating the source of the GOV id. This is intended mainly for debugging. Edit %1$s for %2$s Execute requests to the GOV server via NuSOAP, rather than using the native php SoapClient. The native SoapClient is usually enabled (you can check this in your php.ini settings), but may not be provided by all hosters. If the native client is not enabled/available, this option is checked automatically. For a given place, this module displays one or more names by matching the available names against a list of languages, according to the following strategy: For events with a date range, use the median date For more fine-grained adjustments, and to view the list of the types and type groups, edit the GOV data locally. From GOV Hierarchies GOV Hierarchy GOV Id Management GOV Name GOV Object Type GOV Parent GOV data GOV data for GOV data for %1$s GOV id GOV id for %1$s has been removed. GOV id for %1$s has been set to %2$s. GOV id for type of location GOV ids are stored outside GEDCOM data by default, but ids stored via _GOV tags are also supported. GOV objects belong to different type groups. The GOV place hierarchy is based on objects of type group '%1$s'. GOV place hierarchy for %1$s has been reloaded from GOV server. GOV place hierarchy has been reloaded from GOV server. Hide an object and stop the place hierarchy at that point by moving it to an irrelevant type group. Hide data without local modifications If checked, attempt to fall back to the German place name.  If this is checked, the displayed GOV hierarchy uses place names from the GEDCOM data, if possible. If this option is checked, you usually want to disable the following option.  If unchecked, prefer any language other than German;  In any case, they are still used as fallbacks to determine further higher-level objects. In general, hide an object while preserving the overall place hierarchy by moving it to a hidden type group (see preferences). In particular you may want to revert locally some controversial changes made on the GOV server (such as the object type of the Holy Roman Empire). In particular, the Shared Places custom module may be used to manage GOV ids within GEDCOM data. In this case, the GOV ids are stored in a separate database table, which has to be managed manually when moving the respective tree to a different webtrees installation.  Internals (adjusted automatically if necessary) Invalid GOV id! Valid GOV ids are e.g. 'EITTZE_W3091', 'object_1086218'. It is recommended to use only one of the following options. You may also (temporarily) disable all editing via unchecking all of them. It will not be overwritten by subsequent updates. Judicial Local GOV data Local modifications are preserved. Look up a matching GOV id on the GOV server Mappings of places to GOV ids are not affected. Note: The mapping from place to GOV id is stored outside the gedcom data. Note: Ultimately it's probably preferable to correct the respective GOV data itself. Objects of this type strictly do not belong to the administrative hierarchy in the sense that they are no territorial entities (Gebietskörperschaften). Obvious mistakes should be corrected on the GOV server itself, but there may be cases where this is not easily possible. Organizational Other Otherwise, the start date is used (this is more consistent with other date-based calculations in webtrees). Outside GEDCOM data Outside GEDCOM data - editable by anyone (including visitors) Particularly useful in order to manage GOV ids via the Shared Places module. Ids are stored and exportable via GEDCOM tags.  Place hierarchies are displayed historically, i.e. according to the date of the respective event. Place hierarchy Place names from GOV Place text and links Please enter at least 10 characters. Religious Remove this GOV Name? Remove this GOV Object Type? Remove this GOV Parent? Reset GOV id (outside GEDCOM) and reload the GOV place hierarchy Reset GOV id for %1$s Save the current id in order to reload the place hierarchy data from the GOV server. See also %1$s for the original list of types and type descriptions. Set GOV id (outside GEDCOM) Set GOV id for %1$s Settlement Several object types that are part of this type group in the original model can be seen as problematic in this context, and have been moved to a custom '%1$s' type group. Show GOV hierarchy for Show additional info Show objects of type group '%1$s' in hierarchy Subsequently, all data is retrieved again from the GOV server.  The GOV server provides place names in different languages. However, there is no concept of an 'official language' for a place. The GOV server seems to be temporarily unavailable. The current user language always has the highest priority. These languages are then used, in the given order, either as fallbacks, or (if upper-cased) as additional languages (i.e. 'official languages' for a place hierarchy). This option mainly exists for demo servers and is not recommended otherwise. It has precedence over the preceding option. This policy hasn't been strictly followed though. Check this option if you still want to display settlements in hierarchies. To Use NuSOAP instead of SoapClient Use place names and link to places existing in webtrees, additionally link to GOV via icons Use place names and links from GOV Use place names and links from GOV, additionally link to places existing in webtrees via icons Usually only required in case of substantial changes of the GOV data.  Vesta Gov4Webtrees: The displayed GOV hierarchy now additionally links to webtrees places where possible. You can switch back to the classic display (and others) via the module configuration. When this option is disabled, an alternative edit control is provided, which still allows to reload place hierarchies from the GOV server. Where to edit and store GOV ids Within GEDCOM data (via other custom modules).  You can create and modify this csv file according to your personal preferences, see '%1$s' for an example. You may also save an empty id in order to remove the mapping. You may modify all data retrieved from the GOV server %1$s. both date of event fallback to German place names for events without a date, present time hierarchy will be used regardless of this preference. here motivated by the assumption that place names in the local language are more useful in general  present time reload the GOV place hierarchy reset all cached data once this place does not exist at this point in time today unknown GOV type (newly introduced?) with local modifications Project-Id-Version: French (Vesta Webtrees Custom Modules)
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: French <https://hosted.weblate.org/projects/vesta-webtrees-custom-modules/vesta-gov4webtrees/fr/>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
X-Generator: Weblate 5.5-dev
 Mode «classique», étendu pour relier des lieux à partir des données GEDCOM, si possible. Mode «classique». (Pourquoi l'allemand en particulier est-il ainsi distingué ? Parce que le répertoire GOV est actuellement plutôt centré sur la langue allemande et que de nombreux endroits ont donc des noms allemands). Un module intégrant les données GOV (historique du répertoire géographique). Un module intégrant les données GOV (historique du répertoire géographique). Améliore les lieux avec des données GOV via l'onglet étendu «Faits et événements». Selon la spécification actuelle du GOV, les colonies ne sont pas censées être les parents d'autres colonies. De plus, le module vérifie si chaque ID GOV, ou l'un de ses parents dans la hiérarchie, a des langues définies dans le fichier csv '%1$s'. Administratif Administratif (niveau %1$s) Administratif (autre) Niveaux administratifs Toutes les données (à l'exception du mappage des lieux aux identifiants GOV, qui doit être effectué manuellement) sont récupérées du serveur GOV et mises en cache en interne. En guise de solution de secours finale, déterminez le nom de lieu en fonction de cette case à cocher : Cochez cette option si vous souhaitez toujours que les organisations apparaissent dans les hiérarchies, par ex. l'Organisation des Nations Unies en tant qu'objet de niveau supérieur d'entités souveraines. Civil Affichage compact (niveaux administratifs uniquement sous forme d'infobulles) Par conséquent, les informations de la hiérarchie des lieux ne peuvent être modifiées qu'indirectement, via le site Web de GOV. Données obtenues à partir du serveur GOV. Les données éditées seront stockées en tant que modifications locales (en dehors de GEDCOM, tout comme les données d'origine). Les données modifiées ont toujours priorité sur les données d'origine. Il ne sera pas supprimé lors du rechargement des hiérarchies, mais peut être supprimé explicitement ici. Aucune donnée n'est transférée au serveur GOV. Afficher une info-bulle indiquant la source de l'identifiant GOV. Ceci est principalement destiné au débogage. Modifier %1$s pour %2$s Exécutez les requêtes vers le serveur GOV via NuSOAP, plutôt que d'utiliser le SoapClient php natif. Le SoapClient natif est généralement activé (vous pouvez le vérifier dans vos paramètres php.ini), mais peut ne pas être fourni par tous les hébergeurs. Si le client natif n'est pas activé / disponible, cette option est cochée automatiquement. Pour un lieu donné, ce module affiche un ou plusieurs noms en comparant les noms disponibles à une liste de langues, selon la stratégie suivante : Pour les événements avec une plage de dates, utilisez la date médiane Pour des ajustements plus précis et pour afficher la liste des types et des groupes de types, modifiez les données GOV localement. Depuis Hiérarchies GOV GOV Hiérarchie Gestion des identifiants GOV Nom GOV Type d'objet GOV Parent GOV Données GOV Données GOV pour Données GOV pour %1$s Identifiant GOV L'identifiant GOV pour %1$s a été supprimé. L'identifiant GOV pour %1$s a été défini sur %2$s. Identifiant GOV pour le type d'emplacement Les identifiants GOV sont stockés en dehors des données GEDCOM par défaut, mais les identifiants stockés via les balises _GOV sont également pris en charge. Les objets GOV appartiennent à différents groupes de types. La hiérarchie des lieux GOV est basée sur les objets du groupe de type '%1$s'. La hiérarchie des emplacements GOV pour %1$s a été rechargée à partir du serveur GOV. La hiérarchie des lieux GOV a été rechargée à partir du serveur GOV. Masquez un objet et arrêtez la hiérarchie des lieux à ce stade en le déplaçant vers un groupe de types non pertinent. Masquer les données sans modifications locales Si coché, essayez de revenir au nom de lieu allemand.  Si cette case est cochée, la hiérarchie GOV affichée utilise si possible les noms de lieux des données GEDCOM. Si cette option est cochée, vous souhaitez généralement désactiver l'option suivante.  Si elle n'est pas cochée, préférez une langue autre que l'allemand ;  Dans tous les cas, ils sont toujours utilisés comme solutions de repli pour déterminer d'autres objets de niveau supérieur. En général, masquez un objet tout en préservant la hiérarchie globale des lieux en le déplaçant vers un groupe de type masqué (voir préférences). En particulier, vous souhaiterez peut-être annuler localement certaines modifications controversées apportées au serveur GOV (comme le type d'objet du Saint Empire romain). En particulier, le module personnalisé Shared Places peut être utilisé pour gérer les identifiants GOV dans les données GEDCOM. Dans ce cas, les identifiants GOV sont stockés dans une table de base de données distincte, qui doit être gérée manuellement lors du déplacement de l'arborescence respective vers une autre installation webtrees.  Internes (ajustés automatiquement si nécessaire) Identifiant GOV non valide ! Les identifiants GOV valides sont par exemple 'EITTZE_W3091', 'objet_1086218'. Il est recommandé de n'utiliser qu'une des options suivantes. Vous pouvez également (temporairement) désactiver toutes les modifications en les décochant toutes. Il ne sera pas écrasé par les mises à jour ultérieures. Judiciaire Données GOV locales Les modifications locales sont préservées. Recherchez un identifiant GOV correspondant sur le serveur GOV Les mappages de lieux aux identifiants GOV ne sont pas affectés. Remarque : le mappage du lieu à l'identifiant GOV est stocké en dehors des données GEDCOM. Remarque : en fin de compte, il est probablement préférable de corriger les données GOV elles-mêmes. Les objets de ce type n'appartiennent strictement pas à la hiérarchie administrative en ce sens qu'ils ne sont pas des entités territoriales (Gebietskörperschaften). Les erreurs évidentes doivent être corrigées sur le serveur GOV lui-même, mais il peut y avoir des cas où cela n'est pas facilement possible. Organisationnel Autre Sinon, la date de début est utilisée (ceci est plus cohérent avec d'autres calculs basés sur la date dans webtrees). En dehors des données GEDCOM Données extérieures à GEDCOM - modifiables par tout le monde (y compris les visiteurs) Particulièrement utile pour gérer les identifiants GOV via le module Lieux partagés. Les identifiants sont stockés et exportables via des balises GEDCOM.  Les hiérarchies de lieux sont affichées historiquement, c'est-à-dire en fonction de la date de l'événement respectif. Hiérarchie des lieux Noms de lieux de GOV Texte et liens du lieu Veuillez entrer au moins 10 caractères. Religieux Supprimer ce nom de GOV ? Supprimer ce type d'objet GOV ? Supprimer ce parent GOV ? Réinitialiser l'identifiant GOV (en dehors de GEDCOM) et recharger la hiérarchie des espaces GOV Réinitialiser l'identifiant GOV pour %1$s Enregistrez l'identifiant actuel afin de recharger les données de la hiérarchie des lieux à partir du serveur GOV. Voir aussi %1$s pour la liste originale des types et des descriptions de type. Définir l'identifiant GOV (en dehors de GEDCOM) Définir l'identifiant GOV pour %1$s Règlement Plusieurs types d'objets qui font partie de ce groupe de types dans le modèle d'origine peuvent être considérés comme problématiques dans ce contexte et ont été déplacés vers un groupe de types personnalisé '%1$s'. Afficher la hiérarchie GOV pour Afficher des informations supplémentaires Afficher les objets du groupe de type '%1$s' dans la hiérarchie Par la suite, toutes les données sont à nouveau extraites du serveur GOV.  Le serveur GOV fournit des noms de lieux dans différentes langues. Cependant, il n'y a pas de notion de «langue officielle» pour un lieu. Le serveur GOV semble temporairement indisponible. La langue de l'utilisateur actuelle a toujours la priorité la plus élevée. Ces langues sont ensuite utilisées, dans l'ordre donné, soit comme solutions de secours, soit (si elles sont en majuscules) comme langues supplémentaires (c'est-à-dire " langues officielles '' pour une hiérarchie de lieux). Cette option existe principalement pour les serveurs de démonstration et n'est pas recommandée autrement. Elle a priorité sur l'option précédente. Cette politique n'a cependant pas été strictement suivie. Cochez cette option si vous souhaitez toujours afficher les décomptes dans les hiérarchies. Pour Utilisez NuSOAP au lieu de SoapClient Utilisez des noms de lieux et des liens vers des lieux existants dans les webtrees, ainsi que des liens vers GOV via des icônes Utilisez des noms de lieux et des liens de GOV Utilisez des noms de lieux et des liens de GOV, ainsi que des liens vers des lieux existants dans webtrees via des icônes Habituellement requis uniquement en cas de modifications substantielles des données GOV.  Vesta Gov4Webtrees : La hiérarchie GOV affichée renvoie désormais également à des sites Webtrees lorsque cela est possible. Vous pouvez revenir à l'affichage classique (et autres) via la configuration du module. Lorsque cette option est désactivée, un contrôle d'édition alternatif est fourni, qui permet toujours de recharger les hiérarchies de lieu à partir du serveur GOV. Où modifier et stocker les identifiants GOV Dans les données GEDCOM (via d'autres modules personnalisés).  Vous pouvez créer et modifier ce fichier csv selon vos préférences personnelles, voir '%1$s' pour un exemple. Vous pouvez également enregistrer un identifiant vide afin de supprimer le mappage. Vous pouvez modifier toutes les données extraites du serveur GOV %1$s. les deux date de l'évènement le repli sur les noms de lieux allemands pour les événements sans date, la hiérarchie de l'heure actuelle sera utilisée indépendamment de cette préférence. ici motivé par l'hypothèse que les noms de lieux dans la langue locale sont plus utiles en général  actuellement recharger la hiérarchie des lieux GOV réinitialiser une fois toutes les données mises en cache cet endroit n'existe pas pour le moment aujourd'hui type de GOV inconnu (récemment introduit ?) avec des modifications locales 