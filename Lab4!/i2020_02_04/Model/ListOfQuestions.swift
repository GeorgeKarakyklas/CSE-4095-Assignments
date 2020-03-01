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
    
    public var count: Int = 0
    
    public var allQs = [
        Question(statement: "Press True to start!", isTrue: false, hint: "Good Luck!")
    ]
    let url = "https://restcountries.eu/rest/v2/all"
    
    init() {
        let restObj = URL(string: url)
         
        URLSession.shared.dataTask(with: restObj!) { (data, response, error) in
                do {
                    let countries = try JSONDecoder().decode([Country].self, from: data!)
                    
                    if let httpResponse = response as? HTTPURLResponse {
                        print(httpResponse.statusCode)
                    }
                    for c in countries {
                        let randomInt = Int.random(in: 0..<100)
                        let d = countries.randomElement()
                        if randomInt < 50 {
                            self.allQs.append(Question(statement: c.capital + " is the capital of " + c.name, isTrue: true, hint: c.region))
                        }
                        else{
                            self.allQs.append(Question(statement: c.capital + " is the capital of " + d!.name, isTrue: false, hint: c.region))
                        }
                    }
                } catch {
                    print(error)
                }
            
        }.resume()
    }

             
    public func correctAnswer() -> Int {
        correctAnswers = correctAnswers + 1
        totalQuestionsAsked = totalQuestionsAsked + 1
        return correctAnswers
    }
    
    public func currentQuestion() -> Int{
        return currentQuestionNumber
    }
    
    public func nextQuestionNumber() -> Int {
        if currentQuestion() == 249 {
            currentQuestionNumber = 0
            return currentQuestionNumber
        }
        else{
        currentQuestionNumber = currentQuestionNumber + 1
            return currentQuestionNumber
        }
    }
}
