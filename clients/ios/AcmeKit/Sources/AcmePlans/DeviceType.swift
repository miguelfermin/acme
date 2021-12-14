//
//  DeviceType.swift
//  
//
//  Created by Miguel Fermin on 12/13/21.
//

import Foundation

/// Represents a product type.
enum DeviceType: String, CaseIterable, Identifiable {
    case tv
    case radio
    case computer
    case camera
    case smartphone
    case tablet
    case printer
    case thermostat
    
    case stove
    case refrigerator
    case dishwasher
    case washer
    case dryer
    case microwave
    case blender
    case toaster
    
    var id: String { rawValue }
}

extension DeviceType {
    var title: String {
        switch self {
        case .tv:
            return "TV"
        case .radio:
            return "Radio"
        case .computer:
            return "Computer"
        case .camera:
            return "Camera"
        case .smartphone:
            return "Smartphone"
        case .tablet:
            return "Tablet"
        case .printer:
            return "Printer"
        case .thermostat:
            return "Thermostat"
        case .stove:
            return "Stove"
        case .refrigerator:
            return "Refrigerator"
        case .dishwasher:
            return "Dishwasher"
        case .washer:
            return "Washer"
        case .dryer:
            return "Dryer"
        case .microwave:
            return "Microwave"
        case .blender:
            return "Blender"
        case .toaster:
            return "Toaster"
        }
    }
    
    /// The system image name.
    var imageName: String {
        switch self {
        case .tv:
            return "tv"
        case .radio:
            return "radio"
        case .computer:
            return "laptopcomputer"
        case .camera:
            return "camera"
        case .smartphone:
            return "iphone"
        case .tablet:
            return "ipad"
        case .printer:
            return "printer"
        case .thermostat:
            return "thermometer"
        case .stove:
            return "s.square"
        case .refrigerator:
            return "r.square"
        case .dishwasher:
            return "d.square"
        case .washer:
            return "w.square"
        case .dryer:
            return "d.square"
        case .microwave:
            return "m.square"
        case .blender:
            return "b.square"
        case .toaster:
            return "t.square"
        }
    }
}
