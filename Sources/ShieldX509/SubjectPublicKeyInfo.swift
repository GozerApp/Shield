//
//  SubjectPublicKeyInfo.swift
//  Shield
//
//  Copyright © 2019 Outfox, inc.
//
//
//  Distributed under the MIT License, See LICENSE for details.
//

import Foundation
import PotentASN1


public struct SubjectPublicKeyInfo: Equatable, Hashable, Codable {

  public var algorithm: AlgorithmIdentifier
  public var subjectPublicKey: Data

  public init(algorithm: AlgorithmIdentifier, subjectPublicKey: Data) {
    self.algorithm = algorithm
    self.subjectPublicKey = subjectPublicKey
  }

}


extension SubjectPublicKeyInfo: SchemaSpecified {

  public static var asn1Schema: Schema { Schemas.SubjectPublicKeyInfo }

}



// MARK: Schemas

public extension Schemas {

  static let SubjectPublicKeyInfo: Schema =
    .sequence([
      "algorithm": AlgorithmIdentifier(PKInfoAlgorithms),
      "subjectPublicKey": .bitString(),
    ])

}
