//
//  AKDecimatorTests.swift
//  AudioKitTestSuite
//
//  Created by Aurelius Prochazka on 8/9/16.
//  Copyright © 2017 Aurelius Prochazka. All rights reserved.
//

import AudioKit
import XCTest

class AKDecimatorTests: AKTestCase {

    func testDefault() {
        let input = AKOscillator()
        output = AKDecimator(input)
        input.start()
        AKTestMD5("6cfdce459c60b32a796383335ae167d7")
    }

    func testParameters() {
        let input = AKOscillator()
        output = AKDecimator(input, decimation: 0.75, rounding: 0.5, mix: 0.5)
        input.start()
        AKTestMD5("7bd8ec15e201a0be6962e633039a05bc")
    }

    func testDecimation() {
        let input = AKOscillator()
        output = AKDecimator(input, decimation: 0.75)
        input.start()
        AKTestMD5("cd23f7b94ce4a7e23ec6688e5e772990")
    }


    func testRounding() {
        let input = AKOscillator()
        output = AKDecimator(input, rounding: 0.5)
        input.start()
        AKTestMD5("b163c75e0fbb253c10146135f8b85079")
    }

    func testMix() {
        let input = AKOscillator()
        output = AKDecimator(input, mix: 0.5)
        input.start()
        AKTestMD5("6440e7ad5678ce57e14f0fd6facd46bd")
    }

}
