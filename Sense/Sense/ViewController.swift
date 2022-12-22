//
//  ViewController.swift
//  Sense
//
//  Created by serif mete on 21.12.2022.
//
import Firebase
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    @IBOutlet weak var img: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Logbtn(_ sender: Any) {
        if Email.text != "" && pass.text != "" {
            
            Auth.auth().signIn(withEmail: Email.text!, password: pass.text!) {
                (authDataResult, error) in
                if error != nil {
                    self.ErrorMes(titleInput: "hata!", messageInput: error?.localizedDescription ??
                    "TEKRAR DENEYİN!")
                } else {
                    self.performSegue(withIdentifier: "toGoVc", sender: nil)
                }
                
            }
            
        } else {
            self.ErrorMes(titleInput: "Hata!", messageInput: "Email Ve Parola Giriniz")
        }
    }
    
    @IBAction func SignBtn(_ sender: Any) {
        
        if Email.text != "" && pass.text != ""{
            Auth.auth().createUser(withEmail: Email.text!, password: pass.text!) {
                (authDataResult, error) in
                if error != nil {
                    self.ErrorMes(titleInput: "hata!", messageInput: error?.localizedDescription ?? "tekrar deneyin")
                } else {
                    self.performSegue(withIdentifier: "toGoVc", sender: nil)
                }
            }
        } else {
            ErrorMes(titleInput:"HATA!" , messageInput: "Kullanıcı Adı Ve Şifre Giriniz ")
        }
        
    }
    
    func ErrorMes(titleInput : String , messageInput : String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okBtn)
        self.present(alert, animated: true, completion: nil)
    }

    
}


