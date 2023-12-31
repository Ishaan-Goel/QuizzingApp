//  QuizDictionary.swift
//  QuizzingApp
//  Created by Ishaan Goel on 12/24/2023.

import Foundation

struct QuizDictionary {
    
    let facts = [ Question(q: "What caused Great Britain to join World War I?", a: ["German troops marching through Belgium", "German bombing raids on London", "Germans sinking British civilian ships"], correctAnswer: "German troops marching through Belgium", rightAnswer: "German troops marching through Belgium"),
                  Question(q: "How were aircraft primarily used at the beginning of World War I?", a: ["making bomb runs", "locating targets for artillery", "making supply drops"], correctAnswer: "locating targets for artillery", rightAnswer: "locating targets for artillery"),
                  Question(q: "Which of these best describes how trenches were dug on the Western Front?", a: ["in zigzag lines", "in concentric circles", "in straight lines"], correctAnswer: "in zigzag lines", rightAnswer: "in zigzag lines"),
                  Question(q: "Which of these innovations helped end World War I-style trench warfare?", a: ["tanks", "barbed wire", "machine guns"], correctAnswer: "tanks", rightAnswer: "tanks"),
                  Question(q: "Why did Russia quit fighting World War I?", a: ["communist takeover", "no more artillery ammunition", "all goals achieved"], correctAnswer: "communist takeover", rightAnswer: "communist takeover"),
                  Question(q: "The “Zimmermann Telegram” revealed Germany’s intent to entice which country to join it against the U.S.?", a: ["Canada", "Mexico", "Cuba"], correctAnswer: "Mexico", rightAnswer: "Mexico"),
                  Question(q: "Germany tried to justify sinking the passenger ocean liner Lusitania by making which claim?", a: ["that it was carrying munitions to Britain", "that the ship was carrying an invasion force", "that the liner had been mistaken for a warship"], correctAnswer: "that it was carrying munitions to Britain", rightAnswer: "that it was carrying munitions to Britain"),
                  Question(q: "Germany developed cannons able to fire shells more than 75 miles to bombard which city?", a: ["Paris", "Moscow", "London"], correctAnswer: "Paris", rightAnswer: "Paris"),
                  Question(q: "Which deadly World War I weapon was outlawed in the Geneva Protocol of 1925?", a: ["mustard gas", "artillery shells", "machine guns"], correctAnswer: "mustard gas", rightAnswer: "Chemical Weapons became illegal in war for its devastating effects on both sides")
                  
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == facts[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getAnswer() -> [String] {
        return facts[questionNumber].answer
    }
    
    func getQuestionText() -> String {
        return facts[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(facts.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < facts.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func showRightAnswer() -> String {
        return facts[questionNumber].rightAnswer
    }
    
    func turnOff() -> Bool {
        return false
    }
    
    func turnOn() -> Bool {
        return true
    }
    
}
