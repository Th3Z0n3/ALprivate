/*
	File: fn_welcomeNotification.sqf

	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Willkommen %1, Bitte nimm dir einen Moment Zeit und lies dir folgende Hinweise durch!",name player] hintC
[
	"ES GIBT NEUE REGELN - BITTE IM FORUM ODER AUF DER MAP NACHLESEN!!!!",
	"Ein paar Dinge in dieser Mod haben sich seit den letzten Updates verändert:",
	"Ein Interaktion-Key wurde implementiert, welcher viele der Mausradcontrolls ersetzt um die allgemeine Serverperformance zu verbessern. Diese Taste liegt standartgemäß auf der linken Windowstaste. Folgende Aktionen können damit ausgeübt werden:",
	"Items oder Geld aufheben.",
	"Angeln",
	"Als Cop mit Spielern interagieren",
	"Mit Fahrzeugen interagieren (Reparieren als CIV sowie Durchsuchen etc. als Cop)",
	"Solltest du Probleme mit dem Interagieren oder Aufheben von Items haben, warte einfach einen Moment. Ein einfacher Weg um herrauszufinden wann der Server diese Aktionen zulässt ist es die (~) Taste zu drücken und auf das Item zu zielen - Sobald der Name dessen erscheint, sollte die Funktionstaste auch entsprechende Aufgabe erfüllen.",
	"Bei Fragen / Bugreports wendet Euch doch bitte an Th3Z0n3 oder Tass, oder schreibt bitte ins Forum"
];
