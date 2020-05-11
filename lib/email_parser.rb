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
  
    
  def parse
    parsed = @emails.split(/,| /).filter {|a| a != ""}
    new_emails = parsed.uniq
    @@emails << new_emails
    @@emails.flatten
  end

  # def parse
  #   parsed = @emails.split(/,| /).filter {|a| a !=""}
  #   parsed.collect do |dups|
  #     if dups
  #       @@emails << dups
  #     end
  #   end
  #   @@emails
  # end
end