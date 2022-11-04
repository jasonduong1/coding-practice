def solution(symbol)
  symbol[/\d/] ? symbol.to_i.odd? ? "odd" : "even" : "not a digit"
end
