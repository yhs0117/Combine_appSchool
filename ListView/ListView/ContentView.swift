//
//  ContentView.swift
//  ListView
//
//  Created by 육현서 on 6/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hello, World !")
            Text("Hello, SwiftUI !")
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
