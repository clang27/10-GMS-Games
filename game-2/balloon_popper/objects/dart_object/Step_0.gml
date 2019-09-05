var secondsEllapsed = floor((current_time-global.startTime)/1000);

if (y < 0) {
    vspeed = 0;
    y = ystart;
}

if (secondsEllapsed < global.secondsWhenGameOver && global.numberOfBalloons <= secondsEllapsed) {
    generate_balloon(ceil(random(360))-ceil(random(360)), floor(secondsEllapsed * 2.125 * random(4)));
}