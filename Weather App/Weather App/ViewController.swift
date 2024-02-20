//
//  ViewController.swift
//  Weather App
//
//  Created by Karolina Attekita on 04/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    //private let customView = UIView(frame: .zero)
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        //view.backgroundColor = UIColor.blue
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(customView)
    }
    
    private func setConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -100)
        ])
    }

}

