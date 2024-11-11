shader_type canvas_item;

void fragment() {
    vec4 texColor = texture(TEXTURE, UV);
    COLOR = vec4(1.0, 1.0, 1.0, texColor.a); // Set color to white, retain alpha
}


//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
