//
//  HeroRow.swift
//  Lesson-1
//
//  Created by Melih Berberoglu on 2/8/20.
//  Copyright © 2020 Melih Berberoglu. All rights reserved.
//

import SwiftUI

struct HeroRow: View {
    var hero: Heroes
    
    var body: some View {
        HStack {
            hero.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(hero.name)
                .padding(.leading, 16)
            Spacer()
        }
    }
}

struct HeroRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeroRow(hero: heroesData[0])
            HeroRow(hero: heroesData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
