/// @description Initialize Variables
// Constants
screen_width = display_get_gui_width();
screen_height = display_get_gui_height();
gui_margin = 32;
player_starting_lives = 5;
instruction_text = "Use your mouse to catch the apples in the basket!";
game_over_text = "GAME OVER\nPress any key or click to restart\nYour Score: ";

// Variables
game_score = 0;
player_lives = player_starting_lives;
game_over = false;

// Initialize
audio_play_sound(snd_bgm_banjo, 5, true);