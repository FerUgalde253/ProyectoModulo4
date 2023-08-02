//
//  ViewController.swift
//  ProyectoModulo4
//
//  Created by Fernando Ugalde on 31/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    struct DataSourse {
         func downloadUser() -> User {
            .init(userName: "FerUgalde",
                  name: "Fernando Ugalde",
                  dob: "25/03/1996",
                  followers: 3)
        }
    }
    struct User {
        let userName: String
        let name: String
        let dob: String
        let followers: UInt
    }

  
    @IBOutlet weak var imagePorfile: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var dob: UILabel!
    @IBOutlet weak var followers: UILabel!
    
    func setUpUser(_ user: User?){
        guard let user else { return }
        userName.text = user.userName
        name.text = user.name
        dob.text = user.dob
        followers.text = String(user.followers)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = DataSourse.downloadUser()
    
        setUpUser(user)


}

