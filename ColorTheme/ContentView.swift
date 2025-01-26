//
//  ContentView.swift
//  ColorTheme
//
//  Created by Tech With Talal on 1/20/25.
//

import SwiftUI

struct ContentView: View {

    @State private var isDarkMode = false

    var body: some View {
        VStack {
            Image(systemName: isDarkMode ? "moon.circle" : "sun.max.circle")
                .font(.system(size: 128))
                .foregroundStyle(isDarkMode ? .white : .orange)
                .padding()

            Toggle(isOn: $isDarkMode){
                Text("Toggle Dark Mode")
                    .font(.headline)
                    .padding()
            }
            .padding()
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
        .padding()
    }
}

#Preview {
    ContentView()
}
