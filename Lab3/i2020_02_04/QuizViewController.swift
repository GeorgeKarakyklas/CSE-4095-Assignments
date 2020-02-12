//
//  ViewController.swift
//  i2020_02_04
//
//  Created by Bradford, Phillip on 2/4/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var questionBox: UITextField!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var hint: UIButton!
    
    let Qs =  ListOfQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionBox.text = Qs.allQs[0].statement
    }
    @IBAction func falseSelected(_ sender: Any) {
        if !Qs.allQs[Qs.currentQuestion()].isTrue! {
            score.text = "Score : " + String(Qs.correctAnswer())
        }
        questionBox.text = Qs.allQs[Qs.nextQuestionNumber()].statement
    }
    
    @IBAction func trueSelected(_ sender: Any) {
        if Qs.allQs[Qs.currentQuestion()].isTrue! {
            score.text = "Score : " + String(Qs.correctAnswer())
        }
        questionBox.text = Qs.allQs[Qs.nextQuestionNumber()].statement
    }
    
    @IBAction func giveHint(_ sender: Any) {
        let alertController = UIAlertController(title: "Hint", message: Qs.allQs[Qs.currentQuestion()].hint!, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    
}

