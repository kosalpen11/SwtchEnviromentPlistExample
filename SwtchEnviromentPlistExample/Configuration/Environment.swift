//
//  Environment.swift
//  SwtchEnviromentPlistExample
//
//  Created by Kosal Pen on 13/3/24.
//

import Foundation

fileprivate struct EnvironmentKey {
    static let key = "Configuration"
}

private extension Bundle {
    var configuration: String {
        get {
            if let key = Bundle.main.object(
                forInfoDictionaryKey: EnvironmentKey.key
            ) as? String {
                
                return key
            }
            fatalError("No key configuration found.")
        }
    }
}

enum Environment: String {
    case development = "Debug"
    case staging = "Staging"
    case stagingRelease = "Staging Release"
    case production = "Release"
    
    var plistName: String {
        switch self {
        case .development:
            return "Development"
        case .staging, .stagingRelease:
            return "Staging"
        case .production:
            return "Production"
        }
    }
}

extension Environment {
    static var `default` = Environment(rawValue: Bundle.main.configuration) ?? .development
}
