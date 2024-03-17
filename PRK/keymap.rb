# Teihai64
# Author: alg
# Board : RP2040Zero

kbd = Keyboard.new

r0 =  1
r1 = 11
r2 = 10
r3 =  7
r4 =  8
c0 = 28
c1 = 27
c2 = 26
c3 = 15
c4 = 14
c5 = 13
c6 = 12

kbd.init_matrix_pins(
  [
    [ [r0, c0], [r0, c1], [r0, c2], [r0, c3], [r0, c4], [r0, c5], [r0, c6],   [c0, r0], [c1, r0], [c2, r0], [c3, r0], [c4, r0], [c5, r0], [c6, r0] ],
    [ [r1, c0], [r1, c1], [r1, c2], [r1, c3], [r1, c4], [r1, c5], [r1, c6],   [c0, r1], [c1, r1], [c2, r1], [c3, r1], [c4, r1], [c5, r1], [c6, r1] ],
    [ [r2, c0], [r2, c1], [r2, c2], [r2, c3], [r2, c4], [r2, c5], [r2, c6],   [c0, r2], [c1, r2], [c2, r2], [c3, r2], [c4, r2], nil,      [c6, r2] ],
    [ [r3, c0], [r3, c1], [r3, c2], [r3, c3], [r3, c4], [r3, c5], [r3, c6],   [c0, r3], [c1, r3], [c2, r3], [c3, r3], nil,      [c5, r3], [c6, r3] ],
    [ [r4, c0], [r4, c1], [r4, c2], [r4, c3], nil,      [r4, c5], nil,        [c0, r4], nil,      [c2, r4], [c3, r4], nil,      [c5, r4], [c6, r4] ]
  ]
)

kbd.add_layer :default, %i(
  KC_GRAVE KC_1     KC_2     KC_3     KC_4     KC_5     KC_6       KC_7     KC_8     KC_9     KC_0     KC_MINUS KC_EQUAL KC_BSPACE
  KC_TAB   KC_Q     KC_W     KC_E     KC_R     KC_T     KC_Y       KC_U     KC_I     KC_O     KC_P     KC_LBRC  KC_RBRC  KC_BSLASH
  KC_CAPS  KC_A     KC_S     KC_D     KC_F     KC_G     KC_H       KC_J     KC_K     KC_L     KC_SCOLON KC_QUOT          KC_ENTER
  KC_LSFT  KC_Z     KC_X     KC_C     KC_V     KC_B     KC_N       KC_M     KC_COMMA KC_DOT   KC_SLASH          KC_RSFT  KC_RSFT
  KC_LCTL  KC_LGUI  KC_LALT  KC_SPACE          KC_SPACE            KC_SPACE          KC_RALT  KC_RGUI           KC_M     KC_RCTL
)
kbd.add_layer :layer1, %i(
  KC_GRAVE KC_1     KC_2     KC_3     KC_4     KC_5     KC_6       KC_7     KC_8     KC_9     KC_0     KC_MINUS KC_EQUAL KC_BSPACE
  KC_TAB   KC_Q     KC_W     KC_E     KC_R     KC_T     KC_Y       KC_U     KC_I     KC_O     KC_P     KC_LBRC  KC_RBRC  KC_BSLASH
  KC_CAPS  KC_A     KC_S     KC_D     KC_F     KC_G     KC_H       KC_J     KC_K     KC_L     KC_SCOLON KC_QUOT          KC_ENTER
  KC_LSFT  KC_Z     KC_X     KC_C     KC_V     KC_B     KC_N       KC_M     KC_COMMA KC_DOT   KC_SLASH          KC_RSFT  KC_RSFT
  KC_LCTL  KC_LGUI  KC_LALT  KC_SPACE          KC_SPACE            KC_SPACE          KC_RALT  KC_RGUI           KC_MENU  KC_RCTL
)
kbd.add_layer :layer2, %i(
  KC_GRAVE KC_1     KC_2     KC_3     KC_4     KC_5     KC_6       KC_7     KC_8     KC_9     KC_0     KC_MINUS KC_EQUAL KC_BSPACE
  KC_TAB   KC_Q     KC_W     KC_E     KC_R     KC_T     KC_Y       KC_U     KC_I     KC_O     KC_P     KC_LBRC  KC_RBRC  KC_BSLASH
  KC_CAPS  KC_A     KC_S     KC_D     KC_F     KC_G     KC_H       KC_J     KC_K     KC_L     KC_SCOLON KC_QUOT          KC_ENTER
  KC_LSFT  KC_Z     KC_X     KC_C     KC_V     KC_B     KC_N       KC_M     KC_COMMA KC_DOT   KC_SLASH          KC_RSFT  KC_RSFT
  KC_LCTL  KC_LGUI  KC_LALT  KC_SPACE          KC_SPACE            KC_SPACE          KC_RALT  KC_RGUI           KC_MENU  KC_RCTL
)

kbd.start!
