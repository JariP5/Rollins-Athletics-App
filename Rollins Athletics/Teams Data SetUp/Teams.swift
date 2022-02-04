//
//  Teams.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/30/22.
//

import Foundation


var baseball = Sport(name: "Baseball", icon: "", startDate: "02/02/2022", endDate: "05/13/2022")
var basketball = Sport(name: "Basketball", icon: "", startDate: "11/01/2021", endDate: "02/26/2022")
var golf = Sport(name: "Golf", icon: "", startDate: "09/04/2021", endDate: "04/12/2022")
var lacrosse = Sport(name: "Lacrosse", icon: "", startDate: "02/04/2022", endDate: "04/24/2022")
var rowing = Sport(name: "Rowing", icon: "", startDate: "", endDate: "")
var sailing = Sport(name: "Sailing", icon: "", startDate: "", endDate: "")
var soccer = Sport(name: "Soccer", icon: "", startDate: "02/09/2021", endDate: "12/09/2021")
var softball = Sport(name: "Softball", icon: "", startDate: "01/29/2022", endDate: "05/08/2022")
var swimming = Sport(name: "Swimming", icon: "", startDate: "01/08/2021", endDate: "02/20/2022")
var tennis = Sport(name: "Tennis", icon: "", startDate: "02/01/2022", endDate: "04/16/2022")
var volleyball = Sport(name: "Volleyball", icon: "", startDate: "09/03/2021", endDate: "12/11/2021")
var waterski = Sport(name: "Waterski", icon: "", startDate: "", endDate: "")


// MEN
var mBaseball = Team(sport_id: "26", image: "", abbr: "baseball", standings: true, gender: "Men's", sport: baseball)
var mBasketball = Team(sport_id: "29", image: "", abbr: "mbball", standings: true, gender: "Men's", sport: basketball)
var mGolf = Team(sport_id: "14", image: "", abbr: "mgolf", standings: true, gender: "Men's", sport: golf)
var mLacrosse = Team(sport_id: "15", image: "", abbr: "mlax", standings: true, gender: "Men's", sport: lacrosse)
var mRowing = Team(sport_id: "0", image: "", abbr: "", standings: false, gender: "Men's", sport: rowing)
var mSailing = Team(sport_id: "0", image: "", abbr: "", standings: false, gender: "Men's", sport: sailing)
var mSoccer = Team(sport_id: "16", image: "", abbr: "msoc", standings: true, gender: "Men's", sport: soccer)
var mSwimming = Team(sport_id: "17", image: "", abbr: "", standings: false, gender: "Men's", sport: swimming)
var mTennis = Team(sport_id: "18", image: "", abbr: "mten", standings: true, gender: "Men's", sport: tennis)
var mWaterski = Team(sport_id: "0", image: "", abbr: "", standings: false, gender: "Men's", sport: waterski)

var menTeams = [mBaseball, mBasketball, mGolf, mLacrosse, mRowing, mSailing, mSoccer, mSwimming, mTennis, mWaterski]

// WOMEN
var wBasketball = Team(sport_id: "30", image: "", abbr: "wbball", standings: true, gender: "Women's", sport: basketball)
var wGolf = Team(sport_id: "3", image: "", abbr: "wgolf", standings: true, gender: "Women's", sport: golf)
var wLacrosse = Team(sport_id: "4", image: "", abbr: "wlax", standings: true, gender: "Women's", sport: lacrosse)
var wRowing = Team(sport_id: "0", image: "", abbr: "", standings: false, gender: "Women's", sport: rowing)
var wSailing = Team(sport_id: "0", image: "", abbr: "", standings: false, gender: "Women's", sport: sailing)
var wSoccer = Team(sport_id: "6", image: "", abbr: "wsoc", standings: true, gender: "Women's", sport: soccer)
var wSoftball = Team(sport_id: "31", image: "", abbr: "sball", standings: true, gender: "Women's", sport: softball)
var wSwimming = Team(sport_id: "8", image: "", abbr: "", standings: false, gender: "Women's", sport: swimming)
var wTennis = Team(sport_id: "9", image: "", abbr: "wten", standings: true, gender: "Women's", sport: tennis)
var wVolleyball = Team(sport_id: "10", image: "", abbr: "wvb", standings: true, gender: "Women's", sport: volleyball)
var wWaterski = Team(sport_id: "0", image: "", abbr: "", standings: false, gender: "Women's", sport: waterski)

var womenTeams = [wBasketball, wGolf, wLacrosse, wRowing, wSailing, wSoccer, wSoftball, wSwimming, wTennis, wVolleyball, wWaterski]
