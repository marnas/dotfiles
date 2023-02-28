rule = {
    matches = {
        {
            { "device.name", "equals", "alsa_card.usb-046d_Logitech_StreamCam_3FE5D545-02" },
        },
    },
    apply_properties = {
        ["device.disabled"] = true,
    },
}

table.insert(alsa_monitor.rules,rule)