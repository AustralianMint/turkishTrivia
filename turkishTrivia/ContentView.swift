//
//  ContentView.swift
//  turkishTrivia
//
//  Created by Thomas Frey on 30.11.23.
//

import SwiftUI

//0, 85 156
//238, 164, 127
let mainRoyalBlue = Color(red: 0/255, green: 85/255, blue: 156/255)
let secondaryPeach = Color(red: 238, green: 164/255, blue: 127/255)

struct ContentView: View {
    var body: some View {
        ZStack {
            mainRoyalBlue.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                Text("How do you say 'Apple'")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                HStack {
                    //Choice #1
                    Button(action: {
                        print("Correct")
                    }, label: {
                        Text("Elma")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(secondaryPeach, width: 4)
                    })
                    
                    //Choice #2
                    Button(action: {
                        print("Incorrect")
                    }, label: {
                        Text("Çocuk")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(secondaryPeach, width: 4)
                    })
                    
                    //Choice #3
                    Button(action: {
                        print("Incorrect")
                    }, label: {
                        Text("Adam")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(secondaryPeach, width: 4)
                    })
                    
                    //Choice #4
                    Button(action: {
                        print("Incorrect")
                    }, label: {
                        Text("Yerim")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(secondaryPeach, width: 4)
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
