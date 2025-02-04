//
//  TopicCell.swift
//  PaperBoy
//
//  Created by Winston Maragh on 9/26/18.
//  Copyright © 2018 Winston Maragh. All rights reserved.
//

import UIKit

class TopicCell: UICollectionViewCell {

    @IBOutlet weak var topicImageView: UIImageView!
    @IBOutlet weak var topicTitleLabel: UILabel!
    
    override func awakeFromNib(){
        super.awakeFromNib()
        roundedCorners()
    }

    private func roundedCorners() {
        layer.cornerRadius = 8
        layer.masksToBounds = true
    }
    
    static var cellID: String {
        return String(describing: self)
    }
    
    override var isSelected: Bool {
        didSet {
            backgroundColor = isSelected ? UIColor.appYellow : UIColor.appLightGray
        }
    }
    
    func configureCell(topic: ArticleTopic) {
        topicTitleLabel.text = topic.rawValue.capitalized
        topicImageView.image = UIImage(named: topic.rawValue)
    }
}
