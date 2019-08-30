//
//  BookVO.swift
//  BookStore
//
//  Created by AcePlus Admin on 8/28/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import Foundation
import UIKit

class BookVO{
	var title : String = ""
	var authorName : String = ""
	var coverImage : UIImage = UIImage()
	var rating : Int = 0
	
	init(title:String,authorName:String,coverImage:UIImage,rating:Int){
		self.title = title
		self.authorName = authorName
		self.coverImage = coverImage
		self.rating = rating
	}
	
	
}
extension BookVO {
	static func getBooks() -> [BookVO] {
		return [
			.init(title: "Gone With the wind", authorName: "Margaret Mitchell", coverImage: #imageLiteral(resourceName: "GoneWithTheWind"), rating: 4),
			.init(title: "All The Light We Cannot See", authorName: "Anthony Doerr", coverImage: #imageLiteral(resourceName: "AllTheLightWeCannotSee"), rating: 4),
			.init(title: "Rich Dad Poor Dad", authorName: "Robert T. Kiyosaki", coverImage: #imageLiteral(resourceName: "richDadPoorDad"), rating: 4),
			
			.init(title: "Diary of a wimpy kid", authorName: "Jeff Kinney", coverImage: #imageLiteral(resourceName: "DiaryOfaWimpyKid"), rating: 4),
			.init(title: "Harry Potter the cursed child", authorName: "JK. Rowling", coverImage: #imageLiteral(resourceName: "harryPotter"), rating: 4),
			.init(title: "Think and grow rich", authorName: "Napoleon Hill", coverImage: #imageLiteral(resourceName: "think-and-grow-rich-original"), rating: 4),
			.init(title: "Penguin Book", authorName: "Bernard Shaw", coverImage: #imageLiteral(resourceName: "images"), rating: 4),
			.init(title: "The book of world famous music", authorName: "James J. Fuld", coverImage: #imageLiteral(resourceName: "musicBook"), rating: 4),
			.init(title: "The Girl on the train", authorName: "Paula Hawkins", coverImage: #imageLiteral(resourceName: "theGirlOnTheTrain"), rating: 4),
		
		]
	}
}
