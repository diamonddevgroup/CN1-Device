package com.diamonddevgroup.device;

import com.codename1.system.NativeInterface;

/**
 * @deprecated internal implementation detail
 * @author Diamond
 */
public interface DeviceNative extends NativeInterface {

    public String manufacturer();

    public String name();

    public String model();
    
    public boolean isNotch();
}
