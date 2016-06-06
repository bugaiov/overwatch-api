require 'open-uri'
require 'json'

class OverwatchParser

  def initialize(battletag)
    battletag.gsub!('#','-') #TODO: F0002: Smarter, when # is in the nickname
    url = 'https://playoverwatch.com/en-us/career'
    platform = 'pc'
    region = 'eu'
    profile_page = [url, platform, region, battletag].join('/')
    puts "Opening: #{profile_page}"
    @nokogiri_page = Nokogiri::HTML(open(profile_page))
  end

  # FEATURED STATS
  def featured_stats
    result_hash = {}
    cards = @nokogiri_page.css('#highlights-section .card-content')
    cards.each do |card|
      result_hash.merge! card.css('p').text => card.css('h3').text
    end
    result_hash
  end

  # TOP HEROES
  def top_heros
    stats_i = 0
    stats = %w(
      time_played
      games_won
      win_percentage
      weapon_accuracy
      eliminations_per_life
      kill_streak_best
      multikill_best
      objective_kills_average
    )
    result_hash = {}
    heroes = @nokogiri_page.css('#top-heroes-section .bar-text')
    heroes.each_with_index do |hero, i|
      hero_name = hero.css('.title').text
      value = hero.css('.description').text
      result_hash[hero_name] ||= {}
      result_hash[hero_name].merge! stats[stats_i] => value
      stats_i = stats_i + 1 if (i + 1) % 21 == 0 # number of heroes
    end
    result_hash
  end

  # TODO: ACHIEVEMENTS
  def achievements
    # Implement...
    {}
  end

  #
  # CAREER STATS
  # Assumes full Battletag, PSN or Xbox Gamertag...
  #
  def career_stats
    results_hash = {}
    # Data tables with career stats
    data_tables = @nokogiri_page
      .css('.js-stats.toggle-display.is-active')
      .css('.data-table')
    data_tables.each do |table|
      table_name = table.css('thead th').text
      results_hash[table_name] = {}
      table.css('tbody tr').each do |row|
        td_row = row.css('td')
        results_hash[table_name].merge! td_row[0].text => td_row[1].text
      end
    end
    results_hash
  end
end

class ParsedPaclulator
  def self.stats(owp)
    total_games = owp.career_stats['Game']['Games Played'].to_i
    games_won = owp.career_stats['Game']['Games Won'].to_i
    total_score = owp.career_stats['Game']['Score']
    time_payed = owp.career_stats['Game']['Time Played']
    {
      total_games: total_games,
      win_loss: total_games - games_won,
      win_rate: games_won / total_games.to_f,
      total_score: total_score,
      score_min: time_payed.to_f * 60 / total_score.gsub(',','.').to_f,
      time_payed: time_payed
    }
  end
  def self.everything(owp)
    {
      featured_stats: owp.featured_stats,
      top_heros: owp.top_heros,
      career_stats: owp.career_stats,
      achievements: owp.achievements,
      stats: stats(owp)
    }
  end
end
