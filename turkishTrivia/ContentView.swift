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
                    //Choice #1
                    Button(action: {
                        print("Tapped Choice 1")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    
                    //Choice #2
                    Button(action: {
                        print("Tapped Choice 2")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    
                    //Choice #3
                    Button(action: {
                        print("Tapped Choice 3")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    
                    //Choice #4
                    Button(action: {
                        print("Tapped Choice 4")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
