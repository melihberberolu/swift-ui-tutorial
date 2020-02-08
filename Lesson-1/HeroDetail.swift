//
//  ContentView.swift
//  Lesson-1
//
//  Created by Melih Berberoglu on 2/8/20.
//  Copyright © 2020 Melih Berberoglu. All rights reserved.
//

import SwiftUI


struct HeroDetail: View {
    @EnvironmentObject var userData: UserData
    var hero: Heroes
    
    var heroIndex: Int {
        userData.heroes.firstIndex(where: { $0.id == hero.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: hero.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: hero.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(hero.type)
                        .font(.largeTitle)
                    
                    Button(action: {
                        self.userData.heroes[self.heroIndex].isFavorite.toggle()
                    }) {
                        if self.userData.heroes[self.heroIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(.gray)
                        }
                    }
                }
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
            .environmentObject(UserData())
    }
}
