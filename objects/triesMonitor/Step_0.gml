with (triesMonitor) {
    if (tryLine == 1) {
        for (i = 0; i < 4; i++) {
            isCorrect = true;
            isSemiCorrect = true;

            if (global.try1[i] != global.pinCode[i] && global.actualTry > 0) {
                isCorrect = false;
            }

            if (
                global.try1[i] != global.pinCode[0] &&
                global.try1[i] != global.pinCode[1] &&
                global.try1[i] != global.pinCode[2] &&
                global.try1[i] != global.pinCode[3]
            ) {
                isSemiCorrect = false;
            }

            if (id_line_monitor == i) {
                switch (global.try1[i]) {
                    case noone:
                        sprite_index = spr_monitor_null;
                        break;

                    case 0:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r0;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr0;
                        } else {
                            sprite_index = spr_monitor_w0;
                        }
                        break;

                    case 1:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r1;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr1;
                        } else {
                            sprite_index = spr_monitor_w1;
                        }
                        break;

                    case 2:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r2;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr2;
                        } else {
                            sprite_index = spr_monitor_w2;
                        }
                        break;

                    case 3:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r3;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr3;
                        } else {
                            sprite_index = spr_monitor_w3;
                        }
                        break;

                    case 4:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r4;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr4;
                        } else {
                            sprite_index = spr_monitor_w4;
                        }
                        break;

                    case 5:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r5;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr5;
                        } else {
                            sprite_index = spr_monitor_w5;
                        }
                        break;

                    case 6:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r6;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr6;
                        } else {
                            sprite_index = spr_monitor_w6;
                        }
                        break;

                    case 7:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r7;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr7;
                        } else {
                            sprite_index = spr_monitor_w7;
                        }
                        break;

                    case 8:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r8;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr8;
                        } else {
                            sprite_index = spr_monitor_w8;
                        }
                        break;

                    case 9:
                        if (isCorrect) {
                            sprite_index = spr_monitor_r9;
                        } else if (isSemiCorrect) {
                            sprite_index = spr_monitor_sr9;
                        } else {
                            sprite_index = spr_monitor_w9;
                        }
                        break;

                    default:
                        sprite_index = spr_monitor_null;
                        break;
                }
            }
        }
    }
	
	if (tryLine == 2) {
for (i = 0; i < 4; i++) {
isCorrect = true;
isSemiCorrect = true;

        if (global.try2[i] != global.pinCode[i] && global.actualTry > 0) {
            isCorrect = false;
        }

        if (
            global.try2[i] != global.pinCode[0] &&
            global.try2[i] != global.pinCode[1] &&
            global.try2[i] != global.pinCode[2] &&
            global.try2[i] != global.pinCode[3]
        ) {
            isSemiCorrect = false;
        }

        if (id_line_monitor == i) {
            switch (global.try2[i]) {
                case noone:
                    sprite_index = spr_monitor_null;
                    break;

                case 0:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r0;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr0;
                    } else {
                        sprite_index = spr_monitor_w0;
                    }
                    break;

                case 1:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r1;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr1;
                    } else {
                        sprite_index = spr_monitor_w1;
                    }
                    break;

                case 2:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r2;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr2;
                    } else {
                        sprite_index = spr_monitor_w2;
                    }
                    break;

                case 3:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r3;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr3;
                    } else {
                        sprite_index = spr_monitor_w3;
                    }
                    break;

                case 4:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r4;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr4;
                    } else {
                        sprite_index = spr_monitor_w4;
                    }
                    break;

                case 5:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r5;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr5;
                    } else {
                        sprite_index = spr_monitor_w5;
                    }
                    break;

                case 6:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r6;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr6;
                    } else {
                        sprite_index = spr_monitor_w6;
                    }
                    break;

                case 7:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r7;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr7;
                    } else {
                        sprite_index = spr_monitor_w7;
                    }
                    break;

                case 8:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r8;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr8;
                    } else {
                        sprite_index = spr_monitor_w8;
                    }
                    break;

                case 9:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r9;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr9;
                    } else {
                        sprite_index = spr_monitor_w9;
                    }
                    break;

                default:
                    sprite_index = spr_monitor_null;
                    break;
            }
        }
    }
}

