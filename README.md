# Game Engines Fall 2026 Midterm

Created using Godot 4.3.

This is my midterm assignment for the Fall 2026 class Game Engines. It is a loose recreation of Bubble Bobble. In implementation, Bob can move left and right, jump using 'z', and shoot using 'x'. 

## OO Principles
OO usage includes inheritance in the enemy class. Abstraction is impossible in Godot until later versions. Composition was planned to be added with a "HealthComponent" to add functionality to the gun and bullet interaction with the enemy but this functionality was scrapped for time.

<img width="562" height="295" alt="image" src="https://github.com/user-attachments/assets/55e42458-406b-4d2f-b66f-082f6565ab21" />

### Blue Enemy
<img width="384" height="178" alt="image" src="https://github.com/user-attachments/assets/d54c2802-51c2-42f8-8511-117c0c743117" />

### Red Enemy
<img width="385" height="133" alt="image" src="https://github.com/user-attachments/assets/91183d98-4a2b-4f06-b7ec-b9ed24d0b312" />

### White Enemy
<img width="406" height="241" alt="image" src="https://github.com/user-attachments/assets/c6498ade-fe3a-4562-915c-381fca4a3113" />

## Singleton Pattern
A "player_state" singleton was added to track the direction the player was facing. This ideally would be expanded with a more rigorous state machine time-permitting. It was used to track the direction that the bubble should go upon initialization.
<img width="367" height="72" alt="image" src="https://github.com/user-attachments/assets/ebb22c35-0df4-482b-979d-5c1c85b5580b" />
<img width="892" height="373" alt="image" src="https://github.com/user-attachments/assets/b2894646-b900-46b8-b6ac-8ff9ed9e515e" />

## Factory Pattern
The "spawner" factory contains an array of "PackedScenes" and simply adds the enemy to the scene. The enemies each have a unique type and are spawned randomly by the spawner.

<img width="451" height="202" alt="image" src="https://github.com/user-attachments/assets/43ae87b9-b3bd-42e5-bb0b-2bd3ddf00390" />
