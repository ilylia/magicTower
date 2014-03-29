// Action script...

// [onClipEvent of sprite 836 in frame 958]
onClipEvent (load)
{
    gotoAndStop(1);
    this._visible = false;
}

// [Action in Frame 1]
fscommand("fullscreen", "true");
fscommand("allowscale", "false");
fscommand("showmenu", "false");
fscommand("trapallkeys", "false");

var begin_key = 1;

// [Action in Frame 3]
if (_root.getBytesLoaded() < _root.getBytesTotal())
{
    gotoAndPlay(2);
    now_loading = int(_root.getBytesLoaded() / _root.getBytesTotal() * 100);
    _root.loding.gotoAndStop(now_loading);
}
else
{
    gotoAndPlay(4);
} // end else if

// [Action in Frame 1449]
stop ();

// [Action in Frame 4343]
stopAllSounds ();

// [Action in Frame 4346]
mt_line_00 = new Array(11);
mt_line_00[0] = new Array(1, 20, 20, 20, 20, 13, 20, 20, 20, 20, 1);
mt_line_00[1] = new Array(1, 20, 20, 20, 20, 98, 20, 20, 20, 20, 1);
mt_line_00[2] = new Array(1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1);
mt_line_00[3] = new Array(1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1);
mt_line_00[4] = new Array(1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1);
mt_line_00[5] = new Array(1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1);
mt_line_00[6] = new Array(1, 1, 20, 20, 20, 0, 20, 20, 20, 1, 1);
mt_line_00[7] = new Array(1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1);
mt_line_00[8] = new Array(19, 1, 19, 1, 0, 24, 0, 1, 19, 1, 19);
mt_line_00[9] = new Array(19, 19, 19, 19, 19, 99, 19, 19, 19, 19, 19);
mt_line_00[10] = new Array(19, 19, 19, 19, 19, 0, 19, 19, 19, 19, 19);
mt_line_01 = new Array(11);
mt_line_01[0] = new Array(13, 98, 6, 40, 41, 40, 0, 0, 0, 0, 0);
mt_line_01[1] = new Array(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);
mt_line_01[2] = new Array(11, 0, 44, 2, 0, 1, 11, 6, 11, 1, 0);
mt_line_01[3] = new Array(6, 44, 10, 1, 0, 1, 11, 6, 11, 1, 0);
mt_line_01[4] = new Array(1, 2, 1, 1, 0, 1, 1, 1, 43, 1, 0);
mt_line_01[5] = new Array(6, 45, 0, 1, 0, 2, 63, 40, 42, 1, 0);
mt_line_01[6] = new Array(9, 0, 7, 1, 0, 1, 1, 1, 1, 1, 0);
mt_line_01[7] = new Array(1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0);
mt_line_01[8] = new Array(0, 45, 0, 1, 1, 4, 1, 1, 1, 2, 1);
mt_line_01[9] = new Array(11, 12, 6, 1, 8, 97, 0, 1, 6, 46, 7);
mt_line_01[10] = new Array(11, 34, 6, 1, 0, 14, 0, 1, 6, 6, 6);
mt_line_02 = new Array(11);
mt_line_02[0] = new Array(14, 1, 0, 55, 0, 1, 10, 9, 6, 8, 1);
mt_line_02[1] = new Array(97, 1, 9, 1, 12, 1, 10, 9, 6, 7, 1);
mt_line_02[2] = new Array(0, 1, 6, 1, 6, 1, 10, 9, 6, 54, 1);
mt_line_02[3] = new Array(0, 1, 6, 1, 6, 1, 1, 1, 1, 2, 1);
mt_line_02[4] = new Array(0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 1);
mt_line_02[5] = new Array(0, 1, 2, 1, 1, 2, 1, 1, 2, 1, 1);
mt_line_02[6] = new Array(0, 5, 0, 0, 0, 0, 1, 0, 54, 0, 1);
mt_line_02[7] = new Array(0, 1, 2, 1, 1, 3, 1, 115, 1, 115, 1);
mt_line_02[8] = new Array(0, 1, 6, 1, 12, 11, 1, 0, 1, 0, 1);
mt_line_02[9] = new Array(98, 1, 6, 1, 12, 11, 1, 0, 1, 0, 1);
mt_line_02[10] = new Array(13, 1, 10, 1, 12, 11, 1, 26, 1, 27, 1);
mt_line_03 = new Array(11);
mt_line_03[0] = new Array(71, 41, 6, 1, 23, 22, 21, 1, 1, 1, 1);
mt_line_03[1] = new Array(41, 6, 0, 1, 0, 0, 0, 1, 0, 42, 0);
mt_line_03[2] = new Array(6, 44, 0, 1, 1, 2, 1, 1, 0, 1, 0);
mt_line_03[3] = new Array(1, 2, 1, 1, 0, 44, 0, 1, 6, 1, 41);
mt_line_03[4] = new Array(0, 0, 0, 1, 1, 1, 0, 1, 6, 1, 42);
mt_line_03[5] = new Array(40, 1, 0, 42, 41, 42, 0, 1, 6, 1, 41);
mt_line_03[6] = new Array(40, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0);
mt_line_03[7] = new Array(0, 0, 0, 0, 0, 1, 1, 2, 1, 1, 0);
mt_line_03[8] = new Array(1, 1, 1, 1, 42, 1, 41, 0, 41, 1, 0);
mt_line_03[9] = new Array(1, 0, 0, 0, 0, 1, 9, 42, 6, 1, 98);
mt_line_03[10] = new Array(14, 97, 1, 1, 1, 1, 10, 12, 6, 1, 13);
mt_line_04 = new Array(11);
mt_line_04[0] = new Array(0, 43, 0, 1, 0, 25, 0, 1, 0, 43, 0);
mt_line_04[1] = new Array(2, 1, 2, 1, 0, 0, 0, 1, 2, 1, 2);
mt_line_04[2] = new Array(0, 1, 0, 1, 1, 115, 1, 1, 0, 1, 0);
mt_line_04[3] = new Array(0, 1, 44, 1, 48, 49, 48, 1, 44, 1, 0);
mt_line_04[4] = new Array(42, 1, 11, 1, 9, 48, 9, 1, 11, 1, 42);
mt_line_04[5] = new Array(42, 1, 11, 1, 1, 4, 1, 1, 11, 1, 42);
mt_line_04[6] = new Array(41, 1, 0, 1, 46, 47, 46, 1, 0, 1, 41);
mt_line_04[7] = new Array(0, 1, 0, 1, 10, 46, 10, 1, 0, 1, 0);
mt_line_04[8] = new Array(0, 1, 0, 1, 1, 3, 1, 1, 0, 1, 0);
mt_line_04[9] = new Array(98, 1, 0, 1, 6, 0, 6, 1, 0, 1, 97);
mt_line_04[10] = new Array(13, 1, 0, 43, 0, 0, 0, 43, 0, 1, 14);
mt_line_05 = new Array(11);
mt_line_05[0] = new Array(36, 1, 11, 1, 12, 63, 0, 0, 63, 6, 7);
mt_line_05[1] = new Array(0, 1, 10, 1, 63, 0, 0, 0, 0, 63, 6);
mt_line_05[2] = new Array(48, 1, 0, 1, 45, 0, 1, 1, 2, 1, 1);
mt_line_05[3] = new Array(0, 2, 63, 1, 76, 45, 1, 0, 46, 45, 27);
mt_line_05[4] = new Array(48, 1, 0, 1, 1, 1, 1, 0, 0, 0, 45);
mt_line_05[5] = new Array(10, 1, 0, 0, 0, 42, 44, 0, 0, 0, 0);
mt_line_05[6] = new Array(9, 1, 1, 43, 1, 1, 1, 1, 0, 0, 0);
mt_line_05[7] = new Array(0, 26, 1, 43, 1, 0, 0, 0, 46, 47, 0);
mt_line_05[8] = new Array(1, 1, 1, 42, 1, 2, 1, 3, 1, 2, 1);
mt_line_05[9] = new Array(97, 0, 1, 0, 1, 42, 1, 9, 2, 98, 1);
mt_line_05[10] = new Array(14, 0, 42, 0, 0, 0, 1, 6, 1, 13, 1);
mt_line_06 = new Array(11);
mt_line_06[0] = new Array(30, 56, 1, 9, 1, 6, 51, 39, 1, 12, 12);
mt_line_06[1] = new Array(56, 6, 1, 10, 1, 0, 6, 51, 1, 65, 12);
mt_line_06[2] = new Array(6, 49, 3, 0, 3, 49, 0, 6, 1, 0, 65);
mt_line_06[3] = new Array(0, 0, 1, 47, 1, 0, 0, 0, 1, 52, 0);
mt_line_06[4] = new Array(1, 1, 1, 4, 1, 1, 1, 1, 1, 2, 1);
mt_line_06[5] = new Array(0, 0, 64, 0, 6, 6, 6, 0, 64, 0, 0);
mt_line_06[6] = new Array(0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
mt_line_06[7] = new Array(0, 1, 48, 2, 48, 0, 0, 0, 0, 0, 1);
mt_line_06[8] = new Array(0, 1, 2, 1, 2, 1, 1, 1, 1, 3, 1);
mt_line_06[9] = new Array(0, 1, 48, 1, 0, 0, 1, 1, 0, 97, 1);
mt_line_06[10] = new Array(0, 0, 0, 1, 13, 98, 2, 2, 0, 14, 1);
mt_line_07 = new Array(11);
mt_line_07[0] = new Array(13, 98, 0, 0, 0, 0, 0, 0, 1, 1, 1);
mt_line_07[1] = new Array(1, 1, 0, 49, 1, 3, 1, 56, 0, 1, 1);
mt_line_07[2] = new Array(1, 0, 49, 9, 1, 50, 1, 10, 56, 0, 1);
mt_line_07[3] = new Array(0, 0, 1, 1, 1, 15, 1, 1, 1, 0, 0);
mt_line_07[4] = new Array(0, 0, 3, 50, 115, 32, 15, 50, 3, 0, 0);
mt_line_07[5] = new Array(0, 1, 1, 1, 1, 15, 1, 1, 1, 1, 0);
mt_line_07[6] = new Array(0, 1, 11, 10, 1, 50, 1, 9, 11, 1, 0);
mt_line_07[7] = new Array(0, 1, 6, 11, 1, 3, 1, 11, 6, 1, 0);
mt_line_07[8] = new Array(0, 1, 1, 7, 7, 12, 7, 7, 1, 1, 0);
mt_line_07[9] = new Array(0, 0, 1, 1, 1, 4, 1, 1, 1, 0, 0);
mt_line_07[10] = new Array(1, 0, 0, 2, 14, 97, 0, 2, 0, 0, 1);
mt_line_08 = new Array(11);
mt_line_08[0] = new Array(14, 1, 0, 0, 0, 0, 1, 0, 6, 56, 0);
mt_line_08[1] = new Array(97, 1, 0, 1, 1, 2, 1, 2, 1, 1, 0);
mt_line_08[2] = new Array(0, 1, 0, 1, 0, 0, 3, 0, 0, 1, 10);
mt_line_08[3] = new Array(0, 1, 0, 1, 60, 1, 1, 1, 48, 1, 43);
mt_line_08[4] = new Array(48, 1, 0, 1, 11, 1, 13, 98, 0, 1, 43);
mt_line_08[5] = new Array(49, 1, 9, 1, 11, 1, 1, 1, 1, 1, 0);
mt_line_08[6] = new Array(48, 1, 43, 1, 0, 0, 0, 1, 0, 49, 0);
mt_line_08[7] = new Array(0, 1, 43, 1, 1, 1, 47, 1, 2, 1, 1);
mt_line_08[8] = new Array(0, 1, 0, 56, 0, 1, 56, 1, 0, 0, 0);
mt_line_08[9] = new Array(0, 1, 1, 1, 2, 1, 0, 1, 1, 1, 0);
mt_line_08[10] = new Array(0, 0, 60, 0, 0, 1, 0, 51, 50, 51, 0);
mt_line_09 = new Array(11);
mt_line_09[0] = new Array(35, 6, 0, 1, 1, 1, 0, 0, 0, 1, 0);
mt_line_09[1] = new Array(6, 0, 66, 2, 0, 0, 0, 1, 0, 2, 56);
mt_line_09[2] = new Array(1, 2, 1, 1, 0, 1, 1, 1, 0, 1, 6);
mt_line_09[3] = new Array(0, 0, 0, 1, 0, 1, 97, 0, 0, 1, 6);
mt_line_09[4] = new Array(0, 0, 0, 4, 0, 1, 14, 1, 0, 1, 11);
mt_line_09[5] = new Array(1, 3, 1, 1, 0, 1, 1, 1, 0, 1, 1);
mt_line_09[6] = new Array(9, 52, 10, 1, 60, 1, 13, 1, 0, 1, 11);
mt_line_09[7] = new Array(1, 2, 1, 1, 0, 0, 98, 2, 0, 1, 6);
mt_line_09[8] = new Array(56, 11, 56, 1, 1, 3, 1, 1, 0, 1, 6);
mt_line_09[9] = new Array(7, 56, 11, 1, 65, 60, 65, 1, 0, 2, 56);
mt_line_09[10] = new Array(73, 7, 56, 2, 12, 65, 12, 1, 0, 1, 0);
mt_line_10 = new Array(11);
mt_line_10[0] = new Array(0, 1, 1, 9, 66, 1, 66, 10, 1, 1, 0);
mt_line_10[1] = new Array(0, 0, 1, 1, 2, 1, 2, 1, 1, 0, 52);
mt_line_10[2] = new Array(0, 0, 0, 0, 0, 1, 0, 0, 0, 52, 12);
mt_line_10[3] = new Array(0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1);
mt_line_10[4] = new Array(48, 1, 0, 0, 6, 6, 6, 0, 0, 1, 6);
mt_line_10[5] = new Array(49, 1, 0, 1, 1, 1, 1, 2, 1, 1, 6);
mt_line_10[6] = new Array(48, 1, 0, 115, 97, 14, 1, 0, 2, 49, 0);
mt_line_10[7] = new Array(0, 1, 1, 1, 1, 1, 1, 2, 1, 1, 0);
mt_line_10[8] = new Array(0, 1, 11, 9, 10, 1, 0, 49, 0, 1, 6);
mt_line_10[9] = new Array(98, 1, 11, 9, 10, 4, 60, 1, 60, 1, 6);
mt_line_10[10] = new Array(13, 1, 11, 9, 10, 1, 7, 1, 7, 1, 11);
mt_line_11 = new Array(11);
mt_line_11[0] = new Array(11, 1, 6, 1, 7, 1, 8, 1, 12, 78, 12);
mt_line_11[1] = new Array(11, 1, 6, 1, 7, 1, 8, 1, 68, 69, 68);
mt_line_11[2] = new Array(11, 1, 6, 1, 7, 1, 8, 1, 0, 68, 0);
mt_line_11[3] = new Array(2, 1, 2, 1, 2, 1, 2, 1, 1, 3, 1);
mt_line_11[4] = new Array(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
mt_line_11[5] = new Array(2, 1, 1, 3, 1, 1, 1, 3, 1, 1, 2);
mt_line_11[6] = new Array(9, 1, 0, 68, 12, 67, 12, 68, 0, 1, 10);
mt_line_11[7] = new Array(9, 1, 66, 1, 1, 1, 1, 1, 66, 1, 10);
mt_line_11[8] = new Array(9, 1, 66, 1, 23, 22, 21, 1, 66, 1, 10);
mt_line_11[9] = new Array(1, 1, 4, 1, 11, 0, 11, 1, 4, 1, 1);
mt_line_11[10] = new Array(14, 97, 0, 0, 0, 0, 0, 0, 0, 98, 13);
mt_line_12 = new Array(11);
mt_line_12[0] = new Array(27, 9, 1, 0, 54, 55, 54, 0, 1, 12, 38);
mt_line_12[1] = new Array(10, 0, 1, 0, 1, 2, 1, 0, 1, 0, 12);
mt_line_12[2] = new Array(0, 0, 1, 0, 1, 55, 1, 0, 1, 0, 0);
mt_line_12[3] = new Array(0, 67, 1, 0, 1, 6, 1, 0, 1, 58, 0);
mt_line_12[4] = new Array(67, 61, 1, 0, 1, 6, 1, 0, 1, 57, 58);
mt_line_12[5] = new Array(1, 3, 1, 0, 1, 11, 1, 0, 1, 3, 1);
mt_line_12[6] = new Array(0, 0, 0, 0, 1, 11, 1, 0, 0, 0, 0);
mt_line_12[7] = new Array(1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1);
mt_line_12[8] = new Array(9, 67, 2, 68, 68, 69, 68, 68, 2, 67, 10);
mt_line_12[9] = new Array(1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1);
mt_line_12[10] = new Array(13, 98, 0, 0, 0, 0, 0, 0, 0, 97, 14);
mt_line_13 = new Array(11);
mt_line_13[0] = new Array(0, 67, 0, 0, 0, 0, 0, 1, 0, 61, 0);
mt_line_13[1] = new Array(0, 1, 1, 1, 1, 1, 2, 1, 0, 1, 0);
mt_line_13[2] = new Array(0, 1, 0, 0, 68, 0, 0, 1, 0, 1, 0);
mt_line_13[3] = new Array(12, 1, 4, 1, 1, 1, 0, 1, 0, 1, 0);
mt_line_13[4] = new Array(54, 1, 0, 0, 61, 1, 68, 1, 10, 1, 0);
mt_line_13[5] = new Array(55, 1, 0, 62, 15, 1, 69, 1, 10, 1, 0);
mt_line_13[6] = new Array(54, 1, 61, 115, 26, 1, 68, 1, 10, 1, 9);
mt_line_13[7] = new Array(0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 9);
mt_line_13[8] = new Array(0, 54, 0, 1, 0, 0, 0, 61, 0, 1, 9);
mt_line_13[9] = new Array(1, 1, 0, 1, 12, 1, 1, 1, 1, 1, 0);
mt_line_13[10] = new Array(14, 97, 0, 3, 98, 13, 1, 31, 62, 2, 0);
mt_line_14 = new Array(11);
mt_line_14[0] = new Array(1, 0, 58, 36, 13, 98, 0, 0, 0, 0, 1);
mt_line_14[1] = new Array(1, 0, 12, 1, 1, 1, 1, 1, 12, 0, 1);
mt_line_14[2] = new Array(1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1);
mt_line_14[3] = new Array(1, 0, 1, 1, 1, 33, 1, 1, 1, 0, 1);
mt_line_14[4] = new Array(1, 0, 1, 1, 1, 115, 1, 1, 1, 0, 1);
mt_line_14[5] = new Array(1, 0, 11, 1, 1, 61, 1, 1, 11, 0, 1);
mt_line_14[6] = new Array(1, 0, 20, 20, 1, 62, 1, 20, 20, 0, 1);
mt_line_14[7] = new Array(1, 0, 20, 20, 1, 61, 1, 20, 20, 0, 1);
mt_line_14[8] = new Array(1, 0, 20, 20, 1, 3, 1, 20, 20, 0, 1);
mt_line_14[9] = new Array(1, 68, 69, 68, 3, 97, 3, 68, 69, 68, 1);
mt_line_14[10] = new Array(1, 1, 1, 1, 1, 14, 1, 1, 1, 1, 1);
mt_line_15 = new Array(11);
mt_line_15[0] = new Array(0, 0, 0, 97, 14, 20, 13, 98, 0, 0, 0);
mt_line_15[1] = new Array(0, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0);
mt_line_15[2] = new Array(0, 20, 20, 1, 1, 1, 1, 1, 20, 20, 0);
mt_line_15[3] = new Array(0, 20, 1, 1, 26, 1, 27, 1, 1, 20, 0);
mt_line_15[4] = new Array(0, 20, 1, 1, 9, 1, 9, 1, 1, 20, 0);
mt_line_15[5] = new Array(0, 20, 1, 1, 10, 1, 10, 1, 1, 20, 0);
mt_line_15[6] = new Array(0, 20, 20, 1, 0, 1, 0, 1, 20, 20, 0);
mt_line_15[7] = new Array(0, 20, 20, 1, 2, 1, 2, 1, 20, 20, 0);
mt_line_15[8] = new Array(0, 20, 20, 20, 0, 0, 0, 20, 20, 20, 0);
mt_line_15[9] = new Array(0, 20, 20, 20, 20, 4, 20, 20, 20, 20, 0);
mt_line_15[10] = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
mt_line_16 = new Array(11);
mt_line_16[0] = new Array(20, 20, 20, 20, 20, 97, 14, 20, 20, 20, 20);
mt_line_16[1] = new Array(20, 20, 20, 20, 20, 0, 20, 20, 20, 20, 20);
mt_line_16[2] = new Array(20, 20, 20, 20, 20, 0, 20, 20, 20, 20, 20);
mt_line_16[3] = new Array(20, 20, 20, 20, 1, 4, 1, 20, 20, 20, 20);
mt_line_16[4] = new Array(20, 20, 20, 1, 26, 119, 1, 1, 20, 20, 20);
mt_line_16[5] = new Array(20, 20, 20, 1, 1, 53, 1, 1, 20, 20, 20);
mt_line_16[6] = new Array(20, 20, 20, 1, 1, 98, 1, 1, 20, 20, 20);
mt_line_16[7] = new Array(20, 20, 20, 1, 1, 13, 1, 1, 20, 20, 20);
mt_line_16[8] = new Array(20, 20, 20, 20, 1, 1, 1, 20, 20, 20, 20);
mt_line_16[9] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_16[10] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_17 = new Array(11);
mt_line_17[0] = new Array(20, 58, 62, 0, 0, 0, 0, 0, 0, 0, 58);
mt_line_17[1] = new Array(20, 62, 20, 20, 20, 20, 20, 20, 20, 20, 0);
mt_line_17[2] = new Array(20, 0, 20, 58, 0, 0, 0, 0, 0, 0, 58);
mt_line_17[3] = new Array(20, 0, 20, 0, 20, 20, 20, 20, 20, 20, 20);
mt_line_17[4] = new Array(20, 0, 20, 0, 20, 58, 0, 0, 0, 58, 20);
mt_line_17[5] = new Array(20, 0, 20, 58, 0, 0, 20, 20, 20, 0, 20);
mt_line_17[6] = new Array(20, 0, 20, 20, 20, 20, 20, 58, 0, 58, 20);
mt_line_17[7] = new Array(20, 62, 20, 20, 20, 14, 20, 0, 20, 20, 20);
mt_line_17[8] = new Array(20, 58, 62, 0, 70, 97, 20, 58, 0, 0, 58);
mt_line_17[9] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0);
mt_line_17[10] = new Array(13, 98, 70, 0, 0, 0, 0, 0, 0, 0, 58);
mt_line_18 = new Array(11);
mt_line_18[0] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_18[1] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_18[2] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_18[3] = new Array(20, 20, 20, 20, 1, 1, 1, 20, 20, 20, 20);
mt_line_18[4] = new Array(20, 20, 20, 1, 1, 28, 1, 1, 20, 20, 20);
mt_line_18[5] = new Array(20, 20, 20, 1, 1, 115, 1, 1, 20, 20, 20);
mt_line_18[6] = new Array(20, 20, 20, 1, 1, 4, 1, 1, 20, 20, 20);
mt_line_18[7] = new Array(20, 20, 20, 20, 1, 4, 1, 20, 20, 20, 20);
mt_line_18[8] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_18[9] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_18[10] = new Array(14, 97, 0, 0, 0, 0, 0, 0, 0, 98, 0);
mt_line_19 = new Array(11);
mt_line_19[0] = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
mt_line_19[1] = new Array(0, 20, 0, 20, 20, 20, 20, 20, 0, 20, 0);
mt_line_19[2] = new Array(0, 20, 0, 20, 20, 20, 20, 20, 0, 20, 0);
mt_line_19[3] = new Array(0, 20, 0, 20, 20, 13, 20, 20, 0, 20, 0);
mt_line_19[4] = new Array(0, 20, 0, 20, 20, 98, 20, 20, 0, 20, 0);
mt_line_19[5] = new Array(0, 20, 53, 20, 20, 0, 20, 20, 53, 20, 0);
mt_line_19[6] = new Array(0, 20, 115, 20, 20, 59, 20, 20, 115, 20, 0);
mt_line_19[7] = new Array(0, 20, 75, 20, 20, 129, 20, 20, 80, 20, 0);
mt_line_19[8] = new Array(0, 20, 20, 20, 20, 0, 20, 20, 20, 20, 0);
mt_line_19[9] = new Array(0, 20, 20, 20, 20, 0, 20, 20, 20, 20, 0);
mt_line_19[10] = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 14);
mt_line_20 = new Array(11);
mt_line_20[0] = new Array(70, 10, 50, 11, 62, 8, 62, 11, 50, 10, 70);
mt_line_20[1] = new Array(12, 20, 6, 20, 7, 20, 7, 20, 6, 20, 12);
mt_line_20[2] = new Array(20, 9, 50, 0, 58, 0, 58, 0, 50, 9, 20);
mt_line_20[3] = new Array(11, 20, 6, 20, 0, 14, 0, 20, 6, 20, 11);
mt_line_20[4] = new Array(62, 7, 58, 0, 0, 97, 0, 0, 58, 7, 62);
mt_line_20[5] = new Array(8, 20, 0, 20, 0, 20, 0, 20, 0, 20, 8);
mt_line_20[6] = new Array(62, 7, 58, 0, 0, 98, 0, 0, 58, 7, 62);
mt_line_20[7] = new Array(11, 20, 6, 20, 0, 0, 0, 20, 6, 20, 11);
mt_line_20[8] = new Array(20, 9, 50, 0, 58, 0, 58, 0, 50, 9, 20);
mt_line_20[9] = new Array(12, 20, 6, 20, 7, 20, 7, 20, 6, 20, 12);
mt_line_20[10] = new Array(70, 10, 50, 11, 62, 8, 62, 11, 50, 10, 70);
mt_line_21 = new Array(11);
mt_line_21[0] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_21[1] = new Array(20, 20, 0, 0, 20, 59, 20, 0, 0, 20, 20);
mt_line_21[2] = new Array(20, 0, 0, 20, 20, 57, 20, 20, 0, 0, 20);
mt_line_21[3] = new Array(20, 0, 0, 0, 20, 57, 20, 0, 0, 0, 20);
mt_line_21[4] = new Array(20, 20, 0, 0, 0, 0, 0, 0, 0, 20, 20);
mt_line_21[5] = new Array(20, 20, 0, 0, 0, 97, 0, 0, 0, 20, 20);
mt_line_21[6] = new Array(20, 20, 20, 0, 0, 20, 0, 0, 20, 20, 20);
mt_line_21[7] = new Array(20, 20, 20, 20, 15, 14, 15, 20, 20, 20, 20);
mt_line_21[8] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_21[9] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_21[10] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
mt_line_22 = new Array(11);
mt_line_22[0] = new Array(20, 20, 20, 20, 20, 14, 20, 20, 20, 20, 20);
mt_line_22[1] = new Array(20, 20, 20, 20, 20, 97, 20, 20, 20, 20, 20);
mt_line_22[2] = new Array(20, 20, 20, 20, 0, 0, 24, 20, 20, 20, 20);
mt_line_22[3] = new Array(15, 15, 15, 20, 20, 4, 20, 20, 15, 15, 15);
mt_line_22[4] = new Array(10, 10, 15, 20, 20, 39, 20, 20, 15, 9, 9);
mt_line_22[5] = new Array(13, 10, 58, 4, 39, 98, 39, 4, 58, 9, 13);
mt_line_22[6] = new Array(10, 10, 15, 20, 20, 39, 20, 20, 15, 9, 9);
mt_line_22[7] = new Array(15, 15, 15, 20, 20, 4, 20, 20, 15, 15, 15);
mt_line_22[8] = new Array(20, 20, 20, 15, 15, 58, 15, 15, 20, 20, 20);
mt_line_22[9] = new Array(20, 20, 20, 15, 12, 12, 12, 15, 20, 20, 20);
mt_line_22[10] = new Array(20, 20, 20, 15, 12, 13, 12, 15, 20, 20, 20);
mt_line_23 = new Array(11);
mt_line_23[0] = new Array(58, 0, 0, 10, 10, 10, 0, 0, 20, 0, 12);
mt_line_23[1] = new Array(0, 20, 20, 20, 20, 20, 20, 0, 3, 0, 20);
mt_line_23[2] = new Array(10, 20, 20, 57, 58, 58, 58, 0, 20, 0, 20);
mt_line_23[3] = new Array(10, 20, 20, 30, 20, 20, 20, 20, 20, 0, 20);
mt_line_23[4] = new Array(0, 57, 20, 20, 20, 20, 20, 20, 39, 0, 20);
mt_line_23[5] = new Array(20, 4, 59, 115, 202, 20, 20, 39, 3, 97, 14);
mt_line_23[6] = new Array(0, 57, 20, 20, 20, 20, 20, 20, 39, 0, 20);
mt_line_23[7] = new Array(10, 20, 20, 30, 20, 20, 20, 20, 20, 0, 20);
mt_line_23[8] = new Array(10, 20, 20, 57, 58, 58, 58, 0, 20, 0, 20);
mt_line_23[9] = new Array(0, 20, 20, 20, 20, 20, 20, 0, 3, 0, 20);
mt_line_23[10] = new Array(58, 0, 0, 10, 10, 10, 0, 0, 20, 0, 12);
mt_line_24 = new Array(11);
mt_line_24[0] = new Array(12, 20, 20, 20, 20, 14, 20, 20, 20, 20, 12);
mt_line_24[1] = new Array(0, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0);
mt_line_24[2] = new Array(20, 3, 20, 20, 36, 3, 36, 20, 20, 3, 20);
mt_line_24[3] = new Array(0, 0, 0, 20, 20, 36, 20, 20, 0, 0, 0);
mt_line_24[4] = new Array(0, 20, 58, 20, 20, 20, 20, 20, 58, 20, 0);
mt_line_24[5] = new Array(0, 20, 58, 20, 20, 20, 20, 20, 58, 20, 0);
mt_line_24[6] = new Array(11, 20, 58, 20, 20, 5, 20, 20, 58, 20, 11);
mt_line_24[7] = new Array(11, 20, 57, 31, 20, 115, 20, 31, 57, 20, 11);
mt_line_24[8] = new Array(11, 20, 20, 20, 20, 59, 20, 20, 20, 20, 11);
mt_line_24[9] = new Array(0, 20, 20, 20, 57, 4, 57, 20, 20, 20, 0);
mt_line_24[10] = new Array(58, 0, 12, 12, 0, 20, 0, 12, 12, 0, 58);
mt_line_25 = new Array(11);
mt_line_25[0] = new Array(12, 0, 20, 0, 0, 0, 9, 9, 9, 0, 58);
mt_line_25[1] = new Array(20, 0, 3, 0, 20, 20, 20, 20, 20, 20, 0);
mt_line_25[2] = new Array(20, 0, 20, 0, 58, 58, 58, 57, 20, 20, 9);
mt_line_25[3] = new Array(20, 0, 20, 20, 20, 20, 20, 30, 20, 20, 9);
mt_line_25[4] = new Array(20, 0, 39, 20, 20, 20, 20, 20, 20, 57, 0);
mt_line_25[5] = new Array(14, 97, 3, 39, 20, 20, 203, 115, 59, 4, 20);
mt_line_25[6] = new Array(20, 0, 39, 20, 20, 20, 20, 20, 20, 57, 0);
mt_line_25[7] = new Array(20, 0, 20, 20, 20, 20, 20, 30, 20, 20, 9);
mt_line_25[8] = new Array(20, 0, 20, 0, 58, 58, 58, 57, 20, 20, 9);
mt_line_25[9] = new Array(20, 0, 3, 0, 20, 20, 20, 20, 20, 20, 0);
mt_line_25[10] = new Array(12, 0, 20, 0, 0, 0, 9, 9, 9, 0, 58);
mt_line_26 = new Array(11);
mt_line_26[0] = new Array(19, 19, 19, 15, 15, 15, 15, 15, 19, 19, 19);
mt_line_26[1] = new Array(19, 19, 19, 15, 181, 182, 183, 15, 19, 19, 19);
mt_line_26[2] = new Array(19, 19, 19, 15, 184, 185, 186, 15, 19, 19, 19);
mt_line_26[3] = new Array(19, 19, 19, 15, 187, 188, 189, 15, 19, 19, 19);
mt_line_26[4] = new Array(19, 19, 19, 15, 15, 0, 15, 15, 19, 19, 19);
mt_line_26[5] = new Array(19, 12, 12, 12, 12, 57, 12, 12, 12, 12, 19);
mt_line_26[6] = new Array(19, 19, 19, 19, 19, 58, 19, 19, 19, 19, 19);
mt_line_26[7] = new Array(19, 19, 19, 30, 58, 59, 58, 30, 19, 19, 19);
mt_line_26[8] = new Array(19, 19, 19, 19, 19, 58, 19, 19, 19, 19, 19);
mt_line_26[9] = new Array(19, 19, 19, 19, 12, 57, 12, 19, 19, 19, 19);
mt_line_26[10] = new Array(19, 19, 19, 19, 19, 97, 19, 19, 19, 19, 19);
Now_key_flag = 1;
Display_kill = 0;
Display_buy = 0;
Display_update = 0;
Display_say = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
Display_text = 0;
Display_list = 0;
Display_lines = 0;
Display_other = 0;
Display_jump = 0;
My_lifes_up = 0;
My_lifes_down = 0;
Open_room = 0;
Now_line = 0;
Now_xid = 0;
Now_yid = 0;
list_flag = 0;
clean_flag = 0;
jump_flag = 0;
my_love = 0;
big_clean = 0;
Max_line = 0;
boss_man = new Array(50);
boss_man[0] = new Array(50, 20, 1, 1, 1, "绿头怪");
boss_man[1] = new Array(70, 15, 2, 2, 2, "红头怪");
boss_man[2] = new Array(100, 20, 5, 3, 3, "小蝙蝠");
boss_man[4] = new Array(110, 25, 5, 5, 4, "骷髅人");
boss_man[3] = new Array(200, 35, 10, 5, 5, "青头怪");
boss_man[5] = new Array(150, 40, 20, 8, 6, "骷髅士兵");
boss_man[23] = new Array(125, 50, 25, 10, 7, "初级法师");
boss_man[8] = new Array(150, 65, 30, 10, 8, "大蝙蝠");
boss_man[6] = new Array(300, 75, 45, 13, 10, "兽面人");
boss_man[16] = new Array(400, 90, 50, 15, 12, "骷髅队长");
boss_man[25] = new Array(500, 115, 65, 15, 15, "石头怪人");
boss_man[20] = new Array(250, 120, 70, 20, 17, "麻衣法师");
boss_man[7] = new Array(450, 150, 90, 22, 19, "初级卫兵");
boss_man[9] = new Array(550, 160, 90, 25, 20, "红蝙蝠");
boss_man[24] = new Array(100, 200, 110, 30, 25, "高级法师");
boss_man[11] = new Array(700, 250, 125, 32, 30, "怪王");
boss_man[10] = new Array(1300, 300, 150, 40, 35, "白衣武士");
boss_man[14] = new Array(850, 350, 200, 45, 40, "金甲卫士");
boss_man[12] = new Array(500, 400, 260, 47, 45, "红衣法师");
boss_man[26] = new Array(900, 450, 330, 50, 50, "兽面武士");
boss_man[28] = new Array(1250, 500, 400, 55, 55, "冥卫兵");
boss_man[29] = new Array(1500, 560, 460, 60, 60, "高级卫兵");
boss_man[27] = new Array(1200, 620, 520, 65, 75, "双手剑士");
boss_man[21] = new Array(2000, 680, 590, 70, 65, "冥战士");
boss_man[15] = new Array(900, 750, 650, 77, 70, "金甲队长");
boss_man[17] = new Array(1500, 830, 730, 80, 70, "灵法师");
boss_man[22] = new Array(2500, 900, 850, 84, 75, "冥队长");
boss_man[18] = new Array(1200, 980, 900, 88, 75, "灵武士");
boss_man[30] = new Array(3100, 1150, 1050, 92, 80, "影子战士");
boss_man[13] = new Array(15000, 1000, 1000, 100, 100, "红衣魔王");
boss_man[19] = new Array(30000, 1700, 1500, 250, 220, "冥灵魔王");
boss_man[31] = new Array(99999, 5000, 4000, 0, 0, "血影");
boss_man[32] = new Array(99999, 9999, 5000, 0, 0, "魔龙");
Base_life = 1;
Base_hp = 1000;
Base_gong = 10;
Base_fang = 10;
Base_money = 0;
Base_yellow = 0;
Base_blue = 0;
Base_red = 0;
Base_mp = 0;
Now_life = 1;
Now_hp = 1000;
Now_gong = 10;
Now_fang = 10;
Now_money = 0;
Now_yellow = 0;
Now_blue = 0;
Now_red = 0;
Now_mp = 0;
Last_x = 0;
Last_y = 0;
Now_boss_id = 0;
Now_boss_x = 0;
Now_boss_y = 0;
mt_temp_x = 0;
mt_temp_y = 0;
Set_man_01 = 0;
Set_man_02 = 0;
Display_kills = 0;
open_last_door = 0;
mt_changes = 0;
mt_LastGame_ID = 0;
mt_GetMoney = new Array(0, 0, 0);
mt_runline = 0;
StartGameTime = 0;
NowGameTime = 0;
TimeRunId = true;
savedate_id = 0;
boss_kills = 0;
NowTimes = new Date();
StartGameTime = _root.NowTimes.getHours() * 3600 + _root.NowTimes.getMinutes() * 60 + _root.NowTimes.getSeconds();
NowGameTime = _root.StartGameTime;

