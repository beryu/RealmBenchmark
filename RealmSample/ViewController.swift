//
//  ViewController.swift
//  RealmSample
//
//  Created by Ryuta Kibe on 2016/03/13.
//  Copyright © 2016年 blk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = RLMRealm.defaultRealm()
        realm.beginWriteTransaction()
        
        for var i = 0; i < 1000000; i++ {
            let entity = SampleEntity()
            entity.entityId = "\(i)"
            entity.title = "title\(i)"
            entity.count = i
            realm.addOrUpdateObject(entity)
        }
        
        do {
            try realm.commitWriteTransaction()
            let path: String = RLMRealmConfiguration.defaultConfiguration().path!
            let attr: NSDictionary = try NSFileManager.defaultManager().attributesOfItemAtPath(path)
            print("fileSize: \(attr.fileSize())")
        } catch {
        }

    }
}

