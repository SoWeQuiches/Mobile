//
//  RegisterSWADTO.swift
//  SoWeQuiches
//
//  Created by Zakarya TOLBA on 17/02/2022.
//

import Foundation

struct SWADTO: Codable {
    
    let authorization: SWAAuthorizationDTO
    let user: SWAUserDTO
    
    init (code: String, idToken: String, email: String?, firstname: String?, lastname: String?) {
        authorization = .init(code: code, id_token: idToken)
        user = .init(email: email, name: .init(lastname: lastname, firstname: firstname))
    }
}

struct SWAUserDTO: Codable {
    let email: String?
    let name: SWAUserNameDTO
}

struct SWAAuthorizationDTO: Codable {
    let code: String
    let id_token: String
}


struct SWAUserNameDTO: Codable {
    let lastname: String?
    let firstname: String?
    
    enum CodingKeys: String, CodingKey {
        case firstname = "firstName"
        case lastname = "lastName"
    }
}
