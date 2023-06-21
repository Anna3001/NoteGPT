# NoteGPT
Note taking application using ChatGPT

Kod -> branch master

Aplikacja webowa do tworzenia notate, korzystająca z narzędzia ChatGPT.

Działanie aplikacji obejmuje następujące funkcjonalności:
• Rejestracja/logowanie użytkownika;
• Tworzenie notatek;
• Dodawanie tytułu oraz kategorii notatki;
• Tworzenie notatek przy użyciu narzędzia ChatGPT – poprzez wpisanie zapytania wodpowiednie pole tekstowe;
• Dodawanie okładki do notatki – koloru (zapis heksadecymalny) lub zdjęcia (odnośnikdo obrazu);
• Wyświetlanie treści utworzonych notatek;
• Wyświetlanie listy notatek z podziałem na kategorie;
• Wyświetlanie krótkiego opisu kategorii – wygenerowanego z ChatGPT;
• Usuwanie utworzonych notatek;
• Usuwanie użytkownika.

![obraz](https://github.com/Anna3001/NoteGPT/assets/110662890/2f720695-394d-485f-9e5c-374e41097410)

![obraz](https://github.com/Anna3001/NoteGPT/assets/110662890/3172cacc-5f3c-4952-9dfb-ac30c84fa835)

![obraz](https://github.com/Anna3001/NoteGPT/assets/110662890/c3f7959c-df38-4fcc-84c1-f44a983c4ab1)

![obraz](https://github.com/Anna3001/NoteGPT/assets/110662890/5b089f97-b353-49cf-bb3b-5f42344e9fa8)

Technologie i architektura
Aplikacja została stworzona przy użyciu Ruby on Rails. Jest to popularny framework, oparty na
języku Ruby, do tworzenia aplikacji webowych. W mojej aplikacji korzystałam z wersji 3.2.1
tego języka.
Zostało użyte kilka paczek rozwijających do Ruby on Rails: Devise - paczka odpowiedzialna za
rozszerzenie z logowaniem; Dotenv - paczka która dodaje funkcjonalność bezpiecznego
przechowywania zmiennych - została wykorzystana do przechowywania klucza do API OpenAI
(do używania ChatGPT).
Front end został napisany w HTML, CSS i JavaScript. Do tego została użyta biblioteka Tailwind
CSS.
Posłużyłam się bazą danych SQLite 3. W bazie danych aplikacji znajdują się trzy tabele – dla
notatek, kategorii oraz użytkowników.




