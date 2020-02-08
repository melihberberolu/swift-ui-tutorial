//
//  ContentView.swift
//  Lesson-1
//
//  Created by Melih Berberoglu on 2/8/20.
//  Copyright © 2020 Melih Berberoglu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text("Ninja")
                    .font(.largeTitle)
                HStack {
                    Text("Momochi Sandayu")
                        .font(.subheadline)
                    Spacer()
                    Text("+15 Agility")
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
