waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Changelog"];
player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["policerules","Polizei-Regeln"];
player createDiarySubject ["safezones","Safe Zones"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegales"];
player createDiarySubject ["gangrules","Gang-Regeln"];
player createDiarySubject ["rebelrules","Rebellen-Regeln"];
player createDiarySubject ["controls","Steuerung"];
player createDiarySubject ["disclaimer","Disclaimer"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

	player createDiaryRecord["changelog",
		[
			"Bug / Feature Tracker",
				"
					Changelogs und Updates werden im Forum unter http://www.coopy.tv veröffentlicht
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Generelle Regeln",
				"
				1. Rollenspiel! Euer Charakter im Spiel sollte so handeln und kommunizieren, wie er es in der Altis-Life Welt tatsächlich tun würde!
				2. Suizid, um sich dem Roleplay und deren Folgen zu entziehen, ist verboten.<br/>
				3. Seid grundsätzlich freundlich und respektvoll zueinander. Die Ausnahme ist, dass ihr einen 'Arschloch'-Charakter rollen-spielt, aber dann müsst ihr auch mit den Konsequenzen leben. Beleidigungen und Schimpfworte sind trotzdem zu unterlassen! Wir sind alle erwachsen!<br/>
				4. Griefing, Belästigung, 'Trollen' oder sonstige Unterbrechung des Rollenspiels Anderer ist zu unterlassen!<br/>
				"
		]
	];
		player createDiaryRecord ["serverrules",
		[
			"Gründe für einen Ban",
				"
				Sieh das als deine einzige Warnung an. Wir scherzen nicht.<br/><br/>

				•	Hacken<br/>
				•	Cheaten<br/>
				•	Exploiting<br/>
				•	Das Trollen von Spielern ist verboten.<br/>
				•	Permanentes vorsätzliches Brechen der Verhaltensregeln (offensichtlich möchte derjenige sich nicht an die Regeln halten und Spaß mit uns haben)<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Exploits",
				"
				Sieh das als deine einzige Warnung an. Wir scherzen nicht.<br/><br/>

				- Sich auf andere Art aus dem Gefängnis befreien als die Kaution bezahlen oder die Flucht mit einem Helikopter.<br/>
				- Suizid/Disconnect um einer Rollenspielsituation zu entfliehen(Tazer, Handschellen, Festnahme, Gefängnis, etc).<br/>
				- Suizid/Disconnect um sich schnell wieder in eine Stadt/nach Hause zu bringen.<br/>
				- Duping von Gegenständen/Geld.<br/>
				- Benutzung von gehackten Gegenständen. Falls ein Hacker auf dem Server Gegenstände spawnen sollte, könnt ihr für das Benutzen/Tragen dieser Gegenstände gebannt werden. Meldet euch am besten sofort bei einem Admin, falls ihr eine solche Situation seht und bleibt von den Gegenständen fern ;).<br/>
				- Das böswillige Ausnutzen (Abusen) von Spielmechaniken zum eigenen Vorteil/Bereicherung ist verboten.<br/>
				"
		]
	];
		player createDiaryRecord ["serverrules",
		[
			"Anstand und Respekt!",
				"
				Wenn du hier bist, um zu trollen oder das Spielumfeld anderer Spieler störst, bist du hier falsch.<br/>
				Die letzte Entscheidung liegt im Zweifelsfall bei den Admins. Diesen ist mit Respekt und Freundlichkeit zu begegnen.<br/>
				Wer beleidigend oder ausfallend wird, kann damit das Privileg, auf unserem Servern zu spielen, verlieren.<br/>
				"
		]
	];

	player createDiaryRecord["safezones",
		[
			"Safezones",
				"
				Das Verursachen von Explosionen (auch durch Fahrzeuge), Raub oder das Töten von Spielern in diesen Zonen ist verboten und wird durch einen Ban bestraft.<br/>
				Eine Safezone hat einen Umkreis von 75 Meter. Von 75-150 Meter entscheidet der Admin was passiert.<br/><br/>


				- Jegliche Fahrzeugspawns (Shop oder Garage)<br/>
				- Alle ATMs (Bankautomaten)<br/>
				- Die Börse der Republik Altis in Pyrgos<br/>
				- Alle Waffenshops<br/>
				- Alle Polizeihauptquartiere<br/>
				- Rebellen-Außenposten<br/>
				- Donator-Shops<br/>
				- Eine Safezone wird außer Kraft gesetzt wenn ein verfolgter Spieler diese zum Schutz nutzten möchte.<br/>
				- Dabei kann es auch nicht involvierte Spieler treffen, sollte aber möglichst vermieden werden.<br/><br/>

				Eine Safezone wird außer Kraft gesetzt wenn ein verfolgter Spieler diese zum Schutz nutzten möchte.<br/>
				Dabei kann es auch nicht involvierte Spieler treffen, sollte aber möglichst vermieden werden.<br/>

				"
		]
	];




	player createDiaryRecord ["serverrules",
		[
			"'Neues Leben'-Regelung (Gilt für ALLE Spieler)",
				"
				1. Wenn ihr sterbt oder getötet werdet, dürft ihr nicht an den an den Ort eures Todes zurückkehren solange die RP-Aktion (Schießerei, Geiselnahme, Unfall, eca…) läuft. Man selbst hat kein Anrecht auf die durch den eigenen Tod verlorene Ausrüstung. <br/>
					Ein Mitspieler darf eure Ausrüstung aufsammeln, der vorher Gestorbene selbst aber nicht.<br/><br/>

				2. Stirbt ein Polizist, darf er maximal einmal wiederbelebt werden oder maximal einmal respawnen. Stirbt er ein zweites Mal, darf er an der RP-Aktion nicht mehr teilnehmen.<br/>
					Verschiebt sich die RP-Aktion von z.b. Sofia nach Athira in Folge einer Verfolgungsjagd, darf der Polizist wieder neu am Geschehen teilnehmen.<br/><br/>

 				3. Wenn ihr infolge von Rollenspiel sterbt, sind eure bisherigen Verbrechen nicht vergessen. (Bis zum nächsten Serverrestart)<br/><br/>

				4. Wenn ihr infolge von Rollenspiel sterbt oder getötet werdet, dürft ihr keinerlei Rache für den Tod ausüben.<br/><br/>

				5. Wenn ihr Random-Deathmatch (RD) betreibt, infolge von RD getötet werdet, manuell respawned oder euch vorsätzlich selbst tötet, gilt das NICHT als 'Neues Leben'! Das ist Exploiten und ist Banngrund!<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Random-Deathmatch (RD)",
				"
				Die folgenden Handlungen sind verboten und können zu einem Kick/Bann führen:<br/><br/>

				1. Grundloses Töten von anderen Spielern ohne Rollenspiel, vorheriger Kommunikation (Voicechat, Textchat) und Forderungen/Grund ist verboten!<br/>
				2. Selbstverteidigung/Notwehr/Beschützen ist erlaubt und kein RD.<br/>
				3. Solltet ihr im Kreuzfeuer eines Feuerkampfes (ohne eigene Beteiligung) getötet werden, gilt das nicht als RD.<br/>
				4. Fälle von Unklarheiten werden von den Admins von Fall zu Fall geklärt.<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Kommunikationsregeln",
				"
				1. Ein funktionierendes Mikrofon sowie die richtige Einstellung ist Voraussetzung für richtiges Roleplay.  <br/>
				2. Der Side-Chat darf nicht zur Voice-Kommunikation/Rollenspiel-Voice-Kommunikation genutzt werden. Fragen zur Spielmechanik und andere 'Out-of-Character (OOC)' Fragen sind (in Textform) erlaubt.<br/>
				3. Spammen im Chat (jeglicher Kanal) führt zur Entfernung vom Server.<br/>
				4. Der CoopY.tv Teamspeak Server ist zumindest von der Polizei - in den entsprechenden Polizeikanälen - zu nutzen (Polizeifunk).<br/>
				5. Das 'Aushorchen' von Polizeikanälen im Teamspeak durch Zivilisten ist verboten! Wiederholte Verstöße führen zum Bann.<br/>
				6. Das 'Aushorchen' von Zivilisten im Teamspeak durch die Polizei unterliegt der gleichen Regelung.<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Fahrzeuge (Gilt für ALLE Fahrzeuge)",
				"
				1. Das vorsätzliche Überfahren von Mitspielern ist zu unterlassen! Unfälle passieren und werden rollenspieltechnisch geahndet. Zur Selbstverteidigung in RP-Szenarien ist Überfahren erlaubt (siehe Random Deathmatch-Regel Nr. 2).<br/>
				2. Das vorsätzliche Laufen vor Fahrzeuge um verletzt/getötet zu werden ist verboten!<br/>
				3. Rammen mit der Absicht, das andere Fahrzeug komplett zu zerstören ist zu unterlassen!<br/>
				4. Stehlen eines Fahrzeugs mit der Absicht es zu zerstören ist verboten!<br/>
				5. Das Kaufen von mehreren Fahrzeugen mit der gleichen Absicht, wie die bisher genannten Regeln, ist verboten!<br/>
				6. Es gibt nur zwei Gründe auf Fahrzeuge zu schießen: Um es zum Stillstand zu bringen oder als Warnschüsse in einem Rollenspiel-Szenario.<br/>
				7. Das Schießen auf Fahrzeuge mit der Absicht, es zu zerstören ist verboten!<br/>
				8. Fahrzeuge auf Parkplätzen oder anderweitig vernünftig geparkte Fahrzeuge sollen nicht beschlagnahmt werden.<br/>
				9. Fahrzeuge die verlassen oder zerstört erscheinen können beschlagnahmt werden.<br/>
				10. Wasserfahrzeuge müssen vernünftig geparkt werden.<br/>
				11. Fahrzeuge die seit einiger Zeit nicht bewegt wurden dürfen beschlagnahmt werden.<br/>
				12. Das Beschlagnahmen von Fahrzeugen ist ein essenzieller Teil der Polizeiarbeit. Es hilft gegen Lag und hält die Map sauber. Polizisten dürfen ihre eigenen Fahrzeuge nur dann beschlagnahmen, wenn:<br/>
					- sie auf dem Dach liegen und Hilfe zu lange / zu weit entfernt ist<br/>
					- ihr Fahrzeug kaputt ist und Hilfe zu lange / zu weit entfernt ist<br/>
					- Boote zu weit auf dem Strand liegen und somit nichtmehr bewegt werden können<br/><br/>

				13. Im Zweifelsfall sollte vor der Beschlagnahmung eines Fahrzeuges der Besitzer kontaktiert werden.<br/>
				14. Die Hauptwaffe eines Hunter BMG oder Polizeischnellbootes soll nur zum Ausschalten des Fahrzeuges, nicht zum Töten der Insassen genutzt werden.
				<br/>
				Geschwindigkeitsüberschreitung:<br/>
				Die folgenden Geschwindigkeitslimits gelten auf Altis:<br/>
				-Am Kavalamarktplatz: 30 km/h <br/>
				-Innerorts: 50 km/h <br/>
				-Außerorts: 120 km/h <br/>
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Illegale Fahrzeuge",
				"
				Illegale Fahrzeuge für Zivilisten aus dem Rebellenshop:<br/>
					- Ifrit <br/>
					- Minigunboot <br/>
					- Hunter <br/>
					- Polizeifahrzeuge <br/>
					- Offroader mit montierter Waffe <br/>
					- Offroader mit Tarnlackierung<br/>
					- SUV mit Tarnlackierung<br/>
					- Hummingbird mit grüner und grauer Tarnlackierung<br/><br/>

				Außerhalb des Rebellengebietes sind alle Rebellenfahrzeuge verboten!<br/>
				Beschlagnahmte Rebellenfahrzeuge werden vorerst komplett zerstört.<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Luftfahrzeuge",
				"
				1. Einen Helikopter vorsätzlich irgendwo rein zu fliegen (andere Helikopter, Fahrzeuge, Gebäude, etc) ist verboten! <br/>
				2. Das Fliegen mit Luftfahrzeugen in einer Höhe <250m über einer Stadt ist NUR den Polizeikräften in Ausführung ihres Dienstes erlaubt. <br/>
				3. Luftfahrzeuge dürfen ohne Autorisierung nicht innerhalb von Städten landen. Ausnahmen sind folgende Zonen: <br/>
					- Kavala: Krankenhaus Helipad (037/129) oder Fußballplatz. <br/>
					- Athira: Sportfeld (138/185), am Lazarett und hinter dem DMV (140/188). <br/>
					- Pyrgos: Die Felder nordöstlich des DMV (170127) <br/>
					- Sofia:  Am Laza (258214), Am Lazarett oder das Feld südöstlich der Garage (257212) <br/>
					- Hier zu Landen benötigt aber die Genehmigung der Behörde. Erhält der anfragende Pilot innerhalb von zwei Minuten keine Antwort auf seine Anfrage, gilt die Erlaubnis als vorläufig erteilt. Die Erlaubnis kann im Nachhinein ohne Strafe fur den Piloten wieder aufgehoben werden. <br/>
					- Heliports außerhalb von Städten sind zur freien Landung vorgesehen und dürfen ohne Genehmigung genutzt werden.<br/><br/>
				4. Luftfahrzeuge dürfen nicht auf Straßen landen.<br/>
				5. Die Polizei darf ein temporäres Landeverbot für bestimmte Gebiete verhängen.<br/>
				6. Luftfahrzeuge dürfen Innerorts nicht unter 250m Höhe fliegen.<br/>
				7. Zivile Luftfahrzeuge dürfen nicht über Kavala schweben. Dies gilt nicht für die Polizei.<br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Wasserfahrzeuge",
				"
				1. Wiederholtes 'pushen' von Booten ohne Erlaubnis des Eigentümers ist verboten!<br/>
				2. Das 'Pushen' eines Bootes mit der Absicht, jemanden zu töten ist zu unterlassen und wird NICHT als Rollenspiel angesehen<br/>
				3. Vorsätzliches 'Überfahren' von Schwimmern/Tauchern ist verboten!<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Polizisten / Interaktion mit Polizisten",
				"
				1. Alle Polizeibeamten MÜSSEN die grundsätzlichen und die polizeilichen Regeln gelesen, verstanden und verinnerlicht haben! <br/>
				2. Der Polizeidienst wird den persönlichen Tätigkeiten in Altis Life vorgezogen. <br/>
				3. Zivilisten werden beschützt als wären es echte Menschen. <br/>
				4. Die Position wird nicht missbraucht um sich selbst zu bereichern. <br/>
				5. Freundlichkeit und Hilfsbereitschaft sind an der Tagesordnung. <br/>
				6. Nicht-tödliche Gewalt ist immer vorher anzuwenden. Scharf geschossen wird nur im Falle von kritischer Selbstverteidigung oder Gefahr für Leib und Leben von zivilen Personen.  <br/>
				7. Polizisten dürfen die bewusstlosen/toten Spieler nach einer Schießerei einmal wiederbeleben. Es gibt allerdings nur eine Random-Chance dass man wiederbelebt wird. Funktioniert das Wiederbeleben, muss sich der wiederbelebte Spieler mit seiner bevorstehenden Strafe abfinden. Wird das Spiel per Alt-F4 oder anderweitig beendet, ist das ein Exploit und wird durch einen Admin geahndet.<br/>
				8. Ist der Polizist als Zivilist unterwegs und möchte wieder als Polizist spielen, muss er dazwischen 15 Minuten Pause einlegen um Metagaming zu verhindern.<br/><br/>

				- Für Polizisten gelten nach wie vor alle Ingame-Regeln und sie sind keine Admins oder Mods! <br/>
				- Polizeibeamten ist grundsätzlich mit Respekt zu begegnen. <br/>
				- Zivilisten können für das Schauen in den Rucksack / das Fahrzeug eines Polizisten rollenspieltechnisch bestraft werden. Konstantes Wiederholen kann zur Entfernung vom Server führen.<br/>
				- Zivilisten können für das Folgen von Polizisten mit der Absicht, die Position weiter geben zu können, rollenspieltechnisch bestraft werden. <br/>
				- Aktives Blockieren/Abhalten von Polizeiaktivitäten kann rollenspieltechnisch bestraft werden. <br/>
				- Konstantes Wiederholen kann zur Entfernung vom Server führen.  <br/>


				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Verhandlungen in Krisensituationen",
				"
				Verhandlungen in Krisensituationen sollen durch den kompetentesten Beamten vor Ort durchgeführt werden. Im Zweifel entscheidet hier das HQ.<br/><br/>
				"
		]
	];


	player createDiaryRecord ["policerules",
		[
			"Straßensperren & Kontrolle",
				"
				Polizisten werden dazu aufgefordert Straßensperren an strategischen Punkten zu errichten, um illegale Aktivitäten zu verhindern und die Sicherheit zu erhöhen.<br/><br/>

				1. Eine Kontrolle muss aus drei (3) oder mehr Beamten bestehen und mindestens zwei (2) Fahrzeuge sollen zum Blockieren der Straße benutzt werden.<br/>
				2. Eine Straßensperre darf nicht innerhalb von 600m einer Illegalen Zone errichtet werden.<br/>
				3. Straßensperren dürfen nur auf Straßen errichtet werden und müssen nicht angekündigt oder markiert werden.<br/><br/>
				"
			]
		];

	player createDiaryRecord ["policerules",
		[
			"Prozedur einer Kontrolle",
				"
				1. Fordere den Fahrer auf das Fahrzeug zu stoppen und den Motor abzuschalten.<br/>
				2. Frage den Fahrer und sämtliche Insassen des Fahrzeugs nach (versteckten) Waffen.<br/>
				3. Fordere den Fahrer und sämtliche Insassen auf, nach und nach das Fahrzeug zu verlassen. Falls sie Waffen tragen verhafte sie nicht sofort, sondern fordere sie auf die Waffen nicht auf dich zu richten bzw. in den Rucksack zu legen.<br/>
				4. Frage nach dem Reiseziel der Gruppe.<br/>
				5. Nachdem die Durchsuchung abgeschlossen kannst du ihnen wieder erlauben ihren weg fort zu setzten.<br/>
				6. Nach der Durchsuchung musst du den Personen Zeit lassen das Fahrzeug zu betreten und den Ort zu verlassen.<br/>
				7. Falls Verstöße gegen Gesetze festgestellt wurden, dürfen dementsprechende Strafen verhängt werden.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Festnahmen und Bußgelder",
				"
				Kriminelle, die eine Gefahr für sich oder andere darstellen sollten festgenommen werden.  <br/><br/>

				1. Dem Verdächtigen muss erklärt werden weshalb er festgehalten wird. <br/>
				2. Wenn ein Zivilist per Haftbefehl gesucht wird, kann er jederzeit festgenommen werden. Tödliche Gewalt darf nur im absoluten Notfall angewendet werden.  <br/>
				3. Es muss sich nach dem Bußgeldkatalog gerichtet werden. Ist für den konkreten Tatbestand kein Bußgeld hinterlegt, hat das HQ zu entscheiden. <br/>
				4. Wenn der Beschuldigte es ablehnt, das Bußgeld zu zahlen, kann er festgenommen werden. Ab einem Bußgeld von 50.000$ kann der verantwortliche Polizist direkt verhaften. <br/>
				"
		]
	];


	player createDiaryRecord ["policerules",
		[
			"Nicht-Tödliche Gewalt",
				"
				1. Die Nutzung des Tazers zählt zur Ausübung von Nicht-Tödlicher Gewalt.  <br/>
				2. Das Abfeuern des Tazers darf nur in Notsituationen geschehen. Ein Abfeuern ohne wichtigen Grund stellt ein Grund für eine Suspendierung dar. <br/>
				3. Die Nutzung des Tazers darf nur unter Beachtung der geltenden Gesetze erfolgen.  <br/>
				4. Der Tazer darf zur Verhinderung einer Flucht benutzt werden.<br/>
				"
		]
	];

		player createDiaryRecord ["policerules",
		[
			"Tödliche Gewalt",
				"
				1. Das Anwenden tödlicher Gewalt ist nur erlaubt um in Situationen, in denen Nicht-tödliche Gewalt nicht effektiv ist, sein eigenes Leben oder das eines anderen Spielers zu retten.</br>
				2. Das Abfeuern von Waffen ist nur auf Übungsplätzen und in Notsituationen erlaubt.</br></br>
				"
		]
	];

	player createDiaryRecord ["illegalitems",
		[
			"Illegale Gegenstände",
				"
				- Schildkröten <br/>
				- Krokodile<br/>
				- Krokodilleder<br/>
				- Kokain<br/>
				- Heroin <br/>
				- Magic Mushrooms <br/>
				- Cannabis <br/>
				- Crystal Meth <br/>
				"
		]
	];


	player createDiaryRecord ["policerules",
		[
			"Zentralbank",
				"
				1. Die Zentralbank ist Sperrgebiet für Zivilisten, außer wenn sie eine gültige Authorisierung für das Betreten erhalten haben.<br/>
				2. Luftfahrzeuge, die über die Zentralbank fliegen können können dazu aufgefordert werden den Bereich zu verlassen oder im Zweifelsfall ausgeschaltet werden.<br/>
				3. Falls die Zentralbank ausgeraubt wird, sollten alle verfügbaren Polizeieinheiten helfen dies zu verhindern. Kleinere Straftaten haben in dieser Situation keine Priorität.<br/>
				4. Falls es keine Alternative gibt, darf gegen die Bankräuber tödliche Gewalt eingesetzt werden.<br/>
				5. Die Polizei darf nicht blind in das Bankgebäude schießen. Sie müssen immer sicherstellen, dass sie nicht auf Unbeteiligte feuern.<br/>
				6. Unbeteiligte Zivilisten müssen aus der Gefahrenzone evakuiert werden.<br/>
				7. Zivilisten, die die Polizei daran hindern den Bankraub zu verteiteln können als Komplizen angesehen werden.<br/>
				"
		]
	];




	player createDiaryRecord ["policerules",
		[
			"Illegale Zonen",
				"

				1. Das Rebellengebiete gehört den Rebellen. Polizisten dürfen diese Gebiete nicht betreten. Zivilisten betreten diese Gebiete auf eigene Gefahr und ohne Schutz der Polizei.<br/>
				2. Illegale Zonen dürfen nur zum Zweck von Kontrolle betreten werden. Für die Durchführung sind mindestens zwei (2) Beamte erforderlich. Mindestens einer der Beamten muss dabei mindestens den Rang eines Bundespolizisten haben.<br/>
				3. In illegalen Zonen befindliche Personen dürfen festgenommen und durchsucht werden. <br/>
				4. Flüchtet ein Krimineller in eine illegale Zone, so stellt dies keinen Grund für den Abbruch der Verfolgung dar. <br/>
				5. Eine Observation der illegalen Zone ist für maximal 20 Minuten erlaubt, hierzu zählt auch die Beobachtung der Zufahrt-/ und Zuflugwege der illegalen Zone. Nach dem Ablauf der 20 Minuten oder nach erfolgtem Zugriff ist die Illegale Zone für mindestens 40 Minuten zu verlassen und nicht mehr aufzusuchen, auch wenn sich dort offensichtlich in der Zwischenzeit erneut Zivilsten oder Rebellen einfinden.  <br/><br/>

				Mindestradius um die illegale Zone, den die Beamten in dieser Zeit nicht betreten dürfen, beträgt 600 Meter. Als Mittelpunkt des Radius ist das entsprechende Kartensymbol zu wählen. Eine Observation der illegalen Zone mittels Fernglas oder Zielfernrohr ist in den 30 Minuten nicht erlaubt. <br/><br/>

				Sollten innerhalb der 40 Minuten vermehrt Notrufe bezüglich illegaler Aktivitäten in der illegalen Zone eingehen, obliegt es dem HQ einen erneuten Zugriff zu genehmigen.  <br/><br/>

				Illegale Zonen <br/>
				- Drogenverarbeiter<br/>
				- Drogendealer  <br/>
				"
		]
	];



		player createDiaryRecord ["policerules",
		[
			"Festnahmen und Bußgelder",
				"
				Kriminelle, die eine Gefahr für sich oder andere darstellen sollten festgenommen werden.<br/><br/>

				1. Polizisten dürfen niemanden festnehmen wenn der Spieler ein Bußgeld bezahlt hat.<br/>
				2. Dem Verdächtigen muss erklärt werden weshalb er festgehalten wird.<br/>
				3. Wenn ein Zivilist per Haftbefehl gesucht wird, kann er jederzeit festgenommen werden. Tödliche Gewalt darf nur im absoluten Notfall angewendet werden.<br/><br/>

				Zivilisten, die eine Ordnungswidrigkeit begangen haben und keine weitere Gefahr für sich oder andere darstellen, sollten mit einem Bußgeld verwarnt werden.

				1. Bußgelder müssen sich nach der Bußgeldtabelle richten. Ist für den konkreten Tatbestand kein Bußgeld hinterlegt, hat das HQ zu entscheiden.<br/>
				2. Wenn der Beschuldigte es ablehnt, das Bußgeld zu zahlen, kann er festgenommen werden. Ab einem Bußgeld von 50.000$ kann der verantwortliche Polizist direkt verhaften.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Waffen",
				"
				Angehörigen der Streitkräfte und Polizeieinheiten ist es strengstens untersagt Zivilisten mit Waffen zu versorgen.<br/><br/>

				Die folgenden Waffen dürfen von Zivilisten mit der entsprechenden Erlaubnis geführt werden:<br/>
				- P07
				- Rook
				- ACP-C2
				- Zubr
				- PDW2000


				Alle anderen Waffen sind illegal.<br/><br/>

				1. Innerorts ist es Zivilisten nicht erlaubt eine Waffe offen zu führen.<br/>
				2. Außerorts ist es Zivilisten gestattet eine legale Waffe zu führen, solange sie Durchsuchungen durch Polizeibeamte zustimmen.<br/>
				3. Besitzt ein Zivilist eine legale Waffe, muss er dies vorher ankündigen und dass er mit dieser ungeholsterten Waffe aussteigen wird.<br/>
				"
		]
	];



	player createDiaryRecord ["policerules",
		[
			"Befehlskette",
				"

				Die Befehlskette der Polizeieinheiten:<br/>
				1. Polizeipräsident<br/>
				2. Hauptquartier<br/>
				3. Sondereinsatzkommando<br/>
				4. Bundespolizist<br/>
				5. Polizist<br/>
				6. Rekrut (Public Slots)<br/><br/>
				"
		]
	];

	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen",
				"

				1.  MX Series<br/>
				2.  Katiba Series<br/>
				3.  TRG Series<br/>
				4.  Mk.20 Series<br/>
				5.  Mk.18 ABR<br/>
				6.  SDAR Rifle<br/>
				7.  Sting SMG<br/>
				8.  Schallgedämpfte P07 (Taser)<br/>
				9.  Rahim<br/>
				10. Jegliche Form von Sprengstoff<br/><br/>
				"
		]
	];

	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				- Ifrit (für Zivilisten)<br/>
				- Schnellboot<br/>
				- Hunter<br/>
				- Polizeifahrzeuge<br/>
				- Offroader mit montierter Waffe<br/>•	Offroader mit Tarnlackierung<br/>
				- SUV mit Tarnlackierung<br/>
				- Hummingbird mit grüner und grauer Tarnlackierung<br/>

				"
		]
	];

