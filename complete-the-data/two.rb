# Given an array of social media posts and an array of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

# [
# {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]

# And this array of users:

# [
# {user_id: 403, name: "Aunty Em"},
# {user_id: 231, name: "Joelle P."},
# {user_id: 989, name: "Lyndon Johnson"},
# {user_id: 111, name: "Patti Q."},
# ]

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

def merge(posts, users)
  output = []
  posts.each do |post|
    current_hash = {}
    current_hash[:title] = post[:title]
    users.each do |user|
      current_hash[:submitted_by] = user[:name] if post[:submitted_by] == user[:user_id]
    end
    current_hash[:likes] = post[:likes]
    output << current_hash
  end
  output
end

p merge(
  [
    { title: "Me Eating Pizza", submitted_by: 231, likes: 1549 },
    { title: "i never knew how cool i was until now", submitted_by: 989, likes: 3 },
    { title: "best selfie evar!!!", submitted_by: 111, likes: 1092 },
    { title: "Mondays are the worst", submitted_by: 403, likes: 644 },
  ],
  [
    { user_id: 403, name: "Aunty Em" },
    { user_id: 231, name: "Joelle P." },
    { user_id: 989, name: "Lyndon Johnson" },
    { user_id: 111, name: "Patti Q." },
  ]
)