if (tryLine == 3) {
for (i = 0; i < 4; i++) {
isCorrect = true;
isSemiCorrect = true;

        if (global.try3[i] != global.pinCode[i] && global.actualTry > 0) {
            isCorrect = false;
        }

        if (
            global.try3[i] != global.pinCode[0] &&
            global.try3[i] != global.pinCode[1] &&
            global.try3[i] != global.pinCode[2] &&
            global.try3[i] != global.pinCode[3]
        ) {
            isSemiCorrect = false;
        }

        if (id_line_monitor == i) {
            switch (global.try3[i]) {
                case noone:
                    sprite_index = spr_monitor_null;
                    break;

                case 0:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r0;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr0;
                    } else {
                        sprite_index = spr_monitor_w0;
                    }
                    break;

                case 1:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r1;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr1;
                    } else {
                        sprite_index = spr_monitor_w1;
                    }
                    break;

                case 2:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r2;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr2;
                    } else {
                        sprite_index = spr_monitor_w2;
                    }
                    break;

                case 3:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r3;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr3;
                    } else {
                        sprite_index = spr_monitor_w3;
                    }
                    break;

                case 4:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r4;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr4;
                    } else {
                        sprite_index = spr_monitor_w4;
                    }
                    break;

                case 5:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r5;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr5;
                    } else {
                        sprite_index = spr_monitor_w5;
                    }
                    break;

                case 6:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r6;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr6;
                    } else {
                        sprite_index = spr_monitor_w6;
                    }
                    break;

                case 7:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r7;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr7;
                    } else {
                        sprite_index = spr_monitor_w7;
                    }
                    break;

                case 8:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r8;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr8;
                    } else {
                        sprite_index = spr_monitor_w8;
                    }
                    break;

                case 9:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r9;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr9;
                    } else {
                        sprite_index = spr_monitor_w9;
                    }
                    break;

                default:
                    sprite_index = spr_monitor_null;
                    break;
            }
        }
    }
}

if (tryLine == 4) {
for (i = 0; i < 4; i++) {
isCorrect = true;
isSemiCorrect = true;

        if (global.try4[i] != global.pinCode[i] && global.actualTry > 0) {
            isCorrect = false;
        }

        if (
            global.try4[i] != global.pinCode[0] &&
            global.try4[i] != global.pinCode[1] &&
            global.try4[i] != global.pinCode[2] &&
            global.try4[i] != global.pinCode[3]
        ) {
            isSemiCorrect = false;
        }

        if (id_line_monitor == i) {
            switch (global.try4[i]) {
                case noone:
                    sprite_index = spr_monitor_null;
                    break;

                case 0:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r0;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr0;
                    } else {
                        sprite_index = spr_monitor_w0;
                    }
                    break;

                case 1:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r1;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr1;
                    } else {
                        sprite_index = spr_monitor_w1;
                    }
                    break;

                case 2:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r2;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr2;
                    } else {
                        sprite_index = spr_monitor_w2;
                    }
                    break;

                case 3:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r3;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr3;
                    } else {
                        sprite_index = spr_monitor_w3;
                    }
                    break;

                case 4:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r4;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr4;
                    } else {
                        sprite_index = spr_monitor_w4;
                    }
                    break;

                case 5:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r5;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr5;
                    } else {
                        sprite_index = spr_monitor_w5;
                    }
                    break;

                case 6:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r6;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr6;
                    } else {
                        sprite_index = spr_monitor_w6;
                    }
                    break;

                case 7:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r7;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr7;
                    } else {
                        sprite_index = spr_monitor_w7;
                    }
                    break;

                case 8:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r8;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr8;
                    } else {
                        sprite_index = spr_monitor_w8;
                    }
                    break;

                case 9:
                    if (isCorrect) {
                        sprite_index = spr_monitor_r9;
                    } else if (isSemiCorrect) {
                        sprite_index = spr_monitor_sr9;
                    } else {
                        sprite_index = spr_monitor_w9;
                    }
                    break;

                default:
                    sprite_index = spr_monitor_null;
                    break;
            }
        }
    }
}
}