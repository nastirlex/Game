ini_open("save.ini"); // открытие файла
count = ini_read_real("Cristals", "count", 0);
ini_close();


global.diagName = "Старец"

if (count == 7){
	global.diagPhrase = "На своём пути ты собрал " + string(count) + " искорок. Это основные составляющие счастливого человека. Теперь ты готов двигаться к своей мечте!"
}
else if (count > 4 && count < 7 && count == 0){
	global.diagPhrase = "На своём пути ты собрал " + string(count) + " искорок. Чтобы собрать оставшиеся " + string(7 - count) + " можешь отправиться в путешествие ещё раз." 
}
else if (count > 1){
	global.diagPhrase = "На своём пути ты собрал " + string(count) + " искорки. Чтобы собрать оставшиеся " + string(7 - count) + " можешь отправиться в путешествие ещё раз." 
}
else if (count == 1){
	global.diagPhrase = "На своём пути ты собрал " + string(count) + " искорку. Чтобы собрать оставшиеся " + string(7 - count) + " можешь отправиться в путешествие ещё раз."
}