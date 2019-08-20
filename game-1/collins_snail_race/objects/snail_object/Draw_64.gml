if (started && !finished) { 
    timer();
}
else if (started && finished) {
    draw_text(timer_x, timer_y + 300, "Press 'r' to restart");
}

draw_text(timer_x, timer_y, time);
