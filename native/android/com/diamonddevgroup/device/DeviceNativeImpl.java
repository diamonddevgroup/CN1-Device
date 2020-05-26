package com.diamonddevgroup.device;

import android.os.Build;
import android.text.TextUtils;
import com.codename1.impl.android.AndroidNativeUtil;
import com.codename1.io.CSVParser;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 *
 * @author Diamond
 */
public class DeviceNativeImpl {

    private static String manufacturer; // row 0
    private static String name; // row 1
    private static String model; // row 2

    // Currently 18,912 Devices
    private static final String FILE_NAME = "devices.csv";

    private static String getDeviceInfo(String returnType) {
        return getDeviceInfo(returnType, Build.DEVICE, Build.MODEL, capitalize(Build.MODEL));
    }

    private static String getDeviceInfo(String returnType, String device, String deviceModel, String fallback) {
        if (model == null) {
            try {
                InputStreamReader isr = new InputStreamReader(AndroidNativeUtil.getActivity().getAssets().open(FILE_NAME), "UTF-8");

                CSVParser parser = new CSVParser();

                for (String[] row : parser.parse(isr)) {
                    if (row != null && row.length >= 3) {
                        if (row[0].trim().length() > 0 && row[0].trim().charAt(1) == '"') {
                            row[0] = row[0].trim().substring(2, row[0].trim().length() - 1);
                        }
                        if (row[2].equals(device) || row[2].equals(deviceModel)) {
                            manufacturer = row[0];
                            name = row[1];
                            model = row[2];
                            break;
                        }
                    }
                }
            } catch (IOException e) {
            }

            if (manufacturer == null) {
                manufacturer = Build.MANUFACTURER;
            }
            if (name == null) {
                name = fallback;
            }
            if (model == null) {
                model = deviceModel;
            }
        }

        switch (returnType) {
            case "manufacturer":
                return manufacturer;
            case "name":
                return name;
            default:
                return model;
        }
    }

    /**
     * <p>
     * Capitalizes getAllProcesses the whitespace separated words in a String.
     * Only the first letter of each word is changed.</p>
     *
     * Whitespace is defined by {@link Character#isWhitespace(char)}.
     *
     * @param str the String to capitalize
     * @return capitalized The capitalized String
     */
    private static String capitalize(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] arr = str.toCharArray();
        boolean capitalizeNext = true;
        String phrase = "";
        for (char c : arr) {
            if (capitalizeNext && Character.isLetter(c)) {
                phrase += Character.toUpperCase(c);
                capitalizeNext = false;
                continue;
            } else if (Character.isWhitespace(c)) {
                capitalizeNext = true;
            }
            phrase += c;
        }
        return phrase;
    }

    /**
     * Get the consumer friendly manufacturer name of the device.
     *
     * @return the manufacturer name of the current device.
     */
    public static String manufacturer() {
        return getDeviceInfo("manufacturer");
    }

    /**
     * Get the consumer friendly name of the device.
     *
     * @return the market name of the current device.
     */
    public static String name() {
        return getDeviceInfo("name");
    }

    /**
     * Get the consumer friendly model of the device.
     *
     * @return the model of the current device.
     */
    public static String model() {
        return getDeviceInfo("model");
    }

    /**
     * Check if device has a notch. e.g "iPhone X has one"
     *
     * @return true if device has a notch.
     */
    public boolean isNotch() {
        return false;
    }

    public boolean isSupported() {
        return true;
    }

}
