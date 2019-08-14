//
//  ASN1Tests.swift
//  CryptoSecurity
//
//  Copyright © 2019 Outfox, inc.
//
//
//  Distributed under the MIT License, See LICENSE for details.
//

@testable import Shield
import Foundation
import Security
import XCTest
import PotentASN1
import PotentJSON


class OIDTests: XCTestCase {

  func testOIDNaming() throws {

    XCTAssertEqual(OID.asn1Name(of: "2.5.4.3"), "{joint-iso-itu-t(2) ds(5) attributeType(4) commonName(3)}")
    XCTAssertEqual(OID.iriName(of: "2.5.4.3"), "/joint-iso-itu-t/ds/attributeType/commonName")

    XCTAssertEqual(OID.asn1Name(of: "2.5.4"), "{joint-iso-itu-t(2) ds(5) attributeType(4)}")
    XCTAssertEqual(OID.iriName(of: "2.5.4"), "/joint-iso-itu-t/ds/attributeType")

    XCTAssertEqual(OID.asn1Name(of: "2"), "{joint-iso-itu-t(2)}")
    XCTAssertEqual(OID.iriName(of: "2"), "/joint-iso-itu-t")

    XCTAssertEqual(OID.asn1Name(of: "1.2.840.113549.1.1.1"), "{iso(1) member-body(2) us(840) rsadsi(113549) pkcs(1) pkcs-1(1) rsaEncryption(1)}")
    XCTAssertEqual(OID.asn1Name(of: "1.2.840.113549.1.9.14"), "{iso(1) member-body(2) us(840) rsadsi(113549) pkcs(1) pkcs-9(9) extensionRequest(14)}")
  }

}
