//
//  Configuration.swift
//  SwtchEnviromentPlistExample
//
//  Created by Kosal Pen on 13/3/24.
//

import Foundation

struct Configuration: Codable {
    let name: String
    let backendURL: String
    let paymentURL: String
}

extension Configuration: CustomStringConvertible {
    var description: String {
        return """
        Configuration:
          - Name: \(name)
          - Backend URL: \(backendURL)
          - Payment URL: \(paymentURL)
        """
    }
}
