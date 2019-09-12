//
//  TalkItemViewModel.swift
//  Falcon
//
//  Created by Rickey on 2019/9/12.
//  Copyright © 2019 Harry Duan. All rights reserved.
//

import SWXMLHash

class TalkItemViewModel: FalcViewModel<NSObject> {
    
    /// 标题
    public var title = ""
    /// 详细描述
    public var desc = ""
    /// 发布日期
    public var pubDate = ""
    /// 音频时间长度
    public var duration = ""
    public var episode = 0
    public var link = ""
    public var detailUrl = ""
    public var guid = ""
    public var summary = ""
    public var image = ""
    public var keywords = ""
    public var explicit = ""
    
    convenience init(node: XMLIndexer) {
        self.init()
        if let title = node["title"].element?.text { self.title = title }
        if let desc = node["description"].element?.text { self.desc = desc }
        if let date = node["pubDate"].element?.text { self.pubDate = date }
        if let duration = node["duration"].element?.text { self.duration = duration }
    }
    
}
