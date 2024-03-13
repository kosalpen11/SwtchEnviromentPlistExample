//
//  ConfigLoader.swift
//  SwtchEnviromentPlistExample
//
//  Created by Kosal Pen on 13/3/24.
//

import Foundation

class ConfigLoader {
    
    static let ConfigName = Environment.default.plistName

    static func configure(
        named fileName: String = ConfigName
    ) -> Configuration {
        guard 
            let filePath = Bundle.main.path(
                forResource: fileName, 
                ofType: "plist"),
            let fileData = FileManager.default.contents(atPath: filePath)
        else {
            fatalError("Config file '\(fileName)' not loadable!")
        }
        
        do {
            let config = try PropertyListDecoder().decode(Configuration.self, from: fileData)
            return config
        } catch {
            fatalError("Configuration not decodable from '\(fileName)': \(error)")
        }
    }
}
