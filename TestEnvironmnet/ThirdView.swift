//
//  ThirdView.swift
//  TestEnvironmnet
//
//  Created by Sraavan Chevireddy on 03/03/23.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        Text("Dismiss ME")
            .onViewDidLoad {
                print("I appear only once")
            }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
