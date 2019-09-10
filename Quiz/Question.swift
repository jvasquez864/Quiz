//
//  Question.swift
//  Quiz
//
//  Created by John Vasquez on 9/9/19.
//  Copyright © 2019 Pulse. All rights reserved.
//

import Foundation

struct Question: Codable {
    
    var question:String?
    var answers: [String]?
    var correctAnswerIndex: Int?
    var feedback: String?
    
}
