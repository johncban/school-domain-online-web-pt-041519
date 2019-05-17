# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, level)
    roster[level] ||= []
    roster[level] << student
  end

  def grade(level)
    roster.detect do |a, b|
      if a == level
        return b
      end
    end
  end

  def sort()
    st = {}
    roster.each do |a, b|
      st[a] = b.sort
    end
    st
  end


end
