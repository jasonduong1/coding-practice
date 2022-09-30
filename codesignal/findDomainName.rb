def solution(address)
  address.match(/@([a-zA-Z0-9.\-]+)$/)[1]
end
