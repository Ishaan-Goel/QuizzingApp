//  Question.swift
//  QuizzingApp
//  Created by Ishaan Goel on 12/24/2023.

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String, rightAnswer: String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
        self.rightAnswer = rightAnswer
    }
}
