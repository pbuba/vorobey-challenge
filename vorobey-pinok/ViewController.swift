//
//  ViewController.swift
//  vorobey-pinok
//
//  Created by Павел Бубликов on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.colors = [
            UIColor.systemBlue.cgColor,
            UIColor.systemRed.cgColor,
        ]
        gradient.cornerRadius = 10
        return gradient
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView(frame: .zero)
        
        view.layer.cornerRadius = 10
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 10,
                                         height: 10)
        view.layer.shadowRadius = 10
        gradient.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 100, height: 100))
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        self.view.addSubview(contentView)
        contentView.layer.addSublayer(gradient)
        setupLayout()
    }

    private func setupLayout() {
        contentView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        contentView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}

