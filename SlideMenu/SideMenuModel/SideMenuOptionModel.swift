//
//  SideMenuOptionModel.swift
//  SlideMenu
//
//  Created by Sardorbek Saydamatov on 04/07/24.
//

import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case dashboard
    case performance
    case profile
    
    var title: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .performance:
            return "Performance"
        case .profile:
            return "Profile"
        }
    }
}

extension SideMenuOptionModel: Identifiable {
    var id: Int { return self.rawValue}
}
