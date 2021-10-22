//
//  UIManager.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class UIManager {
    
    func setBorderTo(buttons btns: [UIButton]) {
        for button in btns {
            button.layer.cornerRadius = 8
        }
    }
    
    func setBorderAndBgTo(views: [UIView]) {
        for view in views {
            view.layer.cornerRadius = 8
            view.layer.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1)
        }
    }
    
    private func makeLighterCicular(with view: UIView, borderColor: CGColor, bgColor: CGColor, lineView: UIView, lineBgColor: CGColor) {
        highlighterCicularSetup(view, borderColor, bgColor)
        lineView.layer.backgroundColor = lineBgColor
    }
    
    private func lastLighterCicular(with view: UIView, borderColor: CGColor, bgColor: CGColor) {
        highlighterCicularSetup(view, borderColor, bgColor)
    }
    
    private func highlighterCicularSetup(_ view: UIView, _ borderColor: CGColor, _ bgColor: CGColor) {
        view.layer.borderWidth = 3
        view.layer.masksToBounds = false
        view.layer.borderColor = borderColor
        view.layer.cornerRadius = view.frame.height/2
        view.clipsToBounds = true
        view.layer.backgroundColor = bgColor
    }
    
    func setCircularLighter(screenTitle title: String, _ lighterOne: UIView, _ lighterTwo: UIView, _ lighterThree: UIView, _ lighterFour: UIView, lineOne: UIView, lineTwo: UIView, lineThree: UIView) {
        
        if title == "AddMembersVC" {
            makeLighterCicular(with: lighterOne, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), lineView: lineOne, lineBgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
            makeLighterCicular(with: lighterTwo, borderColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), lineView: lineTwo, lineBgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
            makeLighterCicular(with: lighterThree, borderColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), lineView: lineThree, lineBgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
            lastLighterCicular(with: lighterFour, borderColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
        } else if title == "AddLogoVC" {
            makeLighterCicular(with: lighterOne, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), lineView: lineOne, lineBgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1))
            makeLighterCicular(with: lighterTwo, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), lineView: lineTwo, lineBgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
            makeLighterCicular(with: lighterThree, borderColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), lineView: lineThree, lineBgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
            lastLighterCicular(with: lighterFour, borderColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
        } else if title == "AddDetailsVC" {
            makeLighterCicular(with: lighterOne, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), lineView: lineOne, lineBgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1))
            makeLighterCicular(with: lighterTwo, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), lineView: lineTwo, lineBgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1))
            makeLighterCicular(with: lighterThree, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), lineView: lineThree, lineBgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
            lastLighterCicular(with: lighterFour, borderColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
        } else if title == "AddAddressVC" {
            makeLighterCicular(with: lighterOne, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), lineView: lineOne, lineBgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1))
            makeLighterCicular(with: lighterTwo, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), lineView: lineTwo, lineBgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1))
            makeLighterCicular(with: lighterThree, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), lineView: lineThree, lineBgColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1))
            lastLighterCicular(with: lighterFour, borderColor: #colorLiteral(red: 0.08078438789, green: 0.03739258647, blue: 0.4257427752, alpha: 1), bgColor: #colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.9607843137, alpha: 1))
        }
    }
    
    func makeCicularImage(image: UIImageView) {
        image.layer.borderWidth = 1
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
    }
}
