//
//  ViewController.swift
//  Project24.5-Milestone22-24
//
//  Created by suhail on 28/08/23.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var currentAnimation = 0
    override func viewDidLoad() {
        super.viewDidLoad()
         imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 200, y: 300)
        view.addSubview(imageView)
        11.times {
            print("Hello")
        }
        
        var items = [11,23,55,78,92]
        items.remove(item: 22)
        print(items)
        
        
        
    }
    
    
    @IBAction func animateTapped(_ sender: Any) {
        imageView.bounceOut(duration: 3)
    }
    

    
}

extension UIView{
    func bounceOut(duration: Double){
        UIView.animate(withDuration: duration, delay: 0, options: []) {
            self.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        } completion: { finished in
            UIView.animate(withDuration: 10) {
                self.transform = .identity
            }
        }

    }
}

extension Int{
    func times(closure: ()->Void){
        guard self>0 else { return }
        
        for _ in 0..<self{
            closure()
        }
    }
}

extension Array where Element:Comparable{
    mutating func remove(item : Element){
        if let location = self.firstIndex(of: item){
            self.remove(at: location)
        }
        
        
    }
    
}
