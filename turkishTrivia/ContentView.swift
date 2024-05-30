//
//  ContentView.swift
//  turkishTrivia
//
//  Created by Thomas Frey on 30.11.23.
//

import SwiftUI

//0, 85 156
//238, 164, 127

struct ContentView: View {
   
    let mainColor: Color = Color(red: 20/255, green: 28/255, blue: 58/255)
    let secondaryPeach = Color(red: 238, green: 164/255, blue: 127/255)
    
    let question = Questions(
        questionText: "How do you say 'Apple' ?",
        possibleAnswers: ["Elma", "Bir", "Onlar", "Ekmek"],
        correctAnswerIndex: 0
    )
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
               
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                HStack {
                    //Loop to generate Views based on index of placeholder value
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        
                        Button(action: {
                            print("Tapped the Answer: '\(question.possibleAnswers[answerIndex])'")
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
