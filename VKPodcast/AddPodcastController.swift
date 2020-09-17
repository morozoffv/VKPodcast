//
//  ViewController.swift
//  VKPodcast
//
//  Created by Vladislav Morozov on 17.09.2020.
//  Copyright © 2020 Vladislav Morozov. All rights reserved.
//

import UIKit

class AddPodcastController: UIViewController {
    
    private let containerView = UIView()
    
    private let plusImageView = UIImageView(image: #imageLiteral(resourceName: "Hide Icon"))
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let proceedButton = Button()
    
    private let viewModel: AddPodcastViewModel
    
    init(viewModel: AddPodcastViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConstraints()
        titleLabel.text = "Добавьте первый подкаст"
        descriptionLabel.text = "Добавляйте, редактируйте и делитесь подкастами вашего сообщества."
        proceedButton.setTitle("Добавить подкаст", for: .normal)
        
        plusImageView.contentMode = .scaleAspectFit
        view.backgroundColor = .white
    }
    
    private func addSubviews() {
        view.addSubview(containerView)
        containerView.addSubview(plusImageView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(descriptionLabel)
        containerView.addSubview(proceedButton)
    }
    
    private func setupConstraints() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        plusImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        proceedButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            plusImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            plusImageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            
            titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: plusImageView.topAnchor, constant: 16),
            
            descriptionLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 8),
            
            proceedButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            proceedButton.topAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: 24),
            proceedButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
    }
}

class AddPodcastViewModel {
//    let title: String
//    let description: String
//    let proceedButtonTitle: String
}

import UIKit

class Button: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = ColorScheme.commonButton
        setTitleColor(.white, for: .normal)
        clipsToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 10.0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct ColorScheme {
    static var navBack: UIColor { UIColor(red: 0.247, green: 0.541, blue: 0.878, alpha: 1) }
    static var commonButton: UIColor{ UIColor(red: 0.286, green: 0.525, blue: 0.8, alpha: 1) }
}
