//
//  ContentView.swift
//  SwtchEnviromentPlistExample
//
//  Created by Kosal Pen on 13/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text(ConfigLoader.configure().description)
                .multilineTextAlignment(.leading)
                .font(.system(size: 15))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
