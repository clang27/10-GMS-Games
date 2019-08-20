if (!started && !finished) {
    timeStarted = current_time;
    started = true;
    audio_play_sound(snail_theme, 10, false);
}

if (x >= 565) {
    finished = true;
}
else {
    x += 5;
}
