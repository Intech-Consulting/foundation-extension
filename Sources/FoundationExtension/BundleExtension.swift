//
//  BundleExtension.swift
//  XebiaiOS
//
//  Created by Amine Bensalah on 13/01/2017.
//  Copyright © 2017 nebuladev.info. All rights reserved.
//

import Foundation

extension Bundle {
    public var bundleName: String? {
        infoDictionary?["CFBundleName"] as? String
    }

    public var appName: String? {
        infoDictionary?["CFBundleDisplayName"] as? String
    }

    public var releaseVersionNumber: String? {
        infoDictionary?["CFBundleShortVersionString"] as? String
    }

    public var buildVersionNumber: String? {
        infoDictionary?["CFBundleVersion"] as? String
    }

    public var appEnvironment: String? {
        infoDictionary?["WCAppName"] as? String
    }
}
