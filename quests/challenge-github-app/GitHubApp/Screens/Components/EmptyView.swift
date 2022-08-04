//
//  EmptyView.swift
//  GitHubApp
//
//  Created by Ronaldo Ribeiro on 01/08/22.
//

import Foundation
import UIKit

final class EmptyView: UIView {
    
    private var emptyMessageLabel: UILabel = {
        
        let label = UILabel()
        label.text = "No repositories found"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
        
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
        
        self.addSubview(self.emptyMessageLabel)
    }
    
    private func configureConstraints() {
        
        NSLayoutConstraint.activate([
            self.emptyMessageLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.emptyMessageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.emptyMessageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.emptyMessageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
        
    }
//    
//    public func configure(with viewModel: EmptyViewModel) {
//        self.emptyMessageLabel.text = viewModel.emptyMessage
//
//    }
    
}
