#import "com_diamonddevgroup_device_DeviceNativeImpl.h"
#include <sys/sysctl.h>

/**
 * Hardware string of devices
*/

NSString* const AppleTV1_1 = @"AppleTV1,1";
NSString* const AppleTV2_1 = @"AppleTV2,1";
NSString* const AppleTV3_1 = @"AppleTV3,1";
NSString* const AppleTV3_2 = @"AppleTV3,2";
NSString* const AppleTV5_3 = @"AppleTV5,3";
NSString* const AppleTV6_2 = @"AppleTV6,2";

NSString* const Watch1_1 = @"Watch1,1";
NSString* const Watch1_2 = @"Watch1,2";
NSString* const Watch2_3 = @"Watch2,3";
NSString* const Watch2_4 = @"Watch2,4";
NSString* const Watch2_6 = @"Watch2,6";
NSString* const Watch2_7 = @"Watch2,7";
NSString* const Watch3_1 = @"Watch3,1";
NSString* const Watch3_2 = @"Watch3,2";
NSString* const Watch3_3 = @"Watch3,3";
NSString* const Watch3_4 = @"Watch3,4";
NSString* const Watch4_1 = @"Watch4,1";
NSString* const Watch4_2 = @"Watch4,2";
NSString* const Watch4_3 = @"Watch4,3";
NSString* const Watch4_4 = @"Watch4,4";
NSString* const Watch5_1 = @"Watch5,1";
NSString* const Watch5_2 = @"Watch5,2";
NSString* const Watch5_3 = @"Watch5,3";
NSString* const Watch5_4 = @"Watch5,4";

NSString* const iPad1_1 = @"iPad1,1";
NSString* const iPad1_2 = @"iPad1,2";
NSString* const iPad11_1 = @"iPad11,1";
NSString* const iPad11_2 = @"iPad11,2";
NSString* const iPad11_3 = @"iPad11,3";
NSString* const iPad11_4 = @"iPad11,4";
NSString* const iPad2_1 = @"iPad2,1";
NSString* const iPad2_2 = @"iPad2,2";
NSString* const iPad2_3 = @"iPad2,3";
NSString* const iPad2_4 = @"iPad2,4";
NSString* const iPad2_5 = @"iPad2,5";
NSString* const iPad2_6 = @"iPad2,6";
NSString* const iPad2_7 = @"iPad2,7";
NSString* const iPad3_1 = @"iPad3,1";
NSString* const iPad3_2 = @"iPad3,2";
NSString* const iPad3_3 = @"iPad3,3";
NSString* const iPad3_4 = @"iPad3,4";
NSString* const iPad3_5 = @"iPad3,5";
NSString* const iPad3_6 = @"iPad3,6";
NSString* const iPad4_1 = @"iPad4,1";
NSString* const iPad4_2 = @"iPad4,2";
NSString* const iPad4_3 = @"iPad4,3";
NSString* const iPad4_4 = @"iPad4,4";
NSString* const iPad4_5 = @"iPad4,5";
NSString* const iPad4_6 = @"iPad4,6";
NSString* const iPad4_7 = @"iPad4,7";
NSString* const iPad4_8 = @"iPad4,8";
NSString* const iPad4_9 = @"iPad4,9";
NSString* const iPad5_1 = @"iPad5,1";
NSString* const iPad5_2 = @"iPad5,2";
NSString* const iPad5_3 = @"iPad5,3";
NSString* const iPad5_4 = @"iPad5,4";
NSString* const iPad6_11 = @"iPad6,11";
NSString* const iPad6_12 = @"iPad6,12";
NSString* const iPad6_3 = @"iPad6,3";
NSString* const iPad6_4 = @"iPad6,4";
NSString* const iPad6_7 = @"iPad6,7";
NSString* const iPad6_8 = @"iPad6,8";
NSString* const iPad7_1 = @"iPad7,1";
NSString* const iPad7_11 = @"iPad7,11";
NSString* const iPad7_2 = @"iPad7,2";
NSString* const iPad7_3 = @"iPad7,3";
NSString* const iPad7_4 = @"iPad7,4";
NSString* const iPad7_5 = @"iPad7,5";
NSString* const iPad7_6 = @"iPad7,6";
NSString* const iPad8_1 = @"iPad8,1";
NSString* const iPad8_2 = @"iPad8,2";
NSString* const iPad8_3 = @"iPad8,3";
NSString* const iPad8_4 = @"iPad8,4";
NSString* const iPad8_5 = @"iPad8,5";
NSString* const iPad8_6 = @"iPad8,6";
NSString* const iPad8_7 = @"iPad8,7";
NSString* const iPad8_8 = @"iPad8,8";

