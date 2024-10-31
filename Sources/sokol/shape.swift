// machine generated, do not edit

struct Range {
    var ptr: UnsafeRawPointer? = nil
    var size: UInt = 0
}
struct Mat4 {
    var m: [[Float]] = Array(repeating: Array(repeating: Float(0.0), count: 4), count: 4)
}
struct Vertex {
    var x: Float = 0.0
    var y: Float = 0.0
    var z: Float = 0.0
    var normal: UInt32 = 0
    var u: UInt16 = 0
    var v: UInt16 = 0
    var color: UInt32 = 0
}
struct ElementRange {
    var base_element: UInt32 = 0
    var num_elements: UInt32 = 0
}
struct SizesItem {
    var num: UInt32 = 0
    var size: UInt32 = 0
}
struct Sizes {
    var vertices: SizesItem = SizesItem()
    var indices: SizesItem = SizesItem()
}
struct BufferItem {
    var buffer: Range = Range()
    var data_size: UInt = 0
    var shape_offset: UInt = 0
}
struct Buffer {
    var valid: Bool = false
    var vertices: BufferItem = BufferItem()
    var indices: BufferItem = BufferItem()
}
struct Plane {
    var width: Float = 0.0
    var depth: Float = 0.0
    var tiles: UInt16 = 0
    var color: UInt32 = 0
    var random_colors: Bool = false
    var merge: Bool = false
    var transform: Mat4 = Mat4()
}
struct Box {
    var width: Float = 0.0
    var height: Float = 0.0
    var depth: Float = 0.0
    var tiles: UInt16 = 0
    var color: UInt32 = 0
    var random_colors: Bool = false
    var merge: Bool = false
    var transform: Mat4 = Mat4()
}
struct Sphere {
    var radius: Float = 0.0
    var slices: UInt16 = 0
    var stacks: UInt16 = 0
    var color: UInt32 = 0
    var random_colors: Bool = false
    var merge: Bool = false
    var transform: Mat4 = Mat4()
}
struct Cylinder {
    var radius: Float = 0.0
    var height: Float = 0.0
    var slices: UInt16 = 0
    var stacks: UInt16 = 0
    var color: UInt32 = 0
    var random_colors: Bool = false
    var merge: Bool = false
    var transform: Mat4 = Mat4()
}
struct Torus {
    var radius: Float = 0.0
    var ring_radius: Float = 0.0
    var sides: UInt16 = 0
    var rings: UInt16 = 0
    var color: UInt32 = 0
    var random_colors: Bool = false
    var merge: Bool = false
    var transform: Mat4 = Mat4()
}
@_extern(c, "sshape_build_plane")
func sshape_build_plane(_: UnsafeRawPointer?, _: UnsafeRawPointer?) -> Buffer

func buildPlane(_ buf: UnsafePointer<Buffer>?, _ params: UnsafePointer<Plane>?) -> Buffer {
    return sshape_build_plane(buf, params)
}
@_extern(c, "sshape_build_box")
func sshape_build_box(_: UnsafeRawPointer?, _: UnsafeRawPointer?) -> Buffer

func buildBox(_ buf: UnsafePointer<Buffer>?, _ params: UnsafePointer<Box>?) -> Buffer {
    return sshape_build_box(buf, params)
}
@_extern(c, "sshape_build_sphere")
func sshape_build_sphere(_: UnsafeRawPointer?, _: UnsafeRawPointer?) -> Buffer

func buildSphere(_ buf: UnsafePointer<Buffer>?, _ params: UnsafePointer<Sphere>?) -> Buffer {
    return sshape_build_sphere(buf, params)
}
@_extern(c, "sshape_build_cylinder")
func sshape_build_cylinder(_: UnsafeRawPointer?, _: UnsafeRawPointer?) -> Buffer

func buildCylinder(_ buf: UnsafePointer<Buffer>?, _ params: UnsafePointer<Cylinder>?) -> Buffer {
    return sshape_build_cylinder(buf, params)
}
@_extern(c, "sshape_build_torus")
func sshape_build_torus(_: UnsafeRawPointer?, _: UnsafeRawPointer?) -> Buffer

func buildTorus(_ buf: UnsafePointer<Buffer>?, _ params: UnsafePointer<Torus>?) -> Buffer {
    return sshape_build_torus(buf, params)
}
@_extern(c, "sshape_plane_sizes")
func sshape_plane_sizes(_: UInt32) -> Sizes

func planeSizes(_ tiles: UInt32) -> Sizes {
    return sshape_plane_sizes(tiles)
}
@_extern(c, "sshape_box_sizes")
func sshape_box_sizes(_: UInt32) -> Sizes

