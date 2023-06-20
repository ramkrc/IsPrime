//
//  ViewController.swift
//  IsPrime
//
//  Created by Ramazan on 6/19/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
   
    
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textField: UITextField!
    let defaultText = "isPrime Number"
    
    let itIsPrimeNumber = "Yes ,Prime number!"
    let itIsNoPrimeNumber = "No ,not a Prime number!"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
    }

   
    @IBAction func buttonPNClick(_ sender: Any) {
        
        guard let text = textField.text ,let number = Int(text)
        else {
            return
        }
        textField.text = ""
        let isPrime = checkPrime(number)
        if isPrime {
            label.text = itIsPrimeNumber
        } else {
            label.text = itIsNoPrimeNumber
        }
        
    }
    
    func setupView(){
        label.text = defaultText
        button.setTitle("Check Prime", for: .normal)
    }

    
    func checkPrime(_ number: Int) -> Bool {
        
        var isPrime = true
        
        
        if number == 1 {
           isPrime = false
        }
        
        var i = 2
        
        while i < number {
            if number % i == 0 {
                isPrime = false
            }
            
            i += 1
        }
        
        return isPrime
    }
    
}

