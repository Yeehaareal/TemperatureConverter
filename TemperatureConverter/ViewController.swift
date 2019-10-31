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
    @IBOutlet weak var tempSlider: UISlider!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tempSlider(_ sender: Any) {
    }
    
}

