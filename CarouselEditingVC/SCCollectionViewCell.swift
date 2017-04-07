//
//  SCCollectionViewCell.swift
//  CarouselEditingVC
//
//  Created by Josh Motley on 4/7/17.
//  Copyright © 2017 Josh Motley. All rights reserved.
//

import UIKit
import AVFoundation

class SCCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }

    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func configureCell() {
        let asset = AVAsset(url: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        let item = AVPlayerItem(asset: asset)
        let avplayer = AVPlayer(playerItem: item)
        
        let avplayerLayer = AVPlayerLayer(player: avplayer)
        avplayerLayer.frame = self.bounds
        self.layer.addSublayer(avplayerLayer)
        avplayer.isMuted = true
        avplayer.play()
    }
    
    
}
