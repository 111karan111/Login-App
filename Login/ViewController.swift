//
//  ViewController.swift
//  Login
//
//  Created by Karan Gandhi on 3/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUsername: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
   
        
        
        

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //who.what = value
     //Optionals -> Sender value is nil -> Crash
        //IS not nil
       
     
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsername{
            segue.destination.navigationItem.title = "Forgot Username"
            
        }
        
        else if sender == forgotPassword{
            segue.destination.navigationItem.title = "Forgot Password"
            
        }
        
        else {
            segue.destination.navigationItem.title = textField.text
        }
       
    }
    
        
    @IBAction func forgotUsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotUsername)
        
        
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        
        
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotPassword)
        
        
    }
}


