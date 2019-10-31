//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Didzis Tupureins on 31/10/2019.
//  Copyright © 2019 Didzis Tupureins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var temperatureConverterLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var tempSlider: UISlider! {
        didSet {
            tempSlider.maximumValue = 100
            tempSlider.minimumValue = 0
            tempSlider.value = 0
        }
    }
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        celsiusLabel.text = "0 °C"
        fahrenheitLabel.text = "32 °F"
        darkModeStyle()
        
        let notificationCenter = NotificationCenter.default
        
        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: UIApplication.didEnterBackgroundNotification, object: nil)
        
        notificationCenter.addObserver(self, selector: #selector(appMovedToForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
    }
    
    override func viewWillLayoutSubviews() {
        darkModeStyle()
    }
    
    @objc func appMovedToForeground(){
        print("appMovedToForeground")
    }
    
    @objc func appMovedToBackground(){
        print("appMovedToBackground")
    }
    
    func darkModeStyle(){
        if self.traitCollection.userInterfaceStyle == .light{
            print("Light mode")
        } else {
            print("Dark mode")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider, forEvent: UIEvent){
        
        let tempCelsius = Int(sender.value)
        celsiusLabel.text = "\(tempCelsius) °C"
        
        let tempFahrenheit = Int(sender.value * 9 / 5 + 32)
        fahrenheitLabel.text = "\(tempFahrenheit) °F"
    }
    
    
}

// ar option un viewcontroller atver vaļā viewcontroller blakus
// ar option aizvelkot konkrētu rindu uz pogu, piesaista vēlreiz kodam pogu
