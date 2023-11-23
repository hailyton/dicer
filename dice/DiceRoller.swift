//
//  DiceRoller.swift
//  dice
//
//  Created by halley on 22/11/2023.
//

import SwiftUI

struct DiceView:View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
//                .foregroundStyle(.black, .white)


            Button("Roll") {
                withAnimation{
                    numberOfPips = Int.random(in: 1...6)
                }
            }.buttonStyle(.bordered)
            
        }
    }
    
    
}

struct DiceViews:View {
    @State private var numberOfDice: Int = 1

    
    var body: some View {
       
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            HStack {
                ForEach(1...numberOfDice, id: \.self) { _ in
                    DiceView()
                }
            }
            HStack {
//                Button("Add Dice", systemImage: "plus.circle.fill") {
//                    numberOfDice += 1
//
//                }
//                Button("Remove") {
//                    numberOfDice -= 1
//                }                .disabled(numberOfDice == 1)
                
                Button {
                    numberOfDice += 1
                } label: {
                    HStack {
                        Image(systemName: "minus.circle.fill")
                    }
                }.accessibilityLabel("Remove dice")
                    .font(.title)
                    .disabled(numberOfDice == 1)
                
                
                Button {
                    numberOfDice += 1
                } label: {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                    }
                }.accessibilityLabel("Add dice")
                    .font(.title)

                
           
            }
            .padding()

        
        }
        .padding()
        .labelStyle(.iconOnly)
        .frame(maxWidth: .infinity, maxHeight: .infinity)

    }
    
    
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView()
    }
}
