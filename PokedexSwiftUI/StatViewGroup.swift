//
//  StatViewGroup.swift
//  PokedexSwiftUI
//
//  Created by Pitchaorn on 18/11/2564 BE.
//

import SwiftUI

struct StatViewGroup: View {
    var pokemon: Pokemon
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 250)
                .foregroundColor(.white)
                .opacity(0.6)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 30){
                StatView(pokemon: pokemon, statName: "Atk", statColor: .blue, statValue: pokemon.attack)
                StatView(pokemon: pokemon, statName: "Def", statColor: .red, statValue: pokemon.defense)
                StatView(pokemon: pokemon, statName: "Hgt", statColor: .teal, statValue: pokemon.height)
                StatView(pokemon: pokemon, statName: "Wgt", statColor: .cyan, statValue: pokemon.weight)
            }
        }
    }
}

struct StatViewGroup_Previews: PreviewProvider {
    static var previews: some View {
        StatViewGroup(pokemon: PokemonViewModel().MOCK_POKEMON)
    }
}
