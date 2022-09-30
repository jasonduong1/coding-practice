def solution(address)
  # address.match(/@([a-zA-Z0-9.\-]+)$/)[1]
  address.split("@")[-1]
end
