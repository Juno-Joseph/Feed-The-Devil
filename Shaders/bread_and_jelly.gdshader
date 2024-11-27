shader_type canvas_item;

uniform float xspeed = 0.1; //Doing this makes it avaliable to edit in Inspector :D
uniform float yspeed = -0.1;//Pretty neat

void vertex() {
	UV.x += TIME * xspeed; 
	UV.y += TIME * yspeed;
}
