//
//  ViewController.swift
//  Sample
//
//  Created by Roy Marmelstein on 25/11/2015.
//  Copyright (c) 2015 Roy Marmelstein. All rights reserved.
//

import UIKit
import Format
import CoreLocation

class ViewController: UIViewController {
    
    var randomNumber: CGFloat = CGFloat(arc4random_uniform(99) + 1) + CGFloat(arc4random_uniform(99) + 1)/100.00
    
    @IBOutlet weak var originalLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        originalLabel.text = "\(randomNumber)"
        resultLabel.text = "\(randomNumber)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // MARK: Actions
    
    @IBAction func doApplyDecimalNone(_ sender: AnyObject) {
        resultLabel.text = randomNumber.format(Decimals.none)
    }
    
    @IBAction func doApplyDecimalThree(_ sender: AnyObject) {
        resultLabel.text = randomNumber.format(Decimals.three)
    }
    
    @IBAction func doApplyCurrencyUSD(_ sender: AnyObject) {
        resultLabel.text = randomNumber.format(Currency.USD)
    }
    
    @IBAction func doApplyGeneralOrdinal(_ sender: AnyObject) {
        resultLabel.text = randomNumber.format(General.ordinal)
    }
    
    @IBAction func doApplyGeneralSpellOut(_ sender: AnyObject) {
        resultLabel.text = randomNumber.format(General.spellOut)
    }
    
    @IBAction func doApplyAddress(_ sender: AnyObject) {
        let location = CLLocation(latitude: 38.897609, longitude: -77.036735)
        
        CLGeocoder().reverseGeocodeLocation(location, completionHandler: {(placemarks, error) -> Void in
            guard let placemarks = placemarks else {
                return
            }
            if placemarks.count > 0 {
                let pm = placemarks[0]
                self.resultLabel.text = pm.format()
            }
        })
    }
    
    @IBAction func doApplyColor(_ sender: AnyObject) {
        view.backgroundColor = ColorFormatter().format("24e7a9")
    }
    
    @IBAction func doApplyGeneralDistance(_ sender: AnyObject) {
        resultLabel.text = randomNumber.format(General.distance)
    }
}

