// machine generated, do not edit

@_extern(c, "sglue_environment")
func sglue_environment() -> OpaquePointer?

func environment() -> OpaquePointer? {
    return sglue_environment()
}
@_extern(c, "sglue_swapchain")
func sglue_swapchain() -> OpaquePointer?

func swapchain() -> OpaquePointer? {
    return sglue_swapchain()
}
