// machine generated, do not edit

@_extern(c, "stm_setup")
func stm_setup()

func setup() {
    return stm_setup()
}
@_extern(c, "stm_now")
func stm_now() -> UInt64

func now() -> UInt64 {
    return stm_now()
}
@_extern(c, "stm_diff")
func stm_diff(_: UInt64, _: UInt64) -> UInt64

func diff(_ new_ticks: UInt64, _ old_ticks: UInt64) -> UInt64 {
    return stm_diff(new_ticks, old_ticks)
}
@_extern(c, "stm_since")
func stm_since(_: UInt64) -> UInt64

func since(_ start_ticks: UInt64) -> UInt64 {
    return stm_since(start_ticks)
}
@_extern(c, "stm_laptime")
func stm_laptime(_: UnsafeMutablePointer<UInt64>) -> UInt64

func laptime(_ last_time: UnsafeMutablePointer<UInt64>?) -> UInt64 {
    return stm_laptime(last_time)
}
@_extern(c, "stm_round_to_common_refresh_rate")
func stm_round_to_common_refresh_rate(_: UInt64) -> UInt64

func roundToCommonRefreshRate(_ frame_ticks: UInt64) -> UInt64 {
    return stm_round_to_common_refresh_rate(frame_ticks)
}
@_extern(c, "stm_sec")
func stm_sec(_: UInt64) -> Double

func sec(_ ticks: UInt64) -> Double {
    return stm_sec(ticks)
}
@_extern(c, "stm_ms")
func stm_ms(_: UInt64) -> Double

func ms(_ ticks: UInt64) -> Double {
    return stm_ms(ticks)
}
@_extern(c, "stm_us")
func stm_us(_: UInt64) -> Double

func us(_ ticks: UInt64) -> Double {
    return stm_us(ticks)
}
@_extern(c, "stm_ns")
func stm_ns(_: UInt64) -> Double

func ns(_ ticks: UInt64) -> Double {
    return stm_ns(ticks)
}
