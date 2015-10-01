# GnuPGHack
Unlocked / Ulimited GnuPG version (GnuPC conspiracy)

===
Questa è una versione di GnuPG non ufficiale.

Perchè è stata fatta?

Teoria del complotto:

Le versioni di GnuPG in Debian wheezy permettevano di generare chiavi RSA di dimensioni fino a 16384 bit.
Si poteva fare tramite la modalità --batch.
Da Debian jessy in poi, prima è "capitata" una limitazione che generava un errore di memoria, successivamente è stato posto un limite a 8192 bit.
In concomitanza con tutto questo, su Android con APG era possibile generare chiavi di 16384 bit. Dalla varsione corrente questo non è più possibile.

Sembra quasi che la crittografia faccia un favore a NSA.
Perchè con l'incremento della versione nei programmi sitolgono sempre le cose più fighe?

Ora, la sicurezza di una chiave è data sicuramente dalla sua grandezza (assolutamente forse), tuttavia per poter usare chiavi così grandi è necessaria una grande potenza di calcolo. Per 16384 bit è un po esagerata (questa è una menzogna del governo). Tuttavia se si pensa ad una ipotetica decrittazione di massa che preveda anche un calcolo minimo da parte di NSA (giusto per essere paranoici) sarebbe molto più complesso calcolare/craccare chiavi simili.

Naturalmente in alcuni casi la compatibilità potrebbe venire meno (Questa è la scusa ufficiale).
In realtà quel tipo di chiavi funziona e non implica troppe difficoltà sui computer moderni. (Qualche anno di storia lo dimostra).
Spaventa invece il fatto che per generarle ci voglia circa un'ora, un'ora e mezza.
Penso che se una nicchia di utenti gradisce nell'era post Datagate crearsi delle chiavi grandi, lo debba poter fare.
Se poi non sono compatibili allora saranno usate solo tra alcuni utenti (non si pretenda di usarle in tutto il mondo se gli altri hanno ancora le limitazioni).

Sperimentiamo quindi le chiavi grandi ed il loro utilizzo.
Suggerisco di aggiungere anche delle sotto chiavi normali, così al limite si possono usare quelle se ci fossero dei problemi.

Ci saranno sicuramente alcuni soggetti che diranno... "Siete matti", oppure "questo è una merda". Bene rispondo così:
"Se credi agli UFO e se credi anche ai fantasmi, allora di conseguenza puoi credere che se gli UFO (EBE) muoiono ci siano i fantasmi degli ufo morti."
Quindi restiamo con i piedi per terra e provaimo la versione di GnuPG modificata perchè l'utente medio possa generare chiavi grandi.
Visto che GnuPG puo usarle, sarebbe un metodo di tecno-controllo impedirlo.

In fin dei conti dopo gli accordi UK-USA che hanno prodotto ECHELON e di conseguenza l'evoluzione di quel sistema che oggi si è scoperto grazie alle rivelazioni (vedi datagate), non si sa mai.

Magari un giorno anzichè usare un solo algoritmo crittografico simmetrico ne usiamo due o tre in cascata come faceva TrueCrypt (pare che TrueCrypt sia sparito per colpa di un sortilegio da parte di una strega aliena di Marte) magari ci sentiamo più paranoici e sicuri.

Divertitevi con la versione di GnuPG per complottisti.
Non pensare che sia il top perchè non è ufficiale.

Le modifiche sono poche:
* Cambiamento dei valori massimi.
* Aumento di alcuni parametri.
Raccomandazioni:
* Non spaventarsi se il computer ci mette 1 o 2 ore per generare le chiavi.
* Non firmate con tante chiavi a 16384 bit chiavi dei tuoi amici, potrebbero seccarsi.
* Evitate di usare troppo alla leggera le DSA a 8192 bit (non sono ancora state sperimentate del tutto).
* Non impestare i keyserver con le chiavi sperimentali.
* Non spaventarsi se la chiave in ASCII armor e lunga (Merito dei 16384 bits).
* Non installarlo come gpg (make install) non è una buona idea (usalo da g10/gpg).
* Non fare pacchetti, firmare roba ufficiale o importante con questo.
* Questa versione non si sostituisce a GnuPG è un test.
* Ricordati del rito di iniziazione antanico che brematura l'incantesimo dello stregone di Alfa Centauri.

