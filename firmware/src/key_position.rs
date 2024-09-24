pub struct KeyPosition {
    pub row: usize,
    pub col: usize,
}

pub const ESC_KEY: KeyPosition = KeyPosition { row: 0, col: 0 };
pub const CAPS_KEY: KeyPosition = KeyPosition { row: 3, col: 0 };
pub const FN_KEY: KeyPosition = KeyPosition { row: 5, col: 3 };
