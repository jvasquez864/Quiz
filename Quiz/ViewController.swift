//
//  ViewController.swift
//  Quiz
//
//  Created by John Vasquez on 9/9/19.
//  Copyright © 2019 Pulse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, QuizProtocol {
    
    var model = QuizModel()
    var questions = [Question]()
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.delegate = self
        model.getQuestions()
    }
    
    func questionsRetrieved(questions: [Question]) {
        print("hello")
    }
    
}

