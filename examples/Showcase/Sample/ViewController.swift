//
//  ViewController.swift
//  Sample
//
//  Created by Roy Marmelstein on 25/11/2015.
//  Copyright (c) 2015 Roy Marmelstein. All rights reserved.
//

import UIKit
import Format

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
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // MARK: Actions
    
    @IBAction func doApplyDecimalNone(sender: AnyObject) {
        resultLabel.text = randomNumber.format(Decimals.None)
    }
    
    @IBAction func doApplyDecimalThree(sender: AnyObject) {
        resultLabel.text = randomNumber.format(Decimals.Three)
    }
    
    @IBAction func doApplyCurrencyUSD(sender: AnyObject) {
        resultLabel.text = randomNumber.format(Currency.USD)
    }
    
    @IBAction func doApplyGeneralOrdinal(sender: AnyObject) {
        resultLabel.text = randomNumber.format(General.Ordinal)
    }
    
    @IBAction func doApplyGeneralSpellOut(sender: AnyObject) {
        resultLabel.text = randomNumber.format(General.SpellOut)
    }
    
    @IBAction func doApplyGeneralDistance(sender: AnyObject) {
        resultLabel.text = randomNumber.format(General.Distance)
    }
}

