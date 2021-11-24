//
//  ViewController.swift
//  HomeWork 2.8. Button
//
//  Created by Ирина on 23.11.2021.
//

import Spring

class ViewController: UIViewController {

//MARK: - @IBOutlets
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var presetLabel: SpringLabel!
    @IBOutlet weak var curveLabel: SpringLabel!
    @IBOutlet weak var delayLabel: SpringLabel!
    @IBOutlet weak var forceLabel: SpringLabel!
    @IBOutlet weak var durationLabel: SpringLabel!
    
    @IBOutlet weak var runSpringButton: SpringButton!
    
    //MARK: - Private Properties
    private var animation = Animation.init(random: true)
  
    // MARK: - IB Actions
    @IBAction func buttonSpring(_ sender: SpringButton) {
        animationView()
        runSpringButton.setTitle("\(animation.preset.rawValue)", for: .normal)
        infoLabelI()
    }
    //MARK: - Private Metods
    private func animationView() {
        springAnimationView.animation = animation.preset.rawValue
        springAnimationView.curve = animation.curve.rawValue
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.animate()
    }
    
    private func infoLabelI() {
        presetLabel.text = "Preset:\(animation.preset)"
        curveLabel.text = "Curve:\(animation.curve)"
        forceLabel.text = "Force: " + String(format: "%.2f", animation.force)
        durationLabel.text = "Duration: " + String(format: "%.2f", animation.duration)
        delayLabel.text = "Delay: " + String(format: "%.2f", animation.delay)
    }
}



