//
//  ViewController.swift
//  CarouselEditingVC
//
//  Created by Josh Motley on 4/5/17.
//  Copyright © 2017 Josh Motley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var playerCollectionView: UICollectionView!
    
    @IBOutlet weak var actionCollectionView: UICollectionView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerCollectionView.register(SCCollectionViewCell.self, forCellWithReuseIdentifier: "carouselCell")
        playerCollectionView.dataSource = self
        playerCollectionView.delegate = self

        actionCollectionView.register(UINib(nibName: "SCEditCollectionViewCell", bundle:nil), forCellWithReuseIdentifier: "editActionCell")
        actionCollectionView.dataSource = self
        actionCollectionView.delegate = self
        
//        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        playerCollectionView.collectionViewLayout = layout
        
        
//        self.collectionView.collectionViewLayout = nil

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == playerCollectionView {
            let cell = playerCollectionView.dequeueReusableCell(withReuseIdentifier: "carouselCell", for: indexPath) as! SCCollectionViewCell
            cell.backgroundColor = UIColor.purple
            cell.configureCell()
            return cell
        }else{
            let editCell = actionCollectionView.dequeueReusableCell(withReuseIdentifier: "editActionCell", for: indexPath) as! SCEditCollectionViewCell
            editCell.backgroundColor = UIColor.purple
            return editCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == playerCollectionView{
            let collectionViewWidth = collectionView.frame.size.width/1.4 - 10
            let collectionViewHeight = collectionViewWidth * (16/9)
            
            return CGSize(width: collectionViewWidth, height: collectionViewHeight)
        }else{
            return CGSize(width: 80, height: 100)
        }
    }
    
    

}

