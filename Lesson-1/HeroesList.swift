//
//  HeroesList.swift
//  Lesson-1
//
//  Created by Melih Berberoglu on 2/8/20.
//  Copyright © 2020 Melih Berberoglu. All rights reserved.
//

import SwiftUI

struct HeroesList: View {
    var body: some View {
        NavigationView {
            List(heroesData) { hero in
                NavigationLink(destination: HeroDetail(hero: hero)) {
                    HeroRow(hero: hero)
                }
            }
            .navigationBarTitle(Text("Heroes"))
        }
    }
}

struct HeroesList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            HeroesList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
