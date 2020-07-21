//
//  ViewController.swift
//  DrawCircle
//
//  Created by guowei on 2020/7/19.
//  Copyright © 2020 guowei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Showview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        //底層五環
        let BluecirclePath = UIBezierPath(ovalIn: CGRect(x: 80, y: 200, width: 75, height: 75))
        let BluecircleLayer = CAShapeLayer()
        BluecircleLayer.path = BluecirclePath .cgPath
        BluecircleLayer.strokeColor = UIColor(cgColor: CGColor(srgbRed: 0, green: 0.5, blue: 1, alpha: 100)).cgColor
        BluecircleLayer.fillColor = UIColor.clear.cgColor
        BluecircleLayer.lineWidth = 8
        
        let YellowcirclePath = UIBezierPath(ovalIn: CGRect(x: 117.5, y: 237.5, width: 75, height: 75))
        let YellowcircleLayer = CAShapeLayer()
        YellowcircleLayer.path = YellowcirclePath.cgPath
        YellowcircleLayer.strokeColor = UIColor(cgColor: CGColor(srgbRed: 1, green: 0.9, blue: 0, alpha: 100)).cgColor
        YellowcircleLayer.fillColor = UIColor.clear.cgColor
        YellowcircleLayer.lineWidth = 8
        
        let BlackcirclePath = UIBezierPath(ovalIn: CGRect(x: 165, y: 201, width: 75, height: 75))
        let BlackcircleLayer = CAShapeLayer()
        BlackcircleLayer.path = BlackcirclePath.cgPath
        BlackcircleLayer.strokeColor = UIColor.black.cgColor
        BlackcircleLayer.fillColor = UIColor.clear.cgColor
        BlackcircleLayer.lineWidth = 8
        
        let RedcirclePath = UIBezierPath(ovalIn: CGRect(x: 250, y: 200, width: 75, height: 75))
        let RedcircleLayer = CAShapeLayer()
        RedcircleLayer.path = RedcirclePath.cgPath
        RedcircleLayer.strokeColor = UIColor(cgColor: CGColor(srgbRed: 223/255, green: 36/255, blue: 0, alpha: 100)).cgColor
        RedcircleLayer.fillColor = UIColor.clear.cgColor
        RedcircleLayer.lineWidth = 8
        
        let GreencirclePath = UIBezierPath(ovalIn: CGRect(x: 212.5, y: 235.5, width: 75, height: 75))
        let GreencircleLayer = CAShapeLayer()
        GreencircleLayer.path = GreencirclePath.cgPath
        GreencircleLayer.strokeColor = UIColor(cgColor: CGColor(srgbRed: 13/255, green: 164/255, blue: 71/255, alpha: 100)).cgColor
        GreencircleLayer.fillColor = UIColor.clear.cgColor
        GreencircleLayer.lineWidth = 8
        
        
        
        
        //Mask環
        
        let MaskYellowPath = UIBezierPath(arcCenter: CGPoint(x:202.5 , y: 237.5), radius: 37.5, startAngle:CGFloat.pi/180*173, endAngle:CGFloat.pi/180*185, clockwise: true)
        let MaskYellowLayer = CAShapeLayer()
        MaskYellowLayer.path = MaskYellowPath.cgPath
        MaskYellowLayer.strokeColor  = UIColor(cgColor: CGColor(srgbRed: 1, green: 0.9, blue: 0, alpha: 100)).cgColor
        MaskYellowLayer.lineWidth=8
        
        let MaskBluePath = UIBezierPath(arcCenter: CGPoint(x:155 , y: 275), radius: 37.5, startAngle:CGFloat.pi/180*263, endAngle:CGFloat.pi/180*276, clockwise: true)
        let MaskBlueLayer = CAShapeLayer()
        MaskBlueLayer.path = MaskBluePath.cgPath
        MaskBlueLayer.strokeColor  = UIColor(cgColor: CGColor(srgbRed: 0, green: 0.5, blue: 1, alpha: 100)).cgColor
        MaskBlueLayer.lineWidth=8
    
        let BlckMaskPath = UIBezierPath(arcCenter: CGPoint(x:250 , y: 273), radius: 37.5, startAngle:CGFloat.pi/180*249, endAngle:CGFloat.pi/180*261, clockwise: true)
        let BlackMaskLayer = CAShapeLayer()
        BlackMaskLayer.path = BlckMaskPath.cgPath
        BlackMaskLayer.strokeColor  = UIColor.black.cgColor
        BlackMaskLayer.lineWidth=8
        
        let RedMaskPath = UIBezierPath(arcCenter: CGPoint(x:287.5 , y: 237.5), radius: 37.5, startAngle:CGFloat.pi/180*80, endAngle:CGFloat.pi/180*96, clockwise: true)
        let RedMaskLayer = CAShapeLayer()
        RedMaskLayer.path = RedMaskPath.cgPath
        RedMaskLayer.strokeColor = UIColor(cgColor: CGColor(srgbRed: 223/255, green: 36/255, blue: 0, alpha: 100)).cgColor
        RedMaskLayer.lineWidth=8

        
        //五個底層環
        Showview.layer.addSublayer(BluecircleLayer)
        Showview.layer.addSublayer(YellowcircleLayer)
        
        Showview.layer.addSublayer(BlackcircleLayer)
        Showview.layer.addSublayer(RedcircleLayer)
        Showview.layer.addSublayer(GreencircleLayer)
        
        //底層環Mask
        Showview.layer.addSublayer(MaskBlueLayer)
        Showview.layer.addSublayer(MaskYellowLayer)
        Showview.layer.addSublayer(BlackMaskLayer)
        Showview.layer.addSublayer(RedMaskLayer)
        
        
        
      
        
       
        
        
              

       
       
        
        
            
    }

}

