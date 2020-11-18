# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :email_addresses, :parser

        def initialize(email_addresses)
            @email_addresses = email_addresses
            @parse = parse
        end 
    
        def parse 
            array = @email_addresses.split(/[,\s]+/)
            new_array = array.map {|i| i.strip}
            new_array = new_array.uniq
            new_array 
         end 
end 

email_addresses = "john@doe.com person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

p parser.parse
