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
    # parsed = @emails.split(/,| /).filter {|a| a != ""}
    emails.split.map {|email| email.split(/,| /)}.flatten.uniq
  end
    
# def parse
#     parsed = @emails.split(/,| /).filter {|a| a != ""}
#     @@emails << parsed
#     @@emails.flatten.uniq
#   end

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

