//  ViewController.swift
//  Questions

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var circleView: UIImageView!
    @IBOutlet weak var circleViewTwo: UIImageView!
    @IBOutlet weak var circleViewThree: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetViewController()
        //constants
        circleView.alpha = 0.3
        circleViewTwo.alpha = 0.3
        circleViewThree.alpha = 0.4
    }
    
    func resetViewController() {
        answerLabel.text = "Ask me a question about your future"
        circleViewTwo.isHidden = true
        circleViewThree.isHidden = true
    }
    
    func showAnswerView() {
        instructionLabel.isHidden = true
        answerLabel.text = Answers.getRandomAnswer()
        circleViewTwo.isHidden = false
        circleViewThree.isHidden = false
        delay()
    }
    
    func delay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.resetViewController()
        })
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake {
            print("Im Shook!")
           showAnswerView()
        }
    }

    @IBAction func userTouch(_ sender: UITapGestureRecognizer) {
        if circleViewTwo.isHidden {
             showAnswerView()
        } else {
            resetViewController()
        }
    }
    
}
