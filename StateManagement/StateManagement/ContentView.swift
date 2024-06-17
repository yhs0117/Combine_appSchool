//
//  ContentView.swift
//  StateManagement
//
//  Created by 육현서 on 6/17/24.
//

import SwiftUI

struct ParentView: View {
    @State var favoriteNumber: Int = 42

    var body: some View {
        VStack {
            Text("Your favorite number is \(favoriteNumber)")
            ChildView(number: $favoriteNumber)
        }
        .padding()
    }
}

struct ChildView: View {
    @Binding var number: Int
    
    var body: some View {
        Stepper("\(number)", value: $number, in: 0...100)
    }
}

#Preview {
    ParentView()
}
