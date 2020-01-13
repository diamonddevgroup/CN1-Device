package com.diamonddevgroup.device;

import com.codename1.system.NativeLookup;

/**
 * This is an API to get the consumer friendly name, model, and manufacturer of
 * a device
 *
 * @author Diamond
 */
public class Device {

    private static DeviceNative nativeImpl;

    private static DeviceNative get() {
        if (nativeImpl == null) {
            nativeImpl = NativeLookup.create(DeviceNative.class);
            if (!nativeImpl.isSupported()) {
                nativeImpl = null;
            }
        }
        return nativeImpl;
    }

    /**
     * Check if this is supported
     *
     * @return supported
     */
    private static boolean isSupported() {
        return get() != null;
    }

    /**
     * Get the consumer friendly manufacturer name of the device. e.g "Apple
     * Inc."
     *
     * @return the manufacturer name of the current device.
     */
    public static String getManufacturer() {
        if (isSupported()) {
            return get().manufacturer();
        }
        return "";
    }

    /**
     * Get the consumer friendly name of the device. e.g "iPhone X"
     *
     * @return the market name of the current device.
     */
    public static String getName() {
        if (isSupported()) {
            return get().name();
        }
        return "";
    }

    /**
     * Get the consumer friendly model of the device. e.g "iPhone X
     * (China/Japan)"
     *
     * @return the model of the current device.
     */
    public static String getModel() {
        if (isSupported()) {
            return get().model();
        }
        return "";
    }
    
    /**
     * Check if device is notch. e.g "iPhone X has one"
     *
     * @return true if device is notch.
     */
    public static boolean isNotch() {
        if (isSupported()) {
            return get().isNotch();
        }
        return false;
    }
}
