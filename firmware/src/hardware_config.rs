/// The rate of polling of the keyboard itself in firmware.
pub const SCAN_LOOP_RATE_MS: u32 = 1;
/// The number of milliseconds to wait until a "key-off-then-key-on" in quick succession is allowed.
pub const DEBOUNCE_MS: u8 = 6;

pub const DEBOUNCE_TICKS: u8 = DEBOUNCE_MS / (SCAN_LOOP_RATE_MS as u8);

pub const NUM_COLS: usize = 13;
pub const NUM_ROWS: usize = 6;

pub const EXTERNAL_CRYSTAL_FREQUENCY_HZ: u32 = 12_000_000;
