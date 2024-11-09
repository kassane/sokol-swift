// machine generated, do not edit


@objc
enum LogItem : CUnsignedInt {
    case OK
    case MALLOC_FAILED
    case ALSA_SND_PCM_OPEN_FAILED
    case ALSA_FLOAT_SAMPLES_NOT_SUPPORTED
    case ALSA_REQUESTED_BUFFER_SIZE_NOT_SUPPORTED
    case ALSA_REQUESTED_CHANNEL_COUNT_NOT_SUPPORTED
    case ALSA_SND_PCM_HW_PARAMS_SET_RATE_NEAR_FAILED
    case ALSA_SND_PCM_HW_PARAMS_FAILED
    case ALSA_PTHREAD_CREATE_FAILED
    case WASAPI_CREATE_EVENT_FAILED
    case WASAPI_CREATE_DEVICE_ENUMERATOR_FAILED
    case WASAPI_GET_DEFAULT_AUDIO_ENDPOINT_FAILED
    case WASAPI_DEVICE_ACTIVATE_FAILED
    case WASAPI_AUDIO_CLIENT_INITIALIZE_FAILED
    case WASAPI_AUDIO_CLIENT_GET_BUFFER_SIZE_FAILED
    case WASAPI_AUDIO_CLIENT_GET_SERVICE_FAILED
    case WASAPI_AUDIO_CLIENT_SET_EVENT_HANDLE_FAILED
    case WASAPI_CREATE_THREAD_FAILED
    case AAUDIO_STREAMBUILDER_OPEN_STREAM_FAILED
    case AAUDIO_PTHREAD_CREATE_FAILED
    case AAUDIO_RESTARTING_STREAM_AFTER_ERROR
    case USING_AAUDIO_BACKEND
    case AAUDIO_CREATE_STREAMBUILDER_FAILED
    case USING_SLES_BACKEND
    case SLES_CREATE_ENGINE_FAILED
    case SLES_ENGINE_GET_ENGINE_INTERFACE_FAILED
    case SLES_CREATE_OUTPUT_MIX_FAILED
    case SLES_MIXER_GET_VOLUME_INTERFACE_FAILED
    case SLES_ENGINE_CREATE_AUDIO_PLAYER_FAILED
    case SLES_PLAYER_GET_PLAY_INTERFACE_FAILED
    case SLES_PLAYER_GET_VOLUME_INTERFACE_FAILED
    case SLES_PLAYER_GET_BUFFERQUEUE_INTERFACE_FAILED
    case COREAUDIO_NEW_OUTPUT_FAILED
    case COREAUDIO_ALLOCATE_BUFFER_FAILED
    case COREAUDIO_START_FAILED
    case BACKEND_BUFFER_SIZE_ISNT_MULTIPLE_OF_PACKET_SIZE
}
struct Logger {
    var fn: (@convention(c) (UnsafePointer<CChar>?, UInt32, UInt32, UnsafePointer<CChar>?, UInt32, UnsafePointer<CChar>?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Allocator {
    var alloc_fn: (@convention(c) (Int, UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)? = nil
    var free_fn: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
}
struct Desc {
    var sample_rate: CInt = 0
    var num_channels: CInt = 0
    var buffer_frames: CInt = 0
    var packet_frames: CInt = 0
    var num_packets: CInt = 0
    var stream_cb: (@convention(c) (UnsafeMutablePointer<Float>, CInt, CInt) -> Void)? = nil
    var stream_userdata_cb: (@convention(c) (UnsafeMutablePointer<Float>, CInt, CInt, UnsafeMutableRawPointer?) -> Void)? = nil
    var user_data: UnsafeMutableRawPointer? = nil
    var allocator: Allocator = Allocator()
    var logger: Logger = Logger()
}
@_extern(c, "saudio_setup")
func saudio_setup(_: UnsafeRawPointer?)

func setup(_ desc: UnsafePointer<Desc>?) {
    return saudio_setup(UnsafePointer(desc))
}
@_extern(c, "saudio_shutdown")
func saudio_shutdown()

func shutdown() {
    return saudio_shutdown()
}
@_extern(c, "saudio_isvalid")
func saudio_isvalid() -> Bool

func isvalid() -> Bool {
    return saudio_isvalid()
}
@_extern(c, "saudio_userdata")
func saudio_userdata() -> UnsafeMutableRawPointer?

func userdata() -> UnsafeMutableRawPointer? {
    return saudio_userdata()
}
@_extern(c, "saudio_query_desc")
func saudio_query_desc() -> OpaquePointer?

func queryDesc() -> OpaquePointer? {
    return saudio_query_desc()
}
@_extern(c, "saudio_sample_rate")
func saudio_sample_rate() -> CInt

func sampleRate() -> CInt {
    return saudio_sample_rate()
}
@_extern(c, "saudio_buffer_frames")
func saudio_buffer_frames() -> CInt

func bufferFrames() -> CInt {
    return saudio_buffer_frames()
}
@_extern(c, "saudio_channels")
func saudio_channels() -> CInt

func channels() -> CInt {
    return saudio_channels()
}
@_extern(c, "saudio_suspended")
func saudio_suspended() -> Bool

func suspended() -> Bool {
    return saudio_suspended()
}
@_extern(c, "saudio_expect")
func saudio_expect() -> CInt

func expect() -> CInt {
    return saudio_expect()
}
@_extern(c, "saudio_push")
func saudio_push(_: UnsafePointer<Float>, _: CInt) -> CInt

func push(_ frames: UnsafePointer<Float>?, _ num_frames: CInt) -> CInt {
    return saudio_push(frames, num_frames)
}
