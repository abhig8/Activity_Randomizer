//
//  activities.swift
//  quarantineActivity
//
//  Created by Abhinav Gupta on 4/24/20.
//  Copyright © 2020 Abhinav Gupta. All rights reserved.
//

import UIKit

class activities {
    
    var activityType: String
        
    let exercise = ["10 pushups", "10 squats", "10 pull-ups", "Run 1 mile"]
    
    let cooking = ["Pancakes", "Whipped Coffee", "Fries", "Samosas"]
    
    let tvShow = ["The Flash", "Spongebob", "Disney", "Fairly Odd Parents"]
    
    let learn = ["Try a new language", "Try a new instrument", "Try a new sport", "Practice your favorite subject"]
    
    let socialize = ["Snapchat", "Instagram", "Facebook", "Messages"]
    
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