player createDiaryRecord ["rebelrules",
		[
			"Rebellen!",
				"
				1. Rebellen werden in der Welt von Altis-Life grundsätzlich als terroristische Fraktion gesehen. <br/>
					- Das bedeutet dass sie NICHT gegen die Zivile Bevölkerung vorgehen und sie ausrauben darf, allerdings gegen die Staatsgewalt gerichtet ist.<br/>
					- Tödliche Gewalt ist nur in den äußersten Notsituationen erlaubt.<br/>
				2. Der Besitz der Rebellenlizenz ist grundsätzlich nicht illegal. Banditen müssen sich aufgrund der neuen Regelung der Polizei stellen um ihre Rebellenlizenz loszuwerden.<br/>
				3. Das offene Tragen von Rebellenexklusiver Kleidung oder Waffen sowie der Besitz von Rebellenfahrzeugen wird mit Gefängnis von der Polizei bestraft.<br/>
				4. Der Widerstand der Rebellen ist keine Legitimation für RD. Anschläge sollten mindestens 15 Minuten vorher angekündigt werden und zeitlich begrenzt sein, z.b. „In den nächsten zwei Stunden wird es einen Anschlag geben.“<br/>
				Diese Ankündigung muss per Handynachricht an Polizei und Admins gehen sowie im Sidechat für die Zivilisten angekündigt werden.<br/><br/>

				5. Rebellengruppen dürfen sich untereinander ausrauben.<br/><br/>

				Da Rebellen nicht gegen die Zivilisten vorgehen dürfen werden die Funktionen zum Ausrauben, Bewusstlos schlagen eca. bald für Leute mit der Rebellenlizenz entfernt.<br/><br/>

				Solange es keine Rebellenfraktion gibt, entscheiden im Notfall die Admins.<br/>
				"
		]
	];


