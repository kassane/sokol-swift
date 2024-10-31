// machine generated, do not edit

let max_touchpoints = 8
let max_mousebuttons = 3
let max_keycodes = 512
let max_iconimages = 8
enum EventType : UInt32 {
    case INVALID
    case KEY_DOWN
    case KEY_UP
    case CHAR
    case MOUSE_DOWN
    case MOUSE_UP
    case MOUSE_SCROLL
    case MOUSE_MOVE
    case MOUSE_ENTER
    case MOUSE_LEAVE
    case TOUCHES_BEGAN
    case TOUCHES_MOVED
    case TOUCHES_ENDED
    case TOUCHES_CANCELLED
    case RESIZED
    case ICONIFIED
    case RESTORED
    case FOCUSED
    case UNFOCUSED
    case SUSPENDED
    case RESUMED
    case QUIT_REQUESTED
    case CLIPBOARD_PASTED
    case FILES_DROPPED
    case NUM
    case FORCE_U32 = 2147483647
}
enum Keycode : UInt32 {
    case INVALID = 0
    case SPACE = 32
    case APOSTROPHE = 39
    case COMMA = 44
    case MINUS = 45
    case PERIOD = 46
    case SLASH = 47
    case _0 = 48
    case _1 = 49
    case _2 = 50
    case _3 = 51
    case _4 = 52
    case _5 = 53
    case _6 = 54
    case _7 = 55
    case _8 = 56
    case _9 = 57
    case SEMICOLON = 59
    case EQUAL = 61
    case A = 65
    case B = 66
    case C = 67
    case D = 68
    case E = 69
    case F = 70
    case G = 71
    case H = 72
    case I = 73
    case J = 74
    case K = 75
    case L = 76
    case M = 77
    case N = 78
    case O = 79
    case P = 80
    case Q = 81
    case R = 82
    case S = 83
    case T = 84
    case U = 85
    case V = 86
    case W = 87
    case X = 88
    case Y = 89
    case Z = 90
    case LEFT_BRACKET = 91
    case BACKSLASH = 92
    case RIGHT_BRACKET = 93
    case GRAVE_ACCENT = 96
    case WORLD_1 = 161
    case WORLD_2 = 162
    case ESCAPE = 256
    case ENTER = 257
    case TAB = 258
    case BACKSPACE = 259
    case INSERT = 260
    case DELETE = 261
    case RIGHT = 262
    case LEFT = 263
    case DOWN = 264
    case UP = 265
    case PAGE_UP = 266
    case PAGE_DOWN = 267
    case HOME = 268
    case END = 269
    case CAPS_LOCK = 280
    case SCROLL_LOCK = 281
    case NUM_LOCK = 282
    case PRINT_SCREEN = 283
    case PAUSE = 284
    case F1 = 290
    case F2 = 291
    case F3 = 292
    case F4 = 293
    case F5 = 294
    case F6 = 295
    case F7 = 296
    case F8 = 297
    case F9 = 298
    case F10 = 299
    case F11 = 300
    case F12 = 301
    case F13 = 302
    case F14 = 303
    case F15 = 304
    case F16 = 305
    case F17 = 306
    case F18 = 307
    case F19 = 308
    case F20 = 309
    case F21 = 310
    case F22 = 311
    case F23 = 312
    case F24 = 313
    case F25 = 314
    case KP_0 = 320
    case KP_1 = 321
    case KP_2 = 322
    case KP_3 = 323
    case KP_4 = 324
    case KP_5 = 325
    case KP_6 = 326
    case KP_7 = 327
    case KP_8 = 328
    case KP_9 = 329
    case KP_DECIMAL = 330
    case KP_DIVIDE = 331
    case KP_MULTIPLY = 332
    case KP_SUBTRACT = 333
    case KP_ADD = 334
    case KP_ENTER = 335
    case KP_EQUAL = 336
    case LEFT_SHIFT = 340
    case LEFT_CONTROL = 341
    case LEFT_ALT = 342
    case LEFT_SUPER = 343
    case RIGHT_SHIFT = 344
    case RIGHT_CONTROL = 345
    case RIGHT_ALT = 346
    case RIGHT_SUPER = 347
    case MENU = 348
}
enum AndroidTooltype : UInt32 {
    case UNKNOWN = 0
    case FINGER = 1
    case STYLUS = 2
    case MOUSE = 3
}
struct Touchpoint {
    var identifier: UInt = 0
    var pos_x: Float = 0.0
    var pos_y: Float = 0.0
    var android_tooltype: AndroidTooltype = .UNKNOWN
    var changed: Bool = false
}
enum Mousebutton : UInt32 {
    case LEFT = 0
    case RIGHT = 1
    case MIDDLE = 2
    case INVALID = 256
}
let modifier_shift = 1
let modifier_ctrl = 2
let modifier_alt = 4
let modifier_super = 8
let modifier_lmb = 256
let modifier_rmb = 512
let modifier_mmb = 1024
struct Event {
    var frame_count: UInt64 = 0
    var type: EventType = .INVALID
    var key_code: Keycode = .INVALID
    var char_code: UInt32 = 0
    var key_repeat: Bool = false
    var modifiers: UInt32 = 0
    var mouse_button: Mousebutton = .LEFT
    var mouse_x: Float = 0.0
    var mouse_y: Float = 0.0
    var mouse_dx: Float = 0.0
    var mouse_dy: Float = 0.0
    var scroll_x: Float = 0.0
    var scroll_y: Float = 0.0
    var num_touches: CInt = 0
    var touches: [Touchpoint] = Array(repeating: Touchpoint(), count: 8)
    var window_width: CInt = 0
    var window_height: CInt = 0
    var framebuffer_width: CInt = 0
    var framebuffer_height: CInt = 0
}
struct Range {
    var ptr: UnsafeRawPointer? = nil
    var size: UInt = 0
}
struct ImageDesc {
    var width: CInt = 0
    var height: CInt = 0
    var pixels: Range = Range()
}
struct IconDesc {
    var sokol_default: Bool = false
    var images: [ImageDesc] = Array(repeating: ImageDesc(), count: 8)
}
struct Allocator {
    var alloc_fn: (@convention(c) (UInt, UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)? = nil
    var free_fn: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
enum LogItem : UInt32 {
    case OK
    case MALLOC_FAILED
    case MACOS_INVALID_NSOPENGL_PROFILE
    case WIN32_LOAD_OPENGL32_DLL_FAILED
    case WIN32_CREATE_HELPER_WINDOW_FAILED
    case WIN32_HELPER_WINDOW_GETDC_FAILED
    case WIN32_DUMMY_CONTEXT_SET_PIXELFORMAT_FAILED
    case WIN32_CREATE_DUMMY_CONTEXT_FAILED
    case WIN32_DUMMY_CONTEXT_MAKE_CURRENT_FAILED
    case WIN32_GET_PIXELFORMAT_ATTRIB_FAILED
    case WIN32_WGL_FIND_PIXELFORMAT_FAILED
    case WIN32_WGL_DESCRIBE_PIXELFORMAT_FAILED
    case WIN32_WGL_SET_PIXELFORMAT_FAILED
    case WIN32_WGL_ARB_CREATE_CONTEXT_REQUIRED
    case WIN32_WGL_ARB_CREATE_CONTEXT_PROFILE_REQUIRED
    case WIN32_WGL_OPENGL_VERSION_NOT_SUPPORTED
    case WIN32_WGL_OPENGL_PROFILE_NOT_SUPPORTED
    case WIN32_WGL_INCOMPATIBLE_DEVICE_CONTEXT
    case WIN32_WGL_CREATE_CONTEXT_ATTRIBS_FAILED_OTHER
    case WIN32_D3D11_CREATE_DEVICE_AND_SWAPCHAIN_WITH_DEBUG_FAILED
    case WIN32_D3D11_GET_IDXGIFACTORY_FAILED
    case WIN32_D3D11_GET_IDXGIADAPTER_FAILED
    case WIN32_D3D11_QUERY_INTERFACE_IDXGIDEVICE1_FAILED
    case WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_LOCK
    case WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_UNLOCK
    case WIN32_GET_RAW_INPUT_DATA_FAILED
    case LINUX_GLX_LOAD_LIBGL_FAILED
    case LINUX_GLX_LOAD_ENTRY_POINTS_FAILED
    case LINUX_GLX_EXTENSION_NOT_FOUND
    case LINUX_GLX_QUERY_VERSION_FAILED
    case LINUX_GLX_VERSION_TOO_LOW
    case LINUX_GLX_NO_GLXFBCONFIGS
    case LINUX_GLX_NO_SUITABLE_GLXFBCONFIG
    case LINUX_GLX_GET_VISUAL_FROM_FBCONFIG_FAILED
    case LINUX_GLX_REQUIRED_EXTENSIONS_MISSING
    case LINUX_GLX_CREATE_CONTEXT_FAILED
    case LINUX_GLX_CREATE_WINDOW_FAILED
    case LINUX_X11_CREATE_WINDOW_FAILED
    case LINUX_EGL_BIND_OPENGL_API_FAILED
    case LINUX_EGL_BIND_OPENGL_ES_API_FAILED
    case LINUX_EGL_GET_DISPLAY_FAILED
    case LINUX_EGL_INITIALIZE_FAILED
    case LINUX_EGL_NO_CONFIGS
    case LINUX_EGL_NO_NATIVE_VISUAL
    case LINUX_EGL_GET_VISUAL_INFO_FAILED
    case LINUX_EGL_CREATE_WINDOW_SURFACE_FAILED
    case LINUX_EGL_CREATE_CONTEXT_FAILED
    case LINUX_EGL_MAKE_CURRENT_FAILED
    case LINUX_X11_OPEN_DISPLAY_FAILED
    case LINUX_X11_QUERY_SYSTEM_DPI_FAILED
    case LINUX_X11_DROPPED_FILE_URI_WRONG_SCHEME
    case LINUX_X11_FAILED_TO_BECOME_OWNER_OF_CLIPBOARD
    case ANDROID_UNSUPPORTED_INPUT_EVENT_INPUT_CB
    case ANDROID_UNSUPPORTED_INPUT_EVENT_MAIN_CB
    case ANDROID_READ_MSG_FAILED
    case ANDROID_WRITE_MSG_FAILED
    case ANDROID_MSG_CREATE
    case ANDROID_MSG_RESUME
    case ANDROID_MSG_PAUSE
    case ANDROID_MSG_FOCUS
    case ANDROID_MSG_NO_FOCUS
    case ANDROID_MSG_SET_NATIVE_WINDOW
    case ANDROID_MSG_SET_INPUT_QUEUE
    case ANDROID_MSG_DESTROY
    case ANDROID_UNKNOWN_MSG
    case ANDROID_LOOP_THREAD_STARTED
    case ANDROID_LOOP_THREAD_DONE
    case ANDROID_NATIVE_ACTIVITY_ONSTART
    case ANDROID_NATIVE_ACTIVITY_ONRESUME
    case ANDROID_NATIVE_ACTIVITY_ONSAVEINSTANCESTATE
    case ANDROID_NATIVE_ACTIVITY_ONWINDOWFOCUSCHANGED
    case ANDROID_NATIVE_ACTIVITY_ONPAUSE
    case ANDROID_NATIVE_ACTIVITY_ONSTOP
    case ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWCREATED
    case ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWDESTROYED
    case ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUECREATED
    case ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUEDESTROYED
    case ANDROID_NATIVE_ACTIVITY_ONCONFIGURATIONCHANGED
    case ANDROID_NATIVE_ACTIVITY_ONLOWMEMORY
    case ANDROID_NATIVE_ACTIVITY_ONDESTROY
    case ANDROID_NATIVE_ACTIVITY_DONE
    case ANDROID_NATIVE_ACTIVITY_ONCREATE
    case ANDROID_CREATE_THREAD_PIPE_FAILED
    case ANDROID_NATIVE_ACTIVITY_CREATE_SUCCESS
    case WGPU_SWAPCHAIN_CREATE_SURFACE_FAILED
    case WGPU_SWAPCHAIN_CREATE_SWAPCHAIN_FAILED
    case WGPU_SWAPCHAIN_CREATE_DEPTH_STENCIL_TEXTURE_FAILED
    case WGPU_SWAPCHAIN_CREATE_DEPTH_STENCIL_VIEW_FAILED
    case WGPU_SWAPCHAIN_CREATE_MSAA_TEXTURE_FAILED
    case WGPU_SWAPCHAIN_CREATE_MSAA_VIEW_FAILED
    case WGPU_REQUEST_DEVICE_STATUS_ERROR
    case WGPU_REQUEST_DEVICE_STATUS_UNKNOWN
    case WGPU_REQUEST_ADAPTER_STATUS_UNAVAILABLE
    case WGPU_REQUEST_ADAPTER_STATUS_ERROR
    case WGPU_REQUEST_ADAPTER_STATUS_UNKNOWN
    case WGPU_CREATE_INSTANCE_FAILED
    case IMAGE_DATA_SIZE_MISMATCH
    case DROPPED_FILE_PATH_TOO_LONG
    case CLIPBOARD_STRING_TOO_BIG
}
struct Logger {
    var fn: (@convention(c) (UnsafePointer<CChar>?, UInt32, UInt32, UnsafePointer<CChar>?, UInt32, UnsafePointer<CChar>?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Desc {
    var init_cb: (@convention(c) () -> Void)? = nil
    var frame_cb: (@convention(c) () -> Void)? = nil
    var cleanup_cb: (@convention(c) () -> Void)? = nil
    var event_cb: (@convention(c) (UnsafeRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
    var init_userdata_cb: (@convention(c) (UnsafeMutableRawPointer?) -> Void)? = nil
    var frame_userdata_cb: (@convention(c) (UnsafeMutableRawPointer?) -> Void)? = nil
    var cleanup_userdata_cb: (@convention(c) (UnsafeMutableRawPointer?) -> Void)? = nil
    var event_userdata_cb: (@convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void)? = nil
    var width: CInt = 0
    var height: CInt = 0
    var sample_count: CInt = 0
    var swap_interval: CInt = 0
    var high_dpi: Bool = false
    var fullscreen: Bool = false
    var alpha: Bool = false
    var window_title: UnsafePointer<CChar>? = nil
    var enable_clipboard: Bool = false
    var clipboard_size: CInt = 0
    var enable_dragndrop: Bool = false
    var max_dropped_files: CInt = 0
    var max_dropped_file_path_length: CInt = 0
    var icon: IconDesc = IconDesc()
    var allocator: Allocator = Allocator()
    var logger: Logger = Logger()
    var gl_major_version: CInt = 0
    var gl_minor_version: CInt = 0
    var win32_console_utf8: Bool = false
    var win32_console_create: Bool = false
    var win32_console_attach: Bool = false
    var html5_canvas_name: UnsafePointer<CChar>? = nil
    var html5_canvas_resize: Bool = false
    var html5_preserve_drawing_buffer: Bool = false
    var html5_premultiplied_alpha: Bool = false
    var html5_ask_leave_site: Bool = false
    var html5_bubble_mouse_events: Bool = false
    var html5_bubble_touch_events: Bool = false
    var html5_bubble_wheel_events: Bool = false
    var html5_bubble_key_events: Bool = false
    var html5_bubble_char_events: Bool = false
    var html5_use_emsc_set_main_loop: Bool = false
    var html5_emsc_set_main_loop_simulate_infinite_loop: Bool = false
    var ios_keyboard_resizes_canvas: Bool = false
}
enum Html5FetchError : UInt32 {
    case FETCH_ERROR_NO_ERROR
    case FETCH_ERROR_BUFFER_TOO_SMALL
    case FETCH_ERROR_OTHER
}
struct Html5FetchResponse {
    var succeeded: Bool = false
    var error_code: Html5FetchError = .FETCH_ERROR_NO_ERROR
    var file_index: CInt = 0
    var data: Range = Range()
    var buffer: Range = Range()
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Html5FetchRequest {
    var dropped_file_index: CInt = 0
    var callback: (@convention(c) (UnsafeRawPointer?) -> Void)? = nil
    var buffer: Range = Range()
    var user_data: UnsafeMutableRawPointer? = nil
}
enum MouseCursor : UInt32 {
    case DEFAULT = 0
    case ARROW
    case IBEAM
    case CROSSHAIR
    case POINTING_HAND
    case RESIZE_EW
    case RESIZE_NS
    case RESIZE_NWSE
    case RESIZE_NESW
    case RESIZE_ALL
    case NOT_ALLOWED
    case NUM
}
@_extern(c, "sapp_isvalid")
func sapp_isvalid() -> Bool

func isvalid() -> Bool {
    return sapp_isvalid()
}
@_extern(c, "sapp_width")
func sapp_width() -> CInt

func width() -> CInt {
    return sapp_width()
}
@_extern(c, "sapp_widthf")
func sapp_widthf() -> Float

func widthf() -> Float {
    return sapp_widthf()
}
@_extern(c, "sapp_height")
func sapp_height() -> CInt

func height() -> CInt {
    return sapp_height()
}
@_extern(c, "sapp_heightf")
func sapp_heightf() -> Float

func heightf() -> Float {
    return sapp_heightf()
}
@_extern(c, "sapp_color_format")
func sapp_color_format() -> CInt

func colorFormat() -> CInt {
    return sapp_color_format()
}
@_extern(c, "sapp_depth_format")
func sapp_depth_format() -> CInt

func depthFormat() -> CInt {
    return sapp_depth_format()
}
@_extern(c, "sapp_sample_count")
func sapp_sample_count() -> CInt

func sampleCount() -> CInt {
    return sapp_sample_count()
}
@_extern(c, "sapp_high_dpi")
func sapp_high_dpi() -> Bool

func highDpi() -> Bool {
    return sapp_high_dpi()
}
@_extern(c, "sapp_dpi_scale")
func sapp_dpi_scale() -> Float

func dpiScale() -> Float {
    return sapp_dpi_scale()
}
@_extern(c, "sapp_show_keyboard")
func sapp_show_keyboard(_: Bool)

func showKeyboard(_ show: Bool) {
    return sapp_show_keyboard(show)
}
@_extern(c, "sapp_keyboard_shown")
func sapp_keyboard_shown() -> Bool

func keyboardShown() -> Bool {
    return sapp_keyboard_shown()
}
@_extern(c, "sapp_is_fullscreen")
func sapp_is_fullscreen() -> Bool

func isFullscreen() -> Bool {
    return sapp_is_fullscreen()
}
@_extern(c, "sapp_toggle_fullscreen")
func sapp_toggle_fullscreen()

func toggleFullscreen() {
    return sapp_toggle_fullscreen()
}
@_extern(c, "sapp_show_mouse")
func sapp_show_mouse(_: Bool)

func showMouse(_ show: Bool) {
    return sapp_show_mouse(show)
}
@_extern(c, "sapp_mouse_shown")
func sapp_mouse_shown() -> Bool

func mouseShown() -> Bool {
    return sapp_mouse_shown()
}
@_extern(c, "sapp_lock_mouse")
func sapp_lock_mouse(_: Bool)

func lockMouse(_ lock: Bool) {
    return sapp_lock_mouse(lock)
}
@_extern(c, "sapp_mouse_locked")
func sapp_mouse_locked() -> Bool

func mouseLocked() -> Bool {
    return sapp_mouse_locked()
}
@_extern(c, "sapp_set_mouse_cursor")
func sapp_set_mouse_cursor(_: MouseCursor)

func setMouseCursor(_ cursor: MouseCursor) {
    return sapp_set_mouse_cursor(cursor)
}
@_extern(c, "sapp_get_mouse_cursor")
func sapp_get_mouse_cursor() -> MouseCursor

func getMouseCursor() -> MouseCursor {
    return sapp_get_mouse_cursor()
}
@_extern(c, "sapp_userdata")
func sapp_userdata() -> UnsafeMutableRawPointer?

func userdata() -> UnsafeMutableRawPointer? {
    return sapp_userdata()
}
@_extern(c, "sapp_query_desc")
func sapp_query_desc() -> Desc

func queryDesc() -> Desc {
    return sapp_query_desc()
}
@_extern(c, "sapp_request_quit")
func sapp_request_quit()

func requestQuit() {
    return sapp_request_quit()
}
@_extern(c, "sapp_cancel_quit")
func sapp_cancel_quit()

func cancelQuit() {
    return sapp_cancel_quit()
}
@_extern(c, "sapp_quit")
func sapp_quit()

func quit() {
    return sapp_quit()
}
@_extern(c, "sapp_consume_event")
func sapp_consume_event()

func consumeEvent() {
    return sapp_consume_event()
}
@_extern(c, "sapp_frame_count")
func sapp_frame_count() -> UInt64

func frameCount() -> UInt64 {
    return sapp_frame_count()
}
@_extern(c, "sapp_frame_duration")
func sapp_frame_duration() -> Double

func frameDuration() -> Double {
    return sapp_frame_duration()
}
@_extern(c, "sapp_set_clipboard_string")
func sapp_set_clipboard_string(_: UnsafePointer<CChar>?)

func setClipboardString(_ str: UnsafePointer<CChar>?) {
    return sapp_set_clipboard_string(str)
}
@_extern(c, "sapp_get_clipboard_string")
func sapp_get_clipboard_string() -> UnsafePointer<CChar>?

func getClipboardString() -> UnsafePointer<CChar>? {
    return sapp_get_clipboard_string()
}
@_extern(c, "sapp_set_window_title")
func sapp_set_window_title(_: UnsafePointer<CChar>?)

func setWindowTitle(_ str: UnsafePointer<CChar>?) {
    return sapp_set_window_title(str)
}
@_extern(c, "sapp_set_icon")
func sapp_set_icon(_: UnsafeRawPointer?)

func setIcon(_ icon_desc: UnsafePointer<IconDesc>?) {
    return sapp_set_icon(icon_desc)
}
@_extern(c, "sapp_get_num_dropped_files")
func sapp_get_num_dropped_files() -> CInt

func getNumDroppedFiles() -> CInt {
    return sapp_get_num_dropped_files()
}
@_extern(c, "sapp_get_dropped_file_path")
func sapp_get_dropped_file_path(_: CInt) -> UnsafePointer<CChar>?

func getDroppedFilePath(_ index: CInt) -> UnsafePointer<CChar>? {
    return sapp_get_dropped_file_path(index)
}
@_extern(c, "sapp_run")
func sapp_run(_: UnsafeRawPointer?)

func run(_ desc: UnsafePointer<Desc>?) {
    return sapp_run(desc)
}
@_extern(c, "sapp_egl_get_display")
func sapp_egl_get_display() -> UnsafeRawPointer?

func eglGetDisplay() -> UnsafeRawPointer? {
    return sapp_egl_get_display()
}
@_extern(c, "sapp_egl_get_context")
func sapp_egl_get_context() -> UnsafeRawPointer?

func eglGetContext() -> UnsafeRawPointer? {
    return sapp_egl_get_context()
}
@_extern(c, "sapp_html5_ask_leave_site")
func sapp_html5_ask_leave_site(_: Bool)

func html5AskLeaveSite(_ ask: Bool) {
    return sapp_html5_ask_leave_site(ask)
}
@_extern(c, "sapp_html5_get_dropped_file_size")
func sapp_html5_get_dropped_file_size(_: CInt) -> UInt32

func html5GetDroppedFileSize(_ index: CInt) -> UInt32 {
    return sapp_html5_get_dropped_file_size(index)
}
@_extern(c, "sapp_html5_fetch_dropped_file")
func sapp_html5_fetch_dropped_file(_: UnsafeRawPointer?)

func html5FetchDroppedFile(_ request: UnsafePointer<Html5FetchRequest>?) {
    return sapp_html5_fetch_dropped_file(request)
}
@_extern(c, "sapp_metal_get_device")
func sapp_metal_get_device() -> UnsafeRawPointer?

func metalGetDevice() -> UnsafeRawPointer? {
    return sapp_metal_get_device()
}
@_extern(c, "sapp_metal_get_current_drawable")
func sapp_metal_get_current_drawable() -> UnsafeRawPointer?

func metalGetCurrentDrawable() -> UnsafeRawPointer? {
    return sapp_metal_get_current_drawable()
}
@_extern(c, "sapp_metal_get_depth_stencil_texture")
func sapp_metal_get_depth_stencil_texture() -> UnsafeRawPointer?

func metalGetDepthStencilTexture() -> UnsafeRawPointer? {
    return sapp_metal_get_depth_stencil_texture()
}
@_extern(c, "sapp_metal_get_msaa_color_texture")
func sapp_metal_get_msaa_color_texture() -> UnsafeRawPointer?

func metalGetMsaaColorTexture() -> UnsafeRawPointer? {
    return sapp_metal_get_msaa_color_texture()
}
@_extern(c, "sapp_macos_get_window")
func sapp_macos_get_window() -> UnsafeRawPointer?

func macosGetWindow() -> UnsafeRawPointer? {
    return sapp_macos_get_window()
}
@_extern(c, "sapp_ios_get_window")
func sapp_ios_get_window() -> UnsafeRawPointer?

func iosGetWindow() -> UnsafeRawPointer? {
    return sapp_ios_get_window()
}
@_extern(c, "sapp_d3d11_get_device")
func sapp_d3d11_get_device() -> UnsafeRawPointer?

func d3d11GetDevice() -> UnsafeRawPointer? {
    return sapp_d3d11_get_device()
}
@_extern(c, "sapp_d3d11_get_device_context")
func sapp_d3d11_get_device_context() -> UnsafeRawPointer?

func d3d11GetDeviceContext() -> UnsafeRawPointer? {
    return sapp_d3d11_get_device_context()
}
@_extern(c, "sapp_d3d11_get_swap_chain")
func sapp_d3d11_get_swap_chain() -> UnsafeRawPointer?

func d3d11GetSwapChain() -> UnsafeRawPointer? {
    return sapp_d3d11_get_swap_chain()
}
@_extern(c, "sapp_d3d11_get_render_view")
func sapp_d3d11_get_render_view() -> UnsafeRawPointer?

func d3d11GetRenderView() -> UnsafeRawPointer? {
    return sapp_d3d11_get_render_view()
}
@_extern(c, "sapp_d3d11_get_resolve_view")
func sapp_d3d11_get_resolve_view() -> UnsafeRawPointer?

func d3d11GetResolveView() -> UnsafeRawPointer? {
    return sapp_d3d11_get_resolve_view()
}
@_extern(c, "sapp_d3d11_get_depth_stencil_view")
func sapp_d3d11_get_depth_stencil_view() -> UnsafeRawPointer?

func d3d11GetDepthStencilView() -> UnsafeRawPointer? {
    return sapp_d3d11_get_depth_stencil_view()
}
@_extern(c, "sapp_win32_get_hwnd")
func sapp_win32_get_hwnd() -> UnsafeRawPointer?

func win32GetHwnd() -> UnsafeRawPointer? {
    return sapp_win32_get_hwnd()
}
@_extern(c, "sapp_wgpu_get_device")
func sapp_wgpu_get_device() -> UnsafeRawPointer?

func wgpuGetDevice() -> UnsafeRawPointer? {
    return sapp_wgpu_get_device()
}
@_extern(c, "sapp_wgpu_get_render_view")
func sapp_wgpu_get_render_view() -> UnsafeRawPointer?

func wgpuGetRenderView() -> UnsafeRawPointer? {
    return sapp_wgpu_get_render_view()
}
@_extern(c, "sapp_wgpu_get_resolve_view")
func sapp_wgpu_get_resolve_view() -> UnsafeRawPointer?

func wgpuGetResolveView() -> UnsafeRawPointer? {
    return sapp_wgpu_get_resolve_view()
}
@_extern(c, "sapp_wgpu_get_depth_stencil_view")
func sapp_wgpu_get_depth_stencil_view() -> UnsafeRawPointer?

func wgpuGetDepthStencilView() -> UnsafeRawPointer? {
    return sapp_wgpu_get_depth_stencil_view()
}
@_extern(c, "sapp_gl_get_framebuffer")
func sapp_gl_get_framebuffer() -> UInt32

func glGetFramebuffer() -> UInt32 {
    return sapp_gl_get_framebuffer()
}
@_extern(c, "sapp_gl_get_major_version")
func sapp_gl_get_major_version() -> CInt

func glGetMajorVersion() -> CInt {
    return sapp_gl_get_major_version()
}
@_extern(c, "sapp_gl_get_minor_version")
func sapp_gl_get_minor_version() -> CInt

func glGetMinorVersion() -> CInt {
    return sapp_gl_get_minor_version()
}
@_extern(c, "sapp_android_get_native_activity")
func sapp_android_get_native_activity() -> UnsafeRawPointer?

func androidGetNativeActivity() -> UnsafeRawPointer? {
    return sapp_android_get_native_activity()
}
