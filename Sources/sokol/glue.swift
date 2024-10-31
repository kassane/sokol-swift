// machine generated, do not edit

@_extern(c, "sglue_environment")
func sglue_environment() -> sg.Environment

func environment() -> sg.Environment {
    return sglue_environment()
}
@_extern(c, "sglue_swapchain")
func sglue_swapchain() -> sg.Swapchain

func swapchain() -> sg.Swapchain {
    return sglue_swapchain()
}
