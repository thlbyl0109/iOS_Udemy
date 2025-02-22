//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    
    ]
    var storyNumber = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        
        if userAnswer == stories[storyNumber].choice1{
            // User got it right.
            storyNumber += 1
            return true
        }else{
            // User got it wrong.
            return false
        }
    }
    
    mutating func nextQuestion() {
        
        if storyNumber + 1 < stories.count {
            storyNumber += 1
            
        }else{
            storyNumber = 0
        }
    }
    
    func getStoryText() -> String{
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
}
