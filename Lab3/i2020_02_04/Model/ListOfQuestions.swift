//
//  ListOfQuestions.swift
//  i2020_02_04
//
//  Created by Bradford, Phillip on 2/4/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import Foundation

public class ListOfQuestions {
    
    private var correctAnswers: Int = 0
    private var totalQuestionsAsked: Int = 0
    private var currentQuestionNumber: Int = 0
    
    public let allQs = [
        Question(statement: "Alaska is in South America", isTrue: false, hint: "Alaska has a VERY cold climate!"),
        Question(statement: "Central America is a continent", isTrue: false, hint: "I don't know... is it?"),
        Question(statement: "Asia is the largest continent", isTrue: true, hint: "Africa is the 2nd largest continent!"),
        Question(statement: "New Zealand is part of Oceania", isTrue: true, hint: "New Zealand is extremely isolated!"),
        Question(statement: "Greece is an island", isTrue: false, hint: "The Greeks and the Italians are very good neighbors!")
    ]
             
    public func correctAnswer() -> Int {
        correctAnswers = correctAnswers + 1
        totalQuestionsAsked = totalQuestionsAsked + 1
        return correctAnswers
    }
    
    public func currentQuestion() -> Int{
        return currentQuestionNumber
    }
    
    public func nextQuestionNumber() -> Int {
        if currentQuestion() == 3 {
            currentQuestionNumber = 0
            return currentQuestionNumber
        }
        else{
        currentQuestionNumber = currentQuestionNumber + 1
            return currentQuestionNumber
        }
    }
}
