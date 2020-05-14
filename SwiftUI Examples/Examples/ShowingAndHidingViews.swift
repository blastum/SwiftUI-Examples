//
//  ShowingAndHidingViews.swift
//  SwiftUI Examples
//
//  Created by James Blasius on 5/14/20.
//  Copyright © 2020 Blastum Unlimited. All rights reserved.
//

import SwiftUI

struct ShowingAndHidingViews: View {
    @State private var showingFirst = true

    var body: some View {
        ZStack {
            if ($showingFirst.wrappedValue) {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(height: 250)
                    .animation(.easeIn)
                    .onTapGesture {
                        self.$showingFirst.wrappedValue.toggle()
                }

            } else {
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(height: 250)
                    .animation(.easeOut)
                    .onTapGesture {
                        self.$showingFirst.wrappedValue.toggle()
                }
            }
        }
    }
}

struct ShowingAndHidingViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowingAndHidingViews()
    }
}
