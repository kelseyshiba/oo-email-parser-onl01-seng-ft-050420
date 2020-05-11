# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  attr_accessor :emails
  @@emails = []
  
  def initialize(emails)
    @emails = emails
  end
  
    
  # def parse
  #   parsed = @emails.split(/,| /).filter {|a| a != ""}
  #   new_emails = parsed.reject {|a,b| a == b}
  #   binding.pry
  #   @@emails << new_emails
  # end

def parse
  parsed = @emails.split(/,| /).filter {|a| a !=""}
  new_emails = parsed.uniq!
  binding.pry
end