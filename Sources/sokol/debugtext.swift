// machine generated, do not edit


@objc
enum LogItem : CUnsignedInt {
    case OK
    case MALLOC_FAILED
    case ADD_COMMIT_LISTENER_FAILED
    case COMMAND_BUFFER_FULL
    case CONTEXT_POOL_EXHAUSTED
    case CANNOT_DESTROY_DEFAULT_CONTEXT
}
struct Logger {
    var fn: (@convention(c) (UnsafePointer<CChar>?, UInt32, UInt32, UnsafePointer<CChar>?, UInt32, UnsafePointer<CChar>?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Context {
    var id: UInt32 = 0
}
struct Range {
    var ptr: UnsafeRawPointer? = nil
    var size: Int = 0
}
struct FontDesc {
    var data: Range = Range()
    var first_char: UInt8 = 0
    var last_char: UInt8 = 0
}
struct ContextDesc {
    var max_commands: CInt = 0
    var char_buf_size: CInt = 0
    var canvas_width: Float = 0.0
    var canvas_height: Float = 0.0
    var tab_width: CInt = 0
    var color_format: sg.PixelFormat = .DEFAULT
    var depth_format: sg.PixelFormat = .DEFAULT
    var sample_count: CInt = 0
}
struct Allocator {
    var alloc_fn: (@convention(c) (Int, UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)? = nil
    var free_fn: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Desc {
    var context_pool_size: CInt = 0
    var printf_buf_size: CInt = 0
    var fonts: [FontDesc] = Array(repeating: FontDesc(), count: 8)
    var context: ContextDesc = ContextDesc()
    var allocator: Allocator = Allocator()
    var logger: Logger = Logger()
}
@_extern(c, "sdtx_setup")
func sdtx_setup(_: UnsafeRawPointer?)

func setup(_ desc: UnsafePointer<Desc>?) {
    return sdtx_setup(UnsafePointer(desc))
}
@_extern(c, "sdtx_shutdown")
func sdtx_shutdown()

func shutdown() {
    return sdtx_shutdown()
}
@_extern(c, "sdtx_font_kc853")
func sdtx_font_kc853() -> OpaquePointer?

func fontKc853() -> OpaquePointer? {
    return sdtx_font_kc853()
}
@_extern(c, "sdtx_font_kc854")
func sdtx_font_kc854() -> OpaquePointer?

func fontKc854() -> OpaquePointer? {
    return sdtx_font_kc854()
}
@_extern(c, "sdtx_font_z1013")
func sdtx_font_z1013() -> OpaquePointer?

func fontZ1013() -> OpaquePointer? {
    return sdtx_font_z1013()
}
@_extern(c, "sdtx_font_cpc")
func sdtx_font_cpc() -> OpaquePointer?

func fontCpc() -> OpaquePointer? {
    return sdtx_font_cpc()
}
@_extern(c, "sdtx_font_c64")
func sdtx_font_c64() -> OpaquePointer?

func fontC64() -> OpaquePointer? {
    return sdtx_font_c64()
}
@_extern(c, "sdtx_font_oric")
func sdtx_font_oric() -> OpaquePointer?

func fontOric() -> OpaquePointer? {
    return sdtx_font_oric()
}
@_extern(c, "sdtx_make_context")
func sdtx_make_context(_: UnsafeRawPointer?) -> OpaquePointer?

func makeContext(_ desc: UnsafePointer<ContextDesc>?) -> OpaquePointer? {
    return sdtx_make_context(UnsafePointer(desc))
}
@_extern(c, "sdtx_destroy_context")
func sdtx_destroy_context(_: OpaquePointer?)

func destroyContext(_ ctx: OpaquePointer?) {
    return sdtx_destroy_context(ctx)
}
@_extern(c, "sdtx_set_context")
func sdtx_set_context(_: OpaquePointer?)

func setContext(_ ctx: OpaquePointer?) {
    return sdtx_set_context(ctx)
}
@_extern(c, "sdtx_get_context")
func sdtx_get_context() -> OpaquePointer?

func getContext() -> OpaquePointer? {
    return sdtx_get_context()
}
@_extern(c, "sdtx_default_context")
func sdtx_default_context() -> OpaquePointer?

func defaultContext() -> OpaquePointer? {
    return sdtx_default_context()
}
@_extern(c, "sdtx_draw")
func sdtx_draw()

func draw() {
    return sdtx_draw()
}
@_extern(c, "sdtx_context_draw")
func sdtx_context_draw(_: OpaquePointer?)

func contextDraw(_ ctx: OpaquePointer?) {
    return sdtx_context_draw(ctx)
}
@_extern(c, "sdtx_draw_layer")
func sdtx_draw_layer(_: CInt)

func drawLayer(_ layer_id: CInt) {
    return sdtx_draw_layer(layer_id)
}
@_extern(c, "sdtx_context_draw_layer")
func sdtx_context_draw_layer(_: OpaquePointer?, _: CInt)

func contextDrawLayer(_ ctx: OpaquePointer?, _ layer_id: CInt) {
    return sdtx_context_draw_layer(ctx, layer_id)
}
@_extern(c, "sdtx_layer")
func sdtx_layer(_: CInt)

func layer(_ layer_id: CInt) {
    return sdtx_layer(layer_id)
}
@_extern(c, "sdtx_font")
func sdtx_font(_: UInt32)

func font(_ font_index: UInt32) {
    return sdtx_font(font_index)
}
@_extern(c, "sdtx_canvas")
func sdtx_canvas(_: Float, _: Float)

func canvas(_ w: Float, _ h: Float) {
    return sdtx_canvas(w, h)
}
@_extern(c, "sdtx_origin")
func sdtx_origin(_: Float, _: Float)

func origin(_ x: Float, _ y: Float) {
    return sdtx_origin(x, y)
}
@_extern(c, "sdtx_home")
func sdtx_home()

func home() {
    return sdtx_home()
}
@_extern(c, "sdtx_pos")
func sdtx_pos(_: Float, _: Float)

func pos(_ x: Float, _ y: Float) {
    return sdtx_pos(x, y)
}
@_extern(c, "sdtx_pos_x")
func sdtx_pos_x(_: Float)

func posX(_ x: Float) {
    return sdtx_pos_x(x)
}
@_extern(c, "sdtx_pos_y")
func sdtx_pos_y(_: Float)

func posY(_ y: Float) {
    return sdtx_pos_y(y)
}
@_extern(c, "sdtx_move")
func sdtx_move(_: Float, _: Float)

func move(_ dx: Float, _ dy: Float) {
    return sdtx_move(dx, dy)
}
@_extern(c, "sdtx_move_x")
func sdtx_move_x(_: Float)

func moveX(_ dx: Float) {
    return sdtx_move_x(dx)
}
@_extern(c, "sdtx_move_y")
func sdtx_move_y(_: Float)

func moveY(_ dy: Float) {
    return sdtx_move_y(dy)
}
@_extern(c, "sdtx_crlf")
func sdtx_crlf()

func crlf() {
    return sdtx_crlf()
}
@_extern(c, "sdtx_color3b")
func sdtx_color3b(_: UInt8, _: UInt8, _: UInt8)

func color3b(_ r: UInt8, _ g: UInt8, _ b: UInt8) {
    return sdtx_color3b(r, g, b)
}
@_extern(c, "sdtx_color3f")
func sdtx_color3f(_: Float, _: Float, _: Float)

func color3f(_ r: Float, _ g: Float, _ b: Float) {
    return sdtx_color3f(r, g, b)
}
@_extern(c, "sdtx_color4b")
func sdtx_color4b(_: UInt8, _: UInt8, _: UInt8, _: UInt8)

func color4b(_ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) {
    return sdtx_color4b(r, g, b, a)
}
@_extern(c, "sdtx_color4f")
func sdtx_color4f(_: Float, _: Float, _: Float, _: Float)

func color4f(_ r: Float, _ g: Float, _ b: Float, _ a: Float) {
    return sdtx_color4f(r, g, b, a)
}
@_extern(c, "sdtx_color1i")
func sdtx_color1i(_: UInt32)

func color1i(_ rgba: UInt32) {
    return sdtx_color1i(rgba)
}
@_extern(c, "sdtx_putc")
func sdtx_putc(_: UInt8)

func putc(_ c: UInt8) {
    return sdtx_putc(c)
}
@_extern(c, "sdtx_puts")
func sdtx_puts(_: UnsafePointer<CChar>?)

func puts(_ str: UnsafePointer<CChar>?) {
    return sdtx_puts(str)
}
@_extern(c, "sdtx_putr")
func sdtx_putr(_: UnsafePointer<CChar>?, _: CInt)

func putr(_ str: UnsafePointer<CChar>?, _ len: CInt) {
    return sdtx_putr(str, len)
}
