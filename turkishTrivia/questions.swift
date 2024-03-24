//
//  questions.swift
//  turkishTrivia
//
//  Created by Thomas Frey on 24.03.24.
//
// This file is the model component of the app.
// It holds all the data, defines it, and states how to access it.

import Foundation

struct Questions {
    let questionText: String
    let questionAnswer: [String]
    let correctAnswerIndex: Int
}
