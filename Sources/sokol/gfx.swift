// machine generated, do not edit

struct Buffer {
    var id: UInt32 = 0
}
struct Image {
    var id: UInt32 = 0
}
struct Sampler {
    var id: UInt32 = 0
}
struct Shader {
    var id: UInt32 = 0
}
struct Pipeline {
    var id: UInt32 = 0
}
struct Attachments {
    var id: UInt32 = 0
}
struct Range {
    var ptr: UnsafeRawPointer? = nil
    var size: Int = 0
}
let invalid_id = 0
let num_inflight_frames = 2
let max_color_attachments = 4
let max_uniformblock_members = 16
let max_vertex_attributes = 16
let max_mipmaps = 16
let max_texturearray_layers = 128
let max_uniformblock_bindslots = 8
let max_vertexbuffer_bindslots = 8
let max_image_bindslots = 16
let max_sampler_bindslots = 16
let max_storagebuffer_bindslots = 8
let max_image_sampler_pairs = 16
struct Color {
    var r: Float = 0.0
    var g: Float = 0.0
    var b: Float = 0.0
    var a: Float = 0.0
}

@objc
enum Backend : CUnsignedInt {
    case GLCORE
    case GLES3
    case D3D11
    case METAL_IOS
    case METAL_MACOS
    case METAL_SIMULATOR
    case WGPU
    case DUMMY
}

@objc
enum PixelFormat : CUnsignedInt {
    case DEFAULT
    case NONE
    case R8
    case R8SN
    case R8UI
    case R8SI
    case R16
    case R16SN
    case R16UI
    case R16SI
    case R16F
    case RG8
    case RG8SN
    case RG8UI
    case RG8SI
    case R32UI
    case R32SI
    case R32F
    case RG16
    case RG16SN
    case RG16UI
    case RG16SI
    case RG16F
    case RGBA8
    case SRGB8A8
    case RGBA8SN
    case RGBA8UI
    case RGBA8SI
    case BGRA8
    case RGB10A2
    case RG11B10F
    case RGB9E5
    case RG32UI
    case RG32SI
    case RG32F
    case RGBA16
    case RGBA16SN
    case RGBA16UI
    case RGBA16SI
    case RGBA16F
    case RGBA32UI
    case RGBA32SI
    case RGBA32F
    case DEPTH
    case DEPTH_STENCIL
    case BC1_RGBA
    case BC2_RGBA
    case BC3_RGBA
    case BC3_SRGBA
    case BC4_R
    case BC4_RSN
    case BC5_RG
    case BC5_RGSN
    case BC6H_RGBF
    case BC6H_RGBUF
    case BC7_RGBA
    case BC7_SRGBA
    case PVRTC_RGB_2BPP
    case PVRTC_RGB_4BPP
    case PVRTC_RGBA_2BPP
    case PVRTC_RGBA_4BPP
    case ETC2_RGB8
    case ETC2_SRGB8
    case ETC2_RGB8A1
    case ETC2_RGBA8
    case ETC2_SRGB8A8
    case EAC_R11
    case EAC_R11SN
    case EAC_RG11
    case EAC_RG11SN
    case ASTC_4x4_RGBA
    case ASTC_4x4_SRGBA
    case NUM
    case FORCE_U32 = 2147483647
}
struct PixelformatInfo {
    var sample: Bool = false
    var filter: Bool = false
    var render: Bool = false
    var blend: Bool = false
    var msaa: Bool = false
    var depth: Bool = false
    var compressed: Bool = false
    var bytes_per_pixel: CInt = 0
}
struct Features {
    var origin_top_left: Bool = false
    var image_clamp_to_border: Bool = false
    var mrt_independent_blend_state: Bool = false
    var mrt_independent_write_mask: Bool = false
    var storage_buffer: Bool = false
}
struct Limits {
    var max_image_size_2d: CInt = 0
    var max_image_size_cube: CInt = 0
    var max_image_size_3d: CInt = 0
    var max_image_size_array: CInt = 0
    var max_image_array_layers: CInt = 0
    var max_vertex_attrs: CInt = 0
    var gl_max_vertex_uniform_components: CInt = 0
    var gl_max_combined_texture_image_units: CInt = 0
}

@objc
enum ResourceState : CUnsignedInt {
    case INITIAL
    case ALLOC
    case VALID
    case FAILED
    case INVALID
    case FORCE_U32 = 2147483647
}

