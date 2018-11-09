# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#




default_company = Company.find_or_create_by({:companyname => "Proofpoint", :adress => "Steckengaße", :passwort => "false"})

trainerall = Group.find_or_create_by({:title => "Trainer.all"})
yoga =   Group.find_or_create_by({:title => "Yoga"})
stepper =  Group.find_or_create_by({:title => "Stepper"})
condition =  Group.find_or_create_by({:title => "Condition"})

user_super = User.find_or_create_by(:email => 'super@super.com', :company_id => default_company.id, :name => "super", :admin => "false", :superuser => "true") do |user|
  user.password = "123"
  user.password_confirmation = "123"
end

user_admin = User.find_or_create_by(:email => 'admin@admin.com', :company_id => default_company.id, :name => "admin", :admin => "true", :superuser => "false") do |user|
  user.password = "123"
  user.password_confirmation = "123"
end
user1 = User.find_or_create_by(:email => '1@1.com', :company_id => default_company.id, :name => "cat1", :admin => "false", :superuser => "false")do |user|
  user.password = "123"
  user.password_confirmation = "123"
end
user2 = User.find_or_create_by(:email => '2@2.com', :company_id => default_company.id, :name => "cat2", :admin => "false", :superuser => "false")do |user|
  user.password = "123"
  user.password_confirmation = "123"
end

user_wokeecat = User.find_or_create_by(:email => '3@3.com', :company_id => default_company.id, :name => "wokeecat", :admin => "false", :superuser => "false")do |user|
  user.password = "123"
  user.password_confirmation = "123"
end


Copyrigth.find_or_create_by({:copy => "Proofpoint Group all rights.....2018"})

Faq.find_or_create_by({:question => "how can i, when bla is allready", :answer => "Just do it"})
Faq.find_or_create_by({:question => "Who is, a this time", :answer => "hats easy, we can`t"})
Faq.find_or_create_by({:question => "I don`t like to do so is it pos..", :answer => "Clear yes juet talk to .... fist"})
Faq.find_or_create_by({:question => "what is the answer to everything?", :answer => "42"})
Faq.find_or_create_by({:question => "Just another question", :answer => "Answer"})

Channel.find_or_create_by({:title => "Facebook", :status => "both", :url => "B@to.it", :login => "14256", :typ => "facebook"})
Channel.find_or_create_by({:title => "Email", :status => "chat", :url => "Mail@to.it", :login => "14256", :typ => "email"})
Channel.find_or_create_by({:title => "instagram", :status => "blog", :url => "Bail@to.it", :login => "14256", :typ => "instagram"})
Channel.find_or_create_by({:title => "Twitter", :status => "blog", :url => "Bmail@t.it", :login => "14256", :typ => "twitter"})
Channel.find_or_create_by({:title => "Slack", :status => "chat", :url => "Bil@to.com", :login => "14256", :typ => "slack"})

