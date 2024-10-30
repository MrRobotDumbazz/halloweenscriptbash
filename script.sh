#!/bin/bash

# Цветовые функции
green_color() { echo -e "\033[32m$1\033[0m"; }
red_color() { echo -e "\033[31m$1\033[0m"; }
cyan_color() { echo -e "\033[36m$1\033[0m"; }
yellow_color() { echo -e "\033[33m$1\033[0m"; }
blink_text() { echo -e "\033[5m$1\033[0m"; }

clear_screen() { echo -e "\033[2J\033[H"; }

# Матричный дождь
matrix_rain() {
    chars="01"
    for i in {1..4}; do
        echo -n "$(green_color "$(for j in {1..72}; do echo -n "${chars:$((RANDOM % 2)):1} "; done)")"
        echo
    done
}

# Хакерская статистика
hacker_stats() {
    local progress=$1
    echo "$(green_color "╔═══════════════════════ SYSTEM INTRUSION ══════════════════════╗")"
    echo "$(green_color "║") CPU Usage: $(red_color "█████████") 98%                             $(green_color "║")"
    echo "$(green_color "║") Memory Dump: $(yellow_color "▓▓▓▓▓▓▓▓▓") $progress%                       $(green_color "║")"
    echo "$(green_color "║") Firewall Status: $(red_color "BYPASSED")                             $(green_color "║")"
    echo "$(green_color "╚════════════════════════════════════════════════════════════╝")"
}

sleep_time=0.5

frame1='
╔════════════════════════════════════════════════════════════╗
║                   ┌────────────────────┐                   ║
║                   │ \033[31m╔═╦═╦═╦═╦═╦═╦═╗\033[0m │                   ║
║                   │ \033[31m║█║█║█║█║█║█║█║\033[0m │    \033[36m╔═══╗\033[0m        ║
║                   │ \033[31m╠═╬═╬═╬═╬═╬═╬═╣\033[0m │    \033[36m║\033[31m▀▄▀\033[36m║\033[0m        ║
║                   └────────────────────┘    \033[36m╚═══╝\033[0m        ║
║                      [\033[32m▀▄▄▄▄▄▄▄▄▄▀\033[0m]                      ║
║                    《\033[31m〘▀▄▄▄▄▄▄▄▀〙\033[0m》                    ║
║                      ┌╥≡≡≡|:|≡≡≡╥┐                        ║
║                     ╔╧╧╧╧╧╧╧╧╧╧╧╗                       ║
║                     ║ \033[32mINITIATE\033[0m ║                       ║
╚════════════════════════════════════════════════════════════╝
          \033[32m[НАЧАЛО ПРОЦЕССА ВЗЛОМА... ПОДКЛЮЧЕНИЕ...]\033[0m
\033[41m\033[1m\033[5m                 THE MR.ROBOTDUMBAZZ HAS RISEN FROM THE DEAD AND HE IS BACK                \033[0m
'

frame2='
╔════════════════════════════════════════════════════════════╗
║                   ┌────────────────────┐                   ║
║                   │ \033[31m╠═╬═╬═╬═╬═╬═╬═╣\033[0m │                   ║
║                   │ \033[31m║▓║▓║▓║▓║▓║▓║▓║\033[0m │    \033[36m╔═══╗\033[0m        ║
║                   │ \033[31m╠═╬═╬═╬═╬═╬═╬═╣\033[0m │    \033[36m║\033[31m▄▀▄\033[36m║\033[0m        ║
║                   └────────────────────┘    \033[36m╚═══╝\033[0m        ║
║                      [\033[32m▄▀▀▀▀▀▀▀▀▀▄\033[0m]                      ║
║                    《\033[31m〘▄▀▀▀▀▀▀▀▄〙\033[0m》                    ║
║                      ┌╥≡≡≡|:|≡≡≡╥┐                        ║
║                     ╔╧╧╧╧╧╧╧╧╧╧╧╗                       ║
║                     ║ \033[32mLOADING\033[0m ║                       ║
╚════════════════════════════════════════════════════════════╝
          \033[32m[ВЗЛОМ ФАЙЕРВОЛЛА... ЗАГРУЗКА ВИРУСОВ...]\033[0m
'

frame3='
╔════════════════════════════════════════════════════════════╗
║                   ┌────────────────────┐                   ║
║                   │ \033[31m╔═╦═╦═╦═╦═╦═╦═╗\033[0m │                   ║
║                   │ \033[31m║░║░║░║░║░║░║░║\033[0m │    \033[36m╔═══╗\033[0m        ║
║                   │ \033[31m╠═╬═╬═╬═╬═╬═╬═╣\033[0m │    \033[36m║\033[31m█▄█\033[36m║\033[0m        ║
║                   └────────────────────┘    \033[36m╚═══╝\033[0m        ║
║                      [\033[32m▀▄▄▄▄▄▄▄▄▄▀\033[0m]                      ║
║                    《\033[31m〘▀▄▄▄▄▄▄▄▀〙\033[0m》                    ║
║                      ┌╥≡≡≡|:|≡≡≡╥┐                        ║
║                     ╔╧╧╧╧╧╧╧╧╧╧╧╗                       ║
║                     ║\033[31m COMPLETE\033[0m║                       ║
╚════════════════════════════════════════════════════════════╝
          \033[32m[СИСТЕМА ВЗЛОМАНА! ВСЕ ФАЙЛЫ ЗАШИФРОВАНЫ!]\033[0m

\033[41m\033[1m\033[5m                 YOU HACKED BY MR.ROBOTDUMBAZZ                 \033[0m
'

progress=0

# Бесконечный цикл анимации
while true; do
	xrandr -o inverted 
	sleep $sleep_time
	xrandr -o left 
	sleep $sleep_time
    for progress in {0..100..33}; do
        clear_screen
        matrix_rain
        hacker_stats $progress
        
        if [ $progress -le 33 ]; then
            echo -e "$frame1"
        elif [ $progress -le 66 ]; then
            echo -e "$frame2"
        else
            echo -e "$frame3"
        fi
        
        sleep $sleep_time
    done
done
