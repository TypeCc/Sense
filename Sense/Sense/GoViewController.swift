//
//  GoViewController.swift
//  Sense
//
//  Created by serif mete on 21.12.2022.
//

import UIKit
import Firebase
class GoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    var postDizisi = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        firebaseveri()
    }
    
    func firebaseveri() {
        let firestoreDatabase = Firestore.firestore()
        
        firestoreDatabase.collection("Post").order(by: "tarih", descending: true)
            .addSnapshotListener { snapshot, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                if snapshot?.isEmpty != true && snapshot != nil {
                    
                    self.postDizisi.removeAll(keepingCapacity: false)
                    
                    for document in snapshot!.documents {
            
                        if let yorum = document.get("yorum") as? String{
                            
                            if let mail = document.get("email") as? String {
                                
                                let post = Post(email: mail, yorum: yorum)
                                self.postDizisi.append(post)
                            }
                        }
                    }
                    self.tableView.reloadData()
                }
            }
        }
        
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postDizisi.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GoViewCell
        cell.yorumlabel.text = postDizisi[indexPath.row].yorum
        cell.maillabel.text = postDizisi[indexPath.row].email
        return cell
    }
    
 

}