// Illegal Items Section
	player createDiaryRecord ["gangrules",
		[
			"Gang Regeln",
				"
				1. Mitglied einer Gang zu sein ist nicht illegal, solange sie keine Verbrechen begeht.<br/>
				2. Gangs können die Kontrolle über Gang-Gebiete übernehmen.<br/>
				3. Gangs können anderen Gangs den Krieg erklären. Diese Ankündigung muss mehrmals per Handynachricht an die Admins sowie mindestens einem Gangmitglied der verfeindeten Gang per Handy Bescheid gegeben werden muss.<br/>
					- Außerdem muss es im Sidechat für die Zivilisten angekündigt werden.<br/>
					- Dies ist keine Einladung für RDM! Die New-Life Regel sollte beachtet werden und wird hiermit NICHT außer Kraft gesetzt!<br/>
				4. Zivilisten dürfen von Gangs nicht getötet werden, solange sie keine Gefahr für sie darstellen. <br/>

				"
		]
	];





// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Z: Spieler-Menü öffnen<br/>
				U: Fahrzeuge abschließen und öffnen<br/>
				F: Polizeisirene (Polizei)<br/>
				O: Schranke öffnen(Polizei)<br/>
				T: Fahrzeugkofferraum<br/>
				Q: Spitzhacke (Quickaction)<br/>
				L Shift + R: Festnehmen (Polizei)<br/>
				L Shift + G: Kampfunfähig machen(Zivilisten; Waffe benötigt)<br/>
				L Shift + H: Waffe Holstern<br/>
				L Strg + H: Sich ergeben<br/>
				L Strg + U: Haus auf-/abschließen<br/>
				L Windowstaste: Interaktionsmenü für Zivilisten und Cops<br/>
				"
		]
	];

		player createDiaryRecord ["disclaimer",
		[
			"Disclaimer",
				"
				Diese Regeln wurden einstimmig von einer Auswahl von Spielern verschiedener Gruppierungen einstimmig beschlossen. Sie gelten universell für alle Spieler des Servers und werden automatisch mit betreten des Servers akzeptiert. <br/>
				"
		]
	];