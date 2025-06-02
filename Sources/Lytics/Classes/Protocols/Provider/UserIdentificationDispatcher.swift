//
//  AnalyticsUserIdentifProicationDispatcher.swift
//  Analytics
//
//  Created by Victor C Tavernari on 07/05/20.
//  Copyright © 2020 Taverna Apps. All rights reserved.
//

import Foundation

public struct UserLytics {
    public var id: String?
    public var name: String?
    public var email: String?
    public var phone: String?

    public init(id: String? = nil,
                name: String? = nil,
                email: String? = nil,
                phone: String? = nil) {
        self.id = id
        self.name = name
        self.email = email
        self.phone = phone
    }
}

public protocol UserIdentificationDispatcher {
    func user(_ user: UserLytics)
}
