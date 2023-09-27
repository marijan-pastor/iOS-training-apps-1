//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
        Story(title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchike. A rusty pickup truck rumbles to stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger doors for you and asks: 'Need a ride, boy?'.", choice1: "I'll hop in. Thank for the help!", choice1Destination: 2, choice2: "better ask him if he's a murderer first.", choice2Destination: 1),
        Story(title: "He nods slowly, unfrazed by the question.", choice1: "At least he's honest. I'll climb in.", choice1Destination: 2, choice2: "Wait, I know how to change a tire.", choice2Destination: 3),
        Story(title: "As you began to drive, the strangesr starts talking about his realtionship with his mother. He gets angrier and angrier by the minute. He asks ypu to open the glowebox. Inside you find bloody knife, two severed fingers, and the cassete ttap of Elton John. He reaches for the glove box. ", choice1: "I love Elton John! Hand him casette tape.", choice1Destination: 4, choice2: "It's him or me. You take a knife and stab him", choice2Destination: 5),
        Story(title: "What? Such a cop out! Did you know traffic accidents are the elading cause of accidental death for the most adult age groups" , choice1: "The, choice1Destination: 0", choice1Destination: 0, choice2: "End", choice2Destination: 0),
        Story(title: "As you smash trough the guardrail and careen towards the jagged rocks below you reflect on dobious wisdom of stabbing someone while they are driving a car you are in.", choice1: "The", choice1Destination: 0, choice2: "End", choice2Destination: 0),
        Story(title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You replay: 'Try the pier.'", choice1: "The", choice1Destination: 0, choice2: "End", choice2Destination: 0)
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
