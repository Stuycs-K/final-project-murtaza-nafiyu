# Work Log

## GROUP MEMBER 1 (NAF)

### 05/22/24

Got barebones movement down. Haven't actually followed the prototype diagram yet as I'm testing with Processing and collisions and movement and understanding how they work. I also spent some extra time understanding branches and the difference between remote and local branches.

### 05/23/24

I was sick today, so I decided not to work on the project.

### 05/24/24

I began creating the walls today, as well as checking wall detection. I also simplified the movement down, so that PAC-MAN moved in 4 directions rather than in diagonals.

### 05/25/24

I began on making PAC-MAN stop at the walls. I got a simulation that works, however PAC-MAN can't move in edges/corners correctly. I have not found a solution to this yet.

### 05/26/24

I continued on trying to diagnose the problem from yesterday, however all solutions I have tried have failed. However, I have understood the issue more, the issue on question being that my code checks for walls on a x-y basis from the middle of my eclipse object, causing the simulation to think there is no wall once half of the eclipse has passed a wall. However, I can't think of a way to make the code check all directions from all positions of the eclipse.

### 05/27/24

I decided to stop on the wall detection for now and start on the ghosts. The ghosts are just squares for now. I created random Ghost AI that changes direction after a tick counter is reached, and I additionally created a way for PAC-MAN to die upon contact with the ghosts. Finally, I created a start-up screen (It's just the objects staying paused for a few seconds) that plays whenever PAC-MAN dies, just like the real game. It also plays upon the first launch.

### 05/28/24

It has not been fun. I've found a way to detect walls from 45 degree diagonals from PAC-MAN as well as the four cardinal directions, however the places in-between are still not checked so with proper timing PAC-MAN can still accidentally get stuck on walls. I don't know how I'm going to tackle this so I may ask for help tommorow. This probably can be done with the help of trigonometry but at the current moment I don't know what I can do. I decided to spend the rest of the day doing research. Other than that, I started a little on building the maze walls and the ghost spawn. I do not plan on expanding the ghost walls until I get wall collision checks fixed.

### 05/29/24

I found a basic workaround for the wall detection, and stuck to it for now. I've spent too much time on detecting walls. I built the maze for the remainder of today.

### 05/30/24

Due to forgetting to push changes on my home computer yesterday, I decided to work on a different aspect other than building walls: The pellets. I created a PacDot Object as well as a type instance variable inside the object to differentiate between PacDots and power pellets. I made it so when PACMAN collects a power pellet all the ghosts will slow their movement, just like in the actual game, and PAC-MAN colliding with them while they are moving slowly will cause PACMAN to eat them, sending them back to their spawn. I also made pacdots be eaten by PACMAN, but that's about it. I set up two arrays for all the pacdots and power pellets that will be set in the actual maze and now all that remains is actually placing everything together. I plan on using school time and what time I have left to work on the ghosts slowly getting out of their spawn and PACMAN not being able to enter said spawn. I plan on using the time in home to continue building the maze, as building the maze itself has been the mose time-consuming thing of all. 

### 05/31/24 - 06/02/2024

A bunch has happened these couple of days. To begin with, most of the time spend these days were on building the maze walls. I made the walls as accurate to the real game as possible. A lot of the time was also spent redoing the hit detection, as hit detection has been a huge issue with this project the past couple of days. A friend suggested using a grid system, however a grid system would complicate PAC-MAN's movement and the smoothness of it would be gone, and I was nearing the end of the project submission date as I got this suggestion, so I chose to ignore it. Either way, the hit detection works perfectly for PAC-MAN, and is pretty rough for the GHOSTs. However, in gameplay and during testing this has not been much of a problem other than a visual issue. I will hvae to tackle fixing this in the second portion of the project (although I am leaning towards keeping it the way it is, as there isn't any major harm in doing so). I additionally also started adding the PAC-DOTS, but then decided adding all the dots would be better off doing during the second portion of the project, especially considering the time it would take to add all of them. I created the ability for the ghosts to slowly move out of their spawn and it works great. I added a win screen (which consists of just freezing the game for now), allowed PAC-MAN to teleport to the other side of the screen if he goes out of the map, and added some cheat codes to help debuggers. The cheat codes consist of freezing the ghosts, allowing PAC-MAN to eat a power-pellet immediately, and instantly winning the game. I believe the game is in a playable state for now, so this is where I will stop for now until the second portion of the project begins. I plan on adding a winscreen, adding the pac-dots everywhere (probably not accurate to the original game as it would take a very long time to implement every single dot), create animations for both PAC-MAN and the GHOSTs, and add a score system.
