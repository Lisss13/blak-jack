require_relative './user'

class Player < User
  def initialize(name)
    super
    validate!
  end

  protected

  def validate!
    raise 'Name can`be null or empty' if name.nil? || name.empty?
  end
end
