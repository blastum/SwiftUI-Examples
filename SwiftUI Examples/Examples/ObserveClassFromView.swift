//
//  ObserveClassFromView.swift
//  SwiftUI Examples
//
//  Created by James Blasius on 5/14/20.
//  Copyright © 2020 Blastum Unlimited. All rights reserved.
//

import SwiftUI

class ObserveClassFromView_Class: ObservableObject {
    @Published var counter: Int = 0
}

struct ObserveClassFromView: View {
    @ObservedObject var watchedObject: ObserveClassFromView_Class
    var body: some View {
        VStack {
            Text("Watched value \($watchedObject.counter.wrappedValue)")
                .onTapGesture {
                    self.$watchedObject.counter.wrappedValue = self.$watchedObject.counter.wrappedValue + 1
            }
        }
    }
}

struct ObserveClassFromView_Previews: PreviewProvider, View {
    var counter = ObserveClassFromView_Class()
    static var previews: some View {
        Group {
            self.init()
            // for extras
            // self.init()
        }
    }
    var body: some View {
        ObserveClassFromView(watchedObject: counter)
    }
}


