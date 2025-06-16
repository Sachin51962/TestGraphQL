//
//  ViewController.swift
//  HelloGraphQL
//
//  Created by Sachin Kumar on 16/06/25.
//

import UIKit
import Apollo
import MyGraphAPI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Network.shared.apollo.fetch(query: LaunchListQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult.asJSONDictionary())")
                if let launchConnection = graphQLResult.data?.launches {
                    print("Success! Result: \(launchConnection.launches)")
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }


}