func boxSizes(_ tiles: UInt32) -> Sizes {
    return sshape_box_sizes(tiles)
}
@_extern(c, "sshape_sphere_sizes")
func sshape_sphere_sizes(_: UInt32, _: UInt32) -> Sizes

func sphereSizes(_ slices: UInt32, _ stacks: UInt32) -> Sizes {
    return sshape_sphere_sizes(slices, stacks)
}
@_extern(c, "sshape_cylinder_sizes")
func sshape_cylinder_sizes(_: UInt32, _: UInt32) -> Sizes

func cylinderSizes(_ slices: UInt32, _ stacks: UInt32) -> Sizes {
    return sshape_cylinder_sizes(slices, stacks)
}
@_extern(c, "sshape_torus_sizes")
func sshape_torus_sizes(_: UInt32, _: UInt32) -> Sizes

func torusSizes(_ sides: UInt32, _ rings: UInt32) -> Sizes {
    return sshape_torus_sizes(sides, rings)
}
@_extern(c, "sshape_element_range")
func sshape_element_range(_: UnsafeRawPointer?) -> ElementRange

func elementRange(_ buf: UnsafePointer<Buffer>?) -> ElementRange {
    return sshape_element_range(buf)
}
@_extern(c, "sshape_vertex_buffer_desc")
func sshape_vertex_buffer_desc(_: UnsafeRawPointer?) -> sg.BufferDesc

func vertexBufferDesc(_ buf: UnsafePointer<Buffer>?) -> sg.BufferDesc {
    return sshape_vertex_buffer_desc(buf)
}
@_extern(c, "sshape_index_buffer_desc")
func sshape_index_buffer_desc(_: UnsafeRawPointer?) -> sg.BufferDesc

func indexBufferDesc(_ buf: UnsafePointer<Buffer>?) -> sg.BufferDesc {
    return sshape_index_buffer_desc(buf)
}
@_extern(c, "sshape_vertex_buffer_layout_state")
func sshape_vertex_buffer_layout_state() -> sg.VertexBufferLayoutState

func vertexBufferLayoutState() -> sg.VertexBufferLayoutState {
    return sshape_vertex_buffer_layout_state()
}
@_extern(c, "sshape_position_vertex_attr_state")
func sshape_position_vertex_attr_state() -> sg.VertexAttrState

func positionVertexAttrState() -> sg.VertexAttrState {
    return sshape_position_vertex_attr_state()
}
@_extern(c, "sshape_normal_vertex_attr_state")
func sshape_normal_vertex_attr_state() -> sg.VertexAttrState

func normalVertexAttrState() -> sg.VertexAttrState {
    return sshape_normal_vertex_attr_state()
}
@_extern(c, "sshape_texcoord_vertex_attr_state")
func sshape_texcoord_vertex_attr_state() -> sg.VertexAttrState

func texcoordVertexAttrState() -> sg.VertexAttrState {
    return sshape_texcoord_vertex_attr_state()
}
@_extern(c, "sshape_color_vertex_attr_state")
func sshape_color_vertex_attr_state() -> sg.VertexAttrState

func colorVertexAttrState() -> sg.VertexAttrState {
    return sshape_color_vertex_attr_state()
}
@_extern(c, "sshape_color_4f")
func sshape_color_4f(_: Float, _: Float, _: Float, _: Float) -> UInt32

func color4f(_ r: Float, _ g: Float, _ b: Float, _ a: Float) -> UInt32 {
    return sshape_color_4f(r, g, b, a)
}
@_extern(c, "sshape_color_3f")
func sshape_color_3f(_: Float, _: Float, _: Float) -> UInt32

func color3f(_ r: Float, _ g: Float, _ b: Float) -> UInt32 {
    return sshape_color_3f(r, g, b)
}
@_extern(c, "sshape_color_4b")
func sshape_color_4b(_: UInt8, _: UInt8, _: UInt8, _: UInt8) -> UInt32

func color4b(_ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> UInt32 {
    return sshape_color_4b(r, g, b, a)
}
@_extern(c, "sshape_color_3b")
func sshape_color_3b(_: UInt8, _: UInt8, _: UInt8) -> UInt32

func color3b(_ r: UInt8, _ g: UInt8, _ b: UInt8) -> UInt32 {
    return sshape_color_3b(r, g, b)
}
@_extern(c, "sshape_mat4")
func sshape_mat4(_: UnsafePointer<Float>) -> Mat4

func mat4(_ m: UnsafePointer<Float>?) -> Mat4 {
    return sshape_mat4(m)
}
@_extern(c, "sshape_mat4_transpose")
func sshape_mat4_transpose(_: UnsafePointer<Float>) -> Mat4

func mat4Transpose(_ m: UnsafePointer<Float>?) -> Mat4 {
    return sshape_mat4_transpose(m)
}