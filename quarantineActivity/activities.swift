//
//  activities.swift
//  quarantineActivity
//
//  Created by Abhinav Gupta on 4/24/20.
//  Copyright © 2020 Abhinav Gupta. All rights reserved.
//

import UIKit

class activities {
    
    // modify to use dictionaries with links and/or photos attached to each activity for more engaging user experience
    
    var activityType: String
        
    let exercise = ["10 pushups", "10 squats", "10 pull-ups", "Run 1 mile", "10 dips", "10 rows", "monkey bars"]
    
    let cooking = ["Pancakes", "Whipped Coffee", "Fries", "Samosas"]
    
    let tvShow = ["The Flash", "Spongebob", "Disney", "Fairly Odd Parents", "randomize on Netflix"]
    
    let learn = ["Try a new language", "Try a new instrument", "Try a new sport", "Practice your favorite subject", "Learn a programming language", "Learn how to cook", "Do an online course"]
    
    let socialize = ["Snapchat", "Instagram", "Facebook", "Messages", "Messenger", "Whatsapp"]
    
    let reading = ["Harry Potter", "Percy Jackson", "New York Times", "Your favorite Blog"]
    
    var actOptions = [[String]]()
    
    init(activityType: String) {
        actOptions = [exercise, cooking, tvShow, learn, socialize, reading]
        
        self.activityType = activityType
    }
    
    func getActivity() -> String {
        switch activityType {
        case "Exercise":
            return exercise.randomElement() ?? "Exercise"
        case "Cooking":
            return cooking.randomElement() ?? "Cooking"
        case "TV Show":
            return tvShow.randomElement() ?? "TV"
        case "Learn":
            return learn.randomElement() ?? "Study"
        case "Socialize":
            return socialize.randomElement() ?? "Social Media"
        case "Reading":
            return reading.randomElement() ?? "Books"
        default:
            return (actOptions.randomElement()?.randomElement()) ?? "Something New"
        }
    }
}
