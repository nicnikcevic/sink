# Sink Design Spec

## December 2024 - Francesco Severino, Andrew Heller, Nic Nikcevic

Sink will be a mobile application for Dartmouth students to record pong matches played and compare their pong abilities to others through a public leaderboard.

The first iteration of the app will have 3 pages to maximize simplicity: Profile, Leaderboard, and Add game form.

# Profile 

All user will have to create a profile when they join the app. Their profile will include:  

- tag (users will be allowed to remain anonymous to foster mystery and interest around top players; similar to the Fizz leaderboard)
- class year
- Rank  
- Home town
- History
    - The history section of the profile will function similar to venmo. All of the users past games will be stored here. When inputting each game the user will have an option to make a game public or private, if a game is public it will count towards their ranking, otherwise it will not. Furthermore, public games will be visible to other users, while private games will not. When other users are mentioned clicking on their names will bring the user to their profile.

# Leaderboard

A single scrolling page with all the players ranked according to our algorithm.

# Add game form

An easy to fill out form that will allow a player to input a new game played. This form should be able to be filled it under 30 seconds with one hand. The form must be opened at the start of a game and upon opening it will begin a 7 minute timer to help mitigate false game input (assuming no pong game takes much less than 7 minutes). Once the timer is complete, the users will be asked to answer the following questions which will factor in to our ranking algorithm:
- Oponent
- Win or Loss
- Winner's cup's remaining
- Would they like the game to be public or private

Optional questions for future iterations of the algorithm:

- Games played before hand (to factor in intoxication)
- Game type: Shrub, Tree, Meniscus
- Venue: House, Dorm, Apartment, etc.


*NOTE: Only one player will need to log a game for it to show on both players profiles*

# Overall Design

The overall design of the app will be simple and maximized for readable. Consider the places this app will be used, and the mental state of it's users, it should be as streamlined and intuitive as possible

# Future Features

- Digital moving up in leaderboard

