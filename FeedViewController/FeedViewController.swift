//
//  FirstController.swift
//  NavigationApp
//
//  Created by Niyaz on 22.03.2023.
//

import UIKit
import StorageService

class FeedViewController: UIViewController {
    var post = Post(title: "My Post")


    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 12
        button.setTitle("Go to Post", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    private func setupButton() {
        self.view.addSubview(self.button)
        self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private func buttonAction() {
        let postViewController = PostViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setupButton()
    }
}
