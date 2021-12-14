
import Foundation
import SwiftUI

// Workaround for when a swift package uses resources in asset catalog of other packages.
private class BundleFinder {}
extension Foundation.Bundle {
    static var acmeKitBundle: Bundle = {
        let bundleNameIOS = "AcmeKit_AcmeUI"
        let candidates = [
            /* Bundle should be present here when the package is linked into an App. */
            Bundle.main.resourceURL,
            /* Bundle should be present here when the package is linked into a framework. */
            Bundle(for: BundleFinder.self).resourceURL,
            /* For command-line tools. */
            Bundle.main.bundleURL,
            /* Bundle should be present here when running previews from a different package (this is the path to "…/Debug-iphonesimulator/"). */
            Bundle(for: BundleFinder.self).resourceURL?.deletingLastPathComponent().deletingLastPathComponent().deletingLastPathComponent(),
            Bundle(for: BundleFinder.self).resourceURL?.deletingLastPathComponent().deletingLastPathComponent(),
        ]
        for candidate in candidates {
            let bundlePathiOS = candidate?.appendingPathComponent(bundleNameIOS + ".bundle")
            if let bundle = bundlePathiOS.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        // Since the sole purpose of this is to be able to have SwiftUI previous working when
        // a Swift Package that has Assets is referenced by another Swift Package, it's ok to
        // fallback to Apple's provided implementation if a bundle isn't found
        return Bundle.module
    }()
}
