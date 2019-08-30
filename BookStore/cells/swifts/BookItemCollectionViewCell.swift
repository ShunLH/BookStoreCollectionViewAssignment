//
//  BookItemCollectionViewCell.swift
//  BookStore
//
//  Created by AcePlus Admin on 8/28/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class BookItemCollectionViewCell: UICollectionViewCell {

	@IBOutlet weak var ivBookCover: UIImageView!
	
	@IBOutlet weak var labelBookTitle: UILabel!
	
	@IBOutlet weak var labelAuthorName: UILabel!
	
	var mBook : BookVO! {
		didSet {
			ivBookCover.image = mBook.coverImage
			labelBookTitle.text = mBook.title
			labelAuthorName.text = mBook.authorName
		}
		
	}
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
