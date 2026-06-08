//
//  ScreenEventsTests.swift
//  Lytics
//
//  Created by Victor C Tavernari on 12/05/20.
//  Copyright © 2020 Taverna Apps. All rights reserved.
//

import XCTest
import Lytics
@testable import SampleLytics

class ScreenEventsTests: XCTestCase {

    override func setUpWithError() throws {
        Lytics.unregisterAllProviders()
    }

    override func tearDownWithError() throws {
        XCTAssertGreaterThan(Lytics.providers.count, 0)
        Lytics.unregisterAllProviders()
    }

    func testSendScreenEventWithProviderDisable() {
        let mock = ProviderMock(enable: false)
        mock.screenEventValidation = { _ in
            XCTFail("Provider should be disabled")
        }

        try? Lytics.register(provider: mock)
        TestScreenEvent.screenWithoutData.dispatch()
    }

    func testSendScreenEventWithoutData() throws {
        let mock = ProviderMock(enable: true)
        mock.screenEventValidation = {
            XCTAssertNil($0.data)
            XCTAssertEqual($0.name, "screenWithoutData")
        }

        try? Lytics.register(provider: mock)

        TestScreenEvent.screenWithoutData.dispatch()
    }

    func testSendScreenEventWithData() throws {
        let mock = ProviderMock(enable: true)
        mock.screenEventValidation = {
            XCTAssertEqual($0.data?["key"] as? String, "value")
            XCTAssertEqual($0.name, "screenWithData")
        }

        try? Lytics.register(provider: mock)

        TestScreenEvent.screenWithData(data: ["key": "value"]).dispatch()
    }
}
