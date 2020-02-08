//
//  HeroesList.swift
//  Lesson-1
//
//  Created by Melih Berberoglu on 2/8/20.
//  Copyright © 2020 Melih Berberoglu. All rights reserved.
//

import SwiftUI

struct HeroesList: View {
    @EnvironmentObject var userData: UserData
    
    @State var showFavoriteHeroes = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoriteHeroes) {
                    Text("Favorite Heroes")
                }
                
                ForEach(userData.heroes) { hero in
                    if !self.userData.showFavoriteHeroes || hero.isFavorite {
                        NavigationLink(destination: HeroDetail(hero: hero)) {
                            HeroRow(hero: hero)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Heroes"))
        }
    }
}

struct HeroesList_Previews: PreviewProvider {
    static var previews: some View {
        HeroesList()
            .environmentObject(UserData())
    }
}
