def solution(yourLeft, yourRight, friendsLeft, friendsRight)
  you = yourLeft + yourRight
  friend = friendsLeft + friendsRight
  return false if you != friend
  hash = {}
  hash[yourLeft] = 1
  hash[yourRight] ? hash[yourRight] += 1 : hash[yourRight] = 1
  hash[friendsLeft] ? hash[friendsLeft] += 1 : hash[friendsLeft] = 1
  hash[friendsRight] ? hash[friendsRight] += 1 : hash[friendsRight] = 1
  hash.each { |_, v| return false if v == 1 }
  true
end
