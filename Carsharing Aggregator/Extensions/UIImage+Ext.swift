//
//  UIImage+extensions.swift
//  Carsharing Aggregator
//
//  Created by Vitaly Anpilov on 26.11.2023.
//

import UIKit

extension UIImage {
    
    static let backward = UIImage(systemName: "chevron.left")
    static let forward = UIImage(named: "chevronForward")
    static let add = UIImage(systemName: "plus")
    static let faceId = UIImage(systemName: "faceid")
    static let selected = UIImage(systemName: "chevron.down.circle")
    static let notSelected = UIImage(systemName: "circlebadge")
    static let ruble = UIImage(systemName: "rublesign")
    static let bonus = UIImage(named: "bonusLogo")
    static let checkmarkSmall = UIImage(named: "checkmarksmall")
    static let pointBlack = UIImage(named: "ellipsBlack")
    static let pointGrey = UIImage(named: "ellipsGrey")
    static let circleArrows = UIImage(named: "roundArrows")
    static let checkmarkGreen = UIImage(named: "checkmarkAccess")
    static let closeLightGrey = UIImage(named: "closeFill")
    static let cardImage = UIImage(named: "card")
    static let car = UIImage(named: "carModel")
    static let fuelPump = UIImage(named: "fuel")
    static let footPrints = UIImage(named: "foots")
    static let starRating = UIImage(named: "starsmall")
    static let locationMark2 = UIImage(named: "location")
    static let locationMark = UIImage(named: "locationmark")
    static let swithLight = UIImage(named: "light")
    static let starFeedback = UIImage(named: "starbig")
    static let pointYandex = UIImage(named: "ellipsYandex")
    static let pointCitydrive = UIImage(named: "ellipsCitydrive")
    static let pointDelimobil = UIImage(named: "ellipsDelimobil")
    static let pointBelka = UIImage(named: "ellipsBelka")
    static let walking = UIImage(named: "walkingMan")
    static let dots = UIImage(named: "dotButton")
    static let smallGreenRating = UIImage(named: "smallStarGreen")

    // MARK: - TabBar icons
    static let tabProfile = UIImage(named: "profile")
    static let tabCarSearch = UIImage(named: "carSearch")
    static let tabFilters = UIImage(named: "filters")
    static let tabFilterChosen = UIImage(named: "filter_chosen")
    static let tabOrder = UIImage(named: "order")
    static let locationButton = UIImage(named: "compas")
    static let plusButton = UIImage(named: "plus")
    static let minusButton = UIImage(named: "minus")
    static let closeXsmall = UIImage(named: "closeSmall")
    
    // MARK: - Images
    static let onboardingBackgroundImage = UIImage(named: "onboarding background image")
    static let onboardingCustomLogo = UIImage(named: "onboarding logo")
    static let onboardingCustomLogoSecond = UIImage(named: "onboarding logo 2")
    static let car1 = UIImage(named: "carBig")
    static let car2 = UIImage(named: "carSmall")
    static let city = UIImage(named: "cityCarsharing")
    static let deli = UIImage(named: "deliCarsharing")
    static let drive = UIImage(named: "driveCarsharing")
    static let belka = UIImage(named: "belkaCarsharing")
    static let vkLogo = UIImage(named: "vk")
    static let yandexLogo = UIImage(named: "yandex")
    
    // MARK: - Menu
    static let starItemMenu = UIImage(named: "starMenu")
    static let listItemMenu = UIImage(named: "listMenu")
    static let settingsItemMenu = UIImage(named: "settingsMenu")
    static let exitItemMenu = UIImage(named: "exitMenu")
    static let deleteItemMenu = UIImage(named: "deleteMenu")
    // MARK: - Actions
    
func withShadow(blur: CGFloat, offset: CGSize, color: UIColor, size: CGSize) -> UIImage {

    let shadowRect = CGRect(
                x: offset.width - blur,
                y: offset.height - blur,
                width: size.width + blur * 2,
                height: size.height + blur * 2
            )
            
            UIGraphicsBeginImageContextWithOptions(
                CGSize(
                    width: max(shadowRect.maxX, size.width) - min(shadowRect.minX, 0),
                    height: max(shadowRect.maxY, size.height) - min(shadowRect.minY, 0)
                ),
                false, 0
            )
            
            let context = UIGraphicsGetCurrentContext()!

            context.setShadow(
                offset: offset,
                blur: blur,
                color: color.cgColor
            )
            
            draw(
                in: CGRect(
                    x: max(0, -shadowRect.origin.x),
                    y: max(0, -shadowRect.origin.y),
                    width: size.width,
                    height: size.height
                )
            )
            let image = UIGraphicsGetImageFromCurrentImageContext()!
            
            UIGraphicsEndImageContext()
        return image
    }
}
