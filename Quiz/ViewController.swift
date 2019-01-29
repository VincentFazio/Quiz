//
//  ViewController.swift
//  Quiz
//
//  Created by Vincent Fazio on 1/23/19.
// High Point University
//  Copyright © 2019 Vincent Fazio. All rights reserved.
// Source: https://chartcons.com/100-good-trivia-questions-and-answers/

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What’s the medical term for low blood sugar?",
        "What is the most widely eaten fish in the world?",
        "Who led the Million Man March on Washington?",
        "Which planet in our solar system spins the fastest?",
        "What Italian astronomer invented the thermometer?"
        ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "Hypoglycemia",
        "Herring",
        "Louis Farrakhan",
        "Jupiter",
        "Galileo"
         ]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
    
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

