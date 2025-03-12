//
//  ViewController.swift
//  InstaApp
//
//  Created by Danil Chekantsev on 12.03.2025.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    private lazy var layout: UICollectionViewLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        return layout
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.layout)
        collectionView.backgroundColor = .systemMint
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
        
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(self.collectionView)
        
        NSLayoutConstraint.activate([
            self.collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.collectionView.heightAnchor.constraint(equalToConstant: 90)
            ])
    }
}

// MARK: - Preview

struct ContentViewPreviews: PreviewProvider {
    
    struct Container: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) -> some UIViewController {
            UINavigationController(rootViewController: ViewController())
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
        
    }
    
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}

struct ContentView: View {
    var body: some View {
        ContentView()
    }
}



