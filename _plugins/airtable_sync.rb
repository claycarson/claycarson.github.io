# frozen_string_literal: true

require 'json'
require 'airtable'
require 'active_support/all'

# Pass in api key to client
AIRTABLE_API_KEY = 'keyYjZfrei5ebsPne'
AIRTABLE_TABLE_ID = 'appBw4VZRZ8OvAeTL'

#AIRTABLE_API_KEY = ENV['AIRTABLE_API_KEY']
#AIRTABLE_TABLE_ID = ENV['AIRTABLE_TABLE_ID']

@client = Airtable::Client.new(AIRTABLE_API_KEY)

def paginate_indefinitely(table)
  all_results = []
  offset = nil
  loop do
    page = table.records(view: 'Grid view', offset: offset)
    all_results += page.map(&:attributes)
    offset = page.offset
    break if offset.nil?
  end
  all_results
end

def collect_records(sheet_name)
  paginate_indefinitely(@client.table(AIRTABLE_TABLE_ID, sheet_name))
end

def write_records(records, output_path)
  File.open(output_path, 'w') do |f|
    f.write(records.to_json)
  end
end

# content_records = collect_records('Content')
# write_records(content_records, '_data/content.json')
# content_id_to_data = Hash[content_records.collect { |v| [v['id'], v] }]
#
# notebook_records = collect_records('Notebook')
# notebook_records.each do |record|
#   next unless record['source']
#
#   record['source'] = content_id_to_data[record['source'][0]]
# end
# write_records(notebook_records, '_data/notebook.json')
#
# diet_records = collect_records('Movies')
# diet_records.each do |record|
#   next unless record['content']
#
#   record['content'] = record['content'].map do |content_id|
#     content_id_to_data[content_id]
#   end
# end
# write_records(diet_records, '_data/movies.json')
#
# dictionary_records = collect_records('Dictionary')
# dictionary_records.each do |record|
#   next unless record['content']
#
#   record['content'] = record['content'].map do |content_id|
#     content_id_to_data[content_id]
#   end
# end
# write_records(dictionary_records, '_data/words.json')
write_records(collect_records('Summary'), '_data/summary.json')
write_records(collect_records('Currently'), '_data/currently.json')
write_records(collect_records('Movies'), '_data/movies.json')
write_records(collect_records('Music'), '_data/music.json')
write_records(collect_records('TV'), '_data/tv.json')
write_records(collect_records('Books'), '_data/books.json')
write_records(collect_records('Podcasts'), '_data/podcasts.json')
write_records(collect_records('Games'), '_data/games.json')
write_records(collect_records('Dictionary'), '_data/dictionary.json')
write_records(collect_records('Quotes'), '_data/quotes.json')
write_records(collect_records('Asides'), '_data/asides.json')
write_records(collect_records('Moments'), '_data/moments.json')
write_records(collect_records('Golf'), '_data/golf.json')
write_records(collect_records('Travels'), '_data/travels.json')
write_records(collect_records('Baseball'), '_data/baseball.json')
write_records(collect_records('Whiskey'), '_data/whiskey.json')
write_records(collect_records('Photos'), '_data/photos.json')
write_records(collect_records('ReadArticles'), '_data/readarticles.json')