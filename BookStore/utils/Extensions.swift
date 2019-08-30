//
//  Extensions.swift
//  BookStore
//
//  Created by AcePlus Admin on 8/28/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

extension UICollectionView {
	func registerForCell(_ strID : String){
		register(UINib(nibName: strID, bundle: nil), forCellWithReuseIdentifier: strID)
	}
}
