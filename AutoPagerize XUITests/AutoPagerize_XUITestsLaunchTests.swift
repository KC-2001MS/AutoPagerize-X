//
//  AutoPagerize_XUITestsLaunchTests.swift
//  AutoPagerize XUITests
//
//  Created by 茅根啓介 on 2023/02/12.

//This program is licensed under the "GNU General Public License v3.0".
//© 2023 Keisuke Chinone
//Program files that are not marked with a copyright notice are not originally marked.

import XCTest

final class AutoPagerize_XUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
