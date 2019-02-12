//  Answers.swift
//  Questions

import Foundation


struct Answers {
    
    //idealy I want to call this class or maybe a function in the class and it gives me
    //back an answer
    
    
    var answer:String
    static var identifierFactory = 0
    static var answersArray = ["Sooner than you think",
                               "The odds are in your favor",
                               "In the distant future",
                               "Where there is a will, there is a way",
                               "Anything is possible"
                              ]
    
    static func getUniqueIdentifier() -> Int {
        if identifierFactory == answersArray.count - 1 {
            identifierFactory = 0
        } else {
            identifierFactory += 1
        }
        return identifierFactory
    }
    
    static func getRandomAnswer() -> String {
        return answersArray[Answers.getUniqueIdentifier()]
    }
    
    init() {
        self.answer = Answers.getRandomAnswer()
    }
    
}
