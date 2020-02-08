//
//  ContentView.swift
//  Lesson-1
//
//  Created by Melih Berberoglu on 2/8/20.
//  Copyright © 2020 Melih Berberoglu. All rights reserved.
//

import SwiftUI


struct HeroDetail: View {
    var hero: Heroes
    
    var body: some View {
        VStack {
            MapView(coordinate: hero.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: hero.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text(hero.type)
                    .font(.largeTitle)
                HStack {
                    Text(hero.name)
                        .font(.subheadline)
                    Spacer()
                    Text(hero.power)
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle(Text(hero.name), displayMode: .inline)
    }
}

struct HeroDetail_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetail(hero: heroesData[0])
    }
}
