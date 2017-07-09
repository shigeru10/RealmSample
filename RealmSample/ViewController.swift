//
//  ViewController.swift
//  RealmSample
//
//  Created by SuzukiShigeru on 2017/07/07.
//  Copyright © 2017年 Shigeru Suzuki. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var englishLabel: UILabel!
    @IBOutlet weak var japaneseLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do {
            let realm = try Realm()
            let result = realm.objects(Word.self)
            
            englishLabel.text = result.first?.english
            japaneseLabel.text = result.first?.japanese
        } catch {
            englishLabel.text = "no text"
            japaneseLabel.text = "文章がありません"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

