//
//  ChoiceTextView.swift
//  turkishTrivia
//
//  Created by Thomas Frey on 31.03.24.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColour = Color(red: 48/255, green: 105/255, blue: 240/255)

    //Background & accent colors:
    let mainRoyalBlue = Color(red: 0/255, green: 85/255, blue: 156/255)
    let secondaryPeach = Color(red: 238, green: 164/255, blue: 127/255)

    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColour, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Choice Text")
}
