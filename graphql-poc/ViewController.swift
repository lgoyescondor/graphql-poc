//
//  ViewController.swift
//  graphql-poc
//
//  Created by Luis David Goyes Garces on 9/3/19.
//  Copyright © 2019 Condor Labs S.A.S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        apollo.fetch(query:  GetLicenseCategoryCountQuery(employerId: "311", userId: "4212191")) { (result) in
            switch result {
            case .success(let value):
                print("Success ")
            case .failure(let error):
                print("An error just ocurred (" + error.localizedDescription + ")")
            }
        }
    }


}

