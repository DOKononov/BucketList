//
//  ContentView.swift
//  BucketList
//
//  Created by Dmitry Kononov on 29.09.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Read and write") {
            let data = Data("Test message".utf8)
            let url = URL.documentsDirectory.appending(path: "message.txt")
            do {
                try data.write(to: url, options: [.atomic, .completeFileProtection])
                let input = try String(contentsOf: url, encoding: .utf8)
                print(input)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    private func test() {
        print(URL.desktopDirectory)
    }
}

#Preview {
    ContentView()
}
