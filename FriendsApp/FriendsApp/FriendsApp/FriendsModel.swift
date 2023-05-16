//
//  FriendsModel.swift
//  FriendsApp
//
//  Created by Rozheen Nersisyan Malhami on 2/25/23.
//

import Foundation

class FriendsModel {
    
    // let date = DateFormatter().dateFormat("dd/MM/YY")
    
    var allTheFriends = [
        ["John", "Samson", "john@samson.co"],
        ["Dallas", "Millos", "dallas@millos.co"],
        ["Marry", "Roses", "marry@roses.co"],
        ["Kira", "Samu", "kira@samu.co"]
    ]
    /*
     var allTheFriends = [
     ["John", "Samson", "john@samson.co" ,Date()],
     ["Dallas", "Millos", "dallas@millos.co" ,Date()],
     ["Marry", "Roses", "marry@roses.co" ,Date()],
     ["Kira", "Samu", "kira@samu.co" ,Date()]
     ]
     */
    
    // Returns number of Friends
    func numOfFriends()-> Int {
        return allTheFriends.count
    }
    
    // Adding Friends function
    func addFriends(firstN: String, lastN: String, email: String){
        let newFriend = [ firstN, lastN, email]
        allTheFriends.append(newFriend)
        // Sorting each time after inputing the new friend
        allTheFriends.sort {  $0[1] < $1[1]}
    }
}


