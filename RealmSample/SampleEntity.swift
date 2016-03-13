//
//  SampleEntity.swift
//  RealmSample
//
//  Created by Ryuta Kibe on 2016/03/13.
//  Copyright © 2016年 blk. All rights reserved.
//

class SampleEntity: RLMObject {

    dynamic var entityId: String = ""
    dynamic var title: String = ""
    dynamic var count: Int = 0
    
    override class func primaryKey() -> String {
        return "entityId"
    }
    
}
