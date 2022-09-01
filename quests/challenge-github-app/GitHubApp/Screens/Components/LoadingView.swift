//
//  LoadingView.swift
//  GitHubApp
//
//  Created by Ronaldo Ribeiro on 26/08/22.
//

import Foundation
import UIKit


final class LoadingView: UIView {
    
    private var loadingMessageLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Searching repositories..."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
        
    }()
    
    private var activityIndicatorView: UIActivityIndicatorView = {
        
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        return view
    }()

    
    init() {
        
        super.init(frame: .zero)
        
        self.configureSubviews()
        self.configureConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews() {
        
        self.backgroundColor = .white
        
        self.addSubview(self.loadingMessageLabel)
        self.addSubview(activityIndicatorView)
    }
    
    private func configureConstraints() {
        
        NSLayoutConstraint.activate([
            self.loadingMessageLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.loadingMessageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.loadingMessageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.loadingMessageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            self.activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.activityIndicatorView.topAnchor.constraint(equalTo: loadingMessageLabel.bottomAnchor, constant: 8),
        ])
        
    }

}
