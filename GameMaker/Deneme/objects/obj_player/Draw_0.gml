draw_self();

if (flash > 0) {
 flash --;	
 shader_set(Flash);
 draw_self();
 shader_reset();
}