@objc
enum Usage : CUnsignedInt {
    case DEFAULT
    case IMMUTABLE
    case DYNAMIC
    case STREAM
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum BufferType : CUnsignedInt {
    case DEFAULT
    case VERTEXBUFFER
    case INDEXBUFFER
    case STORAGEBUFFER
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum IndexType : CUnsignedInt {
    case DEFAULT
    case NONE
    case UINT16
    case UINT32
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum ImageType : CUnsignedInt {
    case DEFAULT
    case _2D
    case CUBE
    case _3D
    case ARRAY
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum ImageSampleType : CUnsignedInt {
    case DEFAULT
    case FLOAT
    case DEPTH
    case SINT
    case UINT
    case UNFILTERABLE_FLOAT
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum SamplerType : CUnsignedInt {
    case DEFAULT
    case FILTERING
    case NONFILTERING
    case COMPARISON
    case NUM
    case FORCE_U32
}

@objc
enum CubeFace : CUnsignedInt {
    case POS_X
    case NEG_X
    case POS_Y
    case NEG_Y
    case POS_Z
    case NEG_Z
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum PrimitiveType : CUnsignedInt {
    case DEFAULT
    case POINTS
    case LINES
    case LINE_STRIP
    case TRIANGLES
    case TRIANGLE_STRIP
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum Filter : CUnsignedInt {
    case DEFAULT
    case NEAREST
    case LINEAR
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum Wrap : CUnsignedInt {
    case DEFAULT
    case REPEAT
    case CLAMP_TO_EDGE
    case CLAMP_TO_BORDER
    case MIRRORED_REPEAT
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum BorderColor : CUnsignedInt {
    case DEFAULT
    case TRANSPARENT_BLACK
    case OPAQUE_BLACK
    case OPAQUE_WHITE
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum VertexFormat : CUnsignedInt {
    case INVALID
    case FLOAT
    case FLOAT2
    case FLOAT3
    case FLOAT4
    case BYTE4
    case BYTE4N
    case UBYTE4
    case UBYTE4N
    case SHORT2
    case SHORT2N
    case USHORT2N
    case SHORT4
    case SHORT4N
    case USHORT4N
    case UINT10_N2
    case HALF2
    case HALF4
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum VertexStep : CUnsignedInt {
    case DEFAULT
    case PER_VERTEX
    case PER_INSTANCE
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum UniformType : CUnsignedInt {
    case INVALID
    case FLOAT
    case FLOAT2
    case FLOAT3
    case FLOAT4
    case INT
    case INT2
    case INT3
    case INT4
    case MAT4
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum UniformLayout : CUnsignedInt {
    case DEFAULT
    case NATIVE
    case STD140
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum CullMode : CUnsignedInt {
    case DEFAULT
    case NONE
    case FRONT
    case BACK
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum FaceWinding : CUnsignedInt {
    case DEFAULT
    case CCW
    case CW
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum CompareFunc : CUnsignedInt {
    case DEFAULT
    case NEVER
    case LESS
    case EQUAL
    case LESS_EQUAL
    case GREATER
    case NOT_EQUAL
    case GREATER_EQUAL
    case ALWAYS
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum StencilOp : CUnsignedInt {
    case DEFAULT
    case KEEP
    case ZERO
    case REPLACE
    case INCR_CLAMP
    case DECR_CLAMP
    case INVERT
    case INCR_WRAP
    case DECR_WRAP
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum BlendFactor : CUnsignedInt {
    case DEFAULT
    case ZERO
    case ONE
    case SRC_COLOR
    case ONE_MINUS_SRC_COLOR
    case SRC_ALPHA
    case ONE_MINUS_SRC_ALPHA
    case DST_COLOR
    case ONE_MINUS_DST_COLOR
    case DST_ALPHA
    case ONE_MINUS_DST_ALPHA
    case SRC_ALPHA_SATURATED
    case BLEND_COLOR
    case ONE_MINUS_BLEND_COLOR
    case BLEND_ALPHA
    case ONE_MINUS_BLEND_ALPHA
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum BlendOp : CUnsignedInt {
    case DEFAULT
    case ADD
    case SUBTRACT
    case REVERSE_SUBTRACT
    case NUM
    case FORCE_U32 = 2147483647
}

@objc
enum ColorMask : CUnsignedInt {
    case DEFAULT = 0
    case NONE = 16
    case R = 1
    case G = 2
    case RG = 3
    case B = 4
    case RB = 5
    case GB = 6
    case RGB = 7
    case A = 8
    case RA = 9
    case GA = 10
    case RGA = 11
    case BA = 12
    case RBA = 13
    case GBA = 14
    case RGBA = 15
    case FORCE_U32 = 2147483647
}

@objc
enum LoadAction : CUnsignedInt {
    case DEFAULT
    case CLEAR
    case LOAD
    case DONTCARE
    case FORCE_U32 = 2147483647
}

@objc
enum StoreAction : CUnsignedInt {
    case DEFAULT
    case STORE
    case DONTCARE
    case FORCE_U32 = 2147483647
}
struct ColorAttachmentAction {
    var load_action: LoadAction = .DEFAULT
    var store_action: StoreAction = .DEFAULT
    var clear_value: Color = Color()
}
struct DepthAttachmentAction {
    var load_action: LoadAction = .DEFAULT
    var store_action: StoreAction = .DEFAULT
    var clear_value: Float = 0.0
}
struct StencilAttachmentAction {
    var load_action: LoadAction = .DEFAULT
    var store_action: StoreAction = .DEFAULT
    var clear_value: UInt8 = 0
}
struct PassAction {
    var colors: [ColorAttachmentAction] = Array(repeating: ColorAttachmentAction(), count: 4)
    var depth: DepthAttachmentAction = DepthAttachmentAction()
    var stencil: StencilAttachmentAction = StencilAttachmentAction()
}
struct MetalSwapchain {
    var current_drawable: UnsafeRawPointer? = nil
    var depth_stencil_texture: UnsafeRawPointer? = nil
    var msaa_color_texture: UnsafeRawPointer? = nil
}
struct D3d11Swapchain {
    var render_view: UnsafeRawPointer? = nil
    var resolve_view: UnsafeRawPointer? = nil
    var depth_stencil_view: UnsafeRawPointer? = nil
}
struct WgpuSwapchain {
    var render_view: UnsafeRawPointer? = nil
    var resolve_view: UnsafeRawPointer? = nil
    var depth_stencil_view: UnsafeRawPointer? = nil
}
struct GlSwapchain {
    var framebuffer: UInt32 = 0
}
struct Swapchain {
    var width: CInt = 0
    var height: CInt = 0
    var sample_count: CInt = 0
    var color_format: PixelFormat = .DEFAULT
    var depth_format: PixelFormat = .DEFAULT
    var metal: MetalSwapchain = MetalSwapchain()
    var d3d11: D3d11Swapchain = D3d11Swapchain()
    var wgpu: WgpuSwapchain = WgpuSwapchain()
    var gl: GlSwapchain = GlSwapchain()
}
struct Pass {
    var _start_canary: UInt32 = 0
    var action: PassAction = PassAction()
    var attachments: Attachments = Attachments()
    var swapchain: Swapchain = Swapchain()
    var label: UnsafePointer<CChar>? = nil
    var _end_canary: UInt32 = 0
}
struct Bindings {
    var _start_canary: UInt32 = 0
    var vertex_buffers: [Buffer] = Array(repeating: Buffer(), count: 8)
    var vertex_buffer_offsets: [CInt] = Array(repeating: CInt(0), count: 8)
    var index_buffer: Buffer = Buffer()
    var index_buffer_offset: CInt = 0
    var images: [Image] = Array(repeating: Image(), count: 16)
    var samplers: [Sampler] = Array(repeating: Sampler(), count: 16)
    var storage_buffers: [Buffer] = Array(repeating: Buffer(), count: 8)
    var _end_canary: UInt32 = 0
}
struct BufferDesc {
    var _start_canary: UInt32 = 0
    var size: Int = 0
    var type: BufferType = .DEFAULT
    var usage: Usage = .DEFAULT
    var data: Range = Range()
    var label: UnsafePointer<CChar>? = nil
    var gl_buffers: [UInt32] = Array(repeating: UInt32(0), count: 2)
    var mtl_buffers: [UnsafeRawPointer?] = Array(repeating: nil, count: 2)
    var d3d11_buffer: UnsafeRawPointer? = nil
    var wgpu_buffer: UnsafeRawPointer? = nil
    var _end_canary: UInt32 = 0
}
struct ImageData {
    var subimage: [[Range]] = Array(repeating: Array(repeating: Range(), count: 16), count: 6)
}
struct ImageDesc {
    var _start_canary: UInt32 = 0
    var type: ImageType = .DEFAULT
    var render_target: Bool = false
    var width: CInt = 0
    var height: CInt = 0
    var num_slices: CInt = 0
    var num_mipmaps: CInt = 0
    var usage: Usage = .DEFAULT
    var pixel_format: PixelFormat = .DEFAULT
    var sample_count: CInt = 0
    var data: ImageData = ImageData()
    var label: UnsafePointer<CChar>? = nil
    var gl_textures: [UInt32] = Array(repeating: UInt32(0), count: 2)
    var gl_texture_target: UInt32 = 0
    var mtl_textures: [UnsafeRawPointer?] = Array(repeating: nil, count: 2)
    var d3d11_texture: UnsafeRawPointer? = nil
    var d3d11_shader_resource_view: UnsafeRawPointer? = nil
    var wgpu_texture: UnsafeRawPointer? = nil
    var wgpu_texture_view: UnsafeRawPointer? = nil
    var _end_canary: UInt32 = 0
}
struct SamplerDesc {
    var _start_canary: UInt32 = 0
    var min_filter: Filter = .DEFAULT
    var mag_filter: Filter = .DEFAULT
    var mipmap_filter: Filter = .DEFAULT
    var wrap_u: Wrap = .DEFAULT
    var wrap_v: Wrap = .DEFAULT
    var wrap_w: Wrap = .DEFAULT
    var min_lod: Float = 0.0
    var max_lod: Float = 0.0
    var border_color: BorderColor = .DEFAULT
    var compare: CompareFunc = .DEFAULT
    var max_anisotropy: UInt32 = 0
    var label: UnsafePointer<CChar>? = nil
    var gl_sampler: UInt32 = 0
    var mtl_sampler: UnsafeRawPointer? = nil
    var d3d11_sampler: UnsafeRawPointer? = nil
    var wgpu_sampler: UnsafeRawPointer? = nil
    var _end_canary: UInt32 = 0
}

@objc
enum ShaderStage : CUnsignedInt {
    case NONE
    case VERTEX
    case FRAGMENT
}
struct ShaderFunction {
    var source: UnsafePointer<CChar>? = nil
    var bytecode: Range = Range()
    var entry: UnsafePointer<CChar>? = nil
    var d3d11_target: UnsafePointer<CChar>? = nil
}
struct ShaderVertexAttr {
    var glsl_name: UnsafePointer<CChar>? = nil
    var hlsl_sem_name: UnsafePointer<CChar>? = nil
    var hlsl_sem_index: UInt8 = 0
}
struct GlslShaderUniform {
    var type: UniformType = .INVALID
    var array_count: UInt16 = 0
    var glsl_name: UnsafePointer<CChar>? = nil
}
struct ShaderUniformBlock {
    var stage: ShaderStage = .NONE
    var size: UInt32 = 0
    var hlsl_register_b_n: UInt8 = 0
    var msl_buffer_n: UInt8 = 0
    var wgsl_group0_binding_n: UInt8 = 0
    var layout: UniformLayout = .DEFAULT
    var glsl_uniforms: [GlslShaderUniform] = Array(repeating: GlslShaderUniform(), count: 16)
}
struct ShaderImage {
    var stage: ShaderStage = .NONE
    var image_type: ImageType = .DEFAULT
    var sample_type: ImageSampleType = .DEFAULT
    var multisampled: Bool = false
    var hlsl_register_t_n: UInt8 = 0
    var msl_texture_n: UInt8 = 0
    var wgsl_group1_binding_n: UInt8 = 0
}
struct ShaderSampler {
    var stage: ShaderStage = .NONE
    var sampler_type: SamplerType = .DEFAULT
    var hlsl_register_s_n: UInt8 = 0
    var msl_sampler_n: UInt8 = 0
    var wgsl_group1_binding_n: UInt8 = 0
}
struct ShaderStorageBuffer {
    var stage: ShaderStage = .NONE
    var readonly: Bool = false
    var hlsl_register_t_n: UInt8 = 0
    var msl_buffer_n: UInt8 = 0
    var wgsl_group1_binding_n: UInt8 = 0
    var glsl_binding_n: UInt8 = 0
}
struct ShaderImageSamplerPair {
    var stage: ShaderStage = .NONE
    var image_slot: UInt8 = 0
    var sampler_slot: UInt8 = 0
    var glsl_name: UnsafePointer<CChar>? = nil
}
struct ShaderDesc {
    var _start_canary: UInt32 = 0
    var vertex_func: ShaderFunction = ShaderFunction()
    var fragment_func: ShaderFunction = ShaderFunction()
    var attrs: [ShaderVertexAttr] = Array(repeating: ShaderVertexAttr(), count: 16)
    var uniform_blocks: [ShaderUniformBlock] = Array(repeating: ShaderUniformBlock(), count: 8)
    var storage_buffers: [ShaderStorageBuffer] = Array(repeating: ShaderStorageBuffer(), count: 8)
    var images: [ShaderImage] = Array(repeating: ShaderImage(), count: 16)
    var samplers: [ShaderSampler] = Array(repeating: ShaderSampler(), count: 16)
    var image_sampler_pairs: [ShaderImageSamplerPair] = Array(repeating: ShaderImageSamplerPair(), count: 16)
    var label: UnsafePointer<CChar>? = nil
    var _end_canary: UInt32 = 0
}
struct VertexBufferLayoutState {
    var stride: CInt = 0
    var step_func: VertexStep = .DEFAULT
    var step_rate: CInt = 0
}
struct VertexAttrState {
    var buffer_index: CInt = 0
    var offset: CInt = 0
    var format: VertexFormat = .INVALID
}
struct VertexLayoutState {
    var buffers: [VertexBufferLayoutState] = Array(repeating: VertexBufferLayoutState(), count: 8)
    var attrs: [VertexAttrState] = Array(repeating: VertexAttrState(), count: 16)
}
struct StencilFaceState {
    var compare: CompareFunc = .DEFAULT
    var fail_op: StencilOp = .DEFAULT
    var depth_fail_op: StencilOp = .DEFAULT
    var pass_op: StencilOp = .DEFAULT
}
struct StencilState {
    var enabled: Bool = false
    var front: StencilFaceState = StencilFaceState()
    var back: StencilFaceState = StencilFaceState()
    var read_mask: UInt8 = 0
    var write_mask: UInt8 = 0
    var ref: UInt8 = 0
}
struct DepthState {
    var pixel_format: PixelFormat = .DEFAULT
    var compare: CompareFunc = .DEFAULT
    var write_enabled: Bool = false
    var bias: Float = 0.0
    var bias_slope_scale: Float = 0.0
    var bias_clamp: Float = 0.0
}
struct BlendState {
    var enabled: Bool = false
    var src_factor_rgb: BlendFactor = .DEFAULT
    var dst_factor_rgb: BlendFactor = .DEFAULT
    var op_rgb: BlendOp = .DEFAULT
    var src_factor_alpha: BlendFactor = .DEFAULT
    var dst_factor_alpha: BlendFactor = .DEFAULT
    var op_alpha: BlendOp = .DEFAULT
}
struct ColorTargetState {
    var pixel_format: PixelFormat = .DEFAULT
    var write_mask: ColorMask = .DEFAULT
    var blend: BlendState = BlendState()
}
struct PipelineDesc {
    var _start_canary: UInt32 = 0
    var shader: Shader = Shader()
    var layout: VertexLayoutState = VertexLayoutState()
    var depth: DepthState = DepthState()
    var stencil: StencilState = StencilState()
    var color_count: CInt = 0
    var colors: [ColorTargetState] = Array(repeating: ColorTargetState(), count: 4)
    var primitive_type: PrimitiveType = .DEFAULT
    var index_type: IndexType = .DEFAULT
    var cull_mode: CullMode = .DEFAULT
    var face_winding: FaceWinding = .DEFAULT
    var sample_count: CInt = 0
    var blend_color: Color = Color()
    var alpha_to_coverage_enabled: Bool = false
    var label: UnsafePointer<CChar>? = nil
    var _end_canary: UInt32 = 0
}
struct AttachmentDesc {
    var image: Image = Image()
    var mip_level: CInt = 0
    var slice: CInt = 0
}
struct AttachmentsDesc {
    var _start_canary: UInt32 = 0
    var colors: [AttachmentDesc] = Array(repeating: AttachmentDesc(), count: 4)
    var resolves: [AttachmentDesc] = Array(repeating: AttachmentDesc(), count: 4)
    var depth_stencil: AttachmentDesc = AttachmentDesc()
    var label: UnsafePointer<CChar>? = nil
    var _end_canary: UInt32 = 0
}
struct SlotInfo {
    var state: ResourceState = .INITIAL
    var res_id: UInt32 = 0
}
struct BufferInfo {
    var slot: SlotInfo = SlotInfo()
    var update_frame_index: UInt32 = 0
    var append_frame_index: UInt32 = 0
    var append_pos: CInt = 0
    var append_overflow: Bool = false
    var num_slots: CInt = 0
    var active_slot: CInt = 0
}
struct ImageInfo {
    var slot: SlotInfo = SlotInfo()
    var upd_frame_index: UInt32 = 0
    var num_slots: CInt = 0
    var active_slot: CInt = 0
}
struct SamplerInfo {
    var slot: SlotInfo = SlotInfo()
}
struct ShaderInfo {
    var slot: SlotInfo = SlotInfo()
}
struct PipelineInfo {
    var slot: SlotInfo = SlotInfo()
}
struct AttachmentsInfo {
    var slot: SlotInfo = SlotInfo()
}
struct FrameStatsGl {
    var num_bind_buffer: UInt32 = 0
    var num_active_texture: UInt32 = 0
    var num_bind_texture: UInt32 = 0
    var num_bind_sampler: UInt32 = 0
    var num_use_program: UInt32 = 0
    var num_render_state: UInt32 = 0
    var num_vertex_attrib_pointer: UInt32 = 0
    var num_vertex_attrib_divisor: UInt32 = 0
    var num_enable_vertex_attrib_array: UInt32 = 0
    var num_disable_vertex_attrib_array: UInt32 = 0
    var num_uniform: UInt32 = 0
}
struct FrameStatsD3d11Pass {
    var num_om_set_render_targets: UInt32 = 0
    var num_clear_render_target_view: UInt32 = 0
    var num_clear_depth_stencil_view: UInt32 = 0
    var num_resolve_subresource: UInt32 = 0
}
struct FrameStatsD3d11Pipeline {
    var num_rs_set_state: UInt32 = 0
    var num_om_set_depth_stencil_state: UInt32 = 0
    var num_om_set_blend_state: UInt32 = 0
    var num_ia_set_primitive_topology: UInt32 = 0
    var num_ia_set_input_layout: UInt32 = 0
    var num_vs_set_shader: UInt32 = 0
    var num_vs_set_constant_buffers: UInt32 = 0
    var num_ps_set_shader: UInt32 = 0
    var num_ps_set_constant_buffers: UInt32 = 0
}
struct FrameStatsD3d11Bindings {
    var num_ia_set_vertex_buffers: UInt32 = 0
    var num_ia_set_index_buffer: UInt32 = 0
    var num_vs_set_shader_resources: UInt32 = 0
    var num_ps_set_shader_resources: UInt32 = 0
    var num_vs_set_samplers: UInt32 = 0
    var num_ps_set_samplers: UInt32 = 0
}
struct FrameStatsD3d11Uniforms {
    var num_update_subresource: UInt32 = 0
}
struct FrameStatsD3d11Draw {
    var num_draw_indexed_instanced: UInt32 = 0
    var num_draw_indexed: UInt32 = 0
    var num_draw_instanced: UInt32 = 0
    var num_draw: UInt32 = 0
}
struct FrameStatsD3d11 {
    var pass: FrameStatsD3d11Pass = FrameStatsD3d11Pass()
    var pipeline: FrameStatsD3d11Pipeline = FrameStatsD3d11Pipeline()
    var bindings: FrameStatsD3d11Bindings = FrameStatsD3d11Bindings()
    var uniforms: FrameStatsD3d11Uniforms = FrameStatsD3d11Uniforms()
    var draw: FrameStatsD3d11Draw = FrameStatsD3d11Draw()
    var num_map: UInt32 = 0
    var num_unmap: UInt32 = 0
}
struct FrameStatsMetalIdpool {
    var num_added: UInt32 = 0
    var num_released: UInt32 = 0
    var num_garbage_collected: UInt32 = 0
}
struct FrameStatsMetalPipeline {
    var num_set_blend_color: UInt32 = 0
    var num_set_cull_mode: UInt32 = 0
    var num_set_front_facing_winding: UInt32 = 0
    var num_set_stencil_reference_value: UInt32 = 0
    var num_set_depth_bias: UInt32 = 0
    var num_set_render_pipeline_state: UInt32 = 0
    var num_set_depth_stencil_state: UInt32 = 0
}
struct FrameStatsMetalBindings {
    var num_set_vertex_buffer: UInt32 = 0
    var num_set_vertex_texture: UInt32 = 0
    var num_set_vertex_sampler_state: UInt32 = 0
    var num_set_fragment_buffer: UInt32 = 0
    var num_set_fragment_texture: UInt32 = 0
    var num_set_fragment_sampler_state: UInt32 = 0
}
struct FrameStatsMetalUniforms {
    var num_set_vertex_buffer_offset: UInt32 = 0
    var num_set_fragment_buffer_offset: UInt32 = 0
}
struct FrameStatsMetal {
    var idpool: FrameStatsMetalIdpool = FrameStatsMetalIdpool()
    var pipeline: FrameStatsMetalPipeline = FrameStatsMetalPipeline()
    var bindings: FrameStatsMetalBindings = FrameStatsMetalBindings()
    var uniforms: FrameStatsMetalUniforms = FrameStatsMetalUniforms()
}
struct FrameStatsWgpuUniforms {
    var num_set_bindgroup: UInt32 = 0
    var size_write_buffer: UInt32 = 0
}
struct FrameStatsWgpuBindings {
    var num_set_vertex_buffer: UInt32 = 0
    var num_skip_redundant_vertex_buffer: UInt32 = 0
    var num_set_index_buffer: UInt32 = 0
    var num_skip_redundant_index_buffer: UInt32 = 0
    var num_create_bindgroup: UInt32 = 0
    var num_discard_bindgroup: UInt32 = 0
    var num_set_bindgroup: UInt32 = 0
    var num_skip_redundant_bindgroup: UInt32 = 0
    var num_bindgroup_cache_hits: UInt32 = 0
    var num_bindgroup_cache_misses: UInt32 = 0
    var num_bindgroup_cache_collisions: UInt32 = 0
    var num_bindgroup_cache_invalidates: UInt32 = 0
    var num_bindgroup_cache_hash_vs_key_mismatch: UInt32 = 0
}
struct FrameStatsWgpu {
    var uniforms: FrameStatsWgpuUniforms = FrameStatsWgpuUniforms()
    var bindings: FrameStatsWgpuBindings = FrameStatsWgpuBindings()
}
struct FrameStats {
    var frame_index: UInt32 = 0
    var num_passes: UInt32 = 0
    var num_apply_viewport: UInt32 = 0
    var num_apply_scissor_rect: UInt32 = 0
    var num_apply_pipeline: UInt32 = 0
    var num_apply_bindings: UInt32 = 0
    var num_apply_uniforms: UInt32 = 0
    var num_draw: UInt32 = 0
    var num_update_buffer: UInt32 = 0
    var num_append_buffer: UInt32 = 0
    var num_update_image: UInt32 = 0
    var size_apply_uniforms: UInt32 = 0
    var size_update_buffer: UInt32 = 0
    var size_append_buffer: UInt32 = 0
    var size_update_image: UInt32 = 0
    var gl: FrameStatsGl = FrameStatsGl()
    var d3d11: FrameStatsD3d11 = FrameStatsD3d11()
    var metal: FrameStatsMetal = FrameStatsMetal()
    var wgpu: FrameStatsWgpu = FrameStatsWgpu()
}

@objc
enum LogItem : CUnsignedInt {
    case OK
    case MALLOC_FAILED
    case GL_TEXTURE_FORMAT_NOT_SUPPORTED
    case GL_3D_TEXTURES_NOT_SUPPORTED
    case GL_ARRAY_TEXTURES_NOT_SUPPORTED
    case GL_SHADER_COMPILATION_FAILED
    case GL_SHADER_LINKING_FAILED
    case GL_VERTEX_ATTRIBUTE_NOT_FOUND_IN_SHADER
    case GL_IMAGE_SAMPLER_NAME_NOT_FOUND_IN_SHADER
    case GL_FRAMEBUFFER_STATUS_UNDEFINED
    case GL_FRAMEBUFFER_STATUS_INCOMPLETE_ATTACHMENT
    case GL_FRAMEBUFFER_STATUS_INCOMPLETE_MISSING_ATTACHMENT
    case GL_FRAMEBUFFER_STATUS_UNSUPPORTED
    case GL_FRAMEBUFFER_STATUS_INCOMPLETE_MULTISAMPLE
    case GL_FRAMEBUFFER_STATUS_UNKNOWN
    case D3D11_CREATE_BUFFER_FAILED
    case D3D11_CREATE_BUFFER_SRV_FAILED
    case D3D11_CREATE_DEPTH_TEXTURE_UNSUPPORTED_PIXEL_FORMAT
    case D3D11_CREATE_DEPTH_TEXTURE_FAILED
    case D3D11_CREATE_2D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT
    case D3D11_CREATE_2D_TEXTURE_FAILED
    case D3D11_CREATE_2D_SRV_FAILED
    case D3D11_CREATE_3D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT
    case D3D11_CREATE_3D_TEXTURE_FAILED
    case D3D11_CREATE_3D_SRV_FAILED
    case D3D11_CREATE_MSAA_TEXTURE_FAILED
    case D3D11_CREATE_SAMPLER_STATE_FAILED
    case D3D11_LOAD_D3DCOMPILER_47_DLL_FAILED
    case D3D11_SHADER_COMPILATION_FAILED
    case D3D11_SHADER_COMPILATION_OUTPUT
    case D3D11_CREATE_CONSTANT_BUFFER_FAILED
    case D3D11_CREATE_INPUT_LAYOUT_FAILED
    case D3D11_CREATE_RASTERIZER_STATE_FAILED
    case D3D11_CREATE_DEPTH_STENCIL_STATE_FAILED
    case D3D11_CREATE_BLEND_STATE_FAILED
    case D3D11_CREATE_RTV_FAILED
    case D3D11_CREATE_DSV_FAILED
    case D3D11_MAP_FOR_UPDATE_BUFFER_FAILED
    case D3D11_MAP_FOR_APPEND_BUFFER_FAILED
    case D3D11_MAP_FOR_UPDATE_IMAGE_FAILED
    case METAL_CREATE_BUFFER_FAILED
    case METAL_TEXTURE_FORMAT_NOT_SUPPORTED
    case METAL_CREATE_TEXTURE_FAILED
    case METAL_CREATE_SAMPLER_FAILED
    case METAL_SHADER_COMPILATION_FAILED
    case METAL_SHADER_CREATION_FAILED
    case METAL_SHADER_COMPILATION_OUTPUT
    case METAL_SHADER_ENTRY_NOT_FOUND
    case METAL_CREATE_RPS_FAILED
    case METAL_CREATE_RPS_OUTPUT
    case METAL_CREATE_DSS_FAILED
    case WGPU_BINDGROUPS_POOL_EXHAUSTED
    case WGPU_BINDGROUPSCACHE_SIZE_GREATER_ONE
    case WGPU_BINDGROUPSCACHE_SIZE_POW2
    case WGPU_CREATEBINDGROUP_FAILED
    case WGPU_CREATE_BUFFER_FAILED
    case WGPU_CREATE_TEXTURE_FAILED
    case WGPU_CREATE_TEXTURE_VIEW_FAILED
    case WGPU_CREATE_SAMPLER_FAILED
    case WGPU_CREATE_SHADER_MODULE_FAILED
    case WGPU_SHADER_CREATE_BINDGROUP_LAYOUT_FAILED
    case WGPU_CREATE_PIPELINE_LAYOUT_FAILED
    case WGPU_CREATE_RENDER_PIPELINE_FAILED
    case WGPU_ATTACHMENTS_CREATE_TEXTURE_VIEW_FAILED
    case DRAW_REQUIRED_BINDINGS_OR_UNIFORMS_MISSING
    case IDENTICAL_COMMIT_LISTENER
    case COMMIT_LISTENER_ARRAY_FULL
    case TRACE_HOOKS_NOT_ENABLED
    case DEALLOC_BUFFER_INVALID_STATE
    case DEALLOC_IMAGE_INVALID_STATE
    case DEALLOC_SAMPLER_INVALID_STATE
    case DEALLOC_SHADER_INVALID_STATE
    case DEALLOC_PIPELINE_INVALID_STATE
    case DEALLOC_ATTACHMENTS_INVALID_STATE
    case INIT_BUFFER_INVALID_STATE
    case INIT_IMAGE_INVALID_STATE
    case INIT_SAMPLER_INVALID_STATE
    case INIT_SHADER_INVALID_STATE
    case INIT_PIPELINE_INVALID_STATE
    case INIT_ATTACHMENTS_INVALID_STATE
    case UNINIT_BUFFER_INVALID_STATE
    case UNINIT_IMAGE_INVALID_STATE
    case UNINIT_SAMPLER_INVALID_STATE
    case UNINIT_SHADER_INVALID_STATE
    case UNINIT_PIPELINE_INVALID_STATE
    case UNINIT_ATTACHMENTS_INVALID_STATE
    case FAIL_BUFFER_INVALID_STATE
    case FAIL_IMAGE_INVALID_STATE
    case FAIL_SAMPLER_INVALID_STATE
    case FAIL_SHADER_INVALID_STATE
    case FAIL_PIPELINE_INVALID_STATE
    case FAIL_ATTACHMENTS_INVALID_STATE
    case BUFFER_POOL_EXHAUSTED
    case IMAGE_POOL_EXHAUSTED
    case SAMPLER_POOL_EXHAUSTED
    case SHADER_POOL_EXHAUSTED
    case PIPELINE_POOL_EXHAUSTED
    case PASS_POOL_EXHAUSTED
    case BEGINPASS_ATTACHMENT_INVALID
    case DRAW_WITHOUT_BINDINGS
    case VALIDATE_BUFFERDESC_CANARY
    case VALIDATE_BUFFERDESC_SIZE
    case VALIDATE_BUFFERDESC_DATA
    case VALIDATE_BUFFERDESC_DATA_SIZE
    case VALIDATE_BUFFERDESC_NO_DATA
    case VALIDATE_BUFFERDESC_STORAGEBUFFER_SUPPORTED
    case VALIDATE_BUFFERDESC_STORAGEBUFFER_SIZE_MULTIPLE_4
    case VALIDATE_IMAGEDATA_NODATA
    case VALIDATE_IMAGEDATA_DATA_SIZE
    case VALIDATE_IMAGEDESC_CANARY
    case VALIDATE_IMAGEDESC_WIDTH
    case VALIDATE_IMAGEDESC_HEIGHT
    case VALIDATE_IMAGEDESC_RT_PIXELFORMAT
    case VALIDATE_IMAGEDESC_NONRT_PIXELFORMAT
    case VALIDATE_IMAGEDESC_MSAA_BUT_NO_RT
    case VALIDATE_IMAGEDESC_NO_MSAA_RT_SUPPORT
    case VALIDATE_IMAGEDESC_MSAA_NUM_MIPMAPS
    case VALIDATE_IMAGEDESC_MSAA_3D_IMAGE
    case VALIDATE_IMAGEDESC_DEPTH_3D_IMAGE
    case VALIDATE_IMAGEDESC_RT_IMMUTABLE
    case VALIDATE_IMAGEDESC_RT_NO_DATA
    case VALIDATE_IMAGEDESC_INJECTED_NO_DATA
    case VALIDATE_IMAGEDESC_DYNAMIC_NO_DATA
    case VALIDATE_IMAGEDESC_COMPRESSED_IMMUTABLE
    case VALIDATE_SAMPLERDESC_CANARY
    case VALIDATE_SAMPLERDESC_ANISTROPIC_REQUIRES_LINEAR_FILTERING
    case VALIDATE_SHADERDESC_CANARY
    case VALIDATE_SHADERDESC_SOURCE
    case VALIDATE_SHADERDESC_BYTECODE
    case VALIDATE_SHADERDESC_SOURCE_OR_BYTECODE
    case VALIDATE_SHADERDESC_NO_BYTECODE_SIZE
    case VALIDATE_SHADERDESC_NO_CONT_UB_MEMBERS
    case VALIDATE_SHADERDESC_UB_SIZE_IS_ZERO
    case VALIDATE_SHADERDESC_UB_METAL_BUFFER_SLOT_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_UB_METAL_BUFFER_SLOT_COLLISION
    case VALIDATE_SHADERDESC_UB_HLSL_REGISTER_B_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_UB_HLSL_REGISTER_B_COLLISION
    case VALIDATE_SHADERDESC_UB_WGSL_GROUP0_BINDING_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_UB_WGSL_GROUP0_BINDING_COLLISION
    case VALIDATE_SHADERDESC_NO_UB_MEMBERS
    case VALIDATE_SHADERDESC_UB_UNIFORM_GLSL_NAME
    case VALIDATE_SHADERDESC_UB_SIZE_MISMATCH
    case VALIDATE_SHADERDESC_UB_ARRAY_COUNT
    case VALIDATE_SHADERDESC_UB_STD140_ARRAY_TYPE
    case VALIDATE_SHADERDESC_STORAGEBUFFER_METAL_BUFFER_SLOT_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_STORAGEBUFFER_METAL_BUFFER_SLOT_COLLISION
    case VALIDATE_SHADERDESC_STORAGEBUFFER_HLSL_REGISTER_T_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_STORAGEBUFFER_HLSL_REGISTER_T_COLLISION
    case VALIDATE_SHADERDESC_STORAGEBUFFER_GLSL_BINDING_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_STORAGEBUFFER_GLSL_BINDING_COLLISION
    case VALIDATE_SHADERDESC_STORAGEBUFFER_WGSL_GROUP1_BINDING_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_STORAGEBUFFER_WGSL_GROUP1_BINDING_COLLISION
    case VALIDATE_SHADERDESC_STORAGEBUFFER_READONLY
    case VALIDATE_SHADERDESC_IMAGE_METAL_TEXTURE_SLOT_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_IMAGE_METAL_TEXTURE_SLOT_COLLISION
    case VALIDATE_SHADERDESC_IMAGE_HLSL_REGISTER_T_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_IMAGE_HLSL_REGISTER_T_COLLISION
    case VALIDATE_SHADERDESC_IMAGE_WGSL_GROUP1_BINDING_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_IMAGE_WGSL_GROUP1_BINDING_COLLISION
    case VALIDATE_SHADERDESC_SAMPLER_METAL_SAMPLER_SLOT_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_SAMPLER_METAL_SAMPLER_SLOT_COLLISION
    case VALIDATE_SHADERDESC_SAMPLER_HLSL_REGISTER_S_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_SAMPLER_HLSL_REGISTER_S_COLLISION
    case VALIDATE_SHADERDESC_SAMPLER_WGSL_GROUP1_BINDING_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_SAMPLER_WGSL_GROUP1_BINDING_COLLISION
    case VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_IMAGE_SLOT_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_SAMPLER_SLOT_OUT_OF_RANGE
    case VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_IMAGE_STAGE_MISMATCH
    case VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_SAMPLER_STAGE_MISMATCH
    case VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_GLSL_NAME
    case VALIDATE_SHADERDESC_NONFILTERING_SAMPLER_REQUIRED
    case VALIDATE_SHADERDESC_COMPARISON_SAMPLER_REQUIRED
    case VALIDATE_SHADERDESC_IMAGE_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS
    case VALIDATE_SHADERDESC_SAMPLER_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS
    case VALIDATE_SHADERDESC_ATTR_STRING_TOO_LONG
    case VALIDATE_PIPELINEDESC_CANARY
    case VALIDATE_PIPELINEDESC_SHADER
    case VALIDATE_PIPELINEDESC_NO_CONT_ATTRS
    case VALIDATE_PIPELINEDESC_LAYOUT_STRIDE4
    case VALIDATE_PIPELINEDESC_ATTR_SEMANTICS
    case VALIDATE_ATTACHMENTSDESC_CANARY
    case VALIDATE_ATTACHMENTSDESC_NO_ATTACHMENTS
    case VALIDATE_ATTACHMENTSDESC_NO_CONT_COLOR_ATTS
    case VALIDATE_ATTACHMENTSDESC_IMAGE
    case VALIDATE_ATTACHMENTSDESC_MIPLEVEL
    case VALIDATE_ATTACHMENTSDESC_FACE
    case VALIDATE_ATTACHMENTSDESC_LAYER
    case VALIDATE_ATTACHMENTSDESC_SLICE
    case VALIDATE_ATTACHMENTSDESC_IMAGE_NO_RT
    case VALIDATE_ATTACHMENTSDESC_COLOR_INV_PIXELFORMAT
    case VALIDATE_ATTACHMENTSDESC_DEPTH_INV_PIXELFORMAT
    case VALIDATE_ATTACHMENTSDESC_IMAGE_SIZES
    case VALIDATE_ATTACHMENTSDESC_IMAGE_SAMPLE_COUNTS
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_COLOR_IMAGE_MSAA
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_SAMPLE_COUNT
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_MIPLEVEL
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_FACE
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_LAYER
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_SLICE
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_NO_RT
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_SIZES
    case VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_FORMAT
    case VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE
    case VALIDATE_ATTACHMENTSDESC_DEPTH_MIPLEVEL
    case VALIDATE_ATTACHMENTSDESC_DEPTH_FACE
    case VALIDATE_ATTACHMENTSDESC_DEPTH_LAYER
    case VALIDATE_ATTACHMENTSDESC_DEPTH_SLICE
    case VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_NO_RT
    case VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SIZES
    case VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SAMPLE_COUNT
    case VALIDATE_BEGINPASS_CANARY
    case VALIDATE_BEGINPASS_ATTACHMENTS_EXISTS
    case VALIDATE_BEGINPASS_ATTACHMENTS_VALID
    case VALIDATE_BEGINPASS_COLOR_ATTACHMENT_IMAGE
    case VALIDATE_BEGINPASS_RESOLVE_ATTACHMENT_IMAGE
    case VALIDATE_BEGINPASS_DEPTHSTENCIL_ATTACHMENT_IMAGE
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_DEPTHFORMAT_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE
    case VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE
    case VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE
    case VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW
    case VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW
    case VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW
    case VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW
    case VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW
    case VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW
    case VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW_NOTSET
    case VALIDATE_BEGINPASS_SWAPCHAIN_GL_EXPECT_FRAMEBUFFER_NOTSET
    case VALIDATE_APIP_PIPELINE_VALID_ID
    case VALIDATE_APIP_PIPELINE_EXISTS
    case VALIDATE_APIP_PIPELINE_VALID
    case VALIDATE_APIP_SHADER_EXISTS
    case VALIDATE_APIP_SHADER_VALID
    case VALIDATE_APIP_CURPASS_ATTACHMENTS_EXISTS
    case VALIDATE_APIP_CURPASS_ATTACHMENTS_VALID
    case VALIDATE_APIP_ATT_COUNT
    case VALIDATE_APIP_COLOR_FORMAT
    case VALIDATE_APIP_DEPTH_FORMAT
    case VALIDATE_APIP_SAMPLE_COUNT
    case VALIDATE_ABND_PIPELINE
    case VALIDATE_ABND_PIPELINE_EXISTS
    case VALIDATE_ABND_PIPELINE_VALID
    case VALIDATE_ABND_EXPECTED_VB
    case VALIDATE_ABND_VB_EXISTS
    case VALIDATE_ABND_VB_TYPE
    case VALIDATE_ABND_VB_OVERFLOW
    case VALIDATE_ABND_NO_IB
    case VALIDATE_ABND_IB
    case VALIDATE_ABND_IB_EXISTS
    case VALIDATE_ABND_IB_TYPE
    case VALIDATE_ABND_IB_OVERFLOW
    case VALIDATE_ABND_EXPECTED_IMAGE_BINDING
    case VALIDATE_ABND_IMG_EXISTS
    case VALIDATE_ABND_IMAGE_TYPE_MISMATCH
    case VALIDATE_ABND_IMAGE_MSAA
    case VALIDATE_ABND_EXPECTED_FILTERABLE_IMAGE
    case VALIDATE_ABND_EXPECTED_DEPTH_IMAGE
    case VALIDATE_ABND_EXPECTED_SAMPLER_BINDING
    case VALIDATE_ABND_UNEXPECTED_SAMPLER_COMPARE_NEVER
    case VALIDATE_ABND_EXPECTED_SAMPLER_COMPARE_NEVER
    case VALIDATE_ABND_EXPECTED_NONFILTERING_SAMPLER
    case VALIDATE_ABND_SMP_EXISTS
    case VALIDATE_ABND_EXPECTED_STORAGEBUFFER_BINDING
    case VALIDATE_ABND_STORAGEBUFFER_EXISTS
    case VALIDATE_ABND_STORAGEBUFFER_BINDING_BUFFERTYPE
    case VALIDATE_AUB_NO_PIPELINE
    case VALIDATE_AUB_NO_UB_AT_SLOT
    case VALIDATE_AUB_SIZE
    case VALIDATE_UPDATEBUF_USAGE
    case VALIDATE_UPDATEBUF_SIZE
    case VALIDATE_UPDATEBUF_ONCE
    case VALIDATE_UPDATEBUF_APPEND
    case VALIDATE_APPENDBUF_USAGE
    case VALIDATE_APPENDBUF_SIZE
    case VALIDATE_APPENDBUF_UPDATE
    case VALIDATE_UPDIMG_USAGE
    case VALIDATE_UPDIMG_ONCE
    case VALIDATION_FAILED
}
struct EnvironmentDefaults {
    var color_format: PixelFormat = .DEFAULT
    var depth_format: PixelFormat = .DEFAULT
    var sample_count: CInt = 0
}
struct MetalEnvironment {
    var device: UnsafeRawPointer? = nil
}
struct D3d11Environment {
    var device: UnsafeRawPointer? = nil
    var device_context: UnsafeRawPointer? = nil
}
struct WgpuEnvironment {
    var device: UnsafeRawPointer? = nil
}
struct Environment {
    var defaults: EnvironmentDefaults = EnvironmentDefaults()
    var metal: MetalEnvironment = MetalEnvironment()
    var d3d11: D3d11Environment = D3d11Environment()
    var wgpu: WgpuEnvironment = WgpuEnvironment()
}
struct CommitListener {
    var fn: (@convention(c) (UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Allocator {
    var alloc_fn: (@convention(c) (Int, UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)? = nil
    var free_fn: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Logger {
    var fn: (@convention(c) (UnsafePointer<CChar>?, UInt32, UInt32, UnsafePointer<CChar>?, UInt32, UnsafePointer<CChar>?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Desc {
    var _start_canary: UInt32 = 0
    var buffer_pool_size: CInt = 0
    var image_pool_size: CInt = 0
    var sampler_pool_size: CInt = 0
    var shader_pool_size: CInt = 0
    var pipeline_pool_size: CInt = 0
    var attachments_pool_size: CInt = 0
    var uniform_buffer_size: CInt = 0
    var max_commit_listeners: CInt = 0
    var disable_validation: Bool = false
    var d3d11_shader_debugging: Bool = false
    var mtl_force_managed_storage_mode: Bool = false
    var mtl_use_command_buffer_with_retained_references: Bool = false
    var wgpu_disable_bindgroups_cache: Bool = false
    var wgpu_bindgroups_cache_size: CInt = 0
    var allocator: Allocator = Allocator()
    var logger: Logger = Logger()
    var environment: Environment = Environment()
    var _end_canary: UInt32 = 0
}
@_extern(c, "sg_setup")
func sg_setup(_: UnsafeRawPointer?)

func setup(_ desc: UnsafePointer<Desc>?) {
    return sg_setup(UnsafePointer(desc))
}
@_extern(c, "sg_shutdown")
func sg_shutdown()

func shutdown() {
    return sg_shutdown()
}
@_extern(c, "sg_isvalid")
func sg_isvalid() -> Bool

func isvalid() -> Bool {
    return sg_isvalid()
}
@_extern(c, "sg_reset_state_cache")
func sg_reset_state_cache()

func resetStateCache() {
    return sg_reset_state_cache()
}
@_extern(c, "sg_push_debug_group")
func sg_push_debug_group(_: UnsafePointer<CChar>?)

func pushDebugGroup(_ name: UnsafePointer<CChar>?) {
    return sg_push_debug_group(name)
}
@_extern(c, "sg_pop_debug_group")
func sg_pop_debug_group()

func popDebugGroup() {
    return sg_pop_debug_group()
}
@_extern(c, "sg_add_commit_listener")
func sg_add_commit_listener(_: OpaquePointer?) -> Bool

func addCommitListener(_ listener: OpaquePointer?) -> Bool {
    return sg_add_commit_listener(listener)
}
@_extern(c, "sg_remove_commit_listener")
func sg_remove_commit_listener(_: OpaquePointer?) -> Bool

func removeCommitListener(_ listener: OpaquePointer?) -> Bool {
    return sg_remove_commit_listener(listener)
}
@_extern(c, "sg_make_buffer")
func sg_make_buffer(_: UnsafeRawPointer?) -> OpaquePointer?

func makeBuffer(_ desc: UnsafePointer<BufferDesc>?) -> OpaquePointer? {
    return sg_make_buffer(UnsafePointer(desc))
}
@_extern(c, "sg_make_image")
func sg_make_image(_: UnsafeRawPointer?) -> OpaquePointer?

func makeImage(_ desc: UnsafePointer<ImageDesc>?) -> OpaquePointer? {
    return sg_make_image(UnsafePointer(desc))
}
@_extern(c, "sg_make_sampler")
func sg_make_sampler(_: UnsafeRawPointer?) -> OpaquePointer?

func makeSampler(_ desc: UnsafePointer<SamplerDesc>?) -> OpaquePointer? {
    return sg_make_sampler(UnsafePointer(desc))
}
@_extern(c, "sg_make_shader")
func sg_make_shader(_: UnsafeRawPointer?) -> OpaquePointer?

func makeShader(_ desc: UnsafePointer<ShaderDesc>?) -> OpaquePointer? {
    return sg_make_shader(UnsafePointer(desc))
}
@_extern(c, "sg_make_pipeline")
func sg_make_pipeline(_: UnsafeRawPointer?) -> OpaquePointer?

func makePipeline(_ desc: UnsafePointer<PipelineDesc>?) -> OpaquePointer? {
    return sg_make_pipeline(UnsafePointer(desc))
}
@_extern(c, "sg_make_attachments")
func sg_make_attachments(_: UnsafeRawPointer?) -> OpaquePointer?

func makeAttachments(_ desc: UnsafePointer<AttachmentsDesc>?) -> OpaquePointer? {
    return sg_make_attachments(UnsafePointer(desc))
}
@_extern(c, "sg_destroy_buffer")
func sg_destroy_buffer(_: OpaquePointer?)

func destroyBuffer(_ buf: OpaquePointer?) {
    return sg_destroy_buffer(buf)
}
@_extern(c, "sg_destroy_image")
func sg_destroy_image(_: OpaquePointer?)

func destroyImage(_ img: OpaquePointer?) {
    return sg_destroy_image(img)
}
@_extern(c, "sg_destroy_sampler")
func sg_destroy_sampler(_: OpaquePointer?)

func destroySampler(_ smp: OpaquePointer?) {
    return sg_destroy_sampler(smp)
}
@_extern(c, "sg_destroy_shader")
func sg_destroy_shader(_: OpaquePointer?)

func destroyShader(_ shd: OpaquePointer?) {
    return sg_destroy_shader(shd)
}
@_extern(c, "sg_destroy_pipeline")
func sg_destroy_pipeline(_: OpaquePointer?)

func destroyPipeline(_ pip: OpaquePointer?) {
    return sg_destroy_pipeline(pip)
}
@_extern(c, "sg_destroy_attachments")
func sg_destroy_attachments(_: OpaquePointer?)

func destroyAttachments(_ atts: OpaquePointer?) {
    return sg_destroy_attachments(atts)
}
@_extern(c, "sg_update_buffer")
func sg_update_buffer(_: OpaquePointer?, _: UnsafeRawPointer?)

func updateBuffer(_ buf: OpaquePointer?, _ data: UnsafePointer<Range>?) {
    return sg_update_buffer(buf, UnsafePointer(data))
}
@_extern(c, "sg_update_image")
func sg_update_image(_: OpaquePointer?, _: UnsafeRawPointer?)

func updateImage(_ img: OpaquePointer?, _ data: UnsafePointer<ImageData>?) {
    return sg_update_image(img, UnsafePointer(data))
}
@_extern(c, "sg_append_buffer")
func sg_append_buffer(_: OpaquePointer?, _: UnsafeRawPointer?) -> CInt

func appendBuffer(_ buf: OpaquePointer?, _ data: UnsafePointer<Range>?) -> CInt {
    return sg_append_buffer(buf, UnsafePointer(data))
}
@_extern(c, "sg_query_buffer_overflow")
func sg_query_buffer_overflow(_: OpaquePointer?) -> Bool

func queryBufferOverflow(_ buf: OpaquePointer?) -> Bool {
    return sg_query_buffer_overflow(buf)
}
@_extern(c, "sg_query_buffer_will_overflow")
func sg_query_buffer_will_overflow(_: OpaquePointer?, _: Int) -> Bool

func queryBufferWillOverflow(_ buf: OpaquePointer?, _ size: Int) -> Bool {
    return sg_query_buffer_will_overflow(buf, size)
}
@_extern(c, "sg_begin_pass")
func sg_begin_pass(_: UnsafeRawPointer?)

func beginPass(_ pass: UnsafePointer<Pass>?) {
    return sg_begin_pass(UnsafePointer(pass))
}
@_extern(c, "sg_apply_viewport")
func sg_apply_viewport(_: CInt, _: CInt, _: CInt, _: CInt, _: Bool)

func applyViewport(_ x: CInt, _ y: CInt, _ width: CInt, _ height: CInt, _ origin_top_left: Bool) {
    return sg_apply_viewport(x, y, width, height, origin_top_left)
}
@_extern(c, "sg_apply_viewportf")
func sg_apply_viewportf(_: Float, _: Float, _: Float, _: Float, _: Bool)

func applyViewportf(_ x: Float, _ y: Float, _ width: Float, _ height: Float, _ origin_top_left: Bool) {
    return sg_apply_viewportf(x, y, width, height, origin_top_left)
}
@_extern(c, "sg_apply_scissor_rect")
func sg_apply_scissor_rect(_: CInt, _: CInt, _: CInt, _: CInt, _: Bool)

func applyScissorRect(_ x: CInt, _ y: CInt, _ width: CInt, _ height: CInt, _ origin_top_left: Bool) {
    return sg_apply_scissor_rect(x, y, width, height, origin_top_left)
}
@_extern(c, "sg_apply_scissor_rectf")
func sg_apply_scissor_rectf(_: Float, _: Float, _: Float, _: Float, _: Bool)

func applyScissorRectf(_ x: Float, _ y: Float, _ width: Float, _ height: Float, _ origin_top_left: Bool) {
    return sg_apply_scissor_rectf(x, y, width, height, origin_top_left)
}
@_extern(c, "sg_apply_pipeline")
func sg_apply_pipeline(_: OpaquePointer?)

func applyPipeline(_ pip: OpaquePointer?) {
    return sg_apply_pipeline(pip)
}
@_extern(c, "sg_apply_bindings")
func sg_apply_bindings(_: UnsafeRawPointer?)

func applyBindings(_ bindings: UnsafePointer<Bindings>?) {
    return sg_apply_bindings(UnsafePointer(bindings))
}
@_extern(c, "sg_apply_uniforms")
func sg_apply_uniforms(_: CInt, _: UnsafeRawPointer?)

func applyUniforms(_ ub_slot: CInt, _ data: UnsafePointer<Range>?) {
    return sg_apply_uniforms(ub_slot, UnsafePointer(data))
}
@_extern(c, "sg_draw")
func sg_draw(_: UInt32, _: UInt32, _: UInt32)

func draw(_ base_element: UInt32, _ num_elements: UInt32, _ num_instances: UInt32) {
    return sg_draw(base_element, num_elements, num_instances)
}
@_extern(c, "sg_end_pass")
func sg_end_pass()

func endPass() {
    return sg_end_pass()
}
@_extern(c, "sg_commit")
func sg_commit()

func commit() {
    return sg_commit()
}
@_extern(c, "sg_query_desc")
func sg_query_desc() -> OpaquePointer?

func queryDesc() -> OpaquePointer? {
    return sg_query_desc()
}
@_extern(c, "sg_query_backend")
func sg_query_backend() -> Backend

func queryBackend() -> Backend {
    return sg_query_backend()
}
@_extern(c, "sg_query_features")
func sg_query_features() -> OpaquePointer?

func queryFeatures() -> OpaquePointer? {
    return sg_query_features()
}
@_extern(c, "sg_query_limits")
func sg_query_limits() -> OpaquePointer?

func queryLimits() -> OpaquePointer? {
    return sg_query_limits()
}
@_extern(c, "sg_query_pixelformat")
func sg_query_pixelformat(_: PixelFormat) -> OpaquePointer?

func queryPixelformat(_ fmt: PixelFormat) -> OpaquePointer? {
    return sg_query_pixelformat(fmt)
}
@_extern(c, "sg_query_row_pitch")
func sg_query_row_pitch(_: PixelFormat, _: CInt, _: CInt) -> CInt

func queryRowPitch(_ fmt: PixelFormat, _ width: CInt, _ row_align_bytes: CInt) -> CInt {
    return sg_query_row_pitch(fmt, width, row_align_bytes)
}
@_extern(c, "sg_query_surface_pitch")
func sg_query_surface_pitch(_: PixelFormat, _: CInt, _: CInt, _: CInt) -> CInt

func querySurfacePitch(_ fmt: PixelFormat, _ width: CInt, _ height: CInt, _ row_align_bytes: CInt) -> CInt {
    return sg_query_surface_pitch(fmt, width, height, row_align_bytes)
}
@_extern(c, "sg_query_buffer_state")
func sg_query_buffer_state(_: OpaquePointer?) -> ResourceState

func queryBufferState(_ buf: OpaquePointer?) -> ResourceState {
    return sg_query_buffer_state(buf)
}
@_extern(c, "sg_query_image_state")
func sg_query_image_state(_: OpaquePointer?) -> ResourceState

func queryImageState(_ img: OpaquePointer?) -> ResourceState {
    return sg_query_image_state(img)
}
@_extern(c, "sg_query_sampler_state")
func sg_query_sampler_state(_: OpaquePointer?) -> ResourceState

func querySamplerState(_ smp: OpaquePointer?) -> ResourceState {
    return sg_query_sampler_state(smp)
}
@_extern(c, "sg_query_shader_state")
func sg_query_shader_state(_: OpaquePointer?) -> ResourceState

func queryShaderState(_ shd: OpaquePointer?) -> ResourceState {
    return sg_query_shader_state(shd)
}
@_extern(c, "sg_query_pipeline_state")
func sg_query_pipeline_state(_: OpaquePointer?) -> ResourceState

func queryPipelineState(_ pip: OpaquePointer?) -> ResourceState {
    return sg_query_pipeline_state(pip)
}
@_extern(c, "sg_query_attachments_state")
func sg_query_attachments_state(_: OpaquePointer?) -> ResourceState

func queryAttachmentsState(_ atts: OpaquePointer?) -> ResourceState {
    return sg_query_attachments_state(atts)
}
@_extern(c, "sg_query_buffer_info")
func sg_query_buffer_info(_: OpaquePointer?) -> OpaquePointer?

func queryBufferInfo(_ buf: OpaquePointer?) -> OpaquePointer? {
    return sg_query_buffer_info(buf)
}
@_extern(c, "sg_query_image_info")
func sg_query_image_info(_: OpaquePointer?) -> OpaquePointer?

func queryImageInfo(_ img: OpaquePointer?) -> OpaquePointer? {
    return sg_query_image_info(img)
}
@_extern(c, "sg_query_sampler_info")
func sg_query_sampler_info(_: OpaquePointer?) -> OpaquePointer?

func querySamplerInfo(_ smp: OpaquePointer?) -> OpaquePointer? {
    return sg_query_sampler_info(smp)
}
@_extern(c, "sg_query_shader_info")
func sg_query_shader_info(_: OpaquePointer?) -> OpaquePointer?

func queryShaderInfo(_ shd: OpaquePointer?) -> OpaquePointer? {
    return sg_query_shader_info(shd)
}
@_extern(c, "sg_query_pipeline_info")
func sg_query_pipeline_info(_: OpaquePointer?) -> OpaquePointer?

func queryPipelineInfo(_ pip: OpaquePointer?) -> OpaquePointer? {
    return sg_query_pipeline_info(pip)
}
@_extern(c, "sg_query_attachments_info")
func sg_query_attachments_info(_: OpaquePointer?) -> OpaquePointer?

func queryAttachmentsInfo(_ atts: OpaquePointer?) -> OpaquePointer? {
    return sg_query_attachments_info(atts)
}
@_extern(c, "sg_query_buffer_desc")
func sg_query_buffer_desc(_: OpaquePointer?) -> OpaquePointer?

func queryBufferDesc(_ buf: OpaquePointer?) -> OpaquePointer? {
    return sg_query_buffer_desc(buf)
}
@_extern(c, "sg_query_image_desc")
func sg_query_image_desc(_: OpaquePointer?) -> OpaquePointer?

func queryImageDesc(_ img: OpaquePointer?) -> OpaquePointer? {
    return sg_query_image_desc(img)
}
@_extern(c, "sg_query_sampler_desc")
func sg_query_sampler_desc(_: OpaquePointer?) -> OpaquePointer?

func querySamplerDesc(_ smp: OpaquePointer?) -> OpaquePointer? {
    return sg_query_sampler_desc(smp)
}
@_extern(c, "sg_query_shader_desc")
func sg_query_shader_desc(_: OpaquePointer?) -> OpaquePointer?

func queryShaderDesc(_ shd: OpaquePointer?) -> OpaquePointer? {
    return sg_query_shader_desc(shd)
}
@_extern(c, "sg_query_pipeline_desc")
func sg_query_pipeline_desc(_: OpaquePointer?) -> OpaquePointer?

func queryPipelineDesc(_ pip: OpaquePointer?) -> OpaquePointer? {
    return sg_query_pipeline_desc(pip)
}
@_extern(c, "sg_query_attachments_desc")
func sg_query_attachments_desc(_: OpaquePointer?) -> OpaquePointer?

func queryAttachmentsDesc(_ atts: OpaquePointer?) -> OpaquePointer? {
    return sg_query_attachments_desc(atts)
}
@_extern(c, "sg_query_buffer_defaults")
func sg_query_buffer_defaults(_: UnsafeRawPointer?) -> OpaquePointer?

func queryBufferDefaults(_ desc: UnsafePointer<BufferDesc>?) -> OpaquePointer? {
    return sg_query_buffer_defaults(UnsafePointer(desc))
}
@_extern(c, "sg_query_image_defaults")
func sg_query_image_defaults(_: UnsafeRawPointer?) -> OpaquePointer?

func queryImageDefaults(_ desc: UnsafePointer<ImageDesc>?) -> OpaquePointer? {
    return sg_query_image_defaults(UnsafePointer(desc))
}
@_extern(c, "sg_query_sampler_defaults")
func sg_query_sampler_defaults(_: UnsafeRawPointer?) -> OpaquePointer?

func querySamplerDefaults(_ desc: UnsafePointer<SamplerDesc>?) -> OpaquePointer? {
    return sg_query_sampler_defaults(UnsafePointer(desc))
}
@_extern(c, "sg_query_shader_defaults")
func sg_query_shader_defaults(_: UnsafeRawPointer?) -> OpaquePointer?

func queryShaderDefaults(_ desc: UnsafePointer<ShaderDesc>?) -> OpaquePointer? {
    return sg_query_shader_defaults(UnsafePointer(desc))
}
@_extern(c, "sg_query_pipeline_defaults")
func sg_query_pipeline_defaults(_: UnsafeRawPointer?) -> OpaquePointer?

func queryPipelineDefaults(_ desc: UnsafePointer<PipelineDesc>?) -> OpaquePointer? {
    return sg_query_pipeline_defaults(UnsafePointer(desc))
}
@_extern(c, "sg_query_attachments_defaults")
func sg_query_attachments_defaults(_: UnsafeRawPointer?) -> OpaquePointer?

func queryAttachmentsDefaults(_ desc: UnsafePointer<AttachmentsDesc>?) -> OpaquePointer? {
    return sg_query_attachments_defaults(UnsafePointer(desc))
}
@_extern(c, "sg_alloc_buffer")
func sg_alloc_buffer() -> OpaquePointer?

func allocBuffer() -> OpaquePointer? {
    return sg_alloc_buffer()
}
@_extern(c, "sg_alloc_image")
func sg_alloc_image() -> OpaquePointer?

func allocImage() -> OpaquePointer? {
    return sg_alloc_image()
}
@_extern(c, "sg_alloc_sampler")
func sg_alloc_sampler() -> OpaquePointer?

func allocSampler() -> OpaquePointer? {
    return sg_alloc_sampler()
}
@_extern(c, "sg_alloc_shader")
func sg_alloc_shader() -> OpaquePointer?

func allocShader() -> OpaquePointer? {
    return sg_alloc_shader()
}
@_extern(c, "sg_alloc_pipeline")
func sg_alloc_pipeline() -> OpaquePointer?

func allocPipeline() -> OpaquePointer? {
    return sg_alloc_pipeline()
}
@_extern(c, "sg_alloc_attachments")
func sg_alloc_attachments() -> OpaquePointer?

func allocAttachments() -> OpaquePointer? {
    return sg_alloc_attachments()
}
@_extern(c, "sg_dealloc_buffer")
func sg_dealloc_buffer(_: OpaquePointer?)

func deallocBuffer(_ buf: OpaquePointer?) {
    return sg_dealloc_buffer(buf)
}
@_extern(c, "sg_dealloc_image")
func sg_dealloc_image(_: OpaquePointer?)

func deallocImage(_ img: OpaquePointer?) {
    return sg_dealloc_image(img)
}
@_extern(c, "sg_dealloc_sampler")
func sg_dealloc_sampler(_: OpaquePointer?)

func deallocSampler(_ smp: OpaquePointer?) {
    return sg_dealloc_sampler(smp)
}
@_extern(c, "sg_dealloc_shader")
func sg_dealloc_shader(_: OpaquePointer?)

func deallocShader(_ shd: OpaquePointer?) {
    return sg_dealloc_shader(shd)
}
@_extern(c, "sg_dealloc_pipeline")
func sg_dealloc_pipeline(_: OpaquePointer?)

func deallocPipeline(_ pip: OpaquePointer?) {
    return sg_dealloc_pipeline(pip)
}
@_extern(c, "sg_dealloc_attachments")
func sg_dealloc_attachments(_: OpaquePointer?)

func deallocAttachments(_ attachments: OpaquePointer?) {
    return sg_dealloc_attachments(attachments)
}
@_extern(c, "sg_init_buffer")
func sg_init_buffer(_: OpaquePointer?, _: UnsafeRawPointer?)

func initBuffer(_ buf: OpaquePointer?, _ desc: UnsafePointer<BufferDesc>?) {
    return sg_init_buffer(buf, UnsafePointer(desc))
}
@_extern(c, "sg_init_image")
func sg_init_image(_: OpaquePointer?, _: UnsafeRawPointer?)

func initImage(_ img: OpaquePointer?, _ desc: UnsafePointer<ImageDesc>?) {
    return sg_init_image(img, UnsafePointer(desc))
}
@_extern(c, "sg_init_sampler")
func sg_init_sampler(_: OpaquePointer?, _: UnsafeRawPointer?)

func initSampler(_ smg: OpaquePointer?, _ desc: UnsafePointer<SamplerDesc>?) {
    return sg_init_sampler(smg, UnsafePointer(desc))
}
@_extern(c, "sg_init_shader")
func sg_init_shader(_: OpaquePointer?, _: UnsafeRawPointer?)

func initShader(_ shd: OpaquePointer?, _ desc: UnsafePointer<ShaderDesc>?) {
    return sg_init_shader(shd, UnsafePointer(desc))
}
@_extern(c, "sg_init_pipeline")
func sg_init_pipeline(_: OpaquePointer?, _: UnsafeRawPointer?)

func initPipeline(_ pip: OpaquePointer?, _ desc: UnsafePointer<PipelineDesc>?) {
    return sg_init_pipeline(pip, UnsafePointer(desc))
}
@_extern(c, "sg_init_attachments")
func sg_init_attachments(_: OpaquePointer?, _: UnsafeRawPointer?)

func initAttachments(_ attachments: OpaquePointer?, _ desc: UnsafePointer<AttachmentsDesc>?) {
    return sg_init_attachments(attachments, UnsafePointer(desc))
}
@_extern(c, "sg_uninit_buffer")
func sg_uninit_buffer(_: OpaquePointer?)

func uninitBuffer(_ buf: OpaquePointer?) {
    return sg_uninit_buffer(buf)
}
@_extern(c, "sg_uninit_image")
func sg_uninit_image(_: OpaquePointer?)

func uninitImage(_ img: OpaquePointer?) {
    return sg_uninit_image(img)
}
@_extern(c, "sg_uninit_sampler")
func sg_uninit_sampler(_: OpaquePointer?)

func uninitSampler(_ smp: OpaquePointer?) {
    return sg_uninit_sampler(smp)
}
@_extern(c, "sg_uninit_shader")
func sg_uninit_shader(_: OpaquePointer?)

func uninitShader(_ shd: OpaquePointer?) {
    return sg_uninit_shader(shd)
}
@_extern(c, "sg_uninit_pipeline")
func sg_uninit_pipeline(_: OpaquePointer?)

func uninitPipeline(_ pip: OpaquePointer?) {
    return sg_uninit_pipeline(pip)
}
@_extern(c, "sg_uninit_attachments")
func sg_uninit_attachments(_: OpaquePointer?)

func uninitAttachments(_ atts: OpaquePointer?) {
    return sg_uninit_attachments(atts)
}
@_extern(c, "sg_fail_buffer")
func sg_fail_buffer(_: OpaquePointer?)

func failBuffer(_ buf: OpaquePointer?) {
    return sg_fail_buffer(buf)
}
@_extern(c, "sg_fail_image")
func sg_fail_image(_: OpaquePointer?)

func failImage(_ img: OpaquePointer?) {
    return sg_fail_image(img)
}
@_extern(c, "sg_fail_sampler")
func sg_fail_sampler(_: OpaquePointer?)

func failSampler(_ smp: OpaquePointer?) {
    return sg_fail_sampler(smp)
}
@_extern(c, "sg_fail_shader")
func sg_fail_shader(_: OpaquePointer?)

func failShader(_ shd: OpaquePointer?) {
    return sg_fail_shader(shd)
}
@_extern(c, "sg_fail_pipeline")
func sg_fail_pipeline(_: OpaquePointer?)

func failPipeline(_ pip: OpaquePointer?) {
    return sg_fail_pipeline(pip)
}
@_extern(c, "sg_fail_attachments")
func sg_fail_attachments(_: OpaquePointer?)

func failAttachments(_ atts: OpaquePointer?) {
    return sg_fail_attachments(atts)
}
@_extern(c, "sg_enable_frame_stats")
func sg_enable_frame_stats()

func enableFrameStats() {
    return sg_enable_frame_stats()
}
@_extern(c, "sg_disable_frame_stats")
func sg_disable_frame_stats()

func disableFrameStats() {
    return sg_disable_frame_stats()
}
@_extern(c, "sg_frame_stats_enabled")
func sg_frame_stats_enabled() -> Bool

func frameStatsEnabled() -> Bool {
    return sg_frame_stats_enabled()
}
@_extern(c, "sg_query_frame_stats")
func sg_query_frame_stats() -> OpaquePointer?

func queryFrameStats() -> OpaquePointer? {
    return sg_query_frame_stats()
}
struct D3d11BufferInfo {
    var buf: UnsafeRawPointer? = nil
}
struct D3d11ImageInfo {
    var tex2d: UnsafeRawPointer? = nil
    var tex3d: UnsafeRawPointer? = nil
    var res: UnsafeRawPointer? = nil
    var srv: UnsafeRawPointer? = nil
}
struct D3d11SamplerInfo {
    var smp: UnsafeRawPointer? = nil
}
struct D3d11ShaderInfo {
    var cbufs: [UnsafeRawPointer?] = Array(repeating: nil, count: 8)
    var vs: UnsafeRawPointer? = nil
    var fs: UnsafeRawPointer? = nil
}
struct D3d11PipelineInfo {
    var il: UnsafeRawPointer? = nil
    var rs: UnsafeRawPointer? = nil
    var dss: UnsafeRawPointer? = nil
    var bs: UnsafeRawPointer? = nil
}
struct D3d11AttachmentsInfo {
    var color_rtv: [UnsafeRawPointer?] = Array(repeating: nil, count: 4)
    var resolve_rtv: [UnsafeRawPointer?] = Array(repeating: nil, count: 4)
    var dsv: UnsafeRawPointer? = nil
}
struct MtlBufferInfo {
    var buf: [UnsafeRawPointer?] = Array(repeating: nil, count: 2)
    var active_slot: CInt = 0
}
struct MtlImageInfo {
    var tex: [UnsafeRawPointer?] = Array(repeating: nil, count: 2)
    var active_slot: CInt = 0
}
struct MtlSamplerInfo {
    var smp: UnsafeRawPointer? = nil
}
struct MtlShaderInfo {
    var vertex_lib: UnsafeRawPointer? = nil
    var fragment_lib: UnsafeRawPointer? = nil
    var vertex_func: UnsafeRawPointer? = nil
    var fragment_func: UnsafeRawPointer? = nil
}
struct MtlPipelineInfo {
    var rps: UnsafeRawPointer? = nil
    var dss: UnsafeRawPointer? = nil
}
struct WgpuBufferInfo {
    var buf: UnsafeRawPointer? = nil
}
struct WgpuImageInfo {
    var tex: UnsafeRawPointer? = nil
    var view: UnsafeRawPointer? = nil
}
struct WgpuSamplerInfo {
    var smp: UnsafeRawPointer? = nil
}
struct WgpuShaderInfo {
    var vs_mod: UnsafeRawPointer? = nil
    var fs_mod: UnsafeRawPointer? = nil
    var bgl: UnsafeRawPointer? = nil
}
struct WgpuPipelineInfo {
    var pip: UnsafeRawPointer? = nil
}
struct WgpuAttachmentsInfo {
    var color_view: [UnsafeRawPointer?] = Array(repeating: nil, count: 4)
    var resolve_view: [UnsafeRawPointer?] = Array(repeating: nil, count: 4)
    var ds_view: UnsafeRawPointer? = nil
}
struct GlBufferInfo {
    var buf: [UInt32] = Array(repeating: UInt32(0), count: 2)
    var active_slot: CInt = 0
}
struct GlImageInfo {
    var tex: [UInt32] = Array(repeating: UInt32(0), count: 2)
    var tex_target: UInt32 = 0
    var msaa_render_buffer: UInt32 = 0
    var active_slot: CInt = 0
}
struct GlSamplerInfo {
    var smp: UInt32 = 0
}
struct GlShaderInfo {
    var prog: UInt32 = 0
}
struct GlAttachmentsInfo {
    var framebuffer: UInt32 = 0
    var msaa_resolve_framebuffer: [UInt32] = Array(repeating: UInt32(0), count: 4)
}
@_extern(c, "sg_d3d11_device")
func sg_d3d11_device() -> UnsafeRawPointer?

func d3d11Device() -> UnsafeRawPointer? {
    return sg_d3d11_device()
}
@_extern(c, "sg_d3d11_device_context")
func sg_d3d11_device_context() -> UnsafeRawPointer?

func d3d11DeviceContext() -> UnsafeRawPointer? {
    return sg_d3d11_device_context()
}
@_extern(c, "sg_d3d11_query_buffer_info")
func sg_d3d11_query_buffer_info(_: OpaquePointer?) -> OpaquePointer?

func d3d11QueryBufferInfo(_ buf: OpaquePointer?) -> OpaquePointer? {
    return sg_d3d11_query_buffer_info(buf)
}
@_extern(c, "sg_d3d11_query_image_info")
func sg_d3d11_query_image_info(_: OpaquePointer?) -> OpaquePointer?

func d3d11QueryImageInfo(_ img: OpaquePointer?) -> OpaquePointer? {
    return sg_d3d11_query_image_info(img)
}
@_extern(c, "sg_d3d11_query_sampler_info")
func sg_d3d11_query_sampler_info(_: OpaquePointer?) -> OpaquePointer?

func d3d11QuerySamplerInfo(_ smp: OpaquePointer?) -> OpaquePointer? {
    return sg_d3d11_query_sampler_info(smp)
}
@_extern(c, "sg_d3d11_query_shader_info")
func sg_d3d11_query_shader_info(_: OpaquePointer?) -> OpaquePointer?

func d3d11QueryShaderInfo(_ shd: OpaquePointer?) -> OpaquePointer? {
    return sg_d3d11_query_shader_info(shd)
}
@_extern(c, "sg_d3d11_query_pipeline_info")
func sg_d3d11_query_pipeline_info(_: OpaquePointer?) -> OpaquePointer?

func d3d11QueryPipelineInfo(_ pip: OpaquePointer?) -> OpaquePointer? {
    return sg_d3d11_query_pipeline_info(pip)
}
@_extern(c, "sg_d3d11_query_attachments_info")
func sg_d3d11_query_attachments_info(_: OpaquePointer?) -> OpaquePointer?

func d3d11QueryAttachmentsInfo(_ atts: OpaquePointer?) -> OpaquePointer? {
    return sg_d3d11_query_attachments_info(atts)
}
@_extern(c, "sg_mtl_device")
func sg_mtl_device() -> UnsafeRawPointer?

func mtlDevice() -> UnsafeRawPointer? {
    return sg_mtl_device()
}
@_extern(c, "sg_mtl_render_command_encoder")
func sg_mtl_render_command_encoder() -> UnsafeRawPointer?

func mtlRenderCommandEncoder() -> UnsafeRawPointer? {
    return sg_mtl_render_command_encoder()
}
@_extern(c, "sg_mtl_query_buffer_info")
func sg_mtl_query_buffer_info(_: OpaquePointer?) -> OpaquePointer?

func mtlQueryBufferInfo(_ buf: OpaquePointer?) -> OpaquePointer? {
    return sg_mtl_query_buffer_info(buf)
}
@_extern(c, "sg_mtl_query_image_info")
func sg_mtl_query_image_info(_: OpaquePointer?) -> OpaquePointer?

func mtlQueryImageInfo(_ img: OpaquePointer?) -> OpaquePointer? {
    return sg_mtl_query_image_info(img)
}
@_extern(c, "sg_mtl_query_sampler_info")
func sg_mtl_query_sampler_info(_: OpaquePointer?) -> OpaquePointer?

func mtlQuerySamplerInfo(_ smp: OpaquePointer?) -> OpaquePointer? {
    return sg_mtl_query_sampler_info(smp)
}
@_extern(c, "sg_mtl_query_shader_info")
func sg_mtl_query_shader_info(_: OpaquePointer?) -> OpaquePointer?

func mtlQueryShaderInfo(_ shd: OpaquePointer?) -> OpaquePointer? {
    return sg_mtl_query_shader_info(shd)
}
@_extern(c, "sg_mtl_query_pipeline_info")
func sg_mtl_query_pipeline_info(_: OpaquePointer?) -> OpaquePointer?

func mtlQueryPipelineInfo(_ pip: OpaquePointer?) -> OpaquePointer? {
    return sg_mtl_query_pipeline_info(pip)
}
@_extern(c, "sg_wgpu_device")
func sg_wgpu_device() -> UnsafeRawPointer?

func wgpuDevice() -> UnsafeRawPointer? {
    return sg_wgpu_device()
}
@_extern(c, "sg_wgpu_queue")
func sg_wgpu_queue() -> UnsafeRawPointer?

func wgpuQueue() -> UnsafeRawPointer? {
    return sg_wgpu_queue()
}
@_extern(c, "sg_wgpu_command_encoder")
func sg_wgpu_command_encoder() -> UnsafeRawPointer?

func wgpuCommandEncoder() -> UnsafeRawPointer? {
    return sg_wgpu_command_encoder()
}
@_extern(c, "sg_wgpu_render_pass_encoder")
func sg_wgpu_render_pass_encoder() -> UnsafeRawPointer?

func wgpuRenderPassEncoder() -> UnsafeRawPointer? {
    return sg_wgpu_render_pass_encoder()
}
@_extern(c, "sg_wgpu_query_buffer_info")
func sg_wgpu_query_buffer_info(_: OpaquePointer?) -> OpaquePointer?

func wgpuQueryBufferInfo(_ buf: OpaquePointer?) -> OpaquePointer? {
    return sg_wgpu_query_buffer_info(buf)
}
@_extern(c, "sg_wgpu_query_image_info")
func sg_wgpu_query_image_info(_: OpaquePointer?) -> OpaquePointer?

func wgpuQueryImageInfo(_ img: OpaquePointer?) -> OpaquePointer? {
    return sg_wgpu_query_image_info(img)
}
@_extern(c, "sg_wgpu_query_sampler_info")
func sg_wgpu_query_sampler_info(_: OpaquePointer?) -> OpaquePointer?

func wgpuQuerySamplerInfo(_ smp: OpaquePointer?) -> OpaquePointer? {
    return sg_wgpu_query_sampler_info(smp)
}
@_extern(c, "sg_wgpu_query_shader_info")
func sg_wgpu_query_shader_info(_: OpaquePointer?) -> OpaquePointer?

func wgpuQueryShaderInfo(_ shd: OpaquePointer?) -> OpaquePointer? {
    return sg_wgpu_query_shader_info(shd)
}
@_extern(c, "sg_wgpu_query_pipeline_info")
func sg_wgpu_query_pipeline_info(_: OpaquePointer?) -> OpaquePointer?

func wgpuQueryPipelineInfo(_ pip: OpaquePointer?) -> OpaquePointer? {
    return sg_wgpu_query_pipeline_info(pip)
}
@_extern(c, "sg_wgpu_query_attachments_info")
func sg_wgpu_query_attachments_info(_: OpaquePointer?) -> OpaquePointer?

func wgpuQueryAttachmentsInfo(_ atts: OpaquePointer?) -> OpaquePointer? {
    return sg_wgpu_query_attachments_info(atts)
}
@_extern(c, "sg_gl_query_buffer_info")
func sg_gl_query_buffer_info(_: OpaquePointer?) -> OpaquePointer?

func glQueryBufferInfo(_ buf: OpaquePointer?) -> OpaquePointer? {
    return sg_gl_query_buffer_info(buf)
}
@_extern(c, "sg_gl_query_image_info")
func sg_gl_query_image_info(_: OpaquePointer?) -> OpaquePointer?

func glQueryImageInfo(_ img: OpaquePointer?) -> OpaquePointer? {
    return sg_gl_query_image_info(img)
}
@_extern(c, "sg_gl_query_sampler_info")
func sg_gl_query_sampler_info(_: OpaquePointer?) -> OpaquePointer?

func glQuerySamplerInfo(_ smp: OpaquePointer?) -> OpaquePointer? {
    return sg_gl_query_sampler_info(smp)
}
@_extern(c, "sg_gl_query_shader_info")
func sg_gl_query_shader_info(_: OpaquePointer?) -> OpaquePointer?

func glQueryShaderInfo(_ shd: OpaquePointer?) -> OpaquePointer? {
    return sg_gl_query_shader_info(shd)
}
@_extern(c, "sg_gl_query_attachments_info")
func sg_gl_query_attachments_info(_: OpaquePointer?) -> OpaquePointer?

func glQueryAttachmentsInfo(_ atts: OpaquePointer?) -> OpaquePointer? {
    return sg_gl_query_attachments_info(atts)
}
