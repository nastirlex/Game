/// @description

draw_sprite(sTextbox, -1, 350, 25);
draw_set_font(fDialogName);
draw_text(685, 65, global.diagName);
draw_set_font(fDialogPhrase);
draw_text_ext(690, 90, string_copy(global.diagPhrase, 1, global.symbols), 30, 480);