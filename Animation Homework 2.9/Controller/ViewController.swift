//
//  ViewController.swift
//  Animation Homework 2.9
//
//  Created by Valerii D on 20.06.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var springButton: SpringButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springView.layer.cornerRadius = 10
        springButton.layer.cornerRadius = 10
    }

    @IBAction func springButtonPressed(_ sender: SpringButton) {
        
        if index != 25 {
            index += 1
        } else {
            index = 0
        }
        
        let animation = Animations.getAnimations(index: index)
        
        springView.animation = animation.animation
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animate()
        
        presetLabel.text = animation.animation
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
        
        let nextIndex = index == 25 ? 0 : (index + 1)
        let nextAnimations = (Animations.getAnimations(index: nextIndex)).animation
        
        sender.setTitle("Run: \(nextAnimations)", for: .normal)
    }
}

