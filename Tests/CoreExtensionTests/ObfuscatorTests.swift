import XCTest
@testable import CoreExtension

final class FoundationExtensionTests: XCTestCase {
    private let salt = "New tests"

    func test_obfuscator() {
        // GIVEN
        let secret = "otherwise"

        // WHEN
        let obfuscator = Obfuscator(salt: salt)
        let result = obfuscator.conceal(secret: secret)

        // THEN
        XCTAssertEqual(result, [33, 17, 31, 69, 6, 18, 26, 7, 22])
    }

    func test_obfuscator_reverse() {
        // GIVEN
        let secret: [UInt8] = [33, 17, 31, 69, 6, 18, 26, 7, 22]

        // WHEN
        let obfuscator = Obfuscator(salt: salt)
        let result = obfuscator.reveal(secret: secret)

        // THEN
        XCTAssertEqual(result, "otherwise")
    }
}
