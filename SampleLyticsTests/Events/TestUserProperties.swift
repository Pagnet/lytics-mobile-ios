//
//  TestUserProperties.swift
//  Lytics
//
//  Created by Victor C Tavernari on 12/05/20.
//  Copyright © 2020 Taverna Apps. All rights reserved.
//

import Foundation
import Lytics
@testable import SampleLytics

enum TestUserProperties: UserPropertiesType {

    case identify(id: String?, name: String?, email: String?)
    case isVip(Bool)
    case totalCoin(Int)

    var user: UserLytics? {
        guard case let .identify(id, name, email) = self else {
            return nil

        }

        guard id != nil || name != nil || email != nil else {
            return nil
        }

        return UserLytics(id: id,
                          name: name,
                          email: email)
    }
    
    var data: [String : Any]? {
        switch self {
        case let .isVip(value): return ["isVip":value]
        case let .totalCoin(value): return ["totalCoin":value]
        default: return nil
        }
    }
}
