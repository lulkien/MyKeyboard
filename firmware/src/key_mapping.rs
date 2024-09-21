use crate::{
    key_codes::KeyCode::{self, *},
    NUM_COLS, NUM_ROWS,
};

#[rustfmt::skip]
pub const NORMAL_LAYER_MAPPING: [[KeyCode; NUM_COLS]; NUM_ROWS] = [
    [ Escape,      F1,      F2,     F3,     F4,     F5,     F6,     F7,     F8,     F9,      F10,         F11,       F12     ],
    [ Tilde,      Num1,    Num2,   Num3,   Num4,   Num5,   Num6,   Num7,   Num8,   Num9,     Num0,       Print,     Empty    ],
    [ Tab,         Q,       W,      E,      R,      T,      Y,      U,      I,      O,        P,         Minus,     Delete   ],
    [ CapsLock,    A,       S,      D,      F,      G,      H,      J,      K,      L,     Semicolon,    LBrace,    Equals   ],
    [ LShift,      Z,       X,      C,      V,      B,      N,      M,     Comma,  Period,   Slash,      Quote,     RBrace   ],
    [ LCtrl,     LSuper,   LAlt,    Fn,    Space,  Empty,  Empty,  Empty,  Empty,  RShift,   Enter,      BSlash,   Backspace ],
];

#[rustfmt::skip]
pub const FN_LAYER_MAPPING: [[KeyCode; NUM_COLS]; NUM_ROWS] = [
    [ Empty,     Empty,   Empty,   Empty,  Empty,  Empty,  Empty,  Empty,  Empty,  Empty,  VolumeMute,  VolumeUp,  VolumeUp  ],
    [ Empty,     Empty,   Empty,   Empty,  End,    Empty,  Home,   Empty,  Empty,  Empty,    Empty,      Empty,     Empty    ],
    [ Empty,     Empty,   Empty,   Empty,  Empty,  Empty,  Empty,  Empty,  Insert, Empty,    Empty,      Empty,     Empty    ],
    [ Empty,     Empty,   Empty,   Empty,  PgDn,   Empty,  Left,   Down,    Up,    Right,    Empty,      Empty,     Empty    ],
    [ Empty,     Empty,   Delete,  Empty,  Empty,  PgUp,   Empty,  Empty,  Empty,  Empty,    Empty,      Empty,     Empty    ],
    [ Empty,     Empty,   Empty,   Empty,  Empty,  Empty,  Empty,  Empty,  Empty,  Empty,    Empty,      Empty,     Empty    ],
];
