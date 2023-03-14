//
//  TaskCell.swift
//  PhotoScavengerHunt
//
//  Created by Kelly Bonilla Guzmán on 3/14/23.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var taskImageView: UIImageView!
    @IBOutlet weak var taskLabel: UILabel!
    
    /// Configures the cell's UI for the given task.
    func configure(with task: Task) {
        taskLabel.text = task.title
        if !task.isComplete {
            taskImageView.image = UIImage(named: "incomplete")
        } else {
            taskImageView.image = UIImage(named: "complete")
        }
    }
}
