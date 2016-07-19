require 'open-uri'
require 'json'

class OverwatchParser
  def initialize(platform, region, battletag)
    battletag.gsub!('#','-') #TODO: F0002: Smarter, when # is in the nickname
    url = 'https://playoverwatch.com/en-us/career'
    profile_page = [url, platform, region, battletag].join('/')
    puts "Opening: #{profile_page}"
    @nokogiri_page = Nokogiri::HTML(open(profile_page))
  end

  # FEATURED STATS
  def featured_stats(mode)
    result_hash = {}
    cards = @nokogiri_page.css("##{mode} .card-content")
    cards.each do |card|
      result_hash.merge! card.css('p').text => card.css('h3').text
    end
    result_hash
  end

  def level
    @nokogiri_page.css('.u-vertical-center').text
  end

  def nickname
    @nokogiri_page.css('.header-masthead').text
  end

  # TOP HEROES
  def top_heroes(mode)
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
    heroes = @nokogiri_page.css("##{mode} .hero-comparison-section .bar-text")
    heroes.each_with_index do |hero, i|
      hero_name = hero.css('.title').text
      value = hero.css('.description').text
      result_hash[hero_name] ||= {}
      result_hash[hero_name].merge! stats[stats_i] => value
      stats_i = stats_i + 1 if (i + 1) % 21 == 0 # number of heroes
    end
    result_hash
  end

  def achievements
    results = {}
    @nokogiri_page.css('div[data-group-id="achievements"]').each_with_index do |x, i|
      key = @nokogiri_page.css('#achievements-section option')[i].text
      results[key] ||= []
      x.css('.media-card').each do |xx|
        #todo: consider if done  # Cannot do it yet. Needs JS to parse after....
        results[key] << {
          xx.css('.content').text => {
            achived: !x.css('.media-card').last.attributes.to_s.include?('m-disabled'),
            img: x.css('img').last['src']
          }
        }
      end
    end
    results
  end

  #
  # CAREER STATS
  # Assumes full Battletag, PSN or Xbox Gamertag...
  #
  def career_stats(mode)
    results_hash = {}
    data_tables = @nokogiri_page
      .css("##{mode} .js-stats.toggle-display.is-active")
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
  def self.stats(owp, mode)
    return if owp.career_stats(mode) == {}
    total_games = owp.career_stats(mode)['Game']['Games Played'].to_i
    games_won = owp.career_stats(mode)['Game']['Games Won'].to_i
    time_payed = owp.career_stats(mode)['Game']['Time Played']
    {
      total_games: total_games,
      win_loss: total_games - games_won,
      win_rate: games_won / total_games.to_f,
      time_payed: time_payed
    }
  end
  def self.everything(owp)
    {
      quick_play: {
        featured_stats: owp.featured_stats('quick-play'),
        top_heroes: owp.top_heroes('quick-play'),
        career_stats: owp.career_stats('quick-play'),
        stats: stats(owp, 'quick-play')
      },
      competitive_play: {
        featured_stats: owp.featured_stats('competitive-play'),
        top_heroes: owp.top_heroes('competitive-play'),
        career_stats: owp.career_stats('competitive-play'),
        stats: stats(owp, 'competitive-play')
      },
      nickname: owp.nickname,
      level: owp.level,
      achievements: owp.achievements
    }
  end
end
