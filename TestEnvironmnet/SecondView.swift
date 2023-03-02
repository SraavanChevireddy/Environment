//
//  SecondView.swift
//  TestEnvironmnet
//
//  Created by Sraavan Chevireddy on 03/03/23.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var vm: ViewModelOne
    @State var show = false
    var body: some View {
        VStack {
            Text("Hello, World!")
            NavigationLink {
                ThirdView()
            } label: {
                Text("Tap")
            }

        }
            .navigationTitle("Second View")
            .onAppear {
                print("View Appeared")
            }
            .onViewDidLoad {
                vm.toggle.toggle()
            }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
