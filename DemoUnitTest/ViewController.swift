//
//  ViewController.swift
//  DemoUnitTest
//
//  Created by Владимир on 22.09.2021.
//

import UIKit

class ViewController: UIViewController {

    private(set) var volume = 0
    
    func setVolume(value: Int) {
        volume = min(max(value, 0),  100)
    }
    
    func charactersCompare(stringOne: String, stringTwo: String) -> Bool {
        return Set(stringOne) == Set(stringTwo)
    }

}

