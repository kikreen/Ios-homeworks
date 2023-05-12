//
//  PostViewController.swift
//  NavigationApp
//
//  Created by Niyaz on 23.03.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "New publication"
    
    override func viewDidLoad() {
        setupView()
        view.backgroundColor = UIColor(red: 194/255, green: 147/255, blue: 244/255, alpha: 1.0)
        bar()
        setupAlertConfiguration()
    }
    private func setupView() {
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = titlePost
    }
    
    private func bar() {
        let myButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(item))
        navigationItem.rightBarButtonItem = myButton
    }

    @objc func item() {
            view.backgroundColor = .systemGreen
        setupAlertConfiguration()
    }
    
    // alert
    let alertController = UIAlertController(title: "Info about post", message: "You can edit it in settings", preferredStyle: .alert)
    func setupAlertConfiguration() {
        let action = UIAlertAction(title: "Ok", style: .default)
    alertController.addAction(action)
    }
//    func addTarget() {
//        bar.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
//    }
    @objc func tapOnButton() {
        self.present(alertController,animated: true, completion: nil)
    }
}