function PlaySound(soundid)
{
    var nowsound = new Sound();
    nowsound.attachSound(soundid);
    nowsound.start();
} // End of the function
function CopyMovie(mc_base, mc_name, mc_lable, mc_x, mc_y)
{
    _root.attachMovie(mc_base, mc_name, mc_lable);
    setProperty(eval("_root." add mc_name), _x, mc_x);
    setProperty(eval("_root." add mc_name), _y, mc_y);
} // End of the function
function DelMovie(mc_name)
{
    eval(mc_name).removeMovieClip();
} // End of the function
function SetBaseDisplay()
{
    for (i = 0; i < 13; i++)
    {
        for (j = 0; j < 18; j++)
        {
            temp_name1 = "mt_" add i add "_" add j;
            if (i >= 1 && i <= 11 && j >= 6 && j <= 16)
            {
                _root.CopyMovie("mt_00", temp_name1, 100 + i * 20 + j, 15 + j * 32, 15 + i * 32);
                continue;
            } // end if
            _root.CopyMovie("mt_29", temp_name1, 100 + i * 20 + j, 15 + j * 32, 15 + i * 32);
        } // end of for
    } // end of for
    _root.CopyMovie("mt_other_01", "mt_Mylife", 150 + i * 20 + j, 30, 30);
    _root.mt_Mylife.My_live_id = _root.Base_life;
    _root.mt_Mylife.My_hp = _root.Base_hp;
    _root.mt_Mylife.My_gong = _root.Base_gong;
    _root.mt_Mylife.My_fang = _root.Base_fang;
    _root.mt_Mylife.My_money = _root.Base_money;
    _root.mt_Mylife.My_mp = _root.Base_mp;
    _root.CopyMovie("mt_other_02", "mt_Mykey", 151 + i * 20 + j, 30, 210);
    _root.mt_Mykey.Key_yellow = _root.Base_yellow;
    _root.mt_Mykey.Key_blue = _root.Base_blue;
    _root.mt_Mykey.Key_red = _root.Base_red;
    if (_root.Now_line == 0)
    {
        _root.mt_Mykey.Key_line = "序  章";
    }
    else if (_root.Now_line >= 23 && _root.Now_line <= 25)
    {
        _root.mt_Mykey.Key_line = "第 23 层";
    }
    else if (_root.Now_line == 26)
    {
        _root.mt_Mykey.Key_line = "地下层";
    }
    else
    {
        _root.mt_Mykey.Key_line = "第 " add _root.Now_line add " 层";
    } // end else if
} // End of the function
function DelBaseDisplay()
{
    for (i = 0; i < 13; i++)
    {
        for (j = 0; j < 18; j++)
        {
            temp_name1 = "mt_" add i add "_" add j;
            if (i >= 1 && i <= 11 && j >= 6 && j <= 16)
            {
                _root.DelMovie(temp_name1);
                continue;
            } // end if
            _root.DelMovie(temp_name1);
        } // end of for
    } // end of for
    _root.DelMovie("mt_Mylife");
    _root.DelMovie("mt_Mykey");
    _root.DelMovie("mt_man");
    _root.DelMovie("mt_lines");
    _root.DelMovie("mt_sister");
} // End of the function
function SetLineDisplay(arrow_id)
{
    _root.CopyMovie("mt_other_00", "mt_lines", 1001, 367, 207);
    if (_root.Now_line == 0)
    {
        _root.mt_lines.bkground.Line_txt = "序  章";
    }
    else if (_root.Now_line >= 23 && _root.Now_line <= 25)
    {
        _root.mt_lines.bkground.Line_txt = "第 23 层";
    }
    else if (_root.Now_line == 26)
    {
        _root.mt_lines.bkground.Line_txt = "地下层";
    }
    else
    {
        _root.mt_lines.bkground.Line_txt = "第 " add _root.Now_line add " 层";
    } // end else if
    _root.Display_lines = 1;
    if (_root.Now_line < 10)
    {
        temp_num = "_root.mt_line_0" add _root.Now_line;
    }
    else
    {
        temp_num = "_root.mt_line_" add _root.Now_line;
    } // end else if
    if (_root.Now_line == 0 || _root.Now_line == 25)
    {
        _root.mt_bgsound.gotoAndPlay("sound_01");
    } // end if
    if (_root.Now_line >= 1 && _root.Now_line <= 7)
    {
        if (_root.mt_bgsound._currentframe < 11 || _root.mt_bgsound._currentframe >= 18)
        {
            _root.mt_bgsound.gotoAndPlay("sound_02");
        } // end if
    } // end if
    if (_root.Now_line >= 8 && _root.Now_line <= 14)
    {
        if (_root.mt_bgsound._currentframe < 18 || _root.mt_bgsound._currentframe >= 25)
        {
            _root.mt_bgsound.gotoAndPlay("sound_03");
        } // end if
    } // end if
    if (_root.Now_line >= 15 && _root.Now_line <= 18)
    {
        if (_root.mt_bgsound._currentframe < 25 || _root.mt_bgsound._currentframe >= 32)
        {
            _root.mt_bgsound.gotoAndPlay("sound_04");
        } // end if
    } // end if
    if (_root.Now_line >= 19)
    {
        if (_root.mt_bgsound._currentframe < 32 || _root.mt_bgsound._currentframe >= 45)
        {
            _root.mt_bgsound.gotoAndPlay("sound_05");
        } // end if
    } // end if
    for (i = 0; i < 11; i++)
    {
        for (j = 0; j < 11; j++)
        {
            if (Number(eval(temp_num)[i][j]))
            {
                temp_name1 = "mt_m_" add i add "_" add j;
                if (Number(eval(temp_num)[i][j]) < 10)
                {
                    base_name = "mt_0" add eval(temp_num)[i][j];
                }
                else if (Number(eval(temp_num)[i][j]) == 115)
                {
                    base_name = "mt_15";
                }
                else if (Number(eval(temp_num)[i][j]) == 120)
                {
                    base_name = "mt_20";
                }
                else if (Number(eval(temp_num)[i][j]) == 119 || Number(eval(temp_num)[i][j]) == 129 || Number(eval(temp_num)[i][j]) == 139 || Number(eval(temp_num)[i][j]) == 149 || Number(eval(temp_num)[i][j]) == 159 || Number(eval(temp_num)[i][j]) == 169 || Number(eval(temp_num)[i][j]) == 179)
                {
                    base_name = "mt_00";
                }
                else
                {
                    base_name = "mt_" add eval(temp_num)[i][j];
                } // end else if
                if (arrow_id == 0 && Number(eval(temp_num)[i][j]) == 99)
                {
                    temp_name1 = "mt_man";
                    _root.Now_xid = i;
                    _root.Now_yid = j;
                }
                else if (arrow_id == 1 && Number(eval(temp_num)[i][j]) == 97)
                {
                    temp_name1 = "mt_man";
                    _root.Now_xid = i;
                    _root.Now_yid = j;
                }
                else if (arrow_id == 2 && Number(eval(temp_num)[i][j]) == 98)
                {
                    temp_name1 = "mt_man";
                    _root.Now_xid = i;
                    _root.Now_yid = j;
                }
                else if (arrow_id == 3 && Number(eval(temp_num)[i][j]) == 97)
                {
                    temp_name1 = "mt_man";
                } // end else if
                if (arrow_id == 1 && Number(eval(temp_num)[i][j]) == 98)
                {
                }
                else if (arrow_id == 2 && Number(eval(temp_num)[i][j]) == 97)
                {
                }
                else if (arrow_id == 0 && Number(eval(temp_num)[i][j]) == 98)
                {
                }
                else if (arrow_id == 3 && Number(eval(temp_num)[i][j]) == 98)
                {
                }
                else if (temp_name1 == "mt_man")
                {
                    _root.CopyMovie("mt_99", "mt_man", 1000, 207 + j * 32, 47 + i * 32);
                }
                else if (base_name == "mt_24")
                {
                    _root.CopyMovie("mt_24", "mt_sister", 500 + (i + 1) * 11 + j + 1, 207 + j * 32, 47 + i * 32);
                    _root.mt_man_x = i;
                    _root.mt_man_y = j;
                }
                else
                {
                    _root.CopyMovie(base_name, temp_name1, 500 + (i + 1) * 11 + j + 1, 207 + j * 32, 47 + i * 32);
                } // end else if
                if (Number(eval(temp_num)[i][j]) >= 1 && Number(eval(temp_num)[i][j]) <= 5 || Number(eval(temp_num)[i][j]) == 15 || Number(eval(temp_num)[i][j]) == 115)
                {
                    eval("_root." add temp_name1).gotoAndStop(1);
                } // end if
            } // end if
        } // end of for
    } // end of for
    if (arrow_id == 3)
    {
        _root.mt_man._x = 207 + _root.Now_yid * 32;
        _root.mt_man._y = 47 + _root.Now_xid * 32;
    } // end if
    if (_root.Now_line == 21 && _root.mt_line_21[1][5] == 59)
    {
        _root.jump_flag = 0;
    } // end if
} // End of the function
function DelLineDisplay()
{
    if (_root.Now_line < 10)
    {
        temp_num = "_root.mt_line_0" add _root.Now_line;
    }
    else
    {
        temp_num = "_root.mt_line_" add _root.Now_line;
    } // end else if
    for (i = 0; i < 11; i++)
    {
        for (j = 0; j < 11; j++)
        {
            if (Number(eval(temp_num)[i][j]) != 24)
            {
                temp_name1 = "mt_m_" add i add "_" add j;
            }
            else
            {
                temp_name1 = "mt_sister";
            } // end else if
            _root.DelMovie(temp_name1);
        } // end of for
    } // end of for
} // End of the function
function Move_arrow(arrow_id)
{
    if (_root.Now_line < 10)
    {
        temp_lines = "_root.mt_line_0" add _root.Now_line;
    }
    else
    {
        temp_lines = "_root.mt_line_" add _root.Now_line;
    } // end else if
    temp_x = _root.Now_xid;
    temp_y = _root.Now_yid;
    sound_id = 0;
    switch (arrow_id)
    {
        case 0:
        {
            break;
        } 
        case 1:
        {
            if (temp_y > 0)
            {
                temp_y = temp_y - 1;
                sound_id = 1;
            } // end if
            break;
        } 
        case 2:
        {
            if (temp_y < 10)
            {
                temp_y = temp_y + 1;
                sound_id = 1;
            } // end if
            break;
        } 
        case 3:
        {
            if (temp_x > 0)
            {
                temp_x = temp_x - 1;
                sound_id = 1;
            } // end if
            break;
        } 
        case 4:
        {
            if (temp_x < 10)
            {
                temp_x = temp_x + 1;
                sound_id = 1;
            } // end if
            break;
        } 
    } // End of switch
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 0 || Number(eval(temp_lines)[temp_x][temp_y]) == 97 || Number(eval(temp_lines)[temp_x][temp_y]) == 98 || Number(eval(temp_lines)[temp_x][temp_y]) == 99)
    {
        _root.mt_man._x = 207 + temp_y * 32;
        _root.mt_man._y = 47 + temp_x * 32;
        switch (arrow_id)
        {
            case 1:
            {
                _root.mt_man.gotoAndPlay("three");
                break;
            } 
            case 2:
            {
                _root.mt_man.gotoAndPlay("five");
                break;
            } 
            case 3:
            {
                _root.mt_man.gotoAndPlay("sever");
                break;
            } 
            case 4:
            {
                _root.mt_man.gotoAndPlay("one");
                break;
            } 
        } // End of switch
        if (Number(eval(temp_lines)[_root.Now_xid][_root.Now_yid]) == 0 || Number(eval(temp_lines)[_root.Now_xid][_root.Now_yid]) == 99)
        {
            eval(temp_lines)[_root.Now_xid][_root.Now_yid] = 0;
        } // end if
        _root.Now_xid = temp_x;
        _root.Now_yid = temp_y;
        if (sound_id == 1)
        {
            _root.PlaySound("music_00");
        } // end if
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 6)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一把 黄钥匙 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_yellow = _root.Now_yellow + 1;
        _root.mt_Mykey.Key_yellow = _root.Now_yellow;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 2 && _root.Now_yellow > 0)
    {
        _root.Now_key_flag = 0;
        _root.Open_room = 1;
        _root.PlaySound("music_07");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        eval(temp_names).play();
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Last_x = temp_x;
        _root.Last_y = temp_y;
        _root.Now_yellow = _root.Now_yellow - 1;
        _root.mt_Mykey.Key_yellow = _root.Now_yellow;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 7)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一把 蓝钥匙 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_blue = _root.Now_blue + 1;
        _root.mt_Mykey.Key_blue = _root.Now_blue;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 3 && _root.Now_blue > 0)
    {
        _root.Now_key_flag = 0;
        _root.Open_room = 1;
        _root.PlaySound("music_07");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        eval(temp_names).play();
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Last_x = temp_x;
        _root.Last_y = temp_y;
        _root.Now_blue = _root.Now_blue - 1;
        _root.mt_Mykey.Key_blue = _root.Now_blue;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 8)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一把 红钥匙 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_red = _root.Now_red + 1;
        _root.mt_Mykey.Key_red = _root.Now_red;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 4 && _root.Now_red > 0)
    {
        _root.Now_key_flag = 0;
        _root.Open_room = 1;
        _root.PlaySound("music_07");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        eval(temp_names).play();
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Last_x = temp_x;
        _root.Last_y = temp_y;
        _root.Now_red = _root.Now_red - 1;
        _root.mt_Mykey.Key_red = _root.Now_red;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) >= 40 && Number(eval(temp_lines)[temp_x][temp_y]) <= 70 || Number(eval(temp_lines)[temp_x][temp_y]) == 188 || Number(eval(temp_lines)[temp_x][temp_y]) == 198)
    {
        if (Number(eval(temp_lines)[temp_x][temp_y]) == 188)
        {
            tmp_boss = 31;
        }
        else if (Number(eval(temp_lines)[temp_x][temp_y]) == 198)
        {
            tmp_boss = 32;
        }
        else
        {
            tmp_boss = Number(eval(temp_lines)[temp_x][temp_y]) - 40;
        } // end else if
        if (tmp_boss == 19 && _root.Now_line < 22)
        {
            _root.boss_kills = 1;
        } // end if
        if (_root.boss_man[tmp_boss][2] == _root.Now_gong && _root.boss_man[tmp_boss][1] == _root.Now_fang)
        {
            kill_flag = 0;
        }
        else
        {
            tmp_kills = int(_root.boss_man[tmp_boss][0] / (_root.Now_gong - _root.boss_man[tmp_boss][2])) * (_root.boss_man[tmp_boss][1] - _root.Now_fang);
            switch (tmp_boss)
            {
                case 20:
                {
                    tmp_kills = tmp_kills + 100;
                    break;
                } 
                case 12:
                {
                    tmp_kills = tmp_kills + 300;
                    break;
                } 
                case 10:
                {
                    tmp_kills = tmp_kills + int(_root.Now_hp / 4);
                    break;
                } 
                case 17:
                {
                    tmp_kills = tmp_kills + int(_root.Now_hp / 3);
                    break;
                } 
            } // End of switch
        } // end else if
        if (_root.boss_man[tmp_boss][2] >= _root.Now_gong)
        {
            kill_flag = 0;
        }
        else if (tmp_kills > _root.Now_hp)
        {
            kill_flag = 0;
        }
        else
        {
            kill_flag = 1;
        } // end else if
        if (kill_flag == 0)
        {
            _root.PlaySound("music_10");
        }
        else
        {
            temp_names = "mt_" add eval(temp_lines)[temp_x][temp_y];
            _root.Now_boss_id = tmp_boss;
            _root.Now_key_flag = 0;
            _root.Display_kill = 1;
            switch (Number(eval(temp_lines)[temp_x][temp_y]))
            {
                case 60:
                {
                    _root.Now_hp = _root.Now_hp - 100;
                    _root.mt_Mylife.My_hp = _root.Now_hp;
                    _root.PlaySound("music_20");
                    break;
                } 
                case 52:
                {
                    _root.Now_hp = _root.Now_hp - 300;
                    _root.mt_Mylife.My_hp = _root.Now_hp;
                    _root.PlaySound("music_24");
                    break;
                } 
                case 50:
                {
                    _root.Now_hp = _root.Now_hp - int(_root.Now_hp / 4);
                    _root.mt_Mylife.My_hp = _root.Now_hp;
                    _root.PlaySound("music_22");
                    break;
                } 
                case 57:
                {
                    _root.Now_hp = _root.Now_hp - int(_root.Now_hp / 3);
                    _root.mt_Mylife.My_hp = _root.Now_hp;
                    _root.PlaySound("music_23");
                    break;
                } 
            } // End of switch
            _root.CopyMovie("mt_other_04", "mt_kills", 1405, 290, 150);
            _root.CopyMovie("mt_99", "mt_kills_right", 1406, 505, 105);
            _root.CopyMovie(temp_names, "mt_kills_left", 1407, 70, 105);
            _root.mt_kills_left._xscale = _root.mt_kills_left._xscale * 2;
            _root.mt_kills_left._yscale = _root.mt_kills_left._yscale * 2;
            _root.mt_kills_right._xscale = _root.mt_kills_right._xscale * 2;
            _root.mt_kills_right._yscale = _root.mt_kills_right._yscale * 2;
            if (_root.Now_boss_id == 148)
            {
                _root.Now_boss_id = 31;
            } // end if
            if (_root.Now_boss_id == 158)
            {
                _root.Now_boss_id = 32;
            } // end if
            _root.mt_kills.left_hp = _root.boss_man[_root.Now_boss_id][0];
            _root.mt_kills.left_gong = _root.boss_man[_root.Now_boss_id][1];
            _root.mt_kills.left_fang = _root.boss_man[_root.Now_boss_id][2];
            _root.mt_kills.right_hp = _root.Now_hp;
            _root.mt_kills.right_gong = _root.Now_gong;
            _root.mt_kills.right_fang = _root.Now_fang;
            _root.Now_boss_x = temp_x;
            _root.Now_boss_y = temp_y;
        } // end if
    } // end else if
    if (arrow_id == 100)
    {
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到金币数 " add _root.boss_man[_root.Now_boss_id][3] add " 经验值 " add _root.boss_man[_root.Now_boss_id][4] add " ！";
        _root.PlaySound("music_03");
        if (_root.Now_boss_id == 31 || _root.Now_boss_id == 32)
        {
            var temp_i = 0;
            while (temp_i < 3)
            {
                var temp_j = 0;
                while (temp_j < 3)
                {
                    temp_names = "mt_m_" add (_root.Now_boss_x - 2 + temp_i) add "_" add (_root.Now_boss_y - 1 + temp_j);
                    _root.DelMovie(temp_names);
                    eval(temp_lines)[_root.Now_boss_x - 2 + temp_i][_root.Now_boss_y - 1 + temp_j] = 0;
                    ++temp_j;
                } // end while
                ++temp_i;
            } // end while
        }
        else
        {
            temp_names = "mt_m_" add _root.Now_boss_x add "_" add _root.Now_boss_y;
            _root.DelMovie(temp_names);
            eval(temp_lines)[_root.Now_boss_x][_root.Now_boss_y] = 0;
        } // end else if
        _root.Now_money = _root.Now_money + _root.boss_man[_root.Now_boss_id][3];
        _root.Now_mp = _root.Now_mp + _root.boss_man[_root.Now_boss_id][4];
        _root.mt_Mylife.My_money = _root.Now_money;
        _root.mt_Mylife.My_hp = _root.Now_hp;
        _root.mt_Mylife.My_mp = _root.Now_mp;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 11)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一个小血瓶 生命加 200 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_hp = _root.Now_hp + 200;
        _root.mt_Mylife.My_hp = _root.Now_hp;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 12)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一个大血瓶 生命加 500 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_hp = _root.Now_hp + 500;
        _root.mt_Mylife.My_hp = _root.Now_hp;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 10)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一个红宝石 攻击力加 3 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_gong = _root.Now_gong + 3;
        _root.mt_Mylife.My_gong = _root.Now_gong;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 9)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到一个蓝宝石 防御力加 3 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_fang = _root.Now_fang + 3;
        _root.mt_Mylife.My_fang = _root.Now_fang;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 13 || Number(eval(temp_lines)[temp_x][temp_y]) == 14)
    {
        _root.Now_key_flag = 0;
        _root.PlaySound("music_07");
        if (_root.Now_line == 0)
        {
            _root.mt_lines.bkground.Line_txt = "序  章";
        }
        else if (_root.Now_line >= 23 && _root.Now_line <= 25)
        {
            _root.mt_lines.bkground.Line_txt = "第 23 层";
        }
        else if (_root.Now_line == 26)
        {
            _root.mt_lines.bkground.Line_txt = "地下层";
        }
        else
        {
            _root.mt_lines.bkground.Line_txt = "第 " add _root.Now_line add " 层";
        } // end else if
        _root.Display_lines = 2;
        if (Number(eval(temp_lines)[temp_x][temp_y]) == 13)
        {
            _root.My_lifes_up = 1;
            if (_root.Now_line == 22 && temp_x == 5 && temp_y == 0)
            {
                _root.mt_runline = 1;
            } // end if
            if (_root.Now_line == 22 && temp_x == 5 && temp_y == 10)
            {
                _root.mt_runline = 3;
            } // end if
            if (_root.Now_line == 22 && temp_x == 10 && temp_y == 5)
            {
                _root.mt_runline = 2;
            } // end if
        } // end if
        if (Number(eval(temp_lines)[temp_x][temp_y]) == 14)
        {
            _root.My_lifes_down = 1;
        } // end if
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 5 && _root.Now_line == 24)
    {
        if (_root.mt_GetMoney[0] == 1 && _root.mt_GetMoney[1] == 1 && _root.mt_GetMoney[2] == 1)
        {
            if (_root.open_last_door == 0)
            {
                _root.mt_line_26[1][4] = 191;
                _root.mt_line_26[1][5] = 192;
                _root.mt_line_26[1][6] = 193;
                _root.mt_line_26[2][4] = 194;
                _root.mt_line_26[2][5] = 195;
                _root.mt_line_26[2][6] = 196;
                _root.mt_line_26[3][4] = 197;
                _root.mt_line_26[3][5] = 198;
                _root.mt_line_26[3][6] = 199;
            } // end if
            _root.Now_key_flag = 0;
            _root.PlaySound("music_07");
            if (_root.Now_line == 0)
            {
                _root.mt_lines.bkground.Line_txt = "序  章";
            }
            else if (_root.Now_line >= 23 && _root.Now_line <= 25)
            {
                _root.mt_lines.bkground.Line_txt = "第 23 层";
            }
            else if (_root.Now_line == 26)
            {
                _root.mt_lines.bkground.Line_txt = "地下层";
            }
            else
            {
                _root.mt_lines.bkground.Line_txt = "第 " add _root.Now_line add " 层";
            } // end else if
            _root.Display_lines = 2;
            _root.My_lifes_up = 1;
            if (_root.mt_line_26[3][5] == 188 || _root.mt_line_26[3][5] == 198)
            {
                _root.jump_flag = 0;
            } // end if
        } // end if
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 24 && _root.Display_say[0] == 0)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[0] = 1;
        _root.CopyMovie("mt_say_01", "mtsay_001", 1350, 380, 207);
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 28 && _root.Display_say[6] == 0)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[6] = 1;
        _root.CopyMovie("mt_say_06", "mtsay_006", 1350, 380, 207);
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 119 && _root.Display_say[7] == 0)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[7] = 1;
        _root.CopyMovie("mt_say_07", "mtsay_007", 1350, 380, 207);
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 129 && _root.Display_say[8] == 0)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[8] = 1;
        _root.CopyMovie("mt_say_08", "mtsay_008", 1350, 380, 207);
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 24 && _root.mt_changes == 1 && _root.my_love == 0)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[0] = 1;
        _root.CopyMovie("mt_say_01", "mtsay_001", 1350, 380, 207);
        _root.mtsay_001.gotoAndPlay("say_three");
        _root.mt_GetMoney[0] = 1;
        _root.mt_changes = 0;
        _root.mt_LastGame_ID = 1;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 24 && _root.my_love == 1)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[0] = 1;
        _root.CopyMovie("mt_say_01", "mtsay_001", 1350, 380, 207);
        if (Number(_root.mt_GetMoney[0]) == 1)
        {
            _root.mtsay_001.gotoAndPlay("say_four");
            _root.mt_line_20[7][5] = 13;
        }
        else
        {
            _root.mtsay_001.gotoAndPlay("say_two");
            _root.mt_line_20[7][5] = 13;
        } // end else if
        _root.my_love = 0;
        _root.mt_changes = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 24 && _root.Now_line == 22)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[0] = 1;
        _root.CopyMovie("mt_say_01", "mtsay_001", 1350, 380, 207);
        if (Number(_root.mt_GetMoney[0]) == 1 && Number(_root.mt_GetMoney[1]) == 1 && Number(_root.mt_GetMoney[2]) == 1)
        {
            _root.mtsay_001.gotoAndPlay("say_six");
        }
        else
        {
            _root.mtsay_001.gotoAndPlay("say_five");
        } // end if
    } // end else if
    if (Number(eval(temp_lines)[temp_x][temp_y]) >= 71 && Number(eval(temp_lines)[temp_x][temp_y]) <= 75)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        switch (Number(eval(temp_lines)[temp_x][temp_y]))
        {
            case 71:
            {
                _root.mt_display_text.MT.text = "得到 铁剑 攻击加 10 ！";
                _root.Now_gong = _root.Now_gong + 10;
                break;
            } 
            case 72:
            {
                _root.mt_display_text.MT.text = "得到 钢剑 攻击加 40 ！";
                _root.Now_gong = _root.Now_gong + 40;
                break;
            } 
            case 73:
            {
                _root.mt_display_text.MT.text = "得到 青锋剑 攻击加 70 ！";
                _root.Now_gong = _root.Now_gong + 70;
                break;
            } 
            case 74:
            {
                _root.mt_display_text.MT.text = "得到 圣光剑 攻击加 110 ！";
                _root.Now_gong = _root.Now_gong + 110;
                break;
            } 
            case 75:
            {
                _root.mt_display_text.MT.text = "得到 星光神剑 攻击加 150 ！";
                _root.Now_gong = _root.Now_gong + 150;
                break;
            } 
        } // End of switch
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.mt_Mylife.My_gong = _root.Now_gong;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) >= 76 && Number(eval(temp_lines)[temp_x][temp_y]) <= 80)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        switch (Number(eval(temp_lines)[temp_x][temp_y]))
        {
            case 76:
            {
                _root.mt_display_text.MT.text = "得到 铁盾 防御加 10 ！";
                _root.Now_fang = _root.Now_fang + 10;
                break;
            } 
            case 77:
            {
                _root.mt_display_text.MT.text = "得到 钢盾 防御加 30 ！";
                _root.Now_fang = _root.Now_fang + 30;
                break;
            } 
            case 78:
            {
                _root.mt_display_text.MT.text = "得到 黄金盾 防御加 85 ！";
                _root.Now_fang = _root.Now_fang + 85;
                break;
            } 
            case 79:
            {
                _root.mt_display_text.MT.text = "得到 星光盾 防御加 120 ！";
                _root.Now_fang = _root.Now_fang + 120;
                break;
            } 
            case 80:
            {
                _root.mt_display_text.MT.text = "得到 光芒神盾 防御加 190 ！";
                _root.Now_fang = _root.Now_fang + 190;
                break;
            } 
        } // End of switch
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.mt_Mylife.My_fang = _root.Now_fang;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 36)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到 钥匙盒 各种钥匙数加 1 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_yellow = _root.Now_yellow + 1;
        _root.Now_blue = _root.Now_blue + 1;
        _root.Now_red = _root.Now_red + 1;
        _root.mt_Mykey.Key_yellow = _root.Now_yellow;
        _root.mt_Mykey.Key_blue = _root.Now_blue;
        _root.mt_Mykey.Key_red = _root.Now_red;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 39)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到 金块 金币数加 300 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_money = _root.Now_money + 300;
        _root.mt_Mylife.My_money = _root.Now_money;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 30)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到 小飞羽 等级提升一级 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_life = _root.Now_life + 1;
        _root.Now_hp = _root.Now_hp + 1000;
        _root.Now_gong = _root.Now_gong + 10;
        _root.Now_fang = _root.Now_fang + 10;
        _root.mt_Mylife.My_live_id = _root.Now_life;
        _root.mt_Mylife.My_hp = _root.Now_hp;
        _root.mt_Mylife.My_gong = _root.Now_gong;
        _root.mt_Mylife.My_fang = _root.Now_fang;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 31)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        _root.mt_display_text.MT.text = "得到 大飞羽 等级提升三级 ！";
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Now_life = _root.Now_life + 3;
        _root.Now_hp = _root.Now_hp + 3000;
        _root.Now_gong = _root.Now_gong + 30;
        _root.Now_fang = _root.Now_fang + 30;
        _root.mt_Mylife.My_live_id = _root.Now_life;
        _root.mt_Mylife.My_hp = _root.Now_hp;
        _root.mt_Mylife.My_gong = _root.Now_gong;
        _root.mt_Mylife.My_fang = _root.Now_fang;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 34)
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(1);
        _root.PlaySound("music_04");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 32)
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(4);
        _root.PlaySound("music_04");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 35)
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(2);
        _root.PlaySound("music_04");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 33)
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(6);
        _root.PlaySound("music_04");
        _root.Now_hp = _root.Now_hp * 2;
        _root.mt_Mylife.My_hp = _root.Now_hp;
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 37)
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(3);
        _root.PlaySound("music_04");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 38)
    {
        _root.Now_key_flag = 0;
        _root.Display_other = 1;
        _root.CopyMovie("mt_other_list", "mt_otherlist", 1370, 360, 207);
        _root.mt_otherlist.gotoAndStop(5);
        _root.PlaySound("music_04");
        _root.big_clean = 1;
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 22)
    {
        _root.Now_key_flag = 0;
        _root.Display_buy = 1;
        _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 380, 207);
        if (_root.Now_line == 3)
        {
            _root.mt_buy_list.gotoAndStop(1);
        }
        else if (_root.Now_line == 11)
        {
            _root.mt_buy_list.gotoAndStop(3);
        } // end if
    } // end else if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 27)
    {
        _root.Now_key_flag = 0;
        _root.Display_buy = 1;
        if (_root.Now_line == 2)
        {
            _root.Now_key_flag = 0;
            _root.Display_say[1] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_02", "mtsay_002", 1350, 380, 207);
        }
        else if (_root.Now_line == 5)
        {
            _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 400, 207);
            _root.mt_buy_list.gotoAndStop(4);
        }
        else if (_root.Now_line == 12)
        {
            _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 400, 207);
            _root.mt_buy_list.gotoAndStop(5);
        }
        else if (_root.Now_line == 15)
        {
            _root.Now_key_flag = 0;
            _root.Display_say[1] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_02", "mtsay_002", 1350, 380, 207);
            _root.mtsay_002.gotoAndPlay("say_two");
        } // end else if
    } // end else if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 26)
    {
        _root.Now_key_flag = 0;
        _root.Display_buy = 1;
        if (_root.Now_line == 2)
        {
            _root.Now_key_flag = 0;
            _root.Display_say[2] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_03", "mtsay_003", 1350, 380, 207);
        }
        else if (_root.Now_line == 5)
        {
            _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 340, 207);
            _root.mt_buy_list.gotoAndStop(6);
        }
        else if (_root.Now_line == 13)
        {
            _root.CopyMovie("mt_buy", "mt_buy_list", 1370, 400, 207);
            _root.mt_buy_list.gotoAndStop(7);
        }
        else if (_root.Now_line == 15)
        {
            _root.Now_key_flag = 0;
            _root.Display_say[2] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_03", "mtsay_003", 1350, 380, 207);
            _root.mtsay_003.gotoAndPlay("say_two");
        }
        else if (_root.Now_line == 16)
        {
            _root.Now_key_flag = 0;
            _root.Display_say[2] = 1;
            _root.Last_x = temp_x;
            _root.Last_y = temp_y;
            _root.CopyMovie("mt_say_03", "mtsay_003", 1350, 380, 207);
            _root.mtsay_003.gotoAndPlay("say_three");
        } // end else if
    } // end else if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 115)
    {
        _root.Now_key_flag = 0;
        _root.Open_room = 1;
        _root.PlaySound("music_07");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        eval(temp_names).play();
        eval(temp_lines)[temp_x][temp_y] = 0;
        _root.Last_x = temp_x;
        _root.Last_y = temp_y;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 25 && _root._root.Display_say[3] == 0)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[3] = 1;
        _root.CopyMovie("mt_say_04", "mtsay_004", 1350, 380, 207);
        _root.mtsay_004.gotoAndPlay(1);
        _root.mt_line_02[6][1] = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) == 25 && _root.big_clean == 1)
    {
        _root.Now_key_flag = 0;
        _root.Display_say[3] = 1;
        _root.CopyMovie("mt_say_04", "mtsay_004", 1350, 380, 207);
        _root.mtsay_004.gotoAndPlay("say_two");
        _root.mt_line_18[8][5] = 0;
        _root.mt_line_18[9][5] = 0;
        _root.big_clean = 0;
    } // end if
    if (Number(eval(temp_lines)[temp_x][temp_y]) >= 201 && _root.Number(eval(temp_lines)[temp_x][temp_y]) <= 203)
    {
        _root.Now_key_flag = 0;
        _root.Display_text = 1;
        _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
        switch (eval(temp_lines)[temp_x][temp_y])
        {
            case 201:
            {
                _root.mt_display_text.MT.text = "得到 冰之灵杖 ！";
                _root.mt_GetMoney[0] = 1;
                break;
            } 
            case 202:
            {
                _root.mt_display_text.MT.text = "得到 炎之灵杖 ! ";
                _root.mt_GetMoney[1] = 1;
                break;
            } 
            case 203:
            {
                _root.mt_display_text.MT.text = "得到 心之灵杖 ！";
                _root.mt_GetMoney[2] = 1;
                break;
            } 
        } // End of switch
        _root.PlaySound("music_01");
        temp_names = "mt_m_" add temp_x add "_" add temp_y;
        _root.DelMovie(temp_names);
        eval(temp_lines)[temp_x][temp_y] = 0;
    } // end if
} // End of the function
function SaveData()
{
    _root.Now_key_flag = 0;
    var i = 0;
    while (i <= 26)
    {
        if (i < 10)
        {
            save_tempstr = "_root.save_line_0" + i;
            load_tempstr = "_root.mt_line_0" + i;
        }
        else
        {
            save_tempstr = "_root.save_line_" + i;
            load_tempstr = "_root.mt_line_" + i;
        } // end else if
        var j = 0;
        while (j < 11)
        {
            var k = 0;
            while (k < 11)
            {
                eval(save_tempstr)[j][k] = eval(load_tempstr)[j][k];
                ++k;
            } // end while
            ++j;
        } // end while
        ++i;
    } // end while
    _root.save_Display_kill = Number(_root.Display_kill);
    _root.save_Display_buy = Number(_root.Display_buy);
    _root.save_Display_update = Number(_root.Display_update);
    var temp_i = 0;
    while (temp_i < _root.save_Display_say.length)
    {
        _root.save_Display_say[temp_i] = Number(_root.Display_say[temp_i]);
        ++temp_i;
    } // end while
    _root.save_Display_text = Number(_root.Display_text);
    _root.save_Display_list = Number(_root.Display_list);
    _root.save_Display_lines = Number(_root.Display_lines);
    _root.save_Display_other = Number(_root.Display_other);
    _root.save_Display_jump = Number(_root.Display_jump);
    _root.save_My_lifes_up = Number(_root.My_lifes_up);
    _root.save_My_lifes_down = Number(_root.My_lifes_down);
    _root.save_Open_room = Number(_root.Open_room);
    _root.save_Now_line = Number(_root.Now_line);
    _root.save_Now_xid = Number(_root.Now_xid);
    _root.save_Now_yid = Number(_root.Now_yid);
    _root.save_list_flag = Number(_root.list_flag);
    _root.save_clean_flag = Number(_root.clean_flag);
    _root.save_jump_flag = Number(_root.jump_flag);
    _root.save_my_love = Number(_root.my_love);
    _root.save_big_clean = Number(_root.big_clean);
    _root.save_Max_line = Number(_root.Max_line);
    _root.save_Now_life = Number(_root.Now_life);
    _root.save_Now_hp = Number(_root.Now_hp);
    _root.save_Now_gong = Number(_root.Now_gong);
    _root.save_Now_fang = Number(_root.Now_fang);
    _root.save_Now_money = Number(_root.Now_money);
    _root.save_Now_yellow = Number(_root.Now_yellow);
    _root.save_Now_blue = Number(_root.Now_blue);
    _root.save_Now_red = Number(_root.Now_red);
    _root.save_Now_mp = Number(_root.Now_mp);
    _root.save_Last_x = Number(_root.Last_x);
    _root.save_Last_y = Number(_root.Last_y);
    _root.save_Now_boss_id = Number(_root.Now_boss_id);
    _root.save_Now_boss_x = Number(_root.Now_boss_x);
    _root.save_Now_boss_y = Number(_root.Now_boss_y);
    _root.save_mt_temp_x = Number(_root.mt_temp_x);
    _root.save_mt_temp_y = Number(_root.mt_temp_y);
    _root.save_Set_man_01 = Number(_root.Set_man_01);
    _root.save_Set_man_02 = Number(_root.Set_man_02);
    _root.save_Display_kills = Number(_root.Display_kills);
    _root.save_mt_LastGame_ID = Number(_root.mt_LastGame_ID);
    _root.save_mt_GetMoney[0] = Number(_root.mt_GetMoney[0]);
    _root.save_mt_GetMoney[1] = Number(_root.mt_GetMoney[1]);
    _root.save_mt_GetMoney[2] = Number(_root.mt_GetMoney[2]);
    _root.save_mt_runline = Number(_root.mt_runline);
    _root.save_NowGameTime = Number(_root.NowGameTime);
    _root.save_TimeRunId = Number(_root.TimeRunId);
    _root.save_mt_changes = Number(_root.mt_changes);
    var temp_j = 0;
    while (temp_j < _root.save_boss_man.length)
    {
        var temp_k = 0;
        while (temp_k < 5)
        {
            _root.save_boss_man[temp_j][temp_k] = Number(_root.boss_man[temp_j][temp_k]);
            ++temp_k;
        } // end while
        ++temp_j;
    } // end while
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "保存数据成功 ！";
    _root.PlaySound("music_21");
    _root.Now_key_flag = 1;
} // End of the function
function LoadData()
{
    _root.Now_key_flag = 0;
    var i = 0;
    while (i <= 26)
    {
        if (i < 10)
        {
            save_tempstr = "_root.save_line_0" + i;
            load_tempstr = "_root.mt_line_0" + i;
        }
        else
        {
            save_tempstr = "_root.save_line_" + i;
            load_tempstr = "_root.mt_line_" + i;
        } // end else if
        var j = 0;
        while (j < 11)
        {
            var k = 0;
            while (k < 11)
            {
                eval(load_tempstr)[j][k] = eval(save_tempstr)[j][k];
                ++k;
            } // end while
            ++j;
        } // end while
        ++i;
    } // end while
    _root.Display_kill = Number(_root.save_Display_kill);
    _root.Display_buy = Number(_root.save_Display_buy);
    _root.Display_update = Number(_root.save_Display_update);
    var temp_i = 0;
    while (temp_i < _root.save_Display_say.length)
    {
        _root.Display_say[temp_i] = Number(_root.save_Display_say[temp_i]);
        ++temp_i;
    } // end while
    _root.Display_text = Number(_root.save_Display_text);
    _root.Display_list = Number(_root.save_Display_list);
    _root.Display_lines = Number(_root.save_Display_lines);
    _root.Display_other = Number(_root.save_Display_other);
    _root.Display_jump = Number(_root.save_Display_jump);
    _root.My_lifes_up = Number(_root.save_My_lifes_up);
    _root.My_lifes_down = Number(_root.save_My_lifes_down);
    _root.Open_room = Number(_root.save_Open_room);
    _root.StartGameTime = Number(_root.StartGameTime + _root.NowGameTime - _root.save_NowGameTime);
    _root.Now_line = Number(_root.save_Now_line);
    _root.Now_xid = Number(_root.save_Now_xid);
    _root.Now_yid = Number(_root.save_Now_yid);
    _root.list_flag = Number(_root.save_list_flag);
    _root.clean_flag = Number(_root.save_clean_flag);
    _root.jump_flag = Number(_root.save_jump_flag);
    _root.my_love = Number(_root.save_my_love);
    _root.big_clean = Number(_root.save_big_clean);
    _root.Max_line = Number(_root.save_Max_line);
    _root.Now_life = Number(_root.save_Now_life);
    _root.Now_hp = Number(_root.save_Now_hp);
    _root.Now_gong = Number(_root.save_Now_gong);
    _root.Now_fang = Number(_root.save_Now_fang);
    _root.Now_money = Number(_root.save_Now_money);
    _root.Now_yellow = Number(_root.save_Now_yellow);
    _root.Now_blue = Number(_root.save_Now_blue);
    _root.Now_red = Number(_root.save_Now_red);
    _root.Now_mp = Number(_root.save_Now_mp);
    _root.Last_x = Number(_root.save_Last_x);
    _root.Last_y = Number(_root.save_Last_y);
    _root.Now_boss_id = Number(_root.save_Now_boss_id);
    _root.Now_boss_x = Number(_root.save_Now_boss_x);
    _root.Now_boss_y = Number(_root.save_Now_boss_y);
    _root.mt_temp_x = Number(_root.save_mt_temp_x);
    _root.mt_temp_y = Number(_root.save_mt_temp_y);
    _root.Set_man_01 = Number(_root.save_Set_man_01);
    _root.Set_man_02 = Number(_root.save_Set_man_02);
    _root.Display_kills = Number(_root.save_Display_kills);
    _root.mt_LastGame_ID = Number(_root.save_mt_LastGame_ID);
    _root.mt_GetMoney[0] = Number(_root.save_mt_GetMoney[0]);
    _root.mt_GetMoney[1] = Number(_root.save_mt_GetMoney[1]);
    _root.mt_GetMoney[2] = Number(_root.save_mt_GetMoney[2]);
    _root.mt_runline = Number(_root.save_mt_runline);
    _root.NowGameTime = Number(_root.save_NowGameTime);
    _root.TimeRunId = Number(_root.save_TimeRunId);
    _root.mt_Mylife.My_live_id = Number(_root.Now_life);
    _root.mt_Mylife.My_hp = Number(_root.Now_hp);
    _root.mt_Mylife.My_gong = Number(_root.Now_gong);
    _root.mt_Mylife.My_fang = Number(_root.Now_fang);
    _root.mt_Mylife.My_money = Number(_root.Now_money);
    _root.mt_Mylife.My_mp = Number(_root.Now_mp);
    _root.mt_Mykey.Key_yellow = Number(_root.Now_yellow);
    _root.mt_Mykey.Key_blue = Number(_root.Now_blue);
    _root.mt_Mykey.Key_red = Number(_root.Now_red);
    _root.mt_changes = Number(_root.save_mt_changes);
    var temp_j = 0;
    while (temp_j < _root.boss_man.length)
    {
        var temp_k = 0;
        while (temp_k < 5)
        {
            _root.boss_man[temp_j][temp_k] = Number(_root.save_boss_man[temp_j][temp_k]);
            ++temp_k;
        } // end while
        ++temp_j;
    } // end while
    _root.Now_key_flag = 0;
    _root.Display_text = 1;
    _root.CopyMovie("mt_other_03", "mt_display_text", 1410, 290, 150);
    _root.mt_display_text.MT.text = "读取数据成功 ！";
    _root.PlaySound("music_21");
    _root.Now_key_flag = 1;
} // End of the function

