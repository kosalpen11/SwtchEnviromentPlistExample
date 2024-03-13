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
            if let key = Bundle.main.object(forInfoDictionaryKey: EnvironmentKey.key) as? String {
                return key
            }
            fatalError("No key configuration found.")
        }
    }
}

enum Environment: String {
    case development = "Debug"
    case production = "Release"
}

extension Environment {
    static var `default` = Environment(rawValue: Bundle.main.configuration) ?? .development
}
