//
//  HomeItemTableViewCell.swift
//  Falcon
//
//  Created by Harry Duan on 2019/7/15.
//  Copyright © 2019 Harry Duan. All rights reserved.
//

import UIKit
import Then

class HomeItemTableViewCell: FalcTableViewCell<HomeItemTableViewCellModel> {
    private var bakView: UIView = {
        var view = UIView()
        return view
    }()
    
    private var titleLabel: UILabel = {
        var label = UILabel().then {
            $0.text = "在 iOS 11 中使用 Core Bluetooth"
            $0.textColor = UIColor.sgBlackColor
            $0.font = UIFont.falcFont(size: 16, thick: .semibold)
        }
        return label
    }()
    
    private var descLabel: UILabel = {
        var label = UILabel()
        label.text = "现在地球上有数十亿的无线通讯设备。在这篇教程中，我们将聚焦 IoT 其中的一部分：蓝牙。"
        label.numberOfLines = 0
        label.textColor = UIColor.sgDarkGrayColor
        label.font = UIFont.falcFont(size: 13, thick: .medium)
        return label
    }()
    
    lazy private var tagButton: UIButton = {
        var button = UIButton(type: .custom)
        button.backgroundColor = UIColor.sgMainTintColor
        button.setTitle("APP CODA", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.falcFont(size: 10, thick: .semibold)
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    private var lineView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.sgBackgroundColor
        return view
    }()
    
    override func initialViews() {
        super.initialViews()
        addSubview(bakView)
        bakView.addSubview(titleLabel)
        bakView.addSubview(descLabel)
        bakView.addSubview(tagButton)
        bakView.addSubview(lineView)
    }
    
    override func initialLayouts() {
        super.initialLayouts()
        
        bakView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        descLabel.snp.makeConstraints { make in
            make.leading.equalTo(titleLabel)
            make.trailing.equalTo(titleLabel)
            make.top.equalTo(titleLabel.snp.bottom).offset(6)
        }
        
        tagButton.snp.makeConstraints { make in
            make.width.equalTo(61)
            make.height.equalTo(21)
            make.top.equalTo(descLabel.snp.bottom).offset(10)
            make.leading.equalTo(descLabel)
            make.bottom.equalToSuperview().offset(-20)
        }

        lineView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(2)
        }
    }
    
    override func updateViews() {
        super.updateViews()
        guard let viewModel = viewModel else { return }
        titleLabel.text = viewModel.titleText
    }
}


class HomeItemTableViewCellModel: FalcViewModel<NSObject> {
    public var titleText: String = ""
    public var descText: String = ""
    public var tagText: String = ""
    public var authorText: String = ""
    
    
}