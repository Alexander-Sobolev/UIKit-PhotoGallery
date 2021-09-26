//
//  PhotosCollectionViewController.swift
//  UIKit-PhotoGallery
//
//  Created by Alexander Sobolev on 25.09.2021.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
    private lazy var addBarButtomItem: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBarButtomItemTapped))
    }()
    
    private lazy var actionBurButtomItem: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(actionBarButtonItemTapped))
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = #colorLiteral(red: 1, green: 0.7447446716, blue: 0.07600113268, alpha: 1)
        setupCollectionView()
        setupNavigationView()
    }
    
    // MARK: - NavigationItemsAction
    
    @objc private func addBarButtomItemTapped() {
        print(#function)
    }
    
    @objc private func actionBarButtonItemTapped() {
        print(#function)
    }
    
    // MARK: - Setup UIElements
    
    private func setupCollectionView() {
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "ID")
    }
    
    private func setupNavigationView() {
        let titleLabel = UILabel()
        titleLabel.text = "PHOTOS"
        titleLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        titleLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: titleLabel)
        navigationItem.rightBarButtonItems = [actionBurButtomItem, addBarButtomItem]
    }
    
    // MARK: - UICollectionViewDataSourse, UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ID", for: indexPath)
        cell.backgroundColor = #colorLiteral(red: 0.9191856118, green: 0.5379771071, blue: 0.8740556325, alpha: 1)
        return cell
    }
}
