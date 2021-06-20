//
//  Data.swift
//  Animation Homework 2.9
//
//  Created by Valerii D on 20.06.2021.
//

import UIKit

extension Animations {
    
    static func getAnimations(index: Int) -> Animations {
        
       let animation = ["shake",
                        "pop",
                        "morph",
                        "squeeze",
                        "wobble",
                        "swing",
                        "flipX",
                        "flipY",
                        "fall",
                        "squeezeLeft",
                        "squeezeRight",
                        "squeezeDown",
                        "squeezeUp",
                        "slideLeft",
                        "slideRight",
                        "slideDown",
                        "slideUp",
                        "fadeIn",
                        "fadeOut",
                        "fadeInLeft",
                        "fadeInRight",
                        "fadeInDown",
                        "fadeInUp",
                        "zoomIn",
                        "zoomOut",
                        "flash"]
        
        let curve = ["spring",
                     "linear",
                     "easeIn",
                     "easeOut",
                     "easeInOut"]
        
        return Animations(animation: animation[index],
                          curve: curve.randomElement()!,
                          force: CGFloat.random(in: 1.0...5.0),
                          duration: CGFloat.random(in: 1.0...3.0),
                          delay: CGFloat.random(in: 0...1.0))
    }
}
