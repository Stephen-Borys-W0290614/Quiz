//
//  ViewController.swift
//  Quiz
//
//  Created by user138841 on 4/5/18.
//  Copyright © 2018 user138841. All rights reserved.
//

import UIKit

struct Question {
    //This is creating a structure, a structure is like a class but it does not have inhertince
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
    //var means variable
}




class ViewController: UIViewController {


    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    var Questions = [Question]()
    
    var QNumber = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Questions = [Question(Question: "What is a structure in Swift?", Answers: ["Its a class", "Its a function", "It is like a class, but not the same", "It is a getter and setter"], Answer: 2)]
        
        QuestionPick()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func QuestionPick(){
        
        if Questions.count > 0{
            
            QNumber = 0
            questionLabel.text = Questions[QNumber].Question
            
            for i in 0..<answerButtons.count{
                answerButtons[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }
            
            Questions.remove(at: QNumber)
            
        }
        else{
            
            NSLog("Done!")
            
        }
        
    }
    


}

