// var passAction: sg_pass_action = sg_pass_action()

func initialize() {
    // var sgd = sg_desc()
    // sg_setup(&sgd)

    // passAction = sg_pass_action(
    //     colors: (
    //         sg_color_attachment_action(
    //             load_action: SG_LOADACTION_CLEAR,
    //             store_action: SG_STOREACTION_STORE,
    //             clear_value: sg_color(r: 1.0, g: 0.0, b: 0.0, a: 1.0)
    //         ),
    //         sg_color_attachment_action(),
    //         sg_color_attachment_action(),
    //         sg_color_attachment_action()
    //     )
    // )
}

func frame() {
    // var g = passAction.colors.0.clear_value.g + 0.01
    // passAction.colors.0.clear_value.g = (g > 1.0) ? 0.0 : g

    // sg_begin_pass(
    //     sg_pass(
    //         action: passAction,
    //         swapchain: sglue_swapchain()
    //     ))
    // __dbgui_draw()
    // sg_end_pass()
    // sg_commit()
}

func cleanup() {
    // __dbgui_shutdown()
    // sg_shutdown()
}

@_cdecl("sokol_main")
func sokol_main(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>)
    -> CInt
{
    return 0
    // return Desc(
    //     init_cb: initialize,
    //     frame_cb: frame,
    //     cleanup_cb: cleanup,
    //     // event_cb: __dbgui_event,
    //     width: 400,
    //     height: 300,
    //     window_title: "Clear (sokol app)",
    //     icon: sapp_icon_desc(sokol_default: true),
    //     logger: sg_logger_desc(func: slog_func)
    // )
}
