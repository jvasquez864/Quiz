//
//  QuizModel.swift
//  Quiz
//
//  Created by John Vasquez on 9/9/19.
//  Copyright © 2019 Pulse. All rights reserved.
//

import Foundation

protocol QuizProtocol {
    func questionsRetrieved(questions:[Question])
    
}

class QuizModel {
    
    var delegate: QuizProtocol?
    
    func getQuestions() {
        //Retrieve data
        let questions = [Question()]
        getLocalJsonFile()
        //Call delegate's question retrieved method
        delegate?.questionsRetrieved(questions: questions)
    }
    
    func getLocalJsonFile() {
        // Get path to json file in app bundle
        let path = Bundle.main.path(forResource: "QuestionData", ofType: "json")
        
        guard path != nil else {
            print("Error finding path for question data")
            return
        }
        
        // Create URL bundle from str path
        let url = URL.init(fileURLWithPath: path!)
        
        // Get data from the URL
        do {
            let data = try Data(contentsOf: url)
            
            // Decode the data into instances of questions
            let decoder = JSONDecoder()
            let questions = try decoder.decode([Question].self, from: data)
            
            // Return question struct to view controller
            delegate?.questionsRetrieved(questions: questions)
        } catch {
            print("Couldn't get data object from file")
            return
        }
        
        
    }
    
    func getRemoteJsonFile() {
        
    }
}
