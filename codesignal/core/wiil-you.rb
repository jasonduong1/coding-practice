def solution(young, beautiful, loved)
  if young && beautiful && !loved
    true
  elsif !young && !beautiful && loved
    true
  elsif young && !beautiful && loved
    true
  elsif !young && beautiful && loved
    true
  else
    false
  end
end
