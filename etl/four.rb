# This is very similar to ETL #3, but you must now accomplish the task in linear time (O(N)).

# Given an array of Youtube videos, for example:

# [
# {title: 'How to Make Wood', author_id: 4, views: 6},
# {title: 'How to Seem Perfect', author_id: 4, views: 111},
# {title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202},
# {title: 'Why Pigs Stink', author_id: 1, views: 12}
# ]

# and an array of authors, for example:

# [
# {id: 1, first_name: 'Jazz', last_name: 'Callahan'},
# {id: 2, first_name: 'Ichabod', last_name: 'Loadbearer'},
# {id: 3, first_name: 'Saron', last_name: 'Kim'},
# {id: 4, first_name: 'Teena', last_name: 'Burgess'},
# ]

# Return a new array of videos in the following format, and only include videos that have at least 100 views:

# [
# {title: 'How to Seem Perfect', views: 111, author_name: 'Teena Burgess' }
# {title: 'Review of the New "Unbreakable Mug"', views: 202, author_name: 'Ichabod Loadbearer' },
# ]

def reformat(videos, authors)
  hash_author = {}
  new_array = []
  authors.each { |author| hash_author[author[:id]] = (author[:first_name] + " " + author[:last_name]) }
  videos.each do |video|
    if video[:views] > 100
      current_hash = {}
      current_hash[:title] = video[:title]
      current_hash[:views] = video[:views]
      current_hash[:author_name] = hash_author[video[:author_id]]
      new_array.push(current_hash)
    end
  end
  new_array
end

p reformat(
  [
    { title: "How to Make Wood", author_id: 4, views: 6 },
    { title: "How to Seem Perfect", author_id: 4, views: 111 },
    { title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202 },
    { title: "Why Pigs Stink", author_id: 1, views: 12 },
  ],
  [
    { id: 1, first_name: "Jazz", last_name: "Callahan" },
    { id: 2, first_name: "Ichabod", last_name: "Loadbearer" },
    { id: 3, first_name: "Saron", last_name: "Kim" },
    { id: 4, first_name: "Teena", last_name: "Burgess" },
  ]
)
