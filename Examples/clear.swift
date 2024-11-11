import SokolC

var passAction = PassAction()

func initialize() {
    passAction = PassAction(
        colors: Array(repeating: ColorAttachmentAction(), count: 4),
        depth: DepthAttachmentAction(),
        stencil: StencilAttachmentAction()
    )
}

@MainActor
func frame() {
    let g = passAction.colors[0].clear_value.g + 0.01
    passAction.colors[0].clear_value.g = (g > 1.0) ? 0.0 : g

    var pass = Pass(
        _start_canary: 0,
        action: passAction,
        attachments: Attachments(),
        swapchain: Swapchain(),
        label: nil,
        _end_canary: 0
    )
    beginPass(&pass)
    endPass()
    commit()
}

func cleanup() {
    shutdown()
}
@_cdecl("sokol_main")
func sokol_main(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>)
    -> app.Desc
{
    var app = app.Desc(
        init_cb: initialize,
        frame_cb: frame,
        cleanup_cb: cleanup,
        width: 400,
        height: 300,
        window_title: "Clear (sokol app)",
        icon: IconDesc(sokol_default: true)
    )
    return app
}
