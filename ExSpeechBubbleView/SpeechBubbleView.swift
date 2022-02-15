//
//  SpeechBubbleView.swift
//  ExSpeechBubbleView
//
//  Created by Jake.K on 2022/02/14.
//

import UIKit

class SpeechBubbleView: UIView {
  
  let tipHeight: CGFloat = 6.0
  let tipWidth: CGFloat = 10.0
  
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    
    // 위치 정의
    let tipLeft = rect.origin.x + (rect.size.width / 2.0) - (tipWidth / 2.0)
    let tipBottom = CGPoint(x: rect.origin.x + (rect.size.width / 2.0), y: self.bounds.size.height + tipHeight)
    let heightWithoutTip = self.bounds.size.height - 1
    
    // path 객체로 선분을 잇는 작업
    let path = UIBezierPath()
    path.move(to: CGPoint(x: tipLeft, y: heightWithoutTip))
    path.addLine(to: CGPoint(x: tipBottom.x, y: tipBottom.y))
    path.addLine(to: CGPoint(x: tipLeft + tipWidth, y: heightWithoutTip))
    path.close()
    
    // 만든 path 객체를 이용하여 shapeLayer로 색칠, layer.addSublayer에 사용
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.fillColor = UIColor.gray.cgColor
    
    self.layer.addSublayer(shapeLayer)
    self.layer.masksToBounds = false
    self.layer.zPosition = 1
  }
}
