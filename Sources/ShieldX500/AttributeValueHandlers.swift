//
//  AttributeValueHandlers.swift
//  Shield
//
//  Copyright © 2019 Outfox, inc.
//
//
//  Distributed under the MIT License, See LICENSE for details.
//

import Foundation
import PotentASN1


public struct AnyStringAttributeValueHandler: AttributeValueHandler {

  public static let instance = AnyStringAttributeValueHandler()

  public func decode(from decoder: Decoder) throws -> Any {
    let container = try decoder.singleValueContainer()
    return try container.decode(AnyString.self)
  }

  public func encode(_ value: Any, to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(value as! AnyString)
  }

  public func equals(_ lhs: Any, _ rhs: Any) -> Bool {
    return (lhs as! AnyString) == (rhs as! AnyString)
  }

  public func hash(_ value: Any, into hasher: inout Hasher) {
    (value as! AnyString).hash(into: &hasher)
  }

}


public struct UnknownAttributeValueHandler: AttributeValueHandler {

  public static let instance = UnknownAttributeValueHandler()

  public func decode(from decoder: Decoder) throws -> Any {
    let container = try decoder.singleValueContainer()
    return try container.decode(ASN1.self)
  }

  public func encode(_ value: Any, to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(value as! ASN1)
  }

  public func equals(_ lhs: Any, _ rhs: Any) -> Bool {
    return (lhs as! ASN1) == (rhs as! ASN1)
  }

  public func hash(_ value: Any, into hasher: inout Hasher) {
    (value as! ASN1).hash(into: &hasher)
  }

}

