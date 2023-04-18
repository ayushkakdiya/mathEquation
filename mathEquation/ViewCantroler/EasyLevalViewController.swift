//
//  EasyLevalViewController.swift
//  mathEquation
//
//  Created by R90 on 06/01/17.
//

import UIKit

struct QuestionAndAnswer {
    var question: String
    var answer: [String]
    var currectAnswer: Int
}

class EasyLevalViewController: UIViewController {
    
    
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var wrongButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var easyLevalProgrssBar: UIProgressView!
    
    var arrOfQuestionAndAnswer: [QuestionAndAnswer] = [QuestionAndAnswer(question: "100+220 = 320", answer: ["TRUE","FALSE"], currectAnswer: 0),
                                                       QuestionAndAnswer(question: "10-20 = -20", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "20*30 = 600", answer: ["TRUE","FALSE"], currectAnswer: 0),
                                                       QuestionAndAnswer(question: "76/31 = 2.41", answer: ["TRUE","FALSE"], currectAnswer: 0),
                                                       QuestionAndAnswer(question: "64*31 = 1988", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "60*50% = 58", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "54+31+64 = 150", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "316-542 = -226", answer: ["TRUE","FALSE"], currectAnswer: 0),
                                                       QuestionAndAnswer(question: "18*62-52 = 1028", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "64+13-78 = -1", answer: ["TRUE","FALSE"], currectAnswer: 0),
                                                       QuestionAndAnswer(question: "60*50% = 58", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "54+31+64 = 150", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "316-542 = -226", answer: ["TRUE","FALSE"], currectAnswer: 0),
                                                       QuestionAndAnswer(question: "18*62-52 = 1028", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "64+13-78 = -1", answer: ["TRUE","FALSE"], currectAnswer: 0),
                                                       QuestionAndAnswer(question: "10-20 = -20", answer: ["TRUE","FALSE"], currectAnswer: 1),
                                                       QuestionAndAnswer(question: "20*30 = 600", answer: ["TRUE","FALSE"], currectAnswer: 0),
                                                       QuestionAndAnswer(question: "76/31 = 2.41", answer: ["TRUE","FALSE"], currectAnswer: 0)]
    var questionPosition: Int = 0
    var timer: Timer!
    var timerCount: Int = 11
    var score: Int = 0
    var currentQuestion: QuestionAndAnswer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        progrssbarView()
    }
    
    func checkAnswer(index: Int) {
        if index == currentQuestion?.currectAnswer
        {
            
        }
        loadNextQuestion()
        
        if index != currentQuestion?.currectAnswer
        {
            displayValidation()
        }
    }
    
    func loadNextQuestion() {
        if questionPosition+1<arrOfQuestionAndAnswer.count {
            questionPosition+=1
            currentQuestion = arrOfQuestionAndAnswer[questionPosition]
            setQuestion()
        }
    }
    
    @IBAction func wrongButtonAction(_ sender: UIButton) {
        score = score+1
        scoreLable.text = "\(score)"
        checkAnswer(index: 0)
    }
    
    @IBAction func yesButtonAction(_ sender: UIButton) {
        score = score+1
        scoreLable.text = "\(score)"
        checkAnswer(index: 0)
    }
    
    func setQuestion(){
        questionLable.text = currentQuestion?.question
        yesButton.setTitle(currentQuestion?.answer[0], for: .normal)
        wrongButton.setTitle(currentQuestion?.answer[1], for: .normal)
    }
    
    private  func progrssbarView() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updetTIme) , userInfo: nil, repeats: true)
    }
    @objc
    func updetTIme() {
        if timerCount > 0 {
            timerCount = timerCount-1
            easyLevalProgrssBar.setProgress(Float(timerCount)/11, animated: true)
        } else {
            timer.invalidate()
        }
        if timerCount == 0 {
            displayValidation()
        }
    }
    
    private func displayValidation() {
        let alert: UIAlertController = UIAlertController(title: "Game Over\n", message: "Score: \(score)\n High score: \(score)", preferredStyle: .alert)
        let playAgainButton: UIAlertAction = UIAlertAction(title: "Play Again", style: .cancel) { button in }
        let homeButton: UIAlertAction = UIAlertAction(title: "Home", style: .default) { button in }
        let shareButton: UIAlertAction = UIAlertAction(title: "Share", style: .default)
        alert.addAction(playAgainButton)
        alert.addAction(homeButton)
        alert.addAction(shareButton)
        present(alert, animated: true, completion: nil)
    }
}