NSString* const iPhone1_1 = @"iPhone1,1";
NSString* const iPhone1_2 = @"iPhone1,2";
NSString* const iPhone10_1 = @"iPhone10,1";
NSString* const iPhone10_2 = @"iPhone10,2";
NSString* const iPhone10_3 = @"iPhone10,3";
NSString* const iPhone10_4 = @"iPhone10,4";
NSString* const iPhone10_5 = @"iPhone10,5";
NSString* const iPhone10_6 = @"iPhone10,6";
NSString* const iPhone11_2 = @"iPhone11,2";
NSString* const iPhone11_4 = @"iPhone11,4";
NSString* const iPhone11_6 = @"iPhone11,6";
NSString* const iPhone11_8 = @"iPhone11,8";
NSString* const iPhone12_1 = @"iPhone12,1";
NSString* const iPhone12_3 = @"iPhone12,3";
NSString* const iPhone12_5 = @"iPhone12,5";
NSString* const iPhone2_1 = @"iPhone2,1";
NSString* const iPhone3_1 = @"iPhone3,1";
NSString* const iPhone3_2 = @"iPhone3,2";
NSString* const iPhone3_3 = @"iPhone3,3";
NSString* const iPhone4_1 = @"iPhone4,1";
NSString* const iPhone5_1 = @"iPhone5,1";
NSString* const iPhone5_2 = @"iPhone5,2";
NSString* const iPhone5_3 = @"iPhone5,3";
NSString* const iPhone5_4 = @"iPhone5,4";
NSString* const iPhone6_1 = @"iPhone6,1";
NSString* const iPhone6_2 = @"iPhone6,2";
NSString* const iPhone7_1 = @"iPhone7,1";
NSString* const iPhone7_2 = @"iPhone7,2";
NSString* const iPhone8_1 = @"iPhone8,1";
NSString* const iPhone8_2 = @"iPhone8,2";
NSString* const iPhone8_4 = @"iPhone8,4";
NSString* const iPhone9_1 = @"iPhone9,1";
NSString* const iPhone9_2 = @"iPhone9,2";
NSString* const iPhone9_3 = @"iPhone9,3";
NSString* const iPhone9_4 = @"iPhone9,4";

NSString* const iPod1_1 = @"iPod1,1";
NSString* const iPod2_1 = @"iPod2,1";
NSString* const iPod3_1 = @"iPod3,1";
NSString* const iPod4_1 = @"iPod4,1";
NSString* const iPod5_1 = @"iPod5,1";
NSString* const iPod7_1 = @"iPod7,1";
NSString* const iPod9_1 = @"iPod9,1";

NSString* const i386_Simulator = @"i386";
NSString* const x86_64_Simulator = @"x86_64";

@implementation com_diamonddevgroup_device_DeviceNativeImpl

- (NSString*) hardwareString {
    int name[] = {CTL_HW, HW_MACHINE};
    size_t size = 100;
    sysctl(name, 2, NULL, &size, NULL, 0); // getting size of answer
    char* hw_machine = malloc(size);

    sysctl(name, 2, hw_machine, &size, NULL, 0);
    NSString* hardware = [NSString stringWithUTF8String : hw_machine];
    free(hw_machine);

    return hardware;
}

-(NSDictionary*) getDeviceList {
    // get the bundle of the DeviceUtil if it's main bundle then it returns main bundle
    // if it's DeviceUtil.framework then it returns the DeviceUtil.framework bundle
    NSBundle* deviceUtilTopBundle = [NSBundle bundleForClass : [self class]];
    NSURL* url = [deviceUtilTopBundle URLForResource : @"DeviceUtil" withExtension : @"bundle"];
    NSBundle* deviceUtilBundle;

    if (url != nil) {
        // DeviceUtil bundle is present
        deviceUtilBundle = [NSBundle bundleWithURL : url];
    } else {
        // pick the main buncle
        deviceUtilBundle = deviceUtilTopBundle;
    }

    NSString* path = [deviceUtilBundle pathForResource : @"DeviceList" ofType : @"plist"];
    NSDictionary* deviceList = [NSDictionary dictionaryWithContentsOfFile : path];
    NSAssert(deviceList != nil, @"DevicePlist not found in the bundle.");

    return deviceList;
}

-(NSString*) manufacturer {
    return @"Apple Inc.";
}

-(NSString*) name {
    NSString* modelString = [self model];
    if ([modelString isEqualToString : @"Unknown"]) {
        return modelString;
    }

    NSError* error = nil;

    // this expression matches all strings between round brackets (e.g (Wifi), (GSM)) except the pattern "[0-9]+ Gen"
    NSRegularExpression*regex = [NSRegularExpression regularExpressionWithPattern : @"\\((?![0-9]+ Gen).*\\)" options : NSRegularExpressionCaseInsensitive error : &error];
    NSString* name = [regex stringByReplacingMatchesInString : modelString options : 0 range : NSMakeRange(0, [modelString length]) withTemplate : @""];

    if (error) {
        return @"Unknown";
    } else {
        return name;
    }
}

-(NSString*) model {
    NSString* hardware = [self hardwareString];

    NSDictionary* deviceList = [self getDeviceList];
    NSString* model = [[deviceList objectForKey : hardware] objectForKey : @"name"];
    
    if (model) {
        return ([model isEqualToString:@"Simulator"])? [NSProcessInfo processInfo].environment[@"SIMULATOR_DEVICE_NAME"] : model;
    } else {
        return @"Unknown";
    }
}

-(BOOL) isSupported {
    return YES;
}

@end
