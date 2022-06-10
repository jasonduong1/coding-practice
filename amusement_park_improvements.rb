class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  # rubocop:disable Naming/PredicateName
  def has_pass?
    @pass_id == nil ? false : true
  end

  # rubocop:enable Naming/PredicateName

  def fits_ride?(ride_minimum_height)
    ride_minimum_height > @height ? false : true
  end

  def allowed_to_ride?(ride_minimum_height)
    if has_pass?()
      if fits_ride?(ride_minimum_height)
        true
      else
        false
      end
    else
      false
    end
  end
end

p Attendee.new(100).has_pass?
# => false
p Attendee.new(140).fits_ride?(100)
# => true
attendee = Attendee.new(100)
attendee.issue_pass!(42)
p attendee.allowed_to_ride?(120)
# # => false
