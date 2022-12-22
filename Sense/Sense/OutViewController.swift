//
//  OutViewController.swift
//  Sense
//
//  Created by serif mete on 21.12.2022.
//

import UIKit
import Firebase
class OutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignOut(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewCon" , sender: nil)
        } catch {
            print("hata")
        }
        
        
       
        
    }
    
  
}


//  performSegue(withIdentifier: "toViewCon" , sender: nil)
