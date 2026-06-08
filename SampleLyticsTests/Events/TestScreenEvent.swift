//
//  TestScreenEvent.swift
//  Lytics
//
//  Created by Victor C Tavernari on 12/05/20.
//  Copyright © 2020 Taverna Apps. All rights reserved.
//

import Foundation
import Lytics
@testable import SampleLytics

enum TestScreenEvent: ScreenType {

    case screenWithData(data: [String: Any]?)
    case screenWithoutData

    var data: [String: Any]? {
        switch self {
        case let .screenWithData(data): return data
        case .screenWithoutData: return nil
        }
    }

    var name: String {
        switch self {
        case .screenWithData: return "screenWithData"
        case .screenWithoutData: return "screenWithoutData"
        }
    }
}
