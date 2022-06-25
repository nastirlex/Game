/// @description

draw_sprite(sTextbox, -1, 350, 30);
draw_set_font(fDialogName);
draw_text(685, 70, global.diagName);
draw_set_font(fDialogPhrase);
draw_text_ext(690, 95, string_copy(global.diagPhrase, 1, global.symbols), 30, 480);