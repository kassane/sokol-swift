// machine generated, do not edit

enum LogItem : UInt32 {
    case OK
    case MALLOC_FAILED
    case MAKE_PIPELINE_FAILED
    case PIPELINE_POOL_EXHAUSTED
    case ADD_COMMIT_LISTENER_FAILED
    case CONTEXT_POOL_EXHAUSTED
    case CANNOT_DESTROY_DEFAULT_CONTEXT
}
struct Logger {
    var fn: (@convention(c) (UnsafePointer<CChar>?, UInt32, UInt32, UnsafePointer<CChar>?, UInt32, UnsafePointer<CChar>?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Pipeline {
    var id: UInt32 = 0
}
struct Context {
    var id: UInt32 = 0
}
struct Error {
    var any: Bool = false
    var vertices_full: Bool = false
    var uniforms_full: Bool = false
    var commands_full: Bool = false
    var stack_overflow: Bool = false
    var stack_underflow: Bool = false
    var no_context: Bool = false
}
struct ContextDesc {
    var max_vertices: CInt = 0
    var max_commands: CInt = 0
    var color_format: sg.PixelFormat = .DEFAULT
    var depth_format: sg.PixelFormat = .DEFAULT
    var sample_count: CInt = 0
}
struct Allocator {
    var alloc_fn: (@convention(c) (UInt, UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)? = nil
    var free_fn: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Desc {
    var max_vertices: CInt = 0
    var max_commands: CInt = 0
    var context_pool_size: CInt = 0
    var pipeline_pool_size: CInt = 0
    var color_format: sg.PixelFormat = .DEFAULT
    var depth_format: sg.PixelFormat = .DEFAULT
    var sample_count: CInt = 0
    var face_winding: sg.FaceWinding = .DEFAULT
    var allocator: Allocator = Allocator()
    var logger: Logger = Logger()
}
@_extern(c, "sgl_setup")
func sgl_setup(_: UnsafeRawPointer?)

func setup(_ desc: UnsafePointer<Desc>?) {
    return sgl_setup(desc)
}
@_extern(c, "sgl_shutdown")
func sgl_shutdown()

func shutdown() {
    return sgl_shutdown()
}
@_extern(c, "sgl_rad")
func sgl_rad(_: Float) -> Float

func asRadians(_ deg: Float) -> Float {
    return sgl_rad(deg)
}
@_extern(c, "sgl_deg")
func sgl_deg(_: Float) -> Float

func asDegrees(_ rad: Float) -> Float {
    return sgl_deg(rad)
}
@_extern(c, "sgl_error")
func sgl_error() -> Error

func getError() -> Error {
    return sgl_error()
}
@_extern(c, "sgl_context_error")
func sgl_context_error(_: Context) -> Error

func contextError(_ ctx: Context) -> Error {
    return sgl_context_error(ctx)
}
@_extern(c, "sgl_make_context")
func sgl_make_context(_: UnsafeRawPointer?) -> Context

func makeContext(_ desc: UnsafePointer<ContextDesc>?) -> Context {
    return sgl_make_context(desc)
}
@_extern(c, "sgl_destroy_context")
func sgl_destroy_context(_: Context)

func destroyContext(_ ctx: Context) {
    return sgl_destroy_context(ctx)
}
@_extern(c, "sgl_set_context")
func sgl_set_context(_: Context)

func setContext(_ ctx: Context) {
    return sgl_set_context(ctx)
}
@_extern(c, "sgl_get_context")
func sgl_get_context() -> Context

func getContext() -> Context {
    return sgl_get_context()
}
@_extern(c, "sgl_default_context")
func sgl_default_context() -> Context

func defaultContext() -> Context {
    return sgl_default_context()
}
@_extern(c, "sgl_num_vertices")
func sgl_num_vertices() -> CInt

func numVertices() -> CInt {
    return sgl_num_vertices()
}
@_extern(c, "sgl_num_commands")
func sgl_num_commands() -> CInt

func numCommands() -> CInt {
    return sgl_num_commands()
}
@_extern(c, "sgl_draw")
func sgl_draw()

func draw() {
    return sgl_draw()
}
@_extern(c, "sgl_context_draw")
func sgl_context_draw(_: Context)

func contextDraw(_ ctx: Context) {
    return sgl_context_draw(ctx)
}
@_extern(c, "sgl_draw_layer")
func sgl_draw_layer(_: CInt)

func drawLayer(_ layer_id: CInt) {
    return sgl_draw_layer(layer_id)
}
@_extern(c, "sgl_context_draw_layer")
func sgl_context_draw_layer(_: Context, _: CInt)

func contextDrawLayer(_ ctx: Context, _ layer_id: CInt) {
    return sgl_context_draw_layer(ctx, layer_id)
}
@_extern(c, "sgl_make_pipeline")
func sgl_make_pipeline(_: UnsafeRawPointer?) -> Pipeline

func makePipeline(_ desc: UnsafePointer<sg.PipelineDesc>?) -> Pipeline {
    return sgl_make_pipeline(desc)
}
@_extern(c, "sgl_context_make_pipeline")
func sgl_context_make_pipeline(_: Context, _: UnsafeRawPointer?) -> Pipeline

func contextMakePipeline(_ ctx: Context, _ desc: UnsafePointer<sg.PipelineDesc>?) -> Pipeline {
    return sgl_context_make_pipeline(ctx, desc)
}
@_extern(c, "sgl_destroy_pipeline")
func sgl_destroy_pipeline(_: Pipeline)

func destroyPipeline(_ pip: Pipeline) {
    return sgl_destroy_pipeline(pip)
}
@_extern(c, "sgl_defaults")
func sgl_defaults()

func defaults() {
    return sgl_defaults()
}
@_extern(c, "sgl_viewport")
func sgl_viewport(_: CInt, _: CInt, _: CInt, _: CInt, _: Bool)

func viewport(_ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ origin_top_left: Bool) {
    return sgl_viewport(x, y, w, h, origin_top_left)
}
@_extern(c, "sgl_viewportf")
func sgl_viewportf(_: Float, _: Float, _: Float, _: Float, _: Bool)

func viewportf(_ x: Float, _ y: Float, _ w: Float, _ h: Float, _ origin_top_left: Bool) {
    return sgl_viewportf(x, y, w, h, origin_top_left)
}
@_extern(c, "sgl_scissor_rect")
func sgl_scissor_rect(_: CInt, _: CInt, _: CInt, _: CInt, _: Bool)

func scissorRect(_ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ origin_top_left: Bool) {
    return sgl_scissor_rect(x, y, w, h, origin_top_left)
}
@_extern(c, "sgl_scissor_rectf")
func sgl_scissor_rectf(_: Float, _: Float, _: Float, _: Float, _: Bool)

func scissorRectf(_ x: Float, _ y: Float, _ w: Float, _ h: Float, _ origin_top_left: Bool) {
    return sgl_scissor_rectf(x, y, w, h, origin_top_left)
}
@_extern(c, "sgl_enable_texture")
func sgl_enable_texture()

func enableTexture() {
    return sgl_enable_texture()
}
@_extern(c, "sgl_disable_texture")
func sgl_disable_texture()

func disableTexture() {
    return sgl_disable_texture()
}
@_extern(c, "sgl_texture")
func sgl_texture(_: sg.Image, _: sg.Sampler)

func texture(_ img: sg.Image, _ smp: sg.Sampler) {
    return sgl_texture(img, smp)
}
@_extern(c, "sgl_layer")
func sgl_layer(_: CInt)

func layer(_ layer_id: CInt) {
    return sgl_layer(layer_id)
}
@_extern(c, "sgl_load_default_pipeline")
func sgl_load_default_pipeline()

func loadDefaultPipeline() {
    return sgl_load_default_pipeline()
}
@_extern(c, "sgl_load_pipeline")
func sgl_load_pipeline(_: Pipeline)

func loadPipeline(_ pip: Pipeline) {
    return sgl_load_pipeline(pip)
}
@_extern(c, "sgl_push_pipeline")
func sgl_push_pipeline()

func pushPipeline() {
    return sgl_push_pipeline()
}
@_extern(c, "sgl_pop_pipeline")
func sgl_pop_pipeline()

func popPipeline() {
    return sgl_pop_pipeline()
}
@_extern(c, "sgl_matrix_mode_modelview")
func sgl_matrix_mode_modelview()

func matrixModeModelview() {
    return sgl_matrix_mode_modelview()
}
@_extern(c, "sgl_matrix_mode_projection")
func sgl_matrix_mode_projection()

func matrixModeProjection() {
    return sgl_matrix_mode_projection()
}
@_extern(c, "sgl_matrix_mode_texture")
func sgl_matrix_mode_texture()

func matrixModeTexture() {
    return sgl_matrix_mode_texture()
}
@_extern(c, "sgl_load_identity")
func sgl_load_identity()

func loadIdentity() {
    return sgl_load_identity()
}
@_extern(c, "sgl_load_matrix")
func sgl_load_matrix(_: UnsafePointer<Float>)

func loadMatrix(_ m: UnsafePointer<Float>?) {
    return sgl_load_matrix(m)
}
@_extern(c, "sgl_load_transpose_matrix")
func sgl_load_transpose_matrix(_: UnsafePointer<Float>)

func loadTransposeMatrix(_ m: UnsafePointer<Float>?) {
    return sgl_load_transpose_matrix(m)
}
@_extern(c, "sgl_mult_matrix")
func sgl_mult_matrix(_: UnsafePointer<Float>)

func multMatrix(_ m: UnsafePointer<Float>?) {
    return sgl_mult_matrix(m)
}
@_extern(c, "sgl_mult_transpose_matrix")
func sgl_mult_transpose_matrix(_: UnsafePointer<Float>)

func multTransposeMatrix(_ m: UnsafePointer<Float>?) {
    return sgl_mult_transpose_matrix(m)
}
@_extern(c, "sgl_rotate")
func sgl_rotate(_: Float, _: Float, _: Float, _: Float)

func rotate(_ angle_rad: Float, _ x: Float, _ y: Float, _ z: Float) {
    return sgl_rotate(angle_rad, x, y, z)
}
@_extern(c, "sgl_scale")
func sgl_scale(_: Float, _: Float, _: Float)

func scale(_ x: Float, _ y: Float, _ z: Float) {
    return sgl_scale(x, y, z)
}
@_extern(c, "sgl_translate")
func sgl_translate(_: Float, _: Float, _: Float)

func translate(_ x: Float, _ y: Float, _ z: Float) {
    return sgl_translate(x, y, z)
}
@_extern(c, "sgl_frustum")
func sgl_frustum(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func frustum(_ l: Float, _ r: Float, _ b: Float, _ t: Float, _ n: Float, _ f: Float) {
    return sgl_frustum(l, r, b, t, n, f)
}
@_extern(c, "sgl_ortho")
func sgl_ortho(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func ortho(_ l: Float, _ r: Float, _ b: Float, _ t: Float, _ n: Float, _ f: Float) {
    return sgl_ortho(l, r, b, t, n, f)
}
@_extern(c, "sgl_perspective")
func sgl_perspective(_: Float, _: Float, _: Float, _: Float)

func perspective(_ fov_y: Float, _ aspect: Float, _ z_near: Float, _ z_far: Float) {
    return sgl_perspective(fov_y, aspect, z_near, z_far)
}
@_extern(c, "sgl_lookat")
func sgl_lookat(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func lookat(_ eye_x: Float, _ eye_y: Float, _ eye_z: Float, _ center_x: Float, _ center_y: Float, _ center_z: Float, _ up_x: Float, _ up_y: Float, _ up_z: Float) {
    return sgl_lookat(eye_x, eye_y, eye_z, center_x, center_y, center_z, up_x, up_y, up_z)
}
@_extern(c, "sgl_push_matrix")
func sgl_push_matrix()

func pushMatrix() {
    return sgl_push_matrix()
}
@_extern(c, "sgl_pop_matrix")
func sgl_pop_matrix()

func popMatrix() {
    return sgl_pop_matrix()
}
@_extern(c, "sgl_t2f")
func sgl_t2f(_: Float, _: Float)

func t2f(_ u: Float, _ v: Float) {
    return sgl_t2f(u, v)
}
@_extern(c, "sgl_c3f")
func sgl_c3f(_: Float, _: Float, _: Float)

func c3f(_ r: Float, _ g: Float, _ b: Float) {
    return sgl_c3f(r, g, b)
}
@_extern(c, "sgl_c4f")
func sgl_c4f(_: Float, _: Float, _: Float, _: Float)

func c4f(_ r: Float, _ g: Float, _ b: Float, _ a: Float) {
    return sgl_c4f(r, g, b, a)
}
@_extern(c, "sgl_c3b")
func sgl_c3b(_: UInt8, _: UInt8, _: UInt8)

func c3b(_ r: UInt8, _ g: UInt8, _ b: UInt8) {
    return sgl_c3b(r, g, b)
}
@_extern(c, "sgl_c4b")
func sgl_c4b(_: UInt8, _: UInt8, _: UInt8, _: UInt8)

func c4b(_ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) {
    return sgl_c4b(r, g, b, a)
}
@_extern(c, "sgl_c1i")
func sgl_c1i(_: UInt32)

func c1i(_ rgba: UInt32) {
    return sgl_c1i(rgba)
}
@_extern(c, "sgl_point_size")
func sgl_point_size(_: Float)

func pointSize(_ s: Float) {
    return sgl_point_size(s)
}
@_extern(c, "sgl_begin_points")
func sgl_begin_points()

func beginPoints() {
    return sgl_begin_points()
}
@_extern(c, "sgl_begin_lines")
func sgl_begin_lines()

func beginLines() {
    return sgl_begin_lines()
}
@_extern(c, "sgl_begin_line_strip")
func sgl_begin_line_strip()

func beginLineStrip() {
    return sgl_begin_line_strip()
}
@_extern(c, "sgl_begin_triangles")
func sgl_begin_triangles()

func beginTriangles() {
    return sgl_begin_triangles()
}
@_extern(c, "sgl_begin_triangle_strip")
func sgl_begin_triangle_strip()

func beginTriangleStrip() {
    return sgl_begin_triangle_strip()
}
@_extern(c, "sgl_begin_quads")
func sgl_begin_quads()

func beginQuads() {
    return sgl_begin_quads()
}
@_extern(c, "sgl_v2f")
func sgl_v2f(_: Float, _: Float)

func v2f(_ x: Float, _ y: Float) {
    return sgl_v2f(x, y)
}
@_extern(c, "sgl_v3f")
func sgl_v3f(_: Float, _: Float, _: Float)

func v3f(_ x: Float, _ y: Float, _ z: Float) {
    return sgl_v3f(x, y, z)
}
@_extern(c, "sgl_v2f_t2f")
func sgl_v2f_t2f(_: Float, _: Float, _: Float, _: Float)

func v2fT2f(_ x: Float, _ y: Float, _ u: Float, _ v: Float) {
    return sgl_v2f_t2f(x, y, u, v)
}
@_extern(c, "sgl_v3f_t2f")
func sgl_v3f_t2f(_: Float, _: Float, _: Float, _: Float, _: Float)

func v3fT2f(_ x: Float, _ y: Float, _ z: Float, _ u: Float, _ v: Float) {
    return sgl_v3f_t2f(x, y, z, u, v)
}
@_extern(c, "sgl_v2f_c3f")
func sgl_v2f_c3f(_: Float, _: Float, _: Float, _: Float, _: Float)

func v2fC3f(_ x: Float, _ y: Float, _ r: Float, _ g: Float, _ b: Float) {
    return sgl_v2f_c3f(x, y, r, g, b)
}
@_extern(c, "sgl_v2f_c3b")
func sgl_v2f_c3b(_: Float, _: Float, _: UInt8, _: UInt8, _: UInt8)

func v2fC3b(_ x: Float, _ y: Float, _ r: UInt8, _ g: UInt8, _ b: UInt8) {
    return sgl_v2f_c3b(x, y, r, g, b)
}
@_extern(c, "sgl_v2f_c4f")
func sgl_v2f_c4f(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func v2fC4f(_ x: Float, _ y: Float, _ r: Float, _ g: Float, _ b: Float, _ a: Float) {
    return sgl_v2f_c4f(x, y, r, g, b, a)
}
@_extern(c, "sgl_v2f_c4b")
func sgl_v2f_c4b(_: Float, _: Float, _: UInt8, _: UInt8, _: UInt8, _: UInt8)

func v2fC4b(_ x: Float, _ y: Float, _ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) {
    return sgl_v2f_c4b(x, y, r, g, b, a)
}
@_extern(c, "sgl_v2f_c1i")
func sgl_v2f_c1i(_: Float, _: Float, _: UInt32)

func v2fC1i(_ x: Float, _ y: Float, _ rgba: UInt32) {
    return sgl_v2f_c1i(x, y, rgba)
}
@_extern(c, "sgl_v3f_c3f")
func sgl_v3f_c3f(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func v3fC3f(_ x: Float, _ y: Float, _ z: Float, _ r: Float, _ g: Float, _ b: Float) {
    return sgl_v3f_c3f(x, y, z, r, g, b)
}
@_extern(c, "sgl_v3f_c3b")
func sgl_v3f_c3b(_: Float, _: Float, _: Float, _: UInt8, _: UInt8, _: UInt8)

func v3fC3b(_ x: Float, _ y: Float, _ z: Float, _ r: UInt8, _ g: UInt8, _ b: UInt8) {
    return sgl_v3f_c3b(x, y, z, r, g, b)
}
@_extern(c, "sgl_v3f_c4f")
func sgl_v3f_c4f(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func v3fC4f(_ x: Float, _ y: Float, _ z: Float, _ r: Float, _ g: Float, _ b: Float, _ a: Float) {
    return sgl_v3f_c4f(x, y, z, r, g, b, a)
}
@_extern(c, "sgl_v3f_c4b")
func sgl_v3f_c4b(_: Float, _: Float, _: Float, _: UInt8, _: UInt8, _: UInt8, _: UInt8)

func v3fC4b(_ x: Float, _ y: Float, _ z: Float, _ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) {
    return sgl_v3f_c4b(x, y, z, r, g, b, a)
}
@_extern(c, "sgl_v3f_c1i")
func sgl_v3f_c1i(_: Float, _: Float, _: Float, _: UInt32)

func v3fC1i(_ x: Float, _ y: Float, _ z: Float, _ rgba: UInt32) {
    return sgl_v3f_c1i(x, y, z, rgba)
}
@_extern(c, "sgl_v2f_t2f_c3f")
func sgl_v2f_t2f_c3f(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func v2fT2fC3f(_ x: Float, _ y: Float, _ u: Float, _ v: Float, _ r: Float, _ g: Float, _ b: Float) {
    return sgl_v2f_t2f_c3f(x, y, u, v, r, g, b)
}
@_extern(c, "sgl_v2f_t2f_c3b")
func sgl_v2f_t2f_c3b(_: Float, _: Float, _: Float, _: Float, _: UInt8, _: UInt8, _: UInt8)

func v2fT2fC3b(_ x: Float, _ y: Float, _ u: Float, _ v: Float, _ r: UInt8, _ g: UInt8, _ b: UInt8) {
    return sgl_v2f_t2f_c3b(x, y, u, v, r, g, b)
}
@_extern(c, "sgl_v2f_t2f_c4f")
func sgl_v2f_t2f_c4f(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func v2fT2fC4f(_ x: Float, _ y: Float, _ u: Float, _ v: Float, _ r: Float, _ g: Float, _ b: Float, _ a: Float) {
    return sgl_v2f_t2f_c4f(x, y, u, v, r, g, b, a)
}
@_extern(c, "sgl_v2f_t2f_c4b")
func sgl_v2f_t2f_c4b(_: Float, _: Float, _: Float, _: Float, _: UInt8, _: UInt8, _: UInt8, _: UInt8)

func v2fT2fC4b(_ x: Float, _ y: Float, _ u: Float, _ v: Float, _ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) {
    return sgl_v2f_t2f_c4b(x, y, u, v, r, g, b, a)
}
@_extern(c, "sgl_v2f_t2f_c1i")
func sgl_v2f_t2f_c1i(_: Float, _: Float, _: Float, _: Float, _: UInt32)

func v2fT2fC1i(_ x: Float, _ y: Float, _ u: Float, _ v: Float, _ rgba: UInt32) {
    return sgl_v2f_t2f_c1i(x, y, u, v, rgba)
}
@_extern(c, "sgl_v3f_t2f_c3f")
func sgl_v3f_t2f_c3f(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func v3fT2fC3f(_ x: Float, _ y: Float, _ z: Float, _ u: Float, _ v: Float, _ r: Float, _ g: Float, _ b: Float) {
    return sgl_v3f_t2f_c3f(x, y, z, u, v, r, g, b)
}
@_extern(c, "sgl_v3f_t2f_c3b")
func sgl_v3f_t2f_c3b(_: Float, _: Float, _: Float, _: Float, _: Float, _: UInt8, _: UInt8, _: UInt8)

func v3fT2fC3b(_ x: Float, _ y: Float, _ z: Float, _ u: Float, _ v: Float, _ r: UInt8, _ g: UInt8, _ b: UInt8) {
    return sgl_v3f_t2f_c3b(x, y, z, u, v, r, g, b)
}
@_extern(c, "sgl_v3f_t2f_c4f")
func sgl_v3f_t2f_c4f(_: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float, _: Float)

func v3fT2fC4f(_ x: Float, _ y: Float, _ z: Float, _ u: Float, _ v: Float, _ r: Float, _ g: Float, _ b: Float, _ a: Float) {
    return sgl_v3f_t2f_c4f(x, y, z, u, v, r, g, b, a)
}
@_extern(c, "sgl_v3f_t2f_c4b")
func sgl_v3f_t2f_c4b(_: Float, _: Float, _: Float, _: Float, _: Float, _: UInt8, _: UInt8, _: UInt8, _: UInt8)

func v3fT2fC4b(_ x: Float, _ y: Float, _ z: Float, _ u: Float, _ v: Float, _ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) {
    return sgl_v3f_t2f_c4b(x, y, z, u, v, r, g, b, a)
}
@_extern(c, "sgl_v3f_t2f_c1i")
func sgl_v3f_t2f_c1i(_: Float, _: Float, _: Float, _: Float, _: Float, _: UInt32)

func v3fT2fC1i(_ x: Float, _ y: Float, _ z: Float, _ u: Float, _ v: Float, _ rgba: UInt32) {
    return sgl_v3f_t2f_c1i(x, y, z, u, v, rgba)
}
@_extern(c, "sgl_end")
func sgl_end()

func end() {
    return sgl_end()
}