context1 = %q(
Hey Guys,

it is getting worse, please take care about the Rubbish.
)
context2 = %q(
@ all the Man,

your Shower won`t be availeble for two Days.
Meanwhile yust go to the Gymrooms.
)
context3 = %q(
Good Neews,

next week we get the new Coffemachine.
)

context4 = %q(
Hey Guys,

Tomorow ther will be no internet between 11-12.
Sorry!!!

)

context5 = %q(
@ all the Yogis,

we change for new mats, so everyone feel free to tak the old ones at home.

)

context6 = %q(
Good Neews,

two new trainers signed coming in dezember.

Best wishes
your Ceo
)
context7 = %q(
Everyone,

thank you the team works fine.

best wishes
Daniel
)

context8 = %q(
Happy Deepavali everyone.
)

gm1 = GroupMessage.find_or_create_by({:group_id => trainerall.id, :context => context1, :creator_id => user1.id})
gm2 = GroupMessage.find_or_create_by({:group_id => yoga.id, :context => context2, :creator_id => user1.id})
gm3 = GroupMessage.find_or_create_by({:group_id => stepper.id, :context => context3, :creator_id => user_super.id})
gm4 = GroupMessage.find_or_create_by({:group_id => trainerall.id, :context => context4, :creator_id => user_super.id})
gm5 = GroupMessage.find_or_create_by({:group_id => yoga.id, :context => context5, :creator_id => user_admin.id})
gm6 = GroupMessage.find_or_create_by({:group_id => trainerall.id, :context => context6, :creator_id => user_admin.id})
gm7 = GroupMessage.find_or_create_by({:group_id => trainerall.id, :context => context7, :creator_id => user2.id})
gm8 = GroupMessage.find_or_create_by({:group_id => condition.id, :context => context8, :creator_id => user1.id})
gm9 = GroupMessage.find_or_create_by({:group_id => trainerall.id, :context => context6, :creator_id => user2.id})
gm10 = GroupMessage.find_or_create_by({:group_id => yoga.id, :context => context7, :creator_id => user_wokeecat.id})

GroupComment.find_or_create_by({:group_message_id => gm1.id, :user_id => user_super.id, :comment =>'Jup wird erledigt.'})
GroupComment.find_or_create_by({:group_message_id => gm1.id, :user_id => user_super.id, :comment =>'Bin ich nicht der Meinung.'})
GroupComment.find_or_create_by({:group_message_id => gm3.id, :user_id => user_super.id, :comment =>'Jup wird erledigt.'})
GroupComment.find_or_create_by({:group_message_id => gm1.id, :user_id => user_super.id, :comment =>'Das ist ja total Tibeltitipptop.'})
GroupComment.find_or_create_by({:group_message_id => gm9.id, :user_id => user_wokeecat.id, :comment =>'Jup wird erledigt.'})
GroupComment.find_or_create_by({:group_message_id => gm2.id, :user_id => user_wokeecat.id, :comment =>'Bin ich nicht der Meinung.'})
GroupComment.find_or_create_by({:group_message_id => gm2.id, :user_id => user2.id, :comment =>'Hm.... ja ok.'})
GroupComment.find_or_create_by({:group_message_id => gm4.id, :user_id => user_wokeecat.id, :comment =>'Hm.... ja ok.'})
GroupComment.find_or_create_by({:group_message_id => gm2.id, :user_id => user2.id, :comment =>'Jup wird erledigt.'})
GroupComment.find_or_create_by({:group_message_id => gm5.id, :user_id => user2.id, :comment =>'Hm.... ja ok.'})
GroupComment.find_or_create_by({:group_message_id => gm7.id, :user_id => user1.id, :comment =>'Wunderbar'})
GroupComment.find_or_create_by({:group_message_id => gm8.id, :user_id => user_admin.id, :comment =>'Der Admin hat auch noch ein Wort.'})
GroupComment.find_or_create_by({:group_message_id => gm2.id, :user_id => user_admin.id, :comment =>'Der Admin hat auch noch ein Wort.'})
GroupComment.find_or_create_by({:group_message_id => gm8.id, :user_id => user_admin.id, :comment =>'Der Admin hat auch noch ein Wort.'})
GroupComment.find_or_create_by({:group_message_id => gm7.id, :user_id => user_admin.id, :comment =>'Der Admin hat auch noch ein Wort.'})
GroupComment.find_or_create_by({:group_message_id => gm10.id, :user_id => user_admin.id, :comment =>'Der Admin hat auch noch ein Wort.'})



dataprotection_content = %q(Datenschutzerklärung
1. DATENSCHUTZ AUF EINEN BLICK
ALLGEMEINE HINWEISE
Die folgenden Hinweise geben einen einfachen Überblick darüber, was mit Ihren personenbezogenen Daten passiert, wenn Sie unsere Website besuchen. Personenbezogene Daten sind alle Daten, mit denen Sie persönlich identifiziert werden können. Ausführliche Informationen zum Thema Datenschutz entnehmen Sie unserer unter diesem Text aufgeführten Datenschutzerklärung.

DATENERFASSUNG AUF UNSERER WEBSITE
Wer ist verantwortlich für die Datenerfassung auf dieser Website?

Die Datenverarbeitung auf dieser Website erfolgt durch den Websitebetreiber. Dessen Kontaktdaten können Sie dem Impressum dieser Website entnehmen.

Wie erfassen wir Ihre Daten?

Ihre Daten werden zum einen dadurch erhoben, dass Sie uns diese mitteilen. Hierbei kann es sich z.B. um Daten handeln, die Sie in ein Kontaktformular eingeben.

Andere Daten werden automatisch beim Besuch der Website durch unsere IT-Systeme erfasst. Das sind vor allem technische Daten (z.B. Internetbrowser, Betriebssystem oder Uhrzeit des Seitenaufrufs). Die Erfassung dieser Daten erfolgt automatisch, sobald Sie unsere Website betreten.

Wofür nutzen wir Ihre Daten?

Ein Teil der Daten wird erhoben, um eine fehlerfreie Bereitstellung der Website zu gewährleisten. Andere Daten können zur Analyse Ihres Nutzerverhaltens verwendet werden.

Welche Rechte haben Sie bezüglich Ihrer Daten?

Sie haben jederzeit das Recht unentgeltlich Auskunft über Herkunft, Empfänger und Zweck Ihrer gespeicherten personenbezogenen Daten zu erhalten. Sie haben außerdem ein Recht, die Berichtigung, Sperrung oder Löschung dieser Daten zu verlangen. Hierzu sowie zu weiteren Fragen zum Thema Datenschutz können Sie sich jederzeit unter der im Impressum angegebenen Adresse an uns wenden. Des Weiteren steht Ihnen ein Beschwerderecht bei der zuständigen Aufsichtsbehörde zu.

ANALYSE-TOOLS UND TOOLS VON DRITTANBIETERN
Beim Besuch unserer Website kann Ihr Surf-Verhalten statistisch ausgewertet werden. Das geschieht vor allem mit Cookies und mit sogenannten Analyseprogrammen. Die Analyse Ihres Surf-Verhaltens erfolgt in der Regel anonym; das Surf-Verhalten kann nicht zu Ihnen zurückverfolgt werden. Sie können dieser Analyse widersprechen oder sie durch die Nichtbenutzung bestimmter Tools verhindern. Details hierzu entnehmen Sie unserer Datenschutzerklärung unter der Überschrift “Drittmodule und Analysetools”.

Sie können dieser Analyse widersprechen. Über die Widerspruchsmöglichkeiten werden wir Sie in dieser Datenschutzerklärung informieren.

2. ALLGEMEINE HINWEISE UND PFLICHTINFORMATIONEN
DATENSCHUTZ
Die Betreiber dieser Seiten nehmen den Schutz Ihrer persönlichen Daten sehr ernst. Wir behandeln Ihre personenbezogenen Daten vertraulich und entsprechend der gesetzlichen Datenschutzvorschriften sowie dieser Datenschutzerklärung.

Wenn Sie diese Website benutzen, werden verschiedene personenbezogene Daten erhoben. Personenbezogene Daten sind Daten, mit denen Sie persönlich identifiziert werden können. Die vorliegende Datenschutzerklärung erläutert, welche Daten wir erheben und wofür wir sie nutzen. Sie erläutert auch, wie und zu welchem Zweck das geschieht.

Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.

DATENSCHUTZBEAUFTRAGTER
Gesetzlich vorgeschriebener Datenschutzbauftragter.
Wir haben für unser Unternehmen einen Datenschutzbeauftragten bestellt:

Susanne Grupp

Postanschrift
FIT PLUS Fitnesscenter GmbH
- Datenschutzbeauftragter -
Altdorferstrasse 38
84030 Landshut

Email: datenschutz@fit-plus.info
Telefon: +49 871 975470

HINWEIS ZUR VERANTWORTLICHEN STELLE
Die verantwortliche Stelle für die Datenverarbeitung auf dieser Website ist:

FIT PLUS Fitness-Center GmbH
Altdorfer Str. 38
84030 Landshut

Telefon: +49 (0) 871-975470
E-Mail: kontakte@fit-plus.info

Verantwortliche Stelle ist die natürliche oder juristische Person, die allein oder gemeinsam mit anderen über die Zwecke und Mittel der Verarbeitung von personenbezogenen Daten (z.B. Namen, E-Mail-Adressen o. Ä.) entscheidet.

WIDERRUF IHRER EINWILLIGUNG ZUR DATENVERARBEITUNG
Viele Datenverarbeitungsvorgänge sind nur mit Ihrer ausdrücklichen Einwilligung möglich. Sie können eine bereits erteilte Einwilligung jederzeit widerrufen. Dazu reicht eine formlose Mitteilung per E-Mail an uns. Die Rechtmäßigkeit der bis zum Widerruf erfolgten Datenverarbeitung bleibt vom Widerruf unberührt.

BESCHWERDERECHT BEI DER ZUSTÄNDIGEN AUFSICHTSBEHÖRDE
Im Falle datenschutzrechtlicher Verstöße steht dem Betroffenen ein Beschwerderecht bei der zuständigen Aufsichtsbehörde zu. Zuständige Aufsichtsbehörde in datenschutzrechtlichen Fragen ist der Landesdatenschutzbeauftragte des Bundeslandes, in dem unser Unternehmen seinen Sitz hat. Eine Liste der Datenschutzbeauftragten sowie deren Kontaktdaten können folgendem Link entnommen werden: https://www.bfdi.bund.de/DE/Infothek/Anschriften_Links/anschriften_links-node.html.

RECHT AUF DATENÜBERTRAGBARKEIT
Sie haben das Recht, Daten, die wir auf Grundlage Ihrer Einwilligung oder in Erfüllung eines Vertrags automatisiert verarbeiten, an sich oder an einen Dritten in einem gängigen, maschinenlesbaren Format aushändigen zu lassen. Sofern Sie die direkte Übertragung der Daten an einen anderen Verantwortlichen verlangen, erfolgt dies nur, soweit es technisch machbar ist.

SSL- BZW. TLS-VERSCHLÜSSELUNG
Diese Seite nutzt aus Sicherheitsgründen und zum Schutz der Übertragung vertraulicher Inhalte, wie zum Beispiel Bestellungen oder Anfragen, die Sie an uns als Seitenbetreiber senden, eine SSL-bzw. TLS-Verschlüsselung. Eine verschlüsselte Verbindung erkennen Sie daran, dass die Adresszeile des Browsers von “http://” auf “https://” wechselt und an dem Schloss-Symbol in Ihrer Browserzeile.

Wenn die SSL- bzw. TLS-Verschlüsselung aktiviert ist, können die Daten, die Sie an uns übermitteln, nicht von Dritten mitgelesen werden.

AUSKUNFT, SPERRUNG, LÖSCHUNG
Sie haben im Rahmen der geltenden gesetzlichen Bestimmungen jederzeit das Recht auf unentgeltliche Auskunft über Ihre gespeicherten personenbezogenen Daten, deren Herkunft und Empfänger und den Zweck der Datenverarbeitung und ggf. ein Recht auf Berichtigung, Sperrung oder Löschung dieser Daten. Hierzu sowie zu weiteren Fragen zum Thema personenbezogene Daten können Sie sich jederzeit unter der im Impressum angegebenen Adresse an uns wenden.

WIDERSPRUCH GEGEN WERBE-MAILS
Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-E-Mails, vor.

3. DATENERFASSUNG AUF UNSERER WEBSITE
COOKIES
Die Internetseiten verwenden teilweise so genannte Cookies. Cookies richten auf Ihrem Rechner keinen Schaden an und enthalten keine Viren. Cookies dienen dazu, unser Angebot nutzerfreundlicher, effektiver und sicherer zu machen. Cookies sind kleine Textdateien, die auf Ihrem Rechner abgelegt werden und die Ihr Browser speichert.

Die meisten der von uns verwendeten Cookies sind so genannte “Session-Cookies”. Sie werden nach Ende Ihres Besuchs automatisch gelöscht. Andere Cookies bleiben auf Ihrem Endgerät gespeichert bis Sie diese löschen. Diese Cookies ermöglichen es uns, Ihren Browser beim nächsten Besuch wiederzuerkennen.

Sie können Ihren Browser so einstellen, dass Sie über das Setzen von Cookies informiert werden und Cookies nur im Einzelfall erlauben, die Annahme von Cookies für bestimmte Fälle oder generell ausschließen sowie das automatische Löschen der Cookies beim Schließen des Browser aktivieren. Bei der Deaktivierung von Cookies kann die Funktionalität dieser Website eingeschränkt sein.

Cookies, die zur Durchführung des elektronischen Kommunikationsvorgangs oder zur Bereitstellung bestimmter, von Ihnen erwünschter Funktionen (z.B. Warenkorbfunktion) erforderlich sind, werden auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO gespeichert. Der Websitebetreiber hat ein berechtigtes Interesse an der Speicherung von Cookies zur technisch fehlerfreien und optimierten Bereitstellung seiner Dienste. Soweit andere Cookies (z.B. Cookies zur Analyse Ihres Surfverhaltens) gespeichert werden, werden diese in dieser Datenschutzerklärung gesondert behandelt.

SERVER-LOG-DATEIEN
Der Provider der Seiten erhebt und speichert automatisch Informationen in so genannten Server-Log-Dateien, die Ihr Browser automatisch an uns übermittelt. Dies sind:

Browsertyp und Browserversion
verwendetes Betriebssystem
Referrer URL
Hostname des zugreifenden Rechners
Uhrzeit der Serveranfrage
IP-Adresse
Eine Zusammenführung dieser Daten mit anderen Datenquellen wird nicht vorgenommen.

Grundlage für die Datenverarbeitung ist Art. 6 Abs. 1 lit. b DSGVO, der die Verarbeitung von Daten zur Erfüllung eines Vertrags oder vorvertraglicher Maßnahmen gestattet.

KONTAKTFORMULAR
Wenn Sie uns per Kontaktformular Anfragen zukommen lassen, werden Ihre Angaben aus dem Anfrageformular inklusive der von Ihnen dort angegebenen Kontaktdaten zwecks Bearbeitung der Anfrage und für den Fall von Anschlussfragen bei uns gespeichert. Diese Daten geben wir nicht ohne Ihre Einwilligung weiter.

Die Verarbeitung der in das Kontaktformular eingegebenen Daten erfolgt somit ausschließlich auf Grundlage Ihrer Einwilligung (Art. 6 Abs. 1 lit. a DSGVO). Sie können diese Einwilligung jederzeit widerrufen. Dazu reicht eine formlose Mitteilung per E-Mail an uns. Die Rechtmäßigkeit der bis zum Widerruf erfolgten Datenverarbeitungsvorgänge bleibt vom Widerruf unberührt.

Die von Ihnen im Kontaktformular eingegebenen Daten verbleiben bei uns, bis Sie uns zur Löschung auffordern, Ihre Einwilligung zur Speicherung widerrufen oder der Zweck für die Datenspeicherung entfällt (z.B. nach abgeschlossener Bearbeitung Ihrer Anfrage). Zwingende gesetzliche Bestimmungen – insbesondere Aufbewahrungsfristen – bleiben unberührt.

4. SOZIALE MEDIEN
FACEBOOK-PLUGINS (LIKE & SHARE-BUTTON)
Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook, Anbieter Facebook Inc., 1 Hacker Way, Menlo Park, California 94025, USA, integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem "Like-Button" ("Gefällt mir") auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: https://developers.facebook.com/docs/plugins/.

Wir haben das Facebook Plugin als sogenannte 2-Klick Lösung in unsere Website integriert. Das bedeutet wir laden das Facebook Plugin nicht sofort und es werden nicht automatisch Daten an Facebook übertragen. Stattdessen zweigen wir Ihnen einen Hinweistext an das dass Facebook Plugin geladen wird wenn Sie auf den Button „Akzeptieren" klicken. Erst dann können Sie bei Facebook teilen oder liken.

Wenn Sie den Button zum aktivieren des Plugins geklickt haben, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook "Like-Button" anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von Facebook unter: https://de-de.facebook.com/policy.php.
Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.
5. ANALYSE TOOLS UND WERBUNG
GOOGLE ANALYTICS
Diese Website nutzt Funktionen des Webanalysedienstes Google Analytics. Anbieter ist die Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA.

Google Analytics verwendet so genannte "Cookies". Das sind Textdateien, die auf Ihrem Computer gespeichert werden und die eine Analyse der Benutzung der Website durch Sie ermöglichen. Die durch den Cookie erzeugten Informationen über Ihre Benutzung dieser Website werden in der Regel an einen Server von Google in den USA übertragen und dort gespeichert.

Die Speicherung von Google-Analytics-Cookies erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Der Websitebetreiber hat ein berechtigtes Interesse an der Analyse des Nutzerverhaltens, um sowohl sein Webangebot als auch seine Werbung zu optimieren.

IP-Anonymisierung

Wir haben auf dieser Website die Funktion IP-Anonymisierung aktiviert. Dadurch wird Ihre IP-Adresse von Google innerhalb von Mitgliedstaaten der Europäischen Union oder in anderen Vertragsstaaten des Abkommens über den Europäischen Wirtschaftsraum vor der Übermittlung in die USA gekürzt. Nur in Ausnahmefällen wird die volle IP-Adresse an einen Server von Google in den USA übertragen und dort gekürzt. Im Auftrag des Betreibers dieser Website wird Google diese Informationen benutzen, um Ihre Nutzung der Website auszuwerten, um Reports über die Websiteaktivitäten zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen gegenüber dem Websitebetreiber zu erbringen. Die im Rahmen von Google Analytics von Ihrem Browser übermittelte IP-Adresse wird nicht mit anderen Daten von Google zusammengeführt.

Browser Plugin

Sie können die Speicherung der Cookies durch eine entsprechende Einstellung Ihrer Browser-Software verhindern; wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht sämtliche Funktionen dieser Website vollumfänglich werden nutzen können. Sie können darüber hinaus die Erfassung der durch den Cookie erzeugten und auf Ihre Nutzung der Website bezogenen Daten (inkl. Ihrer IP-Adresse) an Google sowie die Verarbeitung dieser Daten durch Google verhindern, indem Sie das unter dem folgenden Link verfügbare Browser-Plugin herunterladen und installieren: https://tools.google.com/dlpage/gaoptout?hl=de.

Widerspruch gegen Datenerfassung

Sie können die Erfassung Ihrer Daten durch Google Analytics verhindern, indem Sie auf folgenden Link klicken. Es wird ein Opt-Out-Cookie gesetzt, der die Erfassung Ihrer Daten bei zukünftigen Besuchen dieser Website verhindert: Google Analytics deaktivieren.

Mehr Informationen zum Umgang mit Nutzerdaten bei Google Analytics finden Sie in der Datenschutzerklärung von Google: https://support.google.com/analytics/answer/6004245?hl=de.

Auftragsdatenverarbeitung

Wir haben mit Google einen Vertrag zur Auftragsdatenverarbeitung abgeschlossen und setzen die strengen Vorgaben der deutschen Datenschutzbehörden bei der Nutzung von Google Analytics vollständig um.

Demografische Merkmale bei Google Analytics

Diese Website nutzt die Funktion “demografische Merkmale” von Google Analytics. Dadurch können Berichte erstellt werden, die Aussagen zu Alter, Geschlecht und Interessen der Seitenbesucher enthalten. Diese Daten stammen aus interessenbezogener Werbung von Google sowie aus Besucherdaten von Drittanbietern. Diese Daten können keiner bestimmten Person zugeordnet werden. Sie können diese Funktion jederzeit über die Anzeigeneinstellungen in Ihrem Google-Konto deaktivieren oder die Erfassung Ihrer Daten durch Google Analytics wie im Punkt “Widerspruch gegen Datenerfassung” dargestellt generell untersagen.

GOOGLE ANALYTICS REMARKETING
Unsere Websites nutzen die Funktionen von Google Analytics Remarketing in Verbindung mit den geräteübergreifenden Funktionen von Google AdWords und Google DoubleClick. Anbieter ist die Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA.

Diese Funktion ermöglicht es die mit Google Analytics Remarketing erstellten Werbe-Zielgruppen mit den geräteübergreifenden Funktionen von Google AdWords und Google DoubleClick zu verknüpfen. Auf diese Weise können interessenbezogene, personalisierte Werbebotschaften, die in Abhängigkeit Ihres früheren Nutzungs- und Surfverhaltens auf einem Endgerät (z.B. Handy) an Sie angepasst wurden auch auf einem anderen Ihrer Endgeräte (z.B. Tablet oder PC) angezeigt werden.

Haben Sie eine entsprechende Einwilligung erteilt, verknüpft Google zu diesem Zweck Ihren Web- und App-Browserverlauf mit Ihrem Google-Konto. Auf diese Weise können auf jedem Endgerät auf dem Sie sich mit Ihrem Google-Konto anmelden, dieselben personalisierten Werbebotschaften geschaltet werden.

Zur Unterstützung dieser Funktion erfasst Google Analytics google-authentifizierte IDs der Nutzer, die vorübergehend mit unseren Google-Analytics-Daten verknüpft werden, um Zielgruppen für die geräteübergreifende Anzeigenwerbung zu definieren und zu erstellen.

Sie können dem geräteübergreifenden Remarketing/Targeting dauerhaft widersprechen, indem Sie personalisierte Werbung in Ihrem Google-Konto deaktivieren; folgen Sie hierzu diesem Link: https://www.google.com/settings/ads/onweb/.

Die Zusammenfassung der erfassten Daten in Ihrem Google-Konto erfolgt ausschließlich auf Grundlage Ihrer Einwilligung, die Sie bei Google abgeben oder widerrufen können (Art. 6 Abs. 1 lit. a DSGVO). Bei Datenerfassungsvorgängen, die nicht in Ihrem Google-Konto zusammengeführt werden (z.B. weil Sie kein Google-Konto haben oder der Zusammenführung widersprochen haben) beruht die Erfassung der Daten auf Art. 6 Abs. 1 lit. f DSGVO. Das berechtigte Interesse ergibt sich daraus, dass der Websitebetreiber ein Interesse an der anonymisierten Analyse der Websitebesucher zu Werbezwecken hat.

Weitergehende Informationen und die Datenschutzbestimmungen finden Sie in der Datenschutzerklärung von Google unter: https://www.google.com/policies/technologies/ads/.

GOOGLE ADWORDS UND GOOGLE CONVERSION-TRACKING
Diese Website verwendet Google AdWords. AdWords ist ein Online-Werbeprogramm der Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, United States (“Google”).

Im Rahmen von Google AdWords nutzen wir das so genannte Conversion-Tracking. Wenn Sie auf eine von Google geschaltete Anzeige klicken wird ein Cookie für das Conversion-Tracking gesetzt. Bei Cookies handelt es sich um kleine Textdateien, die der Internet-Browser auf dem Computer des Nutzers ablegt. Diese Cookies verlieren nach 30 Tagen ihre Gültigkeit und dienen nicht der persönlichen Identifizierung der Nutzer. Besucht der Nutzer bestimmte Seiten dieser Website und das Cookie ist noch nicht abgelaufen, können Google und wir erkennen, dass der Nutzer auf die Anzeige geklickt hat und zu dieser Seite weitergeleitet wurde.

Jeder Google AdWords-Kunde erhält ein anderes Cookie. Die Cookies können nicht über die Websites von AdWords-Kunden nachverfolgt werden. Die mithilfe des Conversion-Cookies eingeholten Informationen dienen dazu, Conversion-Statistiken für AdWords-Kunden zu erstellen, die sich für Conversion-Tracking entschieden haben. Die Kunden erfahren die Gesamtanzahl der Nutzer, die auf ihre Anzeige geklickt haben und zu einer mit einem Conversion-Tracking-Tag versehenen Seite weitergeleitet wurden. Sie erhalten jedoch keine Informationen, mit denen sich Nutzer persönlich identifizieren lassen. Wenn Sie nicht am Tracking teilnehmen möchten, können Sie dieser Nutzung widersprechen, indem Sie das Cookie des Google Conversion-Trackings über ihren Internet-Browser unter Nutzereinstellungen leicht deaktivieren. Sie werden sodann nicht in die Conversion-Tracking Statistiken aufgenommen.

Die Speicherung von “Conversion-Cookies” erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Der Websitebetreiber hat ein berechtigtes Interesse an der Analyse des Nutzerverhaltens, um sowohl sein Webangebot als auch seine Werbung zu optimieren.

Mehr Informationen zu Google AdWords und Google Conversion-Tracking finden Sie in den Datenschutzbestimmungen von Google: https://www.google.de/policies/privacy/.

Sie können Ihren Browser so einstellen, dass Sie über das Setzen von Cookies informiert werden und Cookies nur im Einzelfall erlauben, die Annahme von Cookies für bestimmte Fälle oder generell ausschließen sowie das automatische Löschen der Cookies beim Schließen des Browser aktivieren. Bei der Deaktivierung von Cookies kann die Funktionalität dieser Website eingeschränkt sein.

FACEBOOK PIXEL
Unsere Website nutzt zur Konversionsmessung das Besucheraktions-Pixel von Facebook, Facebook Inc., 1601 S. California Ave, Palo Alto, CA 94304, USA (“Facebook”).

So kann das Verhalten der Seitenbesucher nachverfolgt werden, nachdem diese durch Klick auf eine Facebook-Werbeanzeige auf die Website des Anbieters weitergeleitet wurden. Dadurch können die Wirksamkeit der Facebook-Werbeanzeigen für statistische und Marktforschungszwecke ausgewertet werden und zukünftige Werbemaßnahmen optimiert werden.

Die erhobenen Daten sind für uns als Betreiber dieser Website anonym, wir können keine Rückschlüsse auf die Identität der Nutzer ziehen. Die Daten werden aber von Facebook gespeichert und verarbeitet, sodass eine Verbindung zum jeweiligen Nutzerprofil möglich ist und Facebook die Daten für eigene Werbezwecke, entsprechend der Facebook-Datenverwendungsrichtlinie verwenden kann. Dadurch kann Facebook das Schalten von Werbeanzeigen auf Seiten von Facebook sowie außerhalb von Facebook ermöglichen. Diese Verwendung der Daten kann von uns als Seitenbetreiber nicht beeinflusst werden.

In den Datenschutzhinweisen von Facebook finden Sie weitere Hinweise zum Schutz Ihrer Privatsphäre: https://www.facebook.com/about/privacy/.

Sie können außerdem die Remarketing-Funktion “Custom Audiences” im Bereich Einstellungen für Werbeanzeigen unter https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen deaktivieren. Dazu müssen Sie bei Facebook angemeldet sein.

Wenn Sie kein Facebook Konto besitzen, können Sie nutzungsbasierte Werbung von Facebook auf der Website der European Interactive Digital Advertising Alliance deaktivieren: http://www.youronlinechoices.com/de/praferenzmanagement/.

6. NEWSLETTER
NEWSLETTERDATEN
Wenn Sie den auf der Website angebotenen Newsletter beziehen möchten, benötigen wir von Ihnen eine E-Mail-Adresse sowie Informationen, welche uns die Überprüfung gestatten, dass Sie der Inhaber der angegebenen E-Mail-Adresse sind und mit dem Empfang des Newsletters einverstanden sind. Weitere Daten werden nicht bzw. nur auf freiwilliger Basis erhoben. Diese Daten verwenden wir ausschließlich für den Versand der angeforderten Informationen und geben diese nicht an Dritte weiter.

Die Verarbeitung der in das Newsletteranmeldeformular eingegebenen Daten erfolgt ausschließlich auf Grundlage Ihrer Einwilligung (Art. 6 Abs. 1 lit. a DSGVO). Die erteilte Einwilligung zur Speicherung der Daten, der E-Mail-Adresse sowie deren Nutzung zum Versand des Newsletters können Sie jederzeit widerrufen, etwa über den "Austragen"-Link im Newsletter. Die Rechtmäßigkeit der bereits erfolgten Datenverarbeitungsvorgänge bleibt vom Widerruf unberührt.

Die von Ihnen zum Zwecke des Newsletter-Bezugs bei uns hinterlegten Daten werden von uns bis zu Ihrer Austragung aus dem Newsletter gespeichert und nach der Abbestellung des Newsletters gelöscht. Daten, die zu anderen Zwecken bei uns gespeichert wurden (z.B. E-Mail-Adressen für den Mitgliederbereich) bleiben hiervon unberührt.

NEWSLETTER2GO
Diese Website nutzt Newsletter2Go für den Versand von Newslettern. Anbieter ist die Newsletter2Go GmbH, Nürnberger Straße 8, 10787 Berlin, Deutschland.

Newsletter2Go ist ein Dienst, mit dem u.a. der Versand von Newslettern organisiert und analysiert werden kann. Die von Ihnen zum Zwecke des Newsletterbezugs eingegeben Daten werden auf den Servern von Newsletter2Go in Deutschland gespeichert.

Wenn Sie keine Analyse durch Newsletter2Go wollen, müssen Sie den Newsletter abbestellen. Hierfür stellen wir in jeder Newsletternachricht einen entsprechenden Link zur Verfügung. Des Weiteren können Sie den Newsletter auch direkt auf der Website abbestellen.

Datenanalyse durch Newsletter2Go

Mit Hilfe von Newsletter2Go ist es uns möglich, unsere Newsletter-Kampagnen zu analysieren. So können wir z.B. sehen, ob eine Newsletter-Nachricht geöffnet und welche Links ggf. angeklickt wurden. Auf diese Weise können wir u.a. feststellen, welche Links besonders oft angeklickt wurden.

Außerdem können wir erkennen, ob nach dem Öffnen/ Anklicken bestimmte vorher definierte Aktionen durchgeführt wurden (Conversion-Rate). Wir können so z.B. erkennen, ob Sie nach dem Anklicken des Newsletters einen Kauf getätigt haben.

Newsletter2Go ermöglicht es uns auch, die Newsletter-Empfänger anhand verschiedener Kategorien zu unterteilen (“clustern”). Dabei lassen sich die Newsletterempfänger z.B. nach Alter, Geschlecht oder Wohnort unterteilen. Auf diese Weise lassen sich die Newsletter besser an die jeweiligen Zielgruppen anpassen.

Ausführliche Informationen zum zu den Funktionen von Newsletter2Go entnehmen Sie folgendem Link: https://www.newsletter2go.de/features/newsletter-software/.

Rechtsgrundlage

Die Datenverarbeitung erfolgt auf Grundlage Ihrer Einwilligung (Art. 6 Abs. 1 lit. a DSGVO). Sie können diese Einwilligung jederzeit widerrufen. Die Rechtmäßigkeit der bereits erfolgten Datenverarbeitungsvorgänge bleibt vom Widerruf unberührt.

Speicherdauer

Die von Ihnen zum Zwecke des Newsletter-Bezugs bei uns hinterlegten Daten werden von uns bis zu Ihrer Austragung aus dem Newsletter gespeichert und nach der Abbestellung des Newsletters sowohl von unseren Servern als auch von den Servern von Newsletter2Go gelöscht. Daten, die zu anderen Zwecken bei uns gespeichert wurden (z.B. E-Mail-Adressen für den Mitgliederbereich) bleiben hiervon unberührt.

Näheres entnehmen Sie den Datenschutzbestimmungen von Newsletter2Go unter: https://www.newsletter2go.de/features/datenschutz-2/.

Abschluss eines Vertrags über Auftragsdatenverarbeitung

Wir haben mit Newsletter2Go einen Vertrag abgeschlossen, in dem wir Newsletter2Go verpflichten, die Daten unserer Kunden zu schützen und sie nicht an Dritte weiterzugeben. Dieser Vertrag kann unter folgendem Link eingesehen werden: https://www.newsletter2go.de/docs/datenschutz/ADV_Muster_Newsletter2Go_GmbH_latest_Form.pdf?x48278.

7. PLUGINS UND TOOLS
YOUTUBE
Unsere Website nutzt Plugins der von Google betriebenen Seite YouTube. Betreiber der Seiten ist die YouTube, LLC, 901 Cherry Ave., San Bruno, CA 94066, USA.

Wenn Sie eine unserer mit einem YouTube-Plugin ausgestatteten Seiten besuchen, wird eine Verbindung zu den Servern von YouTube hergestellt. Dabei wird dem YouTube-Server mitgeteilt, welche unserer Seiten Sie besucht haben.

Wenn Sie in Ihrem YouTube-Account eingeloggt sind, ermöglichen Sie YouTube, Ihr Surfverhalten direkt Ihrem persönlichen Profil zuzuordnen. Dies können Sie verhindern, indem Sie sich aus Ihrem YouTube-Account ausloggen.

Die Nutzung von YouTube erfolgt im Interesse einer ansprechenden Darstellung unserer Online-Angebote. Dies stellt ein berechtigtes Interesse im Sinne von Art. 6 Abs. 1 lit. f DSGVO dar.

Weitere Informationen zum Umgang mit Nutzerdaten finden Sie in der Datenschutzerklärung von YouTube unter: https://www.google.de/intl/de/policies/privacy.

GOOGLE WEB FONTS
Diese Seite nutzt zur einheitlichen Darstellung von Schriftarten so genannte Web Fonts, die von Google bereitgestellt werden. Diese haben wir lokal eingebunden und die Verbindung zum Google Server deaktiviert, so dass Ihre personenbezogenen Daten (IP Adresse) nicht aufgrund der Nutzung dieser Web Fonts übermittelt werden.

GOOGLE MAPS
Diese Seite nutzt über eine API den Kartendienst Google Maps. Anbieter ist die Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA.

Zur Nutzung der Funktionen von Google Maps ist es notwendig, Ihre IP Adresse zu speichern. Diese Informationen werden in der Regel an einen Server von Google in den USA übertragen und dort gespeichert. Der Anbieter dieser Seite hat keinen Einfluss auf diese Datenübertragung.

Die Nutzung von Google Maps erfolgt im Interesse einer ansprechenden Darstellung unserer Online-Angebote und an einer leichten Auffindbarkeit der von uns auf der Website angegebenen Orte. Dies stellt ein berechtigtes Interesse im Sinne von Art. 6 Abs. 1 lit. f DSGVO dar.)

Dataprotection.find_or_create_by({:content => dataprotection_content})


impresum_content = %q(Impressum
Angaben gemäß § 5 TMG:

PROOF POINT Werbestudio
Stephan Winkler (Einzelunternehmen)
Heilig-Geist-Gasse 398
84028 Landshut
Telefon: +49 (871) 93 52 50
E-Mail: info@proof-point.com

Vertretungsberechtigter: Stephan Winkler
Umsatzsteuer-Identifikationsnummer: DE204228028

PROOF POINT SDN.BHD.
Lot 1.03-A, Level 1, No. 8 First Avenue
Persiaran Bandar Utama
MY-47800 Petaling Jaya,Selangor, Malaysia

Company ID: 1264094-U

Managing Directors
Stephan Winkler, Tobias Bergmann

Centershops e.K.
Heilig-Geist-Gasse 398
84028 Landshut
Telefon: +49 (871) 93 52 50
E-Mail: info@centershops.de

Vertretungsberechtigter: Stephan Winkler
Umsatzsteuer-Identifikationsnummer: DE204228028

Proof Point data protection GmbH
Renkenstraße 1
D-84032 Altdorf
Telefon: +49 (871) 66 00 31 09
E-Mail: datenschutz@proof-point.com

Vertretungsberechtigte Geschäftsführer:
Stephan Winkler, Christian Obermeier

Registereintrag
Eintragung im Handelsregister B
Registergericht:Amtsgericht Landshut
Registernummer: HRB-Nr.: B 11190

Umsatzsteuer-Identifikationsnummer: DE317834455)

impressum_context = %q(
Impressum
Angaben gemäß § 5 TMG:

    PROOF POINT Werbestudio
Stephan Winkler (Einzelunternehmen)
Heilig-Geist-Gasse 398
84028 Landshut
Telefon: +49 (871) 93 52 50
E-Mail: info@proof-point.com

Vertretungsberechtigter: Stephan Winkler
Umsatzsteuer-Identifikationsnummer: DE204228028

PROOF POINT SDN.BHD.
    Lot 1.03-A, Level 1, No. 8 First Avenue
Persiaran Bandar Utama
MY-47800 Petaling Jaya,Selangor, Malaysia

Company ID: 1264094-U

Managing Directors
Stephan Winkler, Tobias Bergmann

Centershops e.K.
    Heilig-Geist-Gasse 398
84028 Landshut
Telefon: +49 (871) 93 52 50
E-Mail: info@centershops.de

Vertretungsberechtigter: Stephan Winkler
Umsatzsteuer-Identifikationsnummer: DE204228028

Proof Point data protection GmbH
Renkenstraße 1
D-84032 Altdorf
Telefon: +49 (871) 66 00 31 09
E-Mail: datenschutz@proof-point.com

Vertretungsberechtigte Geschäftsführer:
                           Stephan Winkler, Christian Obermeier

Registereintrag
Eintragung im Handelsregister B
Registergericht:Amtsgericht Landshut
Registernummer: HRB-Nr.: B 11190

Umsatzsteuer-Identifikationsnummer: DE317834455)

dataprotection_content = %q(Datenschutzerklärung
1. DATENSCHUTZ AUF EINEN BLICK
ALLGEMEINE HINWEISE
Die folgenden Hinweise geben einen einfachen Überblick darüber, was mit Ihren personenbezogenen Daten passiert, wenn Sie unsere Website besuchen. Personenbezogene Daten sind alle Daten, mit denen Sie persönlich identifiziert werden können. Ausführliche Informationen zum Thema Datenschutz entnehmen Sie unserer unter diesem Text aufgeführten Datenschutzerklärung.

DATENERFASSUNG AUF UNSERER WEBSITE
Wer ist verantwortlich für die Datenerfassung auf dieser Website?

Die Datenverarbeitung auf dieser Website erfolgt durch den Websitebetreiber. Dessen Kontaktdaten können Sie dem Impressum dieser Website entnehmen.

Wie erfassen wir Ihre Daten?

Ihre Daten werden zum einen dadurch erhoben, dass Sie uns diese mitteilen. Hierbei kann es sich z.B. um Daten handeln, die Sie in ein Kontaktformular eingeben.

Andere Daten werden automatisch beim Besuch der Website durch unsere IT-Systeme erfasst. Das sind vor allem technische Daten (z.B. Internetbrowser, Betriebssystem oder Uhrzeit des Seitenaufrufs). Die Erfassung dieser Daten erfolgt automatisch, sobald Sie unsere Website betreten.

Wofür nutzen wir Ihre Daten?

Ein Teil der Daten wird erhoben, um eine fehlerfreie Bereitstellung der Website zu gewährleisten. Andere Daten können zur Analyse Ihres Nutzerverhaltens verwendet werden.

Welche Rechte haben Sie bezüglich Ihrer Daten?

Sie haben jederzeit das Recht unentgeltlich Auskunft über Herkunft, Empfänger und Zweck Ihrer gespeicherten personenbezogenen Daten zu erhalten. Sie haben außerdem ein Recht, die Berichtigung, Sperrung oder Löschung dieser Daten zu verlangen. Hierzu sowie zu weiteren Fragen zum Thema Datenschutz können Sie sich jederzeit unter der im Impressum angegebenen Adresse an uns wenden. Des Weiteren steht Ihnen ein Beschwerderecht bei der zuständigen Aufsichtsbehörde zu.

ANALYSE-TOOLS UND TOOLS VON DRITTANBIETERN
Beim Besuch unserer Website kann Ihr Surf-Verhalten statistisch ausgewertet werden. Das geschieht vor allem mit Cookies und mit sogenannten Analyseprogrammen. Die Analyse Ihres Surf-Verhaltens erfolgt in der Regel anonym; das Surf-Verhalten kann nicht zu Ihnen zurückverfolgt werden. Sie können dieser Analyse widersprechen oder sie durch die Nichtbenutzung bestimmter Tools verhindern. Details hierzu entnehmen Sie unserer Datenschutzerklärung unter der Überschrift “Drittmodule und Analysetools”.

Sie können dieser Analyse widersprechen. Über die Widerspruchsmöglichkeiten werden wir Sie in dieser Datenschutzerklärung informieren.

2. ALLGEMEINE HINWEISE UND PFLICHTINFORMATIONEN
DATENSCHUTZ
Die Betreiber dieser Seiten nehmen den Schutz Ihrer persönlichen Daten sehr ernst. Wir behandeln Ihre personenbezogenen Daten vertraulich und entsprechend der gesetzlichen Datenschutzvorschriften sowie dieser Datenschutzerklärung.

Wenn Sie diese Website benutzen, werden verschiedene personenbezogene Daten erhoben. Personenbezogene Daten sind Daten, mit denen Sie persönlich identifiziert werden können. Die vorliegende Datenschutzerklärung erläutert, welche Daten wir erheben und wofür wir sie nutzen. Sie erläutert auch, wie und zu welchem Zweck das geschieht.

Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.

DATENSCHUTZBEAUFTRAGTER
Gesetzlich vorgeschriebener Datenschutzbauftragter.
Wir haben für unser Unternehmen einen Datenschutzbeauftragten bestellt:

Susanne Grupp

Postanschrift
FIT PLUS Fitnesscenter GmbH
- Datenschutzbeauftragter -
Altdorferstrasse 38
84030 Landshut

Email: datenschutz@fit-plus.info
Telefon: +49 871 975470

HINWEIS ZUR VERANTWORTLICHEN STELLE
Die verantwortliche Stelle für die Datenverarbeitung auf dieser Website ist:

FIT PLUS Fitness-Center GmbH
Altdorfer Str. 38
84030 Landshut

Telefon: +49 (0) 871-975470
E-Mail: kontakte@fit-plus.info

Verantwortliche Stelle ist die natürliche oder juristische Person, die allein oder gemeinsam mit anderen über die Zwecke und Mittel der Verarbeitung von personenbezogenen Daten (z.B. Namen, E-Mail-Adressen o. Ä.) entscheidet.

WIDERRUF IHRER EINWILLIGUNG ZUR DATENVERARBEITUNG
Viele Datenverarbeitungsvorgänge sind nur mit Ihrer ausdrücklichen Einwilligung möglich. Sie können eine bereits erteilte Einwilligung jederzeit widerrufen. Dazu reicht eine formlose Mitteilung per E-Mail an uns. Die Rechtmäßigkeit der bis zum Widerruf erfolgten Datenverarbeitung bleibt vom Widerruf unberührt.

BESCHWERDERECHT BEI DER ZUSTÄNDIGEN AUFSICHTSBEHÖRDE
Im Falle datenschutzrechtlicher Verstöße steht dem Betroffenen ein Beschwerderecht bei der zuständigen Aufsichtsbehörde zu. Zuständige Aufsichtsbehörde in datenschutzrechtlichen Fragen ist der Landesdatenschutzbeauftragte des Bundeslandes, in dem unser Unternehmen seinen Sitz hat. Eine Liste der Datenschutzbeauftragten sowie deren Kontaktdaten können folgendem Link entnommen werden: https://www.bfdi.bund.de/DE/Infothek/Anschriften_Links/anschriften_links-node.html.

RECHT AUF DATENÜBERTRAGBARKEIT
Sie haben das Recht, Daten, die wir auf Grundlage Ihrer Einwilligung oder in Erfüllung eines Vertrags automatisiert verarbeiten, an sich oder an einen Dritten in einem gängigen, maschinenlesbaren Format aushändigen zu lassen. Sofern Sie die direkte Übertragung der Daten an einen anderen Verantwortlichen verlangen, erfolgt dies nur, soweit es technisch machbar ist.

SSL- BZW. TLS-VERSCHLÜSSELUNG
Diese Seite nutzt aus Sicherheitsgründen und zum Schutz der Übertragung vertraulicher Inhalte, wie zum Beispiel Bestellungen oder Anfragen, die Sie an uns als Seitenbetreiber senden, eine SSL-bzw. TLS-Verschlüsselung. Eine verschlüsselte Verbindung erkennen Sie daran, dass die Adresszeile des Browsers von “http://” auf “https://” wechselt und an dem Schloss-Symbol in Ihrer Browserzeile.

Wenn die SSL- bzw. TLS-Verschlüsselung aktiviert ist, können die Daten, die Sie an uns übermitteln, nicht von Dritten mitgelesen werden.

AUSKUNFT, SPERRUNG, LÖSCHUNG
Sie haben im Rahmen der geltenden gesetzlichen Bestimmungen jederzeit das Recht auf unentgeltliche Auskunft über Ihre gespeicherten personenbezogenen Daten, deren Herkunft und Empfänger und den Zweck der Datenverarbeitung und ggf. ein Recht auf Berichtigung, Sperrung oder Löschung dieser Daten. Hierzu sowie zu weiteren Fragen zum Thema personenbezogene Daten können Sie sich jederzeit unter der im Impressum angegebenen Adresse an uns wenden.

WIDERSPRUCH GEGEN WERBE-MAILS
Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-E-Mails, vor.

3. DATENERFASSUNG AUF UNSERER WEBSITE
COOKIES
Die Internetseiten verwenden teilweise so genannte Cookies. Cookies richten auf Ihrem Rechner keinen Schaden an und enthalten keine Viren. Cookies dienen dazu, unser Angebot nutzerfreundlicher, effektiver und sicherer zu machen. Cookies sind kleine Textdateien, die auf Ihrem Rechner abgelegt werden und die Ihr Browser speichert.

Die meisten der von uns verwendeten Cookies sind so genannte “Session-Cookies”. Sie werden nach Ende Ihres Besuchs automatisch gelöscht. Andere Cookies bleiben auf Ihrem Endgerät gespeichert bis Sie diese löschen. Diese Cookies ermöglichen es uns, Ihren Browser beim nächsten Besuch wiederzuerkennen.

Sie können Ihren Browser so einstellen, dass Sie über das Setzen von Cookies informiert werden und Cookies nur im Einzelfall erlauben, die Annahme von Cookies für bestimmte Fälle oder generell ausschließen sowie das automatische Löschen der Cookies beim Schließen des Browser aktivieren. Bei der Deaktivierung von Cookies kann die Funktionalität dieser Website eingeschränkt sein.

Cookies, die zur Durchführung des elektronischen Kommunikationsvorgangs oder zur Bereitstellung bestimmter, von Ihnen erwünschter Funktionen (z.B. Warenkorbfunktion) erforderlich sind, werden auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO gespeichert. Der Websitebetreiber hat ein berechtigtes Interesse an der Speicherung von Cookies zur technisch fehlerfreien und optimierten Bereitstellung seiner Dienste. Soweit andere Cookies (z.B. Cookies zur Analyse Ihres Surfverhaltens) gespeichert werden, werden diese in dieser Datenschutzerklärung gesondert behandelt.

SERVER-LOG-DATEIEN
Der Provider der Seiten erhebt und speichert automatisch Informationen in so genannten Server-Log-Dateien, die Ihr Browser automatisch an uns übermittelt. Dies sind:

Browsertyp und Browserversion
verwendetes Betriebssystem
Referrer URL
Hostname des zugreifenden Rechners
Uhrzeit der Serveranfrage
IP-Adresse
Eine Zusammenführung dieser Daten mit anderen Datenquellen wird nicht vorgenommen.

Grundlage für die Datenverarbeitung ist Art. 6 Abs. 1 lit. b DSGVO, der die Verarbeitung von Daten zur Erfüllung eines Vertrags oder vorvertraglicher Maßnahmen gestattet.

KONTAKTFORMULAR
Wenn Sie uns per Kontaktformular Anfragen zukommen lassen, werden Ihre Angaben aus dem Anfrageformular inklusive der von Ihnen dort angegebenen Kontaktdaten zwecks Bearbeitung der Anfrage und für den Fall von Anschlussfragen bei uns gespeichert. Diese Daten geben wir nicht ohne Ihre Einwilligung weiter.

Die Verarbeitung der in das Kontaktformular eingegebenen Daten erfolgt somit ausschließlich auf Grundlage Ihrer Einwilligung (Art. 6 Abs. 1 lit. a DSGVO). Sie können diese Einwilligung jederzeit widerrufen. Dazu reicht eine formlose Mitteilung per E-Mail an uns. Die Rechtmäßigkeit der bis zum Widerruf erfolgten Datenverarbeitungsvorgänge bleibt vom Widerruf unberührt.

Die von Ihnen im Kontaktformular eingegebenen Daten verbleiben bei uns, bis Sie uns zur Löschung auffordern, Ihre Einwilligung zur Speicherung widerrufen oder der Zweck für die Datenspeicherung entfällt (z.B. nach abgeschlossener Bearbeitung Ihrer Anfrage). Zwingende gesetzliche Bestimmungen – insbesondere Aufbewahrungsfristen – bleiben unberührt.

4. SOZIALE MEDIEN
FACEBOOK-PLUGINS (LIKE & SHARE-BUTTON)
Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook, Anbieter Facebook Inc., 1 Hacker Way, Menlo Park, California 94025, USA, integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem "Like-Button" ("Gefällt mir") auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: https://developers.facebook.com/docs/plugins/.

Wir haben das Facebook Plugin als sogenannte 2-Klick Lösung in unsere Website integriert. Das bedeutet wir laden das Facebook Plugin nicht sofort und es werden nicht automatisch Daten an Facebook übertragen. Stattdessen zweigen wir Ihnen einen Hinweistext an das dass Facebook Plugin geladen wird wenn Sie auf den Button „Akzeptieren" klicken. Erst dann können Sie bei Facebook teilen oder liken.

Wenn Sie den Button zum aktivieren des Plugins geklickt haben, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook "Like-Button" anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von Facebook unter: https://de-de.facebook.com/policy.php.
Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.
5. ANALYSE TOOLS UND WERBUNG
GOOGLE ANALYTICS
Diese Website nutzt Funktionen des Webanalysedienstes Google Analytics. Anbieter ist die Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA.

Google Analytics verwendet so genannte "Cookies". Das sind Textdateien, die auf Ihrem Computer gespeichert werden und die eine Analyse der Benutzung der Website durch Sie ermöglichen. Die durch den Cookie erzeugten Informationen über Ihre Benutzung dieser Website werden in der Regel an einen Server von Google in den USA übertragen und dort gespeichert.

Die Speicherung von Google-Analytics-Cookies erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Der Websitebetreiber hat ein berechtigtes Interesse an der Analyse des Nutzerverhaltens, um sowohl sein Webangebot als auch seine Werbung zu optimieren.

IP-Anonymisierung

Wir haben auf dieser Website die Funktion IP-Anonymisierung aktiviert. Dadurch wird Ihre IP-Adresse von Google innerhalb von Mitgliedstaaten der Europäischen Union oder in anderen Vertragsstaaten des Abkommens über den Europäischen Wirtschaftsraum vor der Übermittlung in die USA gekürzt. Nur in Ausnahmefällen wird die volle IP-Adresse an einen Server von Google in den USA übertragen und dort gekürzt. Im Auftrag des Betreibers dieser Website wird Google diese Informationen benutzen, um Ihre Nutzung der Website auszuwerten, um Reports über die Websiteaktivitäten zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen gegenüber dem Websitebetreiber zu erbringen. Die im Rahmen von Google Analytics von Ihrem Browser übermittelte IP-Adresse wird nicht mit anderen Daten von Google zusammengeführt.

Browser Plugin

Sie können die Speicherung der Cookies durch eine entsprechende Einstellung Ihrer Browser-Software verhindern; wir weisen Sie jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht sämtliche Funktionen dieser Website vollumfänglich werden nutzen können. Sie können darüber hinaus die Erfassung der durch den Cookie erzeugten und auf Ihre Nutzung der Website bezogenen Daten (inkl. Ihrer IP-Adresse) an Google sowie die Verarbeitung dieser Daten durch Google verhindern, indem Sie das unter dem folgenden Link verfügbare Browser-Plugin herunterladen und installieren: https://tools.google.com/dlpage/gaoptout?hl=de.

Widerspruch gegen Datenerfassung

Sie können die Erfassung Ihrer Daten durch Google Analytics verhindern, indem Sie auf folgenden Link klicken. Es wird ein Opt-Out-Cookie gesetzt, der die Erfassung Ihrer Daten bei zukünftigen Besuchen dieser Website verhindert: Google Analytics deaktivieren.

Mehr Informationen zum Umgang mit Nutzerdaten bei Google Analytics finden Sie in der Datenschutzerklärung von Google: https://support.google.com/analytics/answer/6004245?hl=de.

Auftragsdatenverarbeitung

Wir haben mit Google einen Vertrag zur Auftragsdatenverarbeitung abgeschlossen und setzen die strengen Vorgaben der deutschen Datenschutzbehörden bei der Nutzung von Google Analytics vollständig um.

Demografische Merkmale bei Google Analytics

Diese Website nutzt die Funktion “demografische Merkmale” von Google Analytics. Dadurch können Berichte erstellt werden, die Aussagen zu Alter, Geschlecht und Interessen der Seitenbesucher enthalten. Diese Daten stammen aus interessenbezogener Werbung von Google sowie aus Besucherdaten von Drittanbietern. Diese Daten können keiner bestimmten Person zugeordnet werden. Sie können diese Funktion jederzeit über die Anzeigeneinstellungen in Ihrem Google-Konto deaktivieren oder die Erfassung Ihrer Daten durch Google Analytics wie im Punkt “Widerspruch gegen Datenerfassung” dargestellt generell untersagen.

GOOGLE ANALYTICS REMARKETING
Unsere Websites nutzen die Funktionen von Google Analytics Remarketing in Verbindung mit den geräteübergreifenden Funktionen von Google AdWords und Google DoubleClick. Anbieter ist die Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA.

Diese Funktion ermöglicht es die mit Google Analytics Remarketing erstellten Werbe-Zielgruppen mit den geräteübergreifenden Funktionen von Google AdWords und Google DoubleClick zu verknüpfen. Auf diese Weise können interessenbezogene, personalisierte Werbebotschaften, die in Abhängigkeit Ihres früheren Nutzungs- und Surfverhaltens auf einem Endgerät (z.B. Handy) an Sie angepasst wurden auch auf einem anderen Ihrer Endgeräte (z.B. Tablet oder PC) angezeigt werden.

Haben Sie eine entsprechende Einwilligung erteilt, verknüpft Google zu diesem Zweck Ihren Web- und App-Browserverlauf mit Ihrem Google-Konto. Auf diese Weise können auf jedem Endgerät auf dem Sie sich mit Ihrem Google-Konto anmelden, dieselben personalisierten Werbebotschaften geschaltet werden.

Zur Unterstützung dieser Funktion erfasst Google Analytics google-authentifizierte IDs der Nutzer, die vorübergehend mit unseren Google-Analytics-Daten verknüpft werden, um Zielgruppen für die geräteübergreifende Anzeigenwerbung zu definieren und zu erstellen.

Sie können dem geräteübergreifenden Remarketing/Targeting dauerhaft widersprechen, indem Sie personalisierte Werbung in Ihrem Google-Konto deaktivieren; folgen Sie hierzu diesem Link: https://www.google.com/settings/ads/onweb/.

Die Zusammenfassung der erfassten Daten in Ihrem Google-Konto erfolgt ausschließlich auf Grundlage Ihrer Einwilligung, die Sie bei Google abgeben oder widerrufen können (Art. 6 Abs. 1 lit. a DSGVO). Bei Datenerfassungsvorgängen, die nicht in Ihrem Google-Konto zusammengeführt werden (z.B. weil Sie kein Google-Konto haben oder der Zusammenführung widersprochen haben) beruht die Erfassung der Daten auf Art. 6 Abs. 1 lit. f DSGVO. Das berechtigte Interesse ergibt sich daraus, dass der Websitebetreiber ein Interesse an der anonymisierten Analyse der Websitebesucher zu Werbezwecken hat.

Weitergehende Informationen und die Datenschutzbestimmungen finden Sie in der Datenschutzerklärung von Google unter: https://www.google.com/policies/technologies/ads/.

GOOGLE ADWORDS UND GOOGLE CONVERSION-TRACKING
Diese Website verwendet Google AdWords. AdWords ist ein Online-Werbeprogramm der Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, United States (“Google”).

Im Rahmen von Google AdWords nutzen wir das so genannte Conversion-Tracking. Wenn Sie auf eine von Google geschaltete Anzeige klicken wird ein Cookie für das Conversion-Tracking gesetzt. Bei Cookies handelt es sich um kleine Textdateien, die der Internet-Browser auf dem Computer des Nutzers ablegt. Diese Cookies verlieren nach 30 Tagen ihre Gültigkeit und dienen nicht der persönlichen Identifizierung der Nutzer. Besucht der Nutzer bestimmte Seiten dieser Website und das Cookie ist noch nicht abgelaufen, können Google und wir erkennen, dass der Nutzer auf die Anzeige geklickt hat und zu dieser Seite weitergeleitet wurde.

Jeder Google AdWords-Kunde erhält ein anderes Cookie. Die Cookies können nicht über die Websites von AdWords-Kunden nachverfolgt werden. Die mithilfe des Conversion-Cookies eingeholten Informationen dienen dazu, Conversion-Statistiken für AdWords-Kunden zu erstellen, die sich für Conversion-Tracking entschieden haben. Die Kunden erfahren die Gesamtanzahl der Nutzer, die auf ihre Anzeige geklickt haben und zu einer mit einem Conversion-Tracking-Tag versehenen Seite weitergeleitet wurden. Sie erhalten jedoch keine Informationen, mit denen sich Nutzer persönlich identifizieren lassen. Wenn Sie nicht am Tracking teilnehmen möchten, können Sie dieser Nutzung widersprechen, indem Sie das Cookie des Google Conversion-Trackings über ihren Internet-Browser unter Nutzereinstellungen leicht deaktivieren. Sie werden sodann nicht in die Conversion-Tracking Statistiken aufgenommen.

Die Speicherung von “Conversion-Cookies” erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Der Websitebetreiber hat ein berechtigtes Interesse an der Analyse des Nutzerverhaltens, um sowohl sein Webangebot als auch seine Werbung zu optimieren.

Mehr Informationen zu Google AdWords und Google Conversion-Tracking finden Sie in den Datenschutzbestimmungen von Google: https://www.google.de/policies/privacy/.

Sie können Ihren Browser so einstellen, dass Sie über das Setzen von Cookies informiert werden und Cookies nur im Einzelfall erlauben, die Annahme von Cookies für bestimmte Fälle oder generell ausschließen sowie das automatische Löschen der Cookies beim Schließen des Browser aktivieren. Bei der Deaktivierung von Cookies kann die Funktionalität dieser Website eingeschränkt sein.

FACEBOOK PIXEL
Unsere Website nutzt zur Konversionsmessung das Besucheraktions-Pixel von Facebook, Facebook Inc., 1601 S. California Ave, Palo Alto, CA 94304, USA (“Facebook”).

So kann das Verhalten der Seitenbesucher nachverfolgt werden, nachdem diese durch Klick auf eine Facebook-Werbeanzeige auf die Website des Anbieters weitergeleitet wurden. Dadurch können die Wirksamkeit der Facebook-Werbeanzeigen für statistische und Marktforschungszwecke ausgewertet werden und zukünftige Werbemaßnahmen optimiert werden.

Die erhobenen Daten sind für uns als Betreiber dieser Website anonym, wir können keine Rückschlüsse auf die Identität der Nutzer ziehen. Die Daten werden aber von Facebook gespeichert und verarbeitet, sodass eine Verbindung zum jeweiligen Nutzerprofil möglich ist und Facebook die Daten für eigene Werbezwecke, entsprechend der Facebook-Datenverwendungsrichtlinie verwenden kann. Dadurch kann Facebook das Schalten von Werbeanzeigen auf Seiten von Facebook sowie außerhalb von Facebook ermöglichen. Diese Verwendung der Daten kann von uns als Seitenbetreiber nicht beeinflusst werden.

In den Datenschutzhinweisen von Facebook finden Sie weitere Hinweise zum Schutz Ihrer Privatsphäre: https://www.facebook.com/about/privacy/.

Sie können außerdem die Remarketing-Funktion “Custom Audiences” im Bereich Einstellungen für Werbeanzeigen unter https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen deaktivieren. Dazu müssen Sie bei Facebook angemeldet sein.

Wenn Sie kein Facebook Konto besitzen, können Sie nutzungsbasierte Werbung von Facebook auf der Website der European Interactive Digital Advertising Alliance deaktivieren: http://www.youronlinechoices.com/de/praferenzmanagement/.

6. NEWSLETTER
NEWSLETTERDATEN
Wenn Sie den auf der Website angebotenen Newsletter beziehen möchten, benötigen wir von Ihnen eine E-Mail-Adresse sowie Informationen, welche uns die Überprüfung gestatten, dass Sie der Inhaber der angegebenen E-Mail-Adresse sind und mit dem Empfang des Newsletters einverstanden sind. Weitere Daten werden nicht bzw. nur auf freiwilliger Basis erhoben. Diese Daten verwenden wir ausschließlich für den Versand der angeforderten Informationen und geben diese nicht an Dritte weiter.

Die Verarbeitung der in das Newsletteranmeldeformular eingegebenen Daten erfolgt ausschließlich auf Grundlage Ihrer Einwilligung (Art. 6 Abs. 1 lit. a DSGVO). Die erteilte Einwilligung zur Speicherung der Daten, der E-Mail-Adresse sowie deren Nutzung zum Versand des Newsletters können Sie jederzeit widerrufen, etwa über den "Austragen"-Link im Newsletter. Die Rechtmäßigkeit der bereits erfolgten Datenverarbeitungsvorgänge bleibt vom Widerruf unberührt.

Die von Ihnen zum Zwecke des Newsletter-Bezugs bei uns hinterlegten Daten werden von uns bis zu Ihrer Austragung aus dem Newsletter gespeichert und nach der Abbestellung des Newsletters gelöscht. Daten, die zu anderen Zwecken bei uns gespeichert wurden (z.B. E-Mail-Adressen für den Mitgliederbereich) bleiben hiervon unberührt.

NEWSLETTER2GO
Diese Website nutzt Newsletter2Go für den Versand von Newslettern. Anbieter ist die Newsletter2Go GmbH, Nürnberger Straße 8, 10787 Berlin, Deutschland.

Newsletter2Go ist ein Dienst, mit dem u.a. der Versand von Newslettern organisiert und analysiert werden kann. Die von Ihnen zum Zwecke des Newsletterbezugs eingegeben Daten werden auf den Servern von Newsletter2Go in Deutschland gespeichert.

Wenn Sie keine Analyse durch Newsletter2Go wollen, müssen Sie den Newsletter abbestellen. Hierfür stellen wir in jeder Newsletternachricht einen entsprechenden Link zur Verfügung. Des Weiteren können Sie den Newsletter auch direkt auf der Website abbestellen.

Datenanalyse durch Newsletter2Go

Mit Hilfe von Newsletter2Go ist es uns möglich, unsere Newsletter-Kampagnen zu analysieren. So können wir z.B. sehen, ob eine Newsletter-Nachricht geöffnet und welche Links ggf. angeklickt wurden. Auf diese Weise können wir u.a. feststellen, welche Links besonders oft angeklickt wurden.

Außerdem können wir erkennen, ob nach dem Öffnen/ Anklicken bestimmte vorher definierte Aktionen durchgeführt wurden (Conversion-Rate). Wir können so z.B. erkennen, ob Sie nach dem Anklicken des Newsletters einen Kauf getätigt haben.

Newsletter2Go ermöglicht es uns auch, die Newsletter-Empfänger anhand verschiedener Kategorien zu unterteilen (“clustern”). Dabei lassen sich die Newsletterempfänger z.B. nach Alter, Geschlecht oder Wohnort unterteilen. Auf diese Weise lassen sich die Newsletter besser an die jeweiligen Zielgruppen anpassen.

Ausführliche Informationen zum zu den Funktionen von Newsletter2Go entnehmen Sie folgendem Link: https://www.newsletter2go.de/features/newsletter-software/.

Rechtsgrundlage

Die Datenverarbeitung erfolgt auf Grundlage Ihrer Einwilligung (Art. 6 Abs. 1 lit. a DSGVO). Sie können diese Einwilligung jederzeit widerrufen. Die Rechtmäßigkeit der bereits erfolgten Datenverarbeitungsvorgänge bleibt vom Widerruf unberührt.

Speicherdauer

Die von Ihnen zum Zwecke des Newsletter-Bezugs bei uns hinterlegten Daten werden von uns bis zu Ihrer Austragung aus dem Newsletter gespeichert und nach der Abbestellung des Newsletters sowohl von unseren Servern als auch von den Servern von Newsletter2Go gelöscht. Daten, die zu anderen Zwecken bei uns gespeichert wurden (z.B. E-Mail-Adressen für den Mitgliederbereich) bleiben hiervon unberührt.

Näheres entnehmen Sie den Datenschutzbestimmungen von Newsletter2Go unter: https://www.newsletter2go.de/features/datenschutz-2/.

Abschluss eines Vertrags über Auftragsdatenverarbeitung

Wir haben mit Newsletter2Go einen Vertrag abgeschlossen, in dem wir Newsletter2Go verpflichten, die Daten unserer Kunden zu schützen und sie nicht an Dritte weiterzugeben. Dieser Vertrag kann unter folgendem Link eingesehen werden: https://www.newsletter2go.de/docs/datenschutz/ADV_Muster_Newsletter2Go_GmbH_latest_Form.pdf?x48278.

7. PLUGINS UND TOOLS
YOUTUBE
Unsere Website nutzt Plugins der von Google betriebenen Seite YouTube. Betreiber der Seiten ist die YouTube, LLC, 901 Cherry Ave., San Bruno, CA 94066, USA.

Wenn Sie eine unserer mit einem YouTube-Plugin ausgestatteten Seiten besuchen, wird eine Verbindung zu den Servern von YouTube hergestellt. Dabei wird dem YouTube-Server mitgeteilt, welche unserer Seiten Sie besucht haben.

Wenn Sie in Ihrem YouTube-Account eingeloggt sind, ermöglichen Sie YouTube, Ihr Surfverhalten direkt Ihrem persönlichen Profil zuzuordnen. Dies können Sie verhindern, indem Sie sich aus Ihrem YouTube-Account ausloggen.

Die Nutzung von YouTube erfolgt im Interesse einer ansprechenden Darstellung unserer Online-Angebote. Dies stellt ein berechtigtes Interesse im Sinne von Art. 6 Abs. 1 lit. f DSGVO dar.

Weitere Informationen zum Umgang mit Nutzerdaten finden Sie in der Datenschutzerklärung von YouTube unter: https://www.google.de/intl/de/policies/privacy.

GOOGLE WEB FONTS
Diese Seite nutzt zur einheitlichen Darstellung von Schriftarten so genannte Web Fonts, die von Google bereitgestellt werden. Diese haben wir lokal eingebunden und die Verbindung zum Google Server deaktiviert, so dass Ihre personenbezogenen Daten (IP Adresse) nicht aufgrund der Nutzung dieser Web Fonts übermittelt werden.

GOOGLE MAPS
Diese Seite nutzt über eine API den Kartendienst Google Maps. Anbieter ist die Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA.

Zur Nutzung der Funktionen von Google Maps ist es notwendig, Ihre IP Adresse zu speichern. Diese Informationen werden in der Regel an einen Server von Google in den USA übertragen und dort gespeichert. Der Anbieter dieser Seite hat keinen Einfluss auf diese Datenübertragung.

Die Nutzung von Google Maps erfolgt im Interesse einer ansprechenden Darstellung unserer Online-Angebote und an einer leichten Auffindbarkeit der von uns auf der Website angegebenen Orte. Dies stellt ein berechtigtes Interesse im Sinne von Art. 6 Abs. 1 lit. f DSGVO dar.)

Dataprotection.find_or_create_by({:content => dataprotection_content})


impresum_content = %q(Impressum
Angaben gemäß § 5 TMG:

PROOF POINT Werbestudio
Stephan Winkler (Einzelunternehmen)
Heilig-Geist-Gasse 398
84028 Landshut
Telefon: +49 (871) 93 52 50
E-Mail: info@proof-point.com

Vertretungsberechtigter: Stephan Winkler
Umsatzsteuer-Identifikationsnummer: DE204228028

PROOF POINT SDN.BHD.
Lot 1.03-A, Level 1, No. 8 First Avenue
Persiaran Bandar Utama
MY-47800 Petaling Jaya,Selangor, Malaysia

Company ID: 1264094-U

Managing Directors
Stephan Winkler, Tobias Bergmann

Centershops e.K.
Heilig-Geist-Gasse 398
84028 Landshut
Telefon: +49 (871) 93 52 50
E-Mail: info@centershops.de

Vertretungsberechtigter: Stephan Winkler
Umsatzsteuer-Identifikationsnummer: DE204228028

Proof Point data protection GmbH
Renkenstraße 1
D-84032 Altdorf
Telefon: +49 (871) 66 00 31 09
E-Mail: datenschutz@proof-point.com

Vertretungsberechtigte Geschäftsführer:
Stephan Winkler, Christian Obermeier

Registereintrag
Eintragung im Handelsregister B
Registergericht:Amtsgericht Landshut
Registernummer: HRB-Nr.: B 11190

Umsatzsteuer-Identifikationsnummer: DE317834455)

impressum_context = %q(
Impressum
Angaben gemäß § 5 TMG:

    PROOF POINT Werbestudio
Stephan Winkler (Einzelunternehmen)
Heilig-Geist-Gasse 398
84028 Landshut
Telefon: +49 (871) 93 52 50
E-Mail: info@proof-point.com

Vertretungsberechtigter: Stephan Winkler
Umsatzsteuer-Identifikationsnummer: DE204228028

PROOF POINT SDN.BHD.
    Lot 1.03-A, Level 1, No. 8 First Avenue
Persiaran Bandar Utama
MY-47800 Petaling Jaya,Selangor, Malaysia

Company ID: 1264094-U

Managing Directors
Stephan Winkler, Tobias Bergmann

Centershops e.K.
    Heilig-Geist-Gasse 398
84028 Landshut
Telefon: +49 (871) 93 52 50
E-Mail: info@centershops.de

Vertretungsberechtigter: Stephan Winkler
Umsatzsteuer-Identifikationsnummer: DE204228028

Proof Point data protection GmbH
Renkenstraße 1
D-84032 Altdorf
Telefon: +49 (871) 66 00 31 09
E-Mail: datenschutz@proof-point.com

Vertretungsberechtigte Geschäftsführer:
                           Stephan Winkler, Christian Obermeier

Registereintrag
Eintragung im Handelsregister B
Registergericht:Amtsgericht Landshut
Registernummer: HRB-Nr.: B 11190

Umsatzsteuer-Identifikationsnummer: DE317834455)


Impressum.find_or_create_by({:context => impressum_context})