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
    st = {} # crate an empty hash
    roster.each do |a, b| # get each roster or every single variable of studnet and level abbv as a and b.
      st[a] = b.sort # sort the level against the array of students
    end
    st
  end


end
