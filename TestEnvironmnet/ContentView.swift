//
//  ContentView.swift
//  TestEnvironmnet
//
//  Created by Sraavan Chevireddy on 03/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Button {
                    show.toggle()
                } label: {
                    Text("Tap me")
                }.navigationDestination(isPresented: $show) {
                    SecondView()
                }

            }.navigationTitle("View One")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
