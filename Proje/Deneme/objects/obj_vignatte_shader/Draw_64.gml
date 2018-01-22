/// @description Insert description here
// You can write your code in this editor

if (shader = true) {
shader_set(shd_vignette_noise);
    shader_set_uniform_f(uni_settings, 1.2, 1.2, 0.09, 1); //vignette inner circle size, vignette outter circle size, noise strength, noise enable (1 or 0 only).
    shader_set_uniform_f(uni_vignette_colour, 255, 255, 255,5); //R,G,B - 0 to 255
    draw_surface(application_surface,0,0);
shader_reset();
}


