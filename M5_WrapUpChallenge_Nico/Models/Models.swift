//
//  Model.swift
//  M5_WrapUpChallenge_Nico
//
//  Created by NICOLAS  TAUTIVA on 24/02/22.
//

import Foundation

struct Lesson: Decodable, Identifiable {
    var id: Int
    var title: String
    var url: String
 }
