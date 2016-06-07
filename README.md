# [api.overwatchprofile.com](http://api.overwatchprofile.com)

## Endpoints
- `GET /profile/:battletag`

## Example
`curl -i http://localhost:9292/profile/buff-21986`

## Response
```javascript
{
   "nickname": "buff",
   "level": "14",
   "featured_stats": {
      "Eliminations - Average": "8.15",
      "Damage Done - Average": "3,957",
      "Deaths - Average": "7.37",
      "Final Blows - Average": "4.04",
      "Healing Done - Average": "451",
      "Objective Kills - Average": "2.73",
      "Objective Time - Average": "00:12",
      "Solo Kills - Average": "1.11"
   },
   "top_heros": {
      "Pharah": {
         "time_played": "2 hours",
         "games_won": "11",
         "win_percentage": "48%",
         "weapon_accuracy": "31%",
         "eliminations_per_life": "1.43",
         "kill_streak_best": "8",
         "multikill_best": "3",
         "objective_kills_average": "2.89"
      },
      "Soldier: 76": {
         "time_played": "53 minutes",
         "games_won": "5",
         "win_percentage": "69%",
         "weapon_accuracy": "27%",
         "eliminations_per_life": "1.1",
         "kill_streak_best": "5",
         "multikill_best": "0",
         "objective_kills_average": "2.58"
      },
      "McCree": {
         "time_played": "26 minutes",
         "games_won": "2",
         "win_percentage": "58%",
         "weapon_accuracy": "16%",
         "eliminations_per_life": "0.88",
         "kill_streak_best": "6",
         "multikill_best": "0",
         "objective_kills_average": "2.86"
      },
      "Lúcio": {
         "time_played": "19 minutes",
         "games_won": "1",
         "win_percentage": "28%",
         "weapon_accuracy": "22%",
         "eliminations_per_life": "0.85",
         "kill_streak_best": "4",
         "multikill_best": "0",
         "objective_kills_average": "2.55"
      },
      "Junkrat": {
         "time_played": "14 minutes",
         "games_won": "0",
         "win_percentage": "9%",
         "weapon_accuracy": "4%",
         "eliminations_per_life": "0.53",
         "kill_streak_best": "2",
         "multikill_best": "0",
         "objective_kills_average": "6.19"
      },
      "Reinhardt": {
         "time_played": "9 minutes",
         "games_won": "0",
         "win_percentage": "32%",
         "weapon_accuracy": "0%",
         "eliminations_per_life": "0.22",
         "kill_streak_best": "2",
         "multikill_best": "0",
         "objective_kills_average": "0"
      },
      "Widowmaker": {
         "time_played": "7 minutes",
         "games_won": "0",
         "win_percentage": "29%",
         "weapon_accuracy": "30%",
         "eliminations_per_life": "1.66",
         "kill_streak_best": "4",
         "multikill_best": "0",
         "objective_kills_average": "1.91"
      },
      "Reaper": {
         "time_played": "7 minutes",
         "games_won": "0",
         "win_percentage": "30%",
         "weapon_accuracy": "12%",
         "eliminations_per_life": "0.63",
         "kill_streak_best": "2",
         "multikill_best": "0",
         "objective_kills_average": "2.56"
      },
      "Roadhog": {
         "time_played": "6 minutes",
         "games_won": "0",
         "win_percentage": "0%",
         "weapon_accuracy": "11%",
         "eliminations_per_life": "1.2",
         "kill_streak_best": "4",
         "multikill_best": "0",
         "objective_kills_average": "4.95"
      },
      "Winston": {
         "time_played": "5 minutes",
         "games_won": "0",
         "win_percentage": "0%",
         "weapon_accuracy": "0%",
         "eliminations_per_life": "0.87",
         "kill_streak_best": "4",
         "multikill_best": "0",
         "objective_kills_average": "7.89"
      },
      "Genji": {
         "time_played": "5 minutes",
         "games_won": "1",
         "win_percentage": "65%",
         "weapon_accuracy": "12%",
         "eliminations_per_life": "0.33",
         "kill_streak_best": "1",
         "multikill_best": "0",
         "objective_kills_average": "1.15"
      },
      "Zenyatta": {
         "time_played": "3 minutes",
         "games_won": "0",
         "win_percentage": "100%",
         "weapon_accuracy": "13%",
         "eliminations_per_life": "0.4",
         "kill_streak_best": "1",
         "multikill_best": "0",
         "objective_kills_average": "0"
      },
      "Hanzo": {
         "time_played": "2 minutes",
         "games_won": "0",
         "win_percentage": "16%",
         "weapon_accuracy": "27%",
         "eliminations_per_life": "0.66",
         "kill_streak_best": "1",
         "multikill_best": "0",
         "objective_kills_average": "3.88"
      },
      "Tracer": {
         "time_played": "2 minutes",
         "games_won": "0",
         "win_percentage": "35%",
         "weapon_accuracy": "18%",
         "eliminations_per_life": "0",
         "kill_streak_best": "0",
         "multikill_best": "0",
         "objective_kills_average": "0"
      },
      "Torbjörn": {
         "time_played": "2 minutes",
         "games_won": "0",
         "win_percentage": "0%",
         "weapon_accuracy": "0%",
         "eliminations_per_life": "1",
         "kill_streak_best": "2",
         "multikill_best": "0",
         "objective_kills_average": "1.99"
      },
      "Zarya": {
         "time_played": "1 minute",
         "games_won": "0",
         "win_percentage": "0%",
         "weapon_accuracy": "66%",
         "eliminations_per_life": "0",
         "kill_streak_best": "0",
         "multikill_best": "0",
         "objective_kills_average": "0"
      },
      "Mei": {
         "time_played": "1 minute",
         "games_won": "0",
         "win_percentage": "0%",
         "weapon_accuracy": "9%",
         "eliminations_per_life": "0",
         "kill_streak_best": "0",
         "multikill_best": "0",
         "objective_kills_average": "0"
      },
      "D.Va": {
         "time_played": "59 seconds",
         "games_won": "0",
         "win_percentage": "100%",
         "weapon_accuracy": "3%",
         "eliminations_per_life": "0",
         "kill_streak_best": "0",
         "multikill_best": "0",
         "objective_kills_average": "0"
      },
      "Mercy": {
         "time_played": "53 seconds",
         "games_won": "0",
         "win_percentage": "0%",
         "weapon_accuracy": "0%",
         "eliminations_per_life": "0",
         "kill_streak_best": "0",
         "multikill_best": "0",
         "objective_kills_average": "0"
      },
      "Bastion": {
         "time_played": "--",
         "games_won": "0",
         "win_percentage": "0%",
         "weapon_accuracy": "0%",
         "eliminations_per_life": "0",
         "kill_streak_best": "0",
         "multikill_best": "0",
         "objective_kills_average": "0"
      },
      "Symmetra": {
         "time_played": "--",
         "games_won": "0",
         "win_percentage": "0%",
         "weapon_accuracy": "0%",
         "eliminations_per_life": "0",
         "kill_streak_best": "0",
         "multikill_best": "0",
         "objective_kills_average": "0"
      }
   },
   "career_stats": {
      "Combat": {
         "Solo Kills": "50",
         "Objective Kills": "123",
         "Final Blows": "182",
         "Damage Done": "178,060",
         "Eliminations": "367",
         "Multikills": "3"
      },
      "Assists": {
         "Healing Done": "20,277",
         "Recon Assists": "1"
      },
      "Best": {
         "Eliminations - Most in Game": "21",
         "Final Blows - Most in Game": "13",
         "Damage Done - Most in Game": "13,560",
         "Healing Done - Most in Game": "3,667",
         "Defensive Assists - Most in Game": "6",
         "Objective Kills - Most in Game": "10",
         "Objective Time - Most in Game": "01:07",
         "Multikill - Best": "3",
         "Solo Kills - Most in Game": "13",
         "Time Spent on Fire - Most in Game": "01:11"
      },
      "Average": {
         "Time Spent on Fire - Average": "00:03",
         "Solo Kills - Average": "1.11",
         "Objective Time - Average": "00:12",
         "Objective Kills - Average": "2.73",
         "Healing Done - Average": "451",
         "Final Blows - Average": "4.04",
         "Deaths - Average": "7.37",
         "Damage Done - Average": "3,957",
         "Eliminations - Average": "8.15"
      },
      "Deaths": {
         "Deaths": "332",
         "Environmental Deaths": "6"
      },
      "Match Awards": {
         "Cards": "9",
         "Medals": "65",
         "Medals - Gold": "16",
         "Medals - Silver": "27",
         "Medals - Bronze": "22"
      },
      "Game": {
         "Games Won": "21",
         "Games Played": "45",
         "Time Spent on Fire": "02:15",
         "Objective Time": "09:40",
         "Score": "27,904",
         "Time Played": "5 hours"
      },
      "Miscellaneous": {
         "Defensive Assists": "9",
         "Defensive Assists - Average": "0"
      }
   },
   "achievements": {
      "General": [
         {
            "Level 10": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "Decorated": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "The Friend Zone": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "Centenary": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "Level 25": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "Level 50": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "Undying": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "The Path Is Closed": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "Survival Expert": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "Blackjack": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         },
         {
            "Decked Out": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000162.png"
            }
         }
      ],
      "Offense": [
         {
            "Die Die Die... Die": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Slice and Dice": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Their Own Worst Enemy": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Waste Not, Want Not": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Whoa There!": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "It's High Noon": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Death From Above": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Clearing the Area": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Rocket Man": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Target Rich Environment": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Total Recall": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         },
         {
            "Special Delivery": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000016C.png"
            }
         }
      ],
      "Defense": [
         {
            "Triple Threat": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Charge!": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Simple Geometry": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "The Dragon Is Sated": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Mine Like a Steel Trap": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Roadkill": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Ice Blocked": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Cold Snap": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Raid Wipe": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Armor Up!": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Did That Sting?": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         },
         {
            "Smooth as Silk": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000179.png"
            }
         }
      ],
      "Tank": [
         {
            "Shot Down": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "Game Over": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "I Am Your Shield": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "Storm, Earth and Fire": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "Giving You the Hook": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "Hog Wild": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "Mine Sweeper": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "Anger Management": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "Power Overwhelming": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         },
         {
            "The Power of Attraction": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000183.png"
            }
         }
      ],
      "Support": [
         {
            "The Floor Is Lava": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000018B.png"
            }
         },
         {
            "Supersonic": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000018B.png"
            }
         },
         {
            "Group Health Plan": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000018B.png"
            }
         },
         {
            "Huge Rez": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000018B.png"
            }
         },
         {
            "The Car Wash": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000018B.png"
            }
         },
         {
            "Huge Success": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000018B.png"
            }
         },
         {
            "Rapid Discord": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000018B.png"
            }
         },
         {
            "The Iris Embraces You": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E6000000000018B.png"
            }
         }
      ],
      "Maps": [
         {
            "Lockdown": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000191.png"
            }
         },
         {
            "Double Cap": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000191.png"
            }
         },
         {
            "Escort Duty": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000191.png"
            }
         },
         {
            "Can't Touch This": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000191.png"
            }
         },
         {
            "Shutout": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000191.png"
            }
         },
         {
            "World Traveler": {
               "achived": false,
               "img": "https://d1u1mce87gyfbn.cloudfront.net/game/achievements/0x0E60000000000191.png"
            }
         }
      ]
   },
   "stats": {
      "total_games": 45,
      "win_loss": 24,
      "win_rate": 0.46666667,
      "total_score": "27,904",
      "score_min": 10.751146,
      "time_payed": "5 hours"
   }
}
```
