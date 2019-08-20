time_diff = (current_time - timeStarted);
millisecond = time_diff % 1000;
second = floor(time_diff / 1000) % 60;
minute = floor(time_diff / 60000) % 60;


if (millisecond < 10) {
    millisecondString = "00" + string(millisecond);
}
else if (millisecond < 100) {
    millisecondString = "0" + string(millisecond);
}
else {
    millisecondString = string(millisecond);
}

secondString = (second < 10) ? "0" + string(second) : string(second);
minuteString = (minute < 10) ? "0" + string(minute) : string(minute);

time = minuteString + ":" + secondString + ":" + millisecondString;