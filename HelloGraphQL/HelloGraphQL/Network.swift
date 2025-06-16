//
//  Network.swift
//  HelloGraphQL
//
//  Created by Sachin Kumar on 16/06/25.
//
import MyGraphAPI
import Apollo
import Foundation

class Network {
  static let shared = Network()

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://apollo-fullstack-tutorial.herokuapp.com/graphql")!)
}
