-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

Config {
    font = "xft:WenQuanYi Micro Hei Mono:size=8:antialias=true",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1180, height = 12 },
    lowerOnStart = True,
    commands = [
        Run MultiCpu ["-t","CPU: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run CoreTemp ["-t", "T: <core0> <core1> <core2>", "-L", "40", "-H", "60", "-l", "lightblue", "-n", "gray90", "-h", "red"] 50,
        Run Memory ["-t","M: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Battery ["-t", "<left>% <timeleft>", "-L", "20", "-H", "75", "-h", "green", "-n", "yellow", "-l", "red"] 60,
        Run DiskIO [("/", "R:<total>"), ("/home", "H:<total>")] [] 10,
        Run DynNetwork [] 10,
        Run Date "%a %b %_d  %H:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %dynnetwork%  %multicpu%  %coretemp%  %memory%  %diskio%  %battery%  <fc=#FFFFCC>%date%</fc>"
}
