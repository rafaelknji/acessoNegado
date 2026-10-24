

randomize();

global.tryCode = array_create(4, noone)
global.pinCode = array_create(4)
global.actualDigit = 0;
global.actualTry = 1;
global.try1 = array_create(4, noone);
global.try2 = array_create(4, noone);
global.try3 = array_create(4, noone);
global.try4 = array_create(4, noone);
global.try5 = array_create(4, noone)

for (var i = 0; i < 4; i++) {
	global.pinCode[i] = irandom(9);
	show_debug_message(global.pinCode[i])
}