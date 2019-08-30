//
//  BookStoreViewController.swift
//  BookStore
//
//  Created by AcePlus Admin on 8/28/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class BookStoreViewController: UIViewController {

	@IBOutlet weak var collectionViewBooks: UICollectionView!
	var mBooksList : [BookVO] = BookVO.getBooks()
	let numberOfItemPerRow : CGFloat = 3
	let spacing : CGFloat = 20
	override func viewDidLoad() {
        super.viewDidLoad()
		collectionViewBooks.delegate = self
		collectionViewBooks.dataSource = self
		
		collectionViewBooks.registerForCell(String(describing: BookItemCollectionViewCell.self))
		let layout = collectionViewBooks.collectionViewLayout as! UICollectionViewFlowLayout
		layout.minimumLineSpacing = 5
		let totalPadding : CGFloat = (numberOfItemPerRow - 1) * spacing
		let itemWidth = (view.frame.width - totalPadding)/numberOfItemPerRow
		let itemHeight = itemWidth * 2.3
		print("Width \(itemWidth) Height \(itemHeight)")
		layout.itemSize = CGSize(width: itemWidth
			, height: itemHeight)

    }
    


}
extension BookStoreViewController : UICollectionViewDataSource{
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return mBooksList.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BookItemCollectionViewCell.self), for: indexPath) as! BookItemCollectionViewCell
		cell.mBook = mBooksList[indexPath.row]
		return cell
	}
	
	
}
extension BookStoreViewController : UICollectionViewDelegate {
	
}
