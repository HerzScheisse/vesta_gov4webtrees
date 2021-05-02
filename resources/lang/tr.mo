��    T      �  q   \         M   !     o  �     3   (  z   \  l   �  �   D	     �	  �   �	  2   |
  /   �
  I   �
  8   )  ^   b  ]   �  0    �   P  1   �          1  !   8  %   Z  c   �  ?   �  6   $  ;   [  c   �  M   �  5   I  `     �   �  /   �  H   �  �     1   �     �  +   �  /   �  I   (  T   r  U   �  k        �  =   �  |   �  a   X     �     �  @   �     %  T   ;     �     �     �     �  ?   �     ,  3   �  :   �  �     y   �  x   <  �   �      S  [   t  "   �  ^   �  F   R  �   �  �   Y     �  /     j   4  =   �     �     �     �  ]     ^   m     �     �     �       �    T   �      4!  �   B!  7   �!  �   "  w   �"  �   .#     �#  �   �#  9   �$  5   �$  A   %  E   G%  u   �%  |   &  S  �&  �   �'  ?   y(     �(     �(  &   �(  /   )  �   2)  C   �)  8   *  =   E*  m   �*  c   �*  G   U+  {   �+  �   ,  -   �,  ]   �,  �   K-  ;   .     @.  2   S.  7   �.  L   �.  Z   /  Y   f/  {   �/     <0  X   Z0  �   �0  W   r1     �1  #   �1  \   2  #   _2  \   �2  )   �2      
3  '   +3     S3  ;   h3  e   �3  ?   
4  C   J4  �   �4  �   75  x   �5  �   86  "   �6  u   7  3   �7  s   �7  X   ;8  �   �8  �   n9  .   :  C   D:  r   �:  @   �:     <;     I;  !   Y;  h   {;  [   �;     @<  %   O<  6   u<     �<           P   '   R      K                           =   T   %   	   !      #           5   N   .   3   J                 Q             &   B              /   A   -   H   +   "       <                                   :   7   @                )      *   8   9   4       1          M       F      D   
   ,             0   G       L   >   ;   S       O      6   I           2   $                      ?   C      (   E        'Classic' mode, extended to link to places from the GEDCOM data, if possible. 'Classic' mode. (Why is German in particular singled out like this? Because the GOV gazetteer is currently rather German-language centric, and therefore many places have German names). A module integrating GOV (historic gazetteer) data. A module integrating GOV (historic gazetteer) data. Enhances places with GOV data via the extended 'Facts and events' tab. According to the current GOV specification, settlements are not supposed to be parents of other settlements. Additionally, the module checks if the respective GOV id, or any of its parents within the hierarchy, has languages defined in the csv file '%1$s'. Administrative levels All data (except for the mapping of places to GOV ids, which has to be done manually) is retrieved from the GOV server and cached internally. Allow objects of type 'confederation' in hierarchy Allow objects of type 'settlement' in hierarchy As a final fallback, determine the place name according to this checkbox: Compact display (administrative levels only as tooltips) Consequently, place hierarchy information can only be changed indirectly, via the GOV website. Display a tooltip indicating the source of the GOV id. This is intended mainly for debugging. Execute requests to the GOV server via NuSOAP, rather than using the native php SoapClient. The native SoapClient is usually enabled (you can check this in your php.ini settings), but may not be provided by all hosters. If the native client is not enabled/available, this option is checked automatically. For a given place, this modules displays one or more names by matching the available names against a list of languages, according to the following strategy: For events with a date range, use the median date GOV Id Management GOV id GOV id for %1$s has been removed. GOV id for %1$s has been set to %2$s. GOV ids are stored outside GEDCOM data by default, but ids stored via _GOV tags are also supported. GOV place hierarchy for %1$s has been reloaded from GOV server. GOV place hierarchy has been reloaded from GOV server. If checked, attempt to fall back to the German place name.  If this is checked, the displayed GOV hierarchy uses place names from the GEDCOM data, if possible. If this option is checked, you usually want to disable the following option.  If unchecked, prefer any language other than German;  In particular, the Shared Places custom module may be used to manage GOV ids within GEDCOM data. In this case, the GOV ids are stored in a separate database table, which has to be managed manually when moving the respective tree to a different webtrees installation.  Internals (adjusted automatically if necessary) Invalid GOV id! Valid GOV ids are e.g. 'EITTZE_W3091', 'object_1086218'. It is recommended to use only one of the following options. You may also (temporarily) disable all editing via unchecking all of them. It will not be overwritten by subsequent updates. Local GOV data Look up a matching GOV id on the GOV server Mappings of places to GOV ids are not affected. Note: The mapping from place to GOV id is stored outside the gedcom data. Note: Ultimately it's probably preferable to correct the respective GOV data itself. Objects of this type arguably do not strictly belong to the administrative hierarchy. Otherwise, the start date is used (this is more consistent with other date-based calculations in webtrees). Outside GEDCOM data Outside GEDCOM data - editable by anyone (including visitors) Particularly useful in order to manage GOV ids via the Shared Places module. Ids are stored and exportable via GEDCOM tags.  Place hierarchies are displayed historically, i.e. according to the date of the respective event. Place names from GOV Place text and links Reset GOV id (outside GEDCOM) and reload the GOV place hierarchy Reset GOV id for %1$s Save the current id in order to reload the place hierarchy data from the GOV server. Set GOV id (outside GEDCOM) Set GOV id for %1$s Show GOV hierarchy for Show additional info Subsequently, all data is retrieved again from the GOV server.  The GOV server provides place names in different languages. However, there is no concept of an 'official language' for a place. The GOV server seems to be temporarily unavailable. The current user language always has the highest priority. These languages are then used, in the given order, either as fallbacks, or (if upper-cased) as additional languages (i.e. 'official languages' for a place hierarchy). This option mainly exists for demo servers and is not recommended otherwise. It has precedence over the preceding option. This policy hasn't been strictly followed though. Check this option if you end up with incomplete hierarchies otherwise. Uncheck this option if you do not want objects such as the European Union or the Holy Roman Empire to appear in hierarchies as parents of sovereign entities. Use NuSOAP instead of SoapClient Use place names and link to places existing in webtrees, additionally link to GOV via icons Use place names and links from GOV Use place names and links from GOV, additionally link to places existing in webtrees via icons Usually only required in case of substantial changes of the GOV data.  Vesta Gov4Webtrees: The displayed GOV hierarchy now additionally links to webtrees places where possible. You can switch back to the classic display (and others) via the module configuration. When this option is disabled, an alternative edit control is provided, which still allows to reload place hierarchies from the GOV server. Where to edit and store GOV ids Within GEDCOM data (via other custom modules).  You can create and modify this csv file according to your personal preferences, see '%1$s' for an example. You may also save an empty id in order to remove the mapping. both date of event fallback to German place names for events without a date, present time hierarchy will be used regardless of this preference. motivated by the assumption that place names in the local language are more useful in general  present time reload the GOV place hierarchy reset all cached data once today Project-Id-Version: Turkish (Vesta Webtrees Custom Modules)
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Turkish <https://hosted.weblate.org/projects/vesta-webtrees-custom-modules/vesta-gov4webtrees/tr/>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 4.7-dev
 'Klasik' mod, mümkünse GEDCOM verilerinden yerlere bağlanmak için genişletildi. 'Klasik' mod. (Neden özellikle Almanca bu şekilde seçiliyor? Çünkü GOV gazetesi şu anda oldukça Almanca merkezli ve bu nedenle birçok yerde Almanca isimleri var). GOV (tarihi gazete) verilerini entegre eden bir modül. GOV (tarihi gazete) verilerini entegre eden bir modül. Genişletilmiş 'Gerçekler ve olaylar' sekmesi aracılığıyla GOV verileriyle yerleri geliştirir. Mevcut GOV şartnamesine göre, yerleşim yerlerinin diğer yerleşim yerlerinin üst öğesi olması beklenmemektedir. Ek olarak modül, ilgili GOV kimliğinin veya hiyerarşi içindeki üstlerinden herhangi birinin '%1$s' csv dosyasında tanımlanmış dillere sahip olup olmadığını denetler. Yönetimsel düzeyler Tüm veriler (manuel olarak yapılması gereken yerlerin GOV kimliklerine eşlenmesi hariç) GOV sunucusundan alınır ve dahili olarak önbelleğe alınır. Hiyerarşide 'konfederasyon' türünde nesnelere izin ver Hiyerarşide 'yerleşim' türünde nesnelere izin ver Son bir yedek olarak, yer adını bu onay kutusuna göre belirle: Kompakt ekran (yalnızca araç ipuçları olarak yönetim seviyeleri) Sonuç olarak, yer hiyerarşi bilgileri yalnızca dolaylı olarak GOV web sitesi aracılığıyla değiştirilebilir. GOV kimliğinin kaynağını gösteren bir araç ipucu görüntüler. Bu esas olarak hata ayıklama için tasarlanmıştır. Yerel php SoapClient kullanmak yerine, NuSOAP aracılığıyla GOV sunucusuna istekleri yürütün. Yerel SoapClient genellikle etkindir (bunu php.ini ayarlarınızdan kontrol edebilirsiniz), ancak tüm barındırıcılar tarafından sağlanmayabilir. Yerel istemci etkin değilse/mevcut değilse, bu seçenek otomatik olarak işaretlenir. Belirli bir yer için bu modüller, aşağıdaki stratejiye göre kullanılabilir isimleri bir dil listesiyle eşleştirerek bir veya daha fazla ismi görüntüler: Tarih aralığı olan etkinlikler için medyan tarihi kullanın GOV Kimlik Yönetimi GOV kimliği %1$s için GOV kimliği kaldırıldı. %1$s için GOV kimliği %2$s olarak ayarlandı. GOV kimlikleri varsayılan olarak GEDCOM verilerinin dışında depolanır, ancak _GOV etiketleri aracılığıyla saklanan kimlikler de desteklenir. %1$s için GOV yer hiyerarşisi GOV sunucusundan yeniden yüklendi. GOV yer hiyerarşisi GOV sunucusundan yeniden yüklendi. İşaretliyse, Almanca yer adına geri dönmeye çalışın.  Bu işaretlenirse, görüntülenen GOV hiyerarşisi, mümkünse GEDCOM verilerinden yer adlarını kullanır. Bu seçenek işaretlenirse, genellikle aşağıdaki seçeneği devre dışı bırakmak istersiniz.  İşaretlenmemişse, Almanca dışında herhangi bir dili tercih edin;  Özellikle, Paylaşılan Yerler özel modülü, GEDCOM verileri içindeki GOV kimliklerini yönetmek için kullanılabilir. Bu durumda, GOV kimlikleri, ilgili ağacı farklı bir webtrees kurulumuna taşırken manuel olarak yönetilmesi gereken ayrı bir veritabanı tablosunda saklanır.  Dahili (gerekirse otomatik olarak ayarlanır) Geçersiz GOV kimliği! Geçerli GOV kimlikleri, örneğin 'EİTTZE_W3091', 'object_1086218'. Aşağıdaki seçeneklerden yalnızca birinin kullanılması önerilir. Ayrıca, tümünün işaretini kaldırarak tüm düzenlemeleri (geçici olarak) devre dışı bırakabilirsiniz. Sonraki güncelleştirmeler tarafından üzerine yazılmaz. Yerel GOV verileri GOV sunucusunda eşleşen bir GOV kimliği arayın Yerlerin GOV kimlikleriyle eşleştirilmesi etkilenmez. Not: Yerden GOV kimliğine eşleme, gedcom verilerinin dışında saklanır. Not: Nihayetinde muhtemelen ilgili GOV verilerinin kendisinin düzeltilmesi tercih edilir. Bu türdeki nesneler muhtemelen katı bir şekilde yönetim hiyerarşisine ait değildir. Aksi takdirde, başlangıç tarihi kullanılır (bu, webtrees'deki diğer tarih tabanlı hesaplamalarla daha tutarlıdır). GEDCOM verilerinin dışında GEDCOM verilerinin dışında - herkes tarafından düzenlenebilir (ziyaretçiler dahil) GOV kimliklerini Paylaşılan Yerler modülü aracılığıyla yönetmek için özellikle kullanışlıdır. Kimlikler saklanır ve GEDCOM etiketleri aracılığıyla dışa aktarılabilir.  Yer hiyerarşileri tarihsel olarak, yani ilgili olayın tarihine göre görüntülenir. GOV'dan yer adları Metin ve bağlantılar yerleştirin GOV kimliğini (GEDCOM dışında) sıfırlayın ve GOV yer hiyerarşisini yeniden yükleyin %1$s için GOV kimliğini sıfırla GOV sunucusundan yer hiyerarşi verilerini yeniden yüklemek için mevcut kimliği kaydedin. GOV kimliğini ayarla (GEDCOM dışında) %1$s için GOV kimliğini ayarla Şunun için GOV hiyerarşisini göster Ek bilgileri göster Daha sonra, tüm veriler GOV sunucusundan tekrar alınır.  GOV sunucusu, farklı dillerde yer adları sağlar. Ancak, bir yer için 'resmi dil' kavramı yoktur. GOV sunucusu geçici olarak kullanılamıyor gibi görünüyor. Geçerli kullanıcı dili her zaman en yüksek önceliğe sahiptir. Bu diller daha sonra verilen sırayla ya yedek olarak ya da (büyük harfle yazılırsa) ek diller (yani bir yer hiyerarşisi için 'resmi diller') olarak kullanılır. Bu seçenek esas olarak demo sunucular için mevcuttur ve başka türlü tavsiye edilmez. Önceki seçeneğe göre önceliğe sahiptir. Bu politikaya kesinlikle uyulmadı. Aksi takdirde eksik hiyerarşilerle karşılaşırsanız bu seçeneği işaretleyin. Avrupa Birliği veya Kutsal Roma İmparatorluğu gibi nesnelerin hiyerarşilerde bağımsız varlıkların ebeveynleri olarak görünmesini istemiyorsanız bu seçeneğin işaretini kaldırın. SoapClient yerine NuSOAP kullanın Yer adlarını kullanın ve webtrees'te bulunan yerlere bağlantı kurun, ayrıca simgelerle GOV ile bağlantı kurun GOV'dan yer adlarını ve bağlantıları kullanın Yer adlarını ve GOV bağlantılarını kullanın, ayrıca webtrees'te bulunan yerlere simgelerle bağlantı kurun Genellikle sadece GOV verilerinde önemli değişiklikler olması durumunda gereklidir.  Vesta Gov4Webtrees: Görüntülenen GOV hiyerarşisi artık mümkün olan her yerde webtrees yerlerine ek olarak bağlanır. Modül yapılandırmasını kullanarak klasik ekrana (ve diğerlerine) geri dönebilirsiniz. Bu seçenek devre dışı bırakıldığında, GOV sunucusundan yer hiyerarşilerinin yeniden yüklenmesine izin veren alternatif bir düzenleme kontrolü sağlanır. GOV kimlikleri nerede düzenlenir ve saklanır GEDCOM verileri içinde (diğer özel modüller aracılığıyla).  Bu csv dosyasını kişisel tercihlerinize göre oluşturabilir ve değiştirebilirsiniz, örnek için bkz: '%1$s. Eşlemeyi kaldırmak için boş bir kimlik de kaydedebilirsiniz. her ikisi de etkinlik tarihi Alman yer adlarına geri dönüş tarihi olmayan olaylar için, bu tercihe bakılmaksızın şimdiki zaman hiyerarşisi kullanılacaktır. yerel dildeki yer adlarının genel olarak daha yararlı olduğu varsayımından hareketle  şimdiki zaman GOV yer hiyerarşisini yeniden yükle önbelleğe alınmış tüm verileri bir kez sıfırla bugün 