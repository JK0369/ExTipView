//
//  ViewController.swift
//  ExSpeechBubbleView
//
//  Created by Jake.K on 2022/02/14.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
  private let width = 177.0
  private let height = 56.0
  
  private lazy var myView = MyTipView(
    viewWidth: self.width,
    startXWidth: 70.5,
    tipWidth: 11.0,
    tipHeight: -6.0,
    viewColor: UIColor.systemOrange
  )
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(self.myView)
    self.myView.snp.makeConstraints {
      $0.center.equalToSuperview()
      $0.width.equalTo(self.width)
    }
  }
}