_root.SetBaseDisplay();
_root.Now_line = 0;
_root.SetLineDisplay(0);

save_line_00 = new Array(11);
save_line_00[0] = new Array(1, 20, 20, 20, 20, 13, 20, 20, 20, 20, 1);
save_line_00[1] = new Array(1, 20, 20, 20, 20, 98, 20, 20, 20, 20, 1);
save_line_00[2] = new Array(1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1);
save_line_00[3] = new Array(1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1);
save_line_00[4] = new Array(1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1);
save_line_00[5] = new Array(1, 20, 20, 20, 20, 0, 20, 20, 20, 20, 1);
save_line_00[6] = new Array(1, 1, 20, 20, 20, 0, 20, 20, 20, 1, 1);
save_line_00[7] = new Array(1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1);
save_line_00[8] = new Array(19, 1, 19, 1, 0, 24, 0, 1, 19, 1, 19);
save_line_00[9] = new Array(19, 19, 19, 19, 19, 99, 19, 19, 19, 19, 19);
save_line_00[10] = new Array(19, 19, 19, 19, 19, 0, 19, 19, 19, 19, 19);
save_line_01 = new Array(11);
save_line_01[0] = new Array(13, 98, 6, 40, 41, 40, 0, 0, 0, 0, 0);
save_line_01[1] = new Array(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);
save_line_01[2] = new Array(11, 0, 44, 2, 0, 1, 11, 6, 11, 1, 0);
save_line_01[3] = new Array(6, 44, 10, 1, 0, 1, 11, 6, 11, 1, 0);
save_line_01[4] = new Array(1, 2, 1, 1, 0, 1, 1, 1, 43, 1, 0);
save_line_01[5] = new Array(6, 45, 0, 1, 0, 2, 63, 40, 42, 1, 0);
save_line_01[6] = new Array(9, 0, 7, 1, 0, 1, 1, 1, 1, 1, 0);
save_line_01[7] = new Array(1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0);
save_line_01[8] = new Array(0, 45, 0, 1, 1, 4, 1, 1, 1, 2, 1);
save_line_01[9] = new Array(11, 12, 6, 1, 8, 97, 0, 1, 6, 46, 7);
save_line_01[10] = new Array(11, 34, 6, 1, 0, 14, 0, 1, 6, 6, 6);
save_line_02 = new Array(11);
save_line_02[0] = new Array(14, 1, 0, 55, 0, 1, 10, 9, 6, 8, 1);
save_line_02[1] = new Array(97, 1, 9, 1, 12, 1, 10, 9, 6, 7, 1);
save_line_02[2] = new Array(0, 1, 6, 1, 6, 1, 10, 9, 6, 54, 1);
save_line_02[3] = new Array(0, 1, 6, 1, 6, 1, 1, 1, 1, 2, 1);
save_line_02[4] = new Array(0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 1);
save_line_02[5] = new Array(0, 1, 2, 1, 1, 2, 1, 1, 2, 1, 1);
save_line_02[6] = new Array(0, 5, 0, 0, 0, 0, 1, 0, 54, 0, 1);
save_line_02[7] = new Array(0, 1, 2, 1, 1, 3, 1, 115, 1, 115, 1);
save_line_02[8] = new Array(0, 1, 6, 1, 12, 11, 1, 0, 1, 0, 1);
save_line_02[9] = new Array(98, 1, 6, 1, 12, 11, 1, 0, 1, 0, 1);
save_line_02[10] = new Array(13, 1, 10, 1, 12, 11, 1, 26, 1, 27, 1);
save_line_03 = new Array(11);
save_line_03[0] = new Array(71, 41, 6, 1, 23, 22, 21, 1, 1, 1, 1);
save_line_03[1] = new Array(41, 6, 0, 1, 0, 0, 0, 1, 0, 42, 0);
save_line_03[2] = new Array(6, 44, 0, 1, 1, 2, 1, 1, 0, 1, 0);
save_line_03[3] = new Array(1, 2, 1, 1, 0, 44, 0, 1, 6, 1, 41);
save_line_03[4] = new Array(0, 0, 0, 1, 1, 1, 0, 1, 6, 1, 42);
save_line_03[5] = new Array(40, 1, 0, 42, 41, 42, 0, 1, 6, 1, 41);
save_line_03[6] = new Array(40, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0);
save_line_03[7] = new Array(0, 0, 0, 0, 0, 1, 1, 2, 1, 1, 0);
save_line_03[8] = new Array(1, 1, 1, 1, 42, 1, 41, 0, 41, 1, 0);
save_line_03[9] = new Array(1, 0, 0, 0, 0, 1, 9, 42, 6, 1, 98);
save_line_03[10] = new Array(14, 97, 1, 1, 1, 1, 10, 12, 6, 1, 13);
save_line_04 = new Array(11);
save_line_04[0] = new Array(0, 43, 0, 1, 0, 25, 0, 1, 0, 43, 0);
save_line_04[1] = new Array(2, 1, 2, 1, 0, 0, 0, 1, 2, 1, 2);
save_line_04[2] = new Array(0, 1, 0, 1, 1, 115, 1, 1, 0, 1, 0);
save_line_04[3] = new Array(0, 1, 44, 1, 48, 49, 48, 1, 44, 1, 0);
save_line_04[4] = new Array(42, 1, 11, 1, 9, 48, 9, 1, 11, 1, 42);
save_line_04[5] = new Array(42, 1, 11, 1, 1, 4, 1, 1, 11, 1, 42);
save_line_04[6] = new Array(41, 1, 0, 1, 46, 47, 46, 1, 0, 1, 41);
save_line_04[7] = new Array(0, 1, 0, 1, 10, 46, 10, 1, 0, 1, 0);
save_line_04[8] = new Array(0, 1, 0, 1, 1, 3, 1, 1, 0, 1, 0);
save_line_04[9] = new Array(98, 1, 0, 1, 6, 0, 6, 1, 0, 1, 97);
save_line_04[10] = new Array(13, 1, 0, 43, 0, 0, 0, 43, 0, 1, 14);
save_line_05 = new Array(11);
save_line_05[0] = new Array(36, 1, 11, 1, 12, 63, 0, 0, 63, 6, 7);
save_line_05[1] = new Array(0, 1, 10, 1, 63, 0, 0, 0, 0, 63, 6);
save_line_05[2] = new Array(48, 1, 0, 1, 45, 0, 1, 1, 2, 1, 1);
save_line_05[3] = new Array(0, 2, 63, 1, 76, 45, 1, 0, 46, 45, 27);
save_line_05[4] = new Array(48, 1, 0, 1, 1, 1, 1, 0, 0, 0, 45);
save_line_05[5] = new Array(10, 1, 0, 0, 0, 42, 44, 0, 0, 0, 0);
save_line_05[6] = new Array(9, 1, 1, 43, 1, 1, 1, 1, 0, 0, 0);
save_line_05[7] = new Array(0, 26, 1, 43, 1, 0, 0, 0, 46, 47, 0);
save_line_05[8] = new Array(1, 1, 1, 42, 1, 2, 1, 3, 1, 2, 1);
save_line_05[9] = new Array(97, 0, 1, 0, 1, 42, 1, 9, 2, 98, 1);
save_line_05[10] = new Array(14, 0, 42, 0, 0, 0, 1, 6, 1, 13, 1);
save_line_06 = new Array(11);
save_line_06[0] = new Array(30, 56, 1, 9, 1, 6, 51, 39, 1, 12, 12);
save_line_06[1] = new Array(56, 6, 1, 10, 1, 0, 6, 51, 1, 65, 12);
save_line_06[2] = new Array(6, 49, 3, 0, 3, 49, 0, 6, 1, 0, 65);
save_line_06[3] = new Array(0, 0, 1, 47, 1, 0, 0, 0, 1, 66, 0);
save_line_06[4] = new Array(1, 1, 1, 4, 1, 1, 1, 1, 1, 2, 1);
save_line_06[5] = new Array(0, 0, 64, 0, 6, 6, 6, 0, 64, 0, 0);
save_line_06[6] = new Array(0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
save_line_06[7] = new Array(0, 1, 48, 2, 48, 0, 0, 0, 0, 0, 1);
save_line_06[8] = new Array(0, 1, 2, 1, 2, 1, 1, 1, 1, 3, 1);
save_line_06[9] = new Array(0, 1, 48, 1, 0, 0, 1, 1, 0, 97, 1);
save_line_06[10] = new Array(0, 0, 0, 1, 13, 98, 2, 2, 0, 14, 1);
save_line_07 = new Array(11);
save_line_07[0] = new Array(13, 98, 0, 0, 0, 0, 0, 0, 1, 1, 1);
save_line_07[1] = new Array(1, 1, 0, 49, 1, 3, 1, 56, 0, 1, 1);
save_line_07[2] = new Array(1, 0, 49, 9, 1, 50, 1, 10, 56, 0, 1);
save_line_07[3] = new Array(0, 0, 1, 1, 1, 15, 1, 1, 1, 0, 0);
save_line_07[4] = new Array(0, 0, 3, 50, 115, 32, 15, 50, 3, 0, 0);
save_line_07[5] = new Array(0, 1, 1, 1, 1, 15, 1, 1, 1, 1, 0);
save_line_07[6] = new Array(0, 1, 11, 10, 1, 50, 1, 9, 11, 1, 0);
save_line_07[7] = new Array(0, 1, 6, 11, 1, 3, 1, 11, 6, 1, 0);
save_line_07[8] = new Array(0, 1, 1, 7, 7, 12, 7, 7, 1, 1, 0);
save_line_07[9] = new Array(0, 0, 1, 1, 1, 4, 1, 1, 1, 0, 0);
save_line_07[10] = new Array(1, 0, 0, 2, 14, 97, 0, 2, 0, 0, 1);
save_line_08 = new Array(11);
save_line_08[0] = new Array(14, 1, 0, 0, 0, 0, 1, 0, 6, 56, 0);
save_line_08[1] = new Array(97, 1, 0, 1, 1, 2, 1, 2, 1, 1, 0);
save_line_08[2] = new Array(0, 1, 0, 1, 0, 0, 3, 0, 0, 1, 10);
save_line_08[3] = new Array(0, 1, 0, 1, 60, 1, 1, 1, 48, 1, 43);
save_line_08[4] = new Array(48, 1, 0, 1, 11, 1, 13, 98, 0, 1, 43);
save_line_08[5] = new Array(49, 1, 9, 1, 11, 1, 1, 1, 1, 1, 0);
save_line_08[6] = new Array(48, 1, 43, 1, 0, 0, 0, 1, 0, 49, 0);
save_line_08[7] = new Array(0, 1, 43, 1, 1, 1, 47, 1, 2, 1, 1);
save_line_08[8] = new Array(0, 1, 0, 56, 0, 1, 56, 1, 0, 0, 0);
save_line_08[9] = new Array(0, 1, 1, 1, 2, 1, 0, 1, 1, 1, 0);
save_line_08[10] = new Array(0, 0, 60, 0, 0, 1, 0, 51, 50, 51, 0);
save_line_09 = new Array(11);
save_line_09[0] = new Array(35, 6, 0, 1, 1, 1, 0, 0, 0, 1, 0);
save_line_09[1] = new Array(6, 0, 66, 2, 0, 0, 0, 1, 0, 2, 56);
save_line_09[2] = new Array(1, 2, 1, 1, 0, 1, 1, 1, 0, 1, 6);
save_line_09[3] = new Array(0, 0, 0, 1, 0, 1, 97, 0, 0, 1, 6);
save_line_09[4] = new Array(0, 0, 0, 4, 0, 1, 14, 1, 0, 1, 11);
save_line_09[5] = new Array(1, 3, 1, 1, 0, 1, 1, 1, 0, 1, 1);
save_line_09[6] = new Array(9, 52, 10, 1, 60, 1, 13, 1, 0, 1, 11);
save_line_09[7] = new Array(1, 2, 1, 1, 0, 0, 98, 2, 0, 1, 6);
save_line_09[8] = new Array(56, 11, 56, 1, 1, 3, 1, 1, 0, 1, 6);
save_line_09[9] = new Array(7, 56, 11, 1, 65, 60, 65, 1, 0, 2, 56);
save_line_09[10] = new Array(72, 7, 56, 2, 12, 65, 12, 1, 0, 1, 0);
save_line_10 = new Array(11);
save_line_10[0] = new Array(0, 1, 1, 9, 66, 1, 66, 10, 1, 1, 0);
save_line_10[1] = new Array(0, 0, 1, 1, 2, 1, 2, 1, 1, 0, 65);
save_line_10[2] = new Array(0, 0, 0, 0, 0, 1, 0, 0, 0, 65, 12);
save_line_10[3] = new Array(0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1);
save_line_10[4] = new Array(48, 1, 0, 0, 6, 6, 6, 0, 0, 1, 6);
save_line_10[5] = new Array(49, 1, 0, 1, 1, 1, 1, 2, 1, 1, 6);
save_line_10[6] = new Array(48, 1, 0, 115, 97, 14, 1, 0, 2, 49, 0);
save_line_10[7] = new Array(0, 1, 1, 1, 1, 1, 1, 2, 1, 1, 0);
save_line_10[8] = new Array(0, 1, 11, 9, 10, 1, 0, 49, 0, 1, 6);
save_line_10[9] = new Array(98, 1, 11, 9, 10, 4, 60, 1, 60, 1, 6);
save_line_10[10] = new Array(13, 1, 11, 9, 10, 1, 7, 1, 7, 1, 11);
save_line_11 = new Array(11);
save_line_11[0] = new Array(11, 1, 6, 1, 7, 1, 8, 1, 12, 77, 12);
save_line_11[1] = new Array(11, 1, 6, 1, 7, 1, 8, 1, 47, 47, 47);
save_line_11[2] = new Array(11, 1, 6, 1, 7, 1, 8, 1, 0, 47, 0);
save_line_11[3] = new Array(2, 1, 2, 1, 2, 1, 2, 1, 1, 3, 1);
save_line_11[4] = new Array(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);
save_line_11[5] = new Array(2, 1, 1, 3, 1, 1, 1, 3, 1, 1, 2);
save_line_11[6] = new Array(9, 1, 0, 68, 12, 67, 12, 68, 0, 1, 10);
save_line_11[7] = new Array(9, 1, 66, 1, 1, 1, 1, 1, 66, 1, 10);
save_line_11[8] = new Array(9, 1, 66, 1, 23, 22, 21, 1, 66, 1, 10);
save_line_11[9] = new Array(1, 1, 4, 1, 11, 0, 11, 1, 4, 1, 1);
save_line_11[10] = new Array(14, 97, 0, 0, 0, 0, 0, 0, 0, 98, 13);
save_line_12 = new Array(11);
save_line_12[0] = new Array(27, 9, 1, 0, 54, 55, 54, 0, 1, 12, 38);
save_line_12[1] = new Array(10, 0, 1, 0, 1, 2, 1, 0, 1, 0, 12);
save_line_12[2] = new Array(0, 0, 1, 0, 1, 55, 1, 0, 1, 0, 0);
save_line_12[3] = new Array(0, 67, 1, 0, 1, 6, 1, 0, 1, 58, 0);
save_line_12[4] = new Array(67, 61, 1, 0, 1, 6, 1, 0, 1, 57, 58);
save_line_12[5] = new Array(1, 3, 1, 0, 1, 11, 1, 0, 1, 3, 1);
save_line_12[6] = new Array(0, 0, 0, 0, 1, 11, 1, 0, 0, 0, 0);
save_line_12[7] = new Array(1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1);
save_line_12[8] = new Array(9, 67, 2, 68, 68, 69, 68, 68, 2, 67, 10);
save_line_12[9] = new Array(1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1);
save_line_12[10] = new Array(13, 98, 0, 0, 0, 0, 0, 0, 0, 97, 14);
save_line_13 = new Array(11);
save_line_13[0] = new Array(0, 67, 0, 0, 0, 0, 0, 1, 0, 61, 0);
save_line_13[1] = new Array(0, 1, 1, 1, 1, 1, 2, 1, 0, 1, 0);
save_line_13[2] = new Array(0, 1, 0, 0, 68, 0, 0, 1, 0, 1, 0);
save_line_13[3] = new Array(12, 1, 4, 1, 1, 1, 0, 1, 0, 1, 0);
save_line_13[4] = new Array(54, 1, 0, 0, 61, 1, 68, 1, 10, 1, 0);
save_line_13[5] = new Array(55, 1, 0, 62, 15, 1, 69, 1, 10, 1, 0);
save_line_13[6] = new Array(54, 1, 61, 115, 26, 1, 68, 1, 10, 1, 9);
save_line_13[7] = new Array(0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 9);
save_line_13[8] = new Array(0, 54, 0, 1, 0, 0, 0, 61, 0, 1, 9);
save_line_13[9] = new Array(1, 1, 0, 1, 12, 1, 1, 1, 1, 1, 0);
save_line_13[10] = new Array(14, 97, 0, 3, 98, 13, 1, 31, 62, 2, 0);
save_line_14 = new Array(11);
save_line_14[0] = new Array(1, 0, 58, 36, 13, 98, 0, 0, 0, 0, 1);
save_line_14[1] = new Array(1, 0, 12, 1, 1, 1, 1, 1, 12, 0, 1);
save_line_14[2] = new Array(1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1);
save_line_14[3] = new Array(1, 0, 1, 1, 1, 33, 1, 1, 1, 0, 1);
save_line_14[4] = new Array(1, 0, 1, 1, 1, 115, 1, 1, 1, 0, 1);
save_line_14[5] = new Array(1, 0, 11, 1, 1, 61, 1, 1, 11, 0, 1);
save_line_14[6] = new Array(1, 0, 20, 20, 1, 62, 1, 20, 20, 0, 1);
save_line_14[7] = new Array(1, 0, 20, 20, 1, 61, 1, 20, 20, 0, 1);
save_line_14[8] = new Array(1, 0, 20, 20, 1, 3, 1, 20, 20, 0, 1);
save_line_14[9] = new Array(1, 68, 69, 68, 3, 97, 3, 68, 69, 68, 1);
save_line_14[10] = new Array(1, 1, 1, 1, 1, 14, 1, 1, 1, 1, 1);
save_line_15 = new Array(11);
save_line_15[0] = new Array(0, 0, 0, 97, 14, 20, 13, 98, 0, 0, 0);
save_line_15[1] = new Array(0, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0);
save_line_15[2] = new Array(0, 20, 20, 1, 1, 1, 1, 1, 20, 20, 0);
save_line_15[3] = new Array(0, 20, 1, 1, 26, 1, 27, 1, 1, 20, 0);
save_line_15[4] = new Array(0, 20, 1, 1, 9, 1, 9, 1, 1, 20, 0);
save_line_15[5] = new Array(0, 20, 1, 1, 10, 1, 10, 1, 1, 20, 0);
save_line_15[6] = new Array(0, 20, 20, 1, 0, 1, 0, 1, 20, 20, 0);
save_line_15[7] = new Array(0, 20, 20, 1, 2, 1, 2, 1, 20, 20, 0);
save_line_15[8] = new Array(0, 20, 20, 20, 0, 0, 0, 20, 20, 20, 0);
save_line_15[9] = new Array(0, 20, 20, 20, 20, 4, 20, 20, 20, 20, 0);
save_line_15[10] = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
save_line_16 = new Array(11);
save_line_16[0] = new Array(20, 20, 20, 20, 20, 97, 14, 20, 20, 20, 20);
save_line_16[1] = new Array(20, 20, 20, 20, 20, 0, 20, 20, 20, 20, 20);
save_line_16[2] = new Array(20, 20, 20, 20, 20, 0, 20, 20, 20, 20, 20);
save_line_16[3] = new Array(20, 20, 20, 20, 1, 4, 1, 20, 20, 20, 20);
save_line_16[4] = new Array(20, 20, 20, 1, 1, 119, 1, 1, 20, 20, 20);
save_line_16[5] = new Array(20, 20, 20, 1, 1, 53, 1, 1, 20, 20, 20);
save_line_16[6] = new Array(20, 20, 20, 1, 1, 98, 1, 1, 20, 20, 20);
save_line_16[7] = new Array(20, 20, 20, 1, 1, 13, 1, 1, 20, 20, 20);
save_line_16[8] = new Array(20, 20, 20, 20, 1, 1, 1, 20, 20, 20, 20);
save_line_16[9] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_16[10] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_17 = new Array(11);
save_line_17[0] = new Array(20, 58, 62, 0, 0, 0, 0, 0, 0, 0, 58);
save_line_17[1] = new Array(20, 62, 20, 20, 20, 20, 20, 20, 20, 20, 0);
save_line_17[2] = new Array(20, 0, 20, 58, 0, 0, 0, 0, 0, 0, 58);
save_line_17[3] = new Array(20, 0, 20, 0, 20, 20, 20, 20, 20, 20, 20);
save_line_17[4] = new Array(20, 0, 20, 0, 20, 58, 0, 0, 0, 58, 20);
save_line_17[5] = new Array(20, 0, 20, 58, 0, 0, 20, 20, 20, 0, 20);
save_line_17[6] = new Array(20, 0, 20, 20, 20, 20, 20, 58, 0, 58, 20);
save_line_17[7] = new Array(20, 62, 20, 20, 20, 14, 20, 0, 20, 20, 20);
save_line_17[8] = new Array(20, 58, 62, 0, 70, 97, 20, 58, 0, 0, 58);
save_line_17[9] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0);
save_line_17[10] = new Array(13, 98, 70, 0, 0, 0, 0, 0, 0, 0, 58);
save_line_18 = new Array(11);
save_line_18[0] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_18[1] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_18[2] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_18[3] = new Array(20, 20, 20, 20, 1, 1, 1, 20, 20, 20, 20);
save_line_18[4] = new Array(20, 20, 20, 1, 1, 28, 1, 1, 20, 20, 20);
save_line_18[5] = new Array(20, 20, 20, 1, 1, 115, 1, 1, 20, 20, 20);
save_line_18[6] = new Array(20, 20, 20, 1, 1, 4, 1, 1, 20, 20, 20);
save_line_18[7] = new Array(20, 20, 20, 20, 1, 4, 1, 20, 20, 20, 20);
save_line_18[8] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_18[9] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_18[10] = new Array(14, 97, 0, 0, 0, 0, 0, 0, 0, 98, 0);
save_line_19 = new Array(11);
save_line_19[0] = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
save_line_19[1] = new Array(0, 20, 0, 20, 20, 20, 20, 20, 0, 20, 0);
save_line_19[2] = new Array(0, 20, 0, 20, 20, 20, 20, 20, 0, 20, 0);
save_line_19[3] = new Array(0, 20, 0, 20, 20, 13, 20, 20, 0, 20, 0);
save_line_19[4] = new Array(0, 20, 0, 20, 20, 98, 20, 20, 0, 20, 0);
save_line_19[5] = new Array(0, 20, 53, 20, 20, 0, 20, 20, 53, 20, 0);
save_line_19[6] = new Array(0, 20, 115, 20, 20, 59, 20, 20, 115, 20, 0);
save_line_19[7] = new Array(0, 20, 75, 20, 20, 129, 20, 20, 80, 20, 0);
save_line_19[8] = new Array(0, 20, 20, 20, 20, 0, 20, 20, 20, 20, 0);
save_line_19[9] = new Array(0, 20, 20, 20, 20, 0, 20, 20, 20, 20, 0);
save_line_19[10] = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 14);
save_line_20 = new Array(11);
save_line_20[0] = new Array(70, 10, 50, 11, 62, 8, 62, 11, 50, 10, 70);
save_line_20[1] = new Array(12, 20, 6, 20, 7, 20, 7, 20, 6, 20, 12);
save_line_20[2] = new Array(20, 9, 50, 0, 58, 0, 58, 0, 50, 9, 20);
save_line_20[3] = new Array(11, 20, 6, 20, 0, 14, 0, 20, 6, 20, 11);
save_line_20[4] = new Array(62, 7, 58, 0, 0, 97, 0, 0, 58, 7, 62);
save_line_20[5] = new Array(8, 20, 0, 20, 0, 20, 0, 20, 0, 20, 8);
save_line_20[6] = new Array(62, 7, 58, 0, 0, 98, 0, 0, 58, 7, 62);
save_line_20[7] = new Array(11, 20, 6, 20, 0, 13, 0, 20, 6, 20, 11);
save_line_20[8] = new Array(20, 9, 50, 0, 58, 0, 58, 0, 50, 9, 20);
save_line_20[9] = new Array(12, 20, 6, 20, 7, 20, 7, 20, 6, 20, 12);
save_line_20[10] = new Array(70, 10, 50, 11, 62, 8, 62, 11, 50, 10, 70);
save_line_21 = new Array(11);
save_line_21[0] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_21[1] = new Array(20, 20, 0, 0, 20, 59, 20, 0, 0, 20, 20);
save_line_21[2] = new Array(20, 0, 0, 20, 20, 57, 20, 20, 0, 0, 20);
save_line_21[3] = new Array(20, 0, 0, 0, 20, 57, 20, 0, 0, 0, 20);
save_line_21[4] = new Array(20, 20, 0, 0, 0, 0, 0, 0, 0, 20, 20);
save_line_21[5] = new Array(20, 20, 0, 0, 0, 97, 0, 0, 0, 20, 20);
save_line_21[6] = new Array(20, 20, 20, 0, 0, 20, 0, 0, 20, 20, 20);
save_line_21[7] = new Array(20, 20, 20, 20, 15, 14, 15, 20, 20, 20, 20);
save_line_21[8] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_21[9] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_21[10] = new Array(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);
save_line_22 = new Array(11);
save_line_22[0] = new Array(20, 20, 20, 20, 20, 14, 20, 20, 20, 20, 20);
save_line_22[1] = new Array(20, 20, 20, 20, 20, 97, 20, 20, 20, 20, 20);
save_line_22[2] = new Array(20, 20, 20, 20, 0, 0, 24, 20, 20, 20, 20);
save_line_22[3] = new Array(15, 15, 15, 20, 20, 4, 20, 20, 15, 15, 15);
save_line_22[4] = new Array(10, 10, 15, 20, 20, 39, 20, 20, 15, 9, 9);
save_line_22[5] = new Array(13, 10, 58, 4, 39, 98, 39, 4, 58, 9, 13);
save_line_22[6] = new Array(10, 10, 15, 20, 20, 39, 20, 20, 15, 9, 9);
save_line_22[7] = new Array(15, 15, 15, 20, 20, 4, 20, 20, 15, 15, 15);
save_line_22[8] = new Array(20, 20, 20, 15, 15, 58, 15, 15, 20, 20, 20);
save_line_22[9] = new Array(20, 20, 20, 15, 12, 12, 12, 15, 20, 20, 20);
save_line_22[10] = new Array(20, 20, 20, 15, 12, 13, 12, 15, 20, 20, 20);
save_line_23 = new Array(11);
save_line_23[0] = new Array(58, 0, 0, 10, 10, 10, 0, 0, 20, 0, 12);
save_line_23[1] = new Array(0, 20, 20, 20, 20, 20, 20, 0, 3, 0, 20);
save_line_23[2] = new Array(10, 20, 20, 57, 58, 58, 58, 0, 20, 0, 20);
save_line_23[3] = new Array(10, 20, 20, 30, 20, 20, 20, 20, 20, 0, 20);
save_line_23[4] = new Array(0, 57, 20, 20, 20, 20, 20, 20, 39, 0, 20);
save_line_23[5] = new Array(20, 4, 139, 59, 202, 20, 20, 39, 3, 97, 14);
save_line_23[6] = new Array(0, 57, 20, 20, 20, 20, 20, 20, 39, 0, 20);
save_line_23[7] = new Array(10, 20, 20, 30, 20, 20, 20, 20, 20, 0, 20);
save_line_23[8] = new Array(10, 20, 20, 57, 58, 58, 58, 0, 20, 0, 20);
save_line_23[9] = new Array(0, 20, 20, 20, 20, 20, 20, 0, 3, 0, 20);
save_line_23[10] = new Array(58, 0, 0, 10, 10, 10, 0, 0, 20, 0, 12);
save_line_24 = new Array(11);
save_line_24[0] = new Array(12, 20, 20, 20, 20, 14, 20, 20, 20, 20, 12);
save_line_24[1] = new Array(0, 0, 0, 0, 0, 97, 0, 0, 0, 0, 0);
save_line_24[2] = new Array(20, 3, 20, 20, 36, 3, 36, 20, 20, 3, 20);
save_line_24[3] = new Array(0, 0, 0, 20, 20, 36, 20, 20, 0, 0, 0);
save_line_24[4] = new Array(0, 20, 58, 20, 20, 20, 20, 20, 58, 20, 0);
save_line_24[5] = new Array(0, 20, 58, 20, 20, 20, 20, 20, 58, 20, 0);
save_line_24[6] = new Array(11, 20, 58, 20, 20, 5, 20, 20, 58, 20, 11);
save_line_24[7] = new Array(11, 20, 57, 31, 20, 59, 20, 31, 57, 20, 11);
save_line_24[8] = new Array(11, 20, 20, 20, 20, 149, 20, 20, 20, 20, 11);
save_line_24[9] = new Array(0, 20, 20, 20, 57, 4, 57, 20, 20, 20, 0);
save_line_24[10] = new Array(58, 0, 12, 12, 0, 20, 0, 12, 12, 0, 58);
save_line_25 = new Array(11);
save_line_25[0] = new Array(12, 0, 20, 0, 0, 0, 9, 9, 9, 0, 58);
save_line_25[1] = new Array(20, 0, 3, 0, 20, 20, 20, 20, 20, 20, 0);
save_line_25[2] = new Array(20, 0, 20, 0, 58, 58, 58, 57, 20, 20, 9);
save_line_25[3] = new Array(20, 0, 20, 20, 20, 20, 20, 30, 20, 20, 9);
save_line_25[4] = new Array(20, 0, 39, 20, 20, 20, 20, 20, 20, 57, 0);
save_line_25[5] = new Array(14, 97, 3, 39, 20, 20, 203, 59, 159, 4, 20);
save_line_25[6] = new Array(20, 0, 39, 20, 20, 20, 20, 20, 20, 57, 0);
save_line_25[7] = new Array(20, 0, 20, 20, 20, 20, 20, 30, 20, 20, 9);
save_line_25[8] = new Array(20, 0, 20, 0, 58, 58, 58, 57, 20, 20, 9);
save_line_25[9] = new Array(20, 0, 3, 0, 20, 20, 20, 20, 20, 20, 0);
save_line_25[10] = new Array(12, 0, 20, 0, 0, 0, 9, 9, 9, 0, 58);
save_line_26 = new Array(11);
save_line_26[0] = new Array(19, 19, 19, 15, 15, 15, 15, 15, 19, 19, 19);
save_line_26[1] = new Array(19, 19, 19, 15, 181, 182, 183, 15, 19, 19, 19);
save_line_26[2] = new Array(19, 19, 19, 15, 184, 185, 186, 15, 19, 19, 19);
save_line_26[3] = new Array(19, 19, 19, 15, 187, 188, 189, 15, 19, 19, 19);
save_line_26[4] = new Array(19, 19, 19, 15, 15, 0, 15, 15, 19, 19, 19);
save_line_26[5] = new Array(19, 12, 12, 12, 12, 57, 12, 12, 12, 12, 19);
save_line_26[6] = new Array(19, 19, 19, 19, 19, 58, 19, 19, 19, 19, 19);
save_line_26[7] = new Array(19, 19, 19, 30, 58, 59, 58, 30, 19, 19, 19);
save_line_26[8] = new Array(19, 19, 19, 19, 19, 58, 19, 19, 19, 19, 19);
save_line_26[9] = new Array(19, 19, 19, 19, 12, 57, 12, 19, 19, 19, 19);
save_line_26[10] = new Array(19, 19, 19, 19, 19, 97, 19, 19, 19, 19, 19);
save_Display_kill = 0;
save_Display_buy = 0;
save_Display_update = 0;
save_Display_say = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
save_Display_text = 0;
save_Display_list = 0;
save_Display_lines = 0;
save_Display_other = 0;
save_Display_jump = 0;
save_My_lifes_up = 0;
save_My_lifes_down = 0;
save_Open_room = 0;
save_Now_line = 0;
save_Now_xid = 0;
save_Now_yid = 0;
save_list_flag = 0;
save_clean_flag = 0;
save_jump_flag = 0;
save_my_love = 0;
save_big_clean = 0;
save_Max_line = 0;
save_Now_life = 1;
save_Now_hp = 1000;
save_Now_gong = 10;
save_Now_fang = 10;
save_Now_money = 0;
save_Now_yellow = 0;
save_Now_blue = 0;
save_Now_red = 0;
save_Now_mp = 0;
save_Last_x = 0;
save_Last_y = 0;
save_Now_boss_id = 0;
save_Now_boss_x = 0;
save_Now_boss_y = 0;
save_mt_temp_x = 0;
save_mt_temp_y = 0;
save_Set_man_01 = 0;
save_Set_man_02 = 0;
save_Display_kills = 0;
save_mt_LastGame_ID = 1;
save_mt_GetMoney = new Array(0, 0, 0);
save_mt_runline = 0;
save_NowGameTime = 0;
save_TimeRunId = true;
save_mt_changes = 0;
save_boss_man = new Array(50);
save_boss_man[0] = new Array(50, 20, 1, 1, 1, "绿头怪");
save_boss_man[1] = new Array(70, 15, 2, 2, 2, "红头怪");
save_boss_man[2] = new Array(100, 20, 5, 3, 3, "小蝙蝠");
save_boss_man[4] = new Array(110, 25, 5, 5, 4, "骷髅人");
save_boss_man[3] = new Array(200, 35, 10, 5, 5, "青头怪");
save_boss_man[5] = new Array(150, 40, 20, 8, 6, "骷髅士兵");
save_boss_man[23] = new Array(125, 50, 25, 10, 7, "初级法师");
save_boss_man[8] = new Array(150, 65, 30, 10, 8, "大蝙蝠");
save_boss_man[6] = new Array(300, 75, 45, 13, 10, "兽面人");
save_boss_man[16] = new Array(400, 90, 50, 15, 12, "骷髅队长");
save_boss_man[25] = new Array(500, 115, 65, 15, 15, "石头怪人");
save_boss_man[20] = new Array(250, 120, 70, 20, 17, "麻衣法师");
save_boss_man[7] = new Array(450, 150, 90, 22, 19, "初级卫兵");
save_boss_man[9] = new Array(550, 160, 90, 25, 20, "红蝙蝠");
save_boss_man[24] = new Array(100, 200, 110, 30, 25, "高级法师");
save_boss_man[11] = new Array(700, 250, 125, 32, 30, "怪王");
save_boss_man[10] = new Array(1300, 300, 150, 40, 35, "白衣武士");
save_boss_man[14] = new Array(850, 350, 200, 45, 40, "金甲卫士");
save_boss_man[12] = new Array(500, 400, 260, 47, 45, "红衣法师");
save_boss_man[26] = new Array(900, 450, 330, 50, 50, "兽面武士");
save_boss_man[28] = new Array(1250, 500, 400, 55, 55, "冥卫兵");
save_boss_man[29] = new Array(1500, 560, 460, 60, 60, "高级卫兵");
save_boss_man[27] = new Array(1200, 620, 520, 65, 75, "双手剑士");
save_boss_man[21] = new Array(2000, 680, 590, 70, 65, "冥战士");
save_boss_man[15] = new Array(900, 750, 650, 77, 70, "金甲队长");
save_boss_man[17] = new Array(1500, 830, 730, 80, 70, "灵法师");
save_boss_man[22] = new Array(2500, 900, 850, 84, 75, "冥队长");
save_boss_man[18] = new Array(1200, 980, 900, 88, 75, "灵武士");
save_boss_man[30] = new Array(3100, 1150, 1050, 92, 80, "影子战士");
save_boss_man[13] = new Array(15000, 1000, 1000, 100, 100, "红衣魔王");
save_boss_man[19] = new Array(30000, 1600, 1400, 250, 220, "冥灵魔王");
save_boss_man[31] = new Array(75000, 4000, 3700, 0, 0, "血影");
save_boss_man[32] = new Array(99999, 9500, 3500, 0, 0, "魔龙");
stop ();

// [Action in Frame 4347]
stopAllSounds ();

// [Action in Frame 6038]
stopAllSounds ();

// [Action in Frame 9766]
fscommand("quit");
