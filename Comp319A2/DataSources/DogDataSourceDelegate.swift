//
//  DogDataSourceDelegate.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 18.11.2023.
//

import Foundation

protocol DogDataSourceDelegate: AnyObject {
    func dogListLoaded(dogList: [Dog])
}
