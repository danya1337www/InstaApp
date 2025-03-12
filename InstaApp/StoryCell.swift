//
//  StoryCell.swift
//  InstaApp
//
//  Created by Danil Chekantsev on 12.03.2025.
//

import UIKit

final class StoryCell: UICollectionViewCell {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupSelf()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.width / 2
        self.containerView.layer.cornerRadius = self.frame.width / 2
    }
    
    func setup() {
        self.layer.borderColor = UIColor.systemPink.cgColor
        self.layer.borderWidth = 2.0
    }
    
    private func setupSelf() {
        self.backgroundColor = .clear
        
        self.addSubview(self.containerView)
        
        NSLayoutConstraint.activate([
            self.containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            self.containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),
            self.containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4),
            self.containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4)
        ])
        
    }
    
}
