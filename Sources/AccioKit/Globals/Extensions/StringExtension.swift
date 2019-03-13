import Foundation
import HandySwift

extension String {
    var lastPathComponent: String {
        return components(separatedBy: "/").last!
    }

    var isAliasFile: Bool {
        return try! URL(fileURLWithPath: self).resourceValues(forKeys: [URLResourceKey.isAliasFileKey]).isAliasFile ?? false
    }
}
