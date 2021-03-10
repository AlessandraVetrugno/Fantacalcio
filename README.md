# Progetto di laboratorio 

La Gazzella dello Sport, un noto quotidiano sportivo, ha deciso di affidarvi la
costruzione di un *sito Internet* che permetta ai suoi lettori di partecipare al
concorso “MiniFantaCalcio”.

## Le regole del concorso sono le seguenti:
  1. Ogni lettore del giornale può registrarsi sul sito della Gazzella e
  comporre la sua squadra del MiniFantaCalcio, comprando 20 giocatori
  scelti fra tutti i giocatori della serie A, che saranno la sua
  MiniFantaSquadra per tutto l’anno. Ovviamente più lettori possono
  comprare gli stessi giocatori, gli unici vincoli sono i seguenti:
      a. Il budget di ogni lettore è di 100 milioni di MiniFantaEuro, quindi il
          totale del costo dei 20 giocatori non può superare tale cifra.
      b. Ogni MiniFantaSquadra deve avere esattamente 2 portieri, 6
          difensori, 6 centrocampisti e 6 attaccanti. 
  2. Ogni lettore tutte le settimane prima dell’inizio delle partite deve
     collegarsi al sito e scegliere la formazione che giocherà per quella
     domenica, scegliendo 11 fra i suoi 20 giocatori, senza nessun vincolo
     (volendo può far giocare anche 2 portieri). Se non dovesse connettersi al
     sito verrà automaticamente confermata la formazione della domenica
     precedente.
     
  3. Ogni domenica alla fine delle partite il sistema deve automaticamente
     aggiornare il punteggio di ogni lettore seguendo queste regole:
        a. 10 punti per ogni voto dato nelle pagelle della Gazzella dello Sport.
           Esempio: se uno ha in squadra Alessandro Del Pero (voto 6,5) e
                     Christian Vero (voto 7) prenderà 6,5*10+7*10=1350 punti (più
                      ovviamente i punti degli altri 9 giocatori)
        b. 5 punti per ogni goal fatto da uno dei giocatori in squadra
        c. i punteggi vengono dati solo agli 11 giocatori scelti, non a tutti e 20.
        
  4. Alla fine del campionato vincerà il lettore che ha accumulato il maggior
     numero di punti.
     
## Il vostro gruppo, fatte tutte le ipotesi aggiuntive che ritiene necessarie:
- illustri come propone di organizzare e rappresentare i dati, in termini di
diagramma ER;
- realizzi un database che implementi lo schema progettato al punto a),
inserendo anche dei dati per mostrare il funzionamento dei punti richiesti di
seguito
- realizzi la parte di backend con PHP per estrarre i dati relativi alle seguenti
richieste:
    - I. visualizzazione della MiniFantaSquadra (20 giocatori con nome, cognome
        e ruolo) per un determinato lettore
    - II. Visualizzazione della MiniFantaSquadra scelta (11 giocatori nome,
       cognome e ruolo) per un determinato lettore nel momento in cui viene
       fatta la query 
   - III. Visualizzazione della classifica dei lettori in ordine di punteggio
   - IV.Visualizzazione dei primi 5 lettori in classifica
   - V. Visualizzazione dei primi 10 giocatori di calcio con la media voti più alta
   - VI.Visualizzazione della classifica marcatori (ogni giocatore che abbia
      segnato almeno un goal, ordinati per numero di goal segnati).
