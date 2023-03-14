//
//  Task.swift
//  PhotoScavengerHunt
//
//  Created by Kelly Bonilla Guzmán on 3/14/23.
//

import Foundation
import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant 🍽️", description: "Where do you go to be one with good eats?"),
            Task(title: "Your favorite local cafe ☕️", description: "Where do you go to be one with cocoa beans?"),
            Task(title: "Your go-to brunch place 😋", description: "Where do you go to be one with bottomless mimosas?"),
            Task(title: "Your favorite hiking spot ⛰️", description: "Where do you go to be one with nature?")
        ]
    }
}
