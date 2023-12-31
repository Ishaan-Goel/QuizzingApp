//  ViewController.swift
//  QuizzingApp
//  Created by Ishaan Goel on 12/24/2023.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizDictionary = QuizDictionary()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizDictionary.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        textLabel.text = quizDictionary.showRightAnswer()
        
        choice1.isEnabled = quizDictionary.turnOff()
        choice2.isEnabled = quizDictionary.turnOff()
        choice3.isEnabled = quizDictionary.turnOff()

        
    }
    
    
    @IBAction func netxQuestion(_ sender: UIButton) {
        quizDictionary.nextQuestion()
        choice1.isEnabled = quizDictionary.turnOn()
        choice2.isEnabled = quizDictionary.turnOn()
        choice3.isEnabled = quizDictionary.turnOn()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        textLabel.text = quizDictionary.getQuestionText()
        let choiceAnswer = quizDictionary.getAnswer()
        choice1.setTitle(choiceAnswer[0], for: .normal)
        choice2.setTitle(choiceAnswer[1], for: .normal)
        choice3.setTitle(choiceAnswer[2], for: .normal)
         
        progressBar.progress = historyBrain.getProgress()
        scoreLabel.text = "Score: \(quizDictionary.getScore())"
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
    
        
        
    }
    
}

