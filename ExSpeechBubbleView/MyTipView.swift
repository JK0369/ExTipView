//
//  MyTipView.swift
//  ExSpeechBubbleView
//
//  Created by Jake.K on 2022/02/15.
//

import UIKit
import SnapKit

class MyTipView: UIView {
  private let informationLabel = UILabel()
  
  init(
    viewWidth: CGFloat,
    startXWidth: CGFloat,
    tipWidth: CGFloat,
    tipHeight: CGFloat,
    viewColor: UIColor
  ) {
    super.init(frame: .zero)
    self.backgroundColor = viewColor
    
    let path = CGMutablePath()

    let tipWidthCenter = tipWidth / 2.0
    let endXWidth = startXWidth + tipWidth
    
    path.move(to: CGPoint(x: startXWidth, y: 0))
    path.addLine(to: CGPoint(x: startXWidth + tipWidthCenter, y: tipHeight))
    path.addLine(to: CGPoint(x: endXWidth, y: 0))
    path.addLine(to: CGPoint(x: 0, y: 0))

    let shape = CAShapeLayer()
    shape.path = path
    shape.fillColor = viewColor.cgColor

    self.layer.insertSublayer(shape, at: 0)
    self.layer.masksToBounds = false
    self.layer.cornerRadius = 16
    
    self.setupLabel()
  }
  
  private func setupLabel() {
    self.informationLabel.textColor = .white
    self.informationLabel.text = "iOS 앱 개발 알아가기, jake블로그, tipView 포스팅 글"
    self.informationLabel.numberOfLines = 0
    self.informationLabel.lineBreakMode = .byCharWrapping // 글자 단위로 줄바꿈 (디폴트는 어절 단위)
    self.addSubview(self.informationLabel)
    self.informationLabel.snp.makeConstraints {
      $0.top.bottom.equalToSuperview().inset(10)
      $0.left.right.equalToSuperview().inset(16)
    }
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
}
