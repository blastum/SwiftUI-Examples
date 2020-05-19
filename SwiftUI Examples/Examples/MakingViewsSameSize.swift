//
//  MakingViewsSameSize.swift
//  SwiftUI Examples
//
//  Created by James Blasius on 5/19/20.
//  Copyright © 2020 Blastum Unlimited. All rights reserved.
//

import SwiftUI

struct VerticalLine: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 1)
            Spacer()
        }
    }
}
struct MakingViewsSameSize: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 10)
            Text("Hello, World!")
        }
        .overlay(VerticalLine()
        .foregroundColor(Color.red))
    }
}

struct MakingViewsSameSize_Previews: PreviewProvider {
    static var previews: some View {
        MakingViewsSameSize()
    }
}
