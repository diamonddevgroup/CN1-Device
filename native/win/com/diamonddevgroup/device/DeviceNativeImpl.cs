namespace com.diamonddevgroup.device

using Windows.ApplicationModel;
using Windows.Security.ExchangeActiveSyncProvisioning;
using Windows.System.Profile;

{


public class DeviceNativeImpl : IDeviceNativeImpl {
    public string  name() {
        EasClientDeviceInformation eas = new EasClientDeviceInformation();
        return eas.FriendlyName;
    }

    public string  model() {
        EasClientDeviceInformation eas = new EasClientDeviceInformation();
        return eas.SystemProductName;
    }

    public string  manufacturer() {
        EasClientDeviceInformation eas = new EasClientDeviceInformation();
        return eas.SystemManufacturer;
    }

    public bool isNotch() {
        return false;
    }

    public bool isSupported() {
        return false;
    }

}
}
