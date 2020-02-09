//
//  CircleImage.swift
//  Lesson-1
//
//  Created by Melih Berberoglu on 2/8/20.
//  Copyright © 2020 Melih Berberoglu. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        Group {
            image
                .offset(x: 0, y: 24)
        }
        .padding(32)
        .background(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 8))
        .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("ninja"))
    }
}
