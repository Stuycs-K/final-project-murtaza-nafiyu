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

