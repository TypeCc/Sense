//
//  WriteViewController.swift
//  Sense
//
//  Created by serif mete on 21.12.2022.
//

import UIKit
import Firebase
class WriteViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet weak var howlabel: UILabel!
    
    @IBOutlet weak var heretext: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.heretext.delegate = self

    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = 40
        let currentString = (textField.text ?? "") as NSString
        let newString = currentString.replacingCharacters(in: range, with: string)

        return newString.count <= maxLength
    }
   
    

    @IBAction func send(_ sender: Any) {
        if heretext.text != ""{
            let firestoreDatabase = Firestore.firestore()
            let firestorePost = ["yorum" : heretext.text!, "email" :
                 Auth.auth().currentUser!.email, "tarih" :
                 FieldValue.serverTimestamp() ] as [String : Any]
            
            firestoreDatabase.collection("Post").addDocument(data: firestorePost) {
                (error) in
                if error != nil {
                    self.ErrorMese(titleInput: "hata", messageInput:
                    error?.localizedDescription ?? "Tekrar deneyin")
                } else {
                    self.heretext.text = ""
                    self.tabBarController?.selectedIndex = 0
                    
                }
            }
        } else {
            self.ErrorMese(titleInput: "DİKKAT!", messageInput:"EN AZ BİR KARAKTER GİRİNİZ!" )
        }
        
        
    }
                                                                
    func ErrorMese(titleInput : String , messageInput : String) {
     let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
    let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okBtn)
            self.present(alert, animated: true, completion: nil)
        }
                                                                
    

}
