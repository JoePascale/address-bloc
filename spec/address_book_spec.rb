require_relative '../models/address_book'

RSpec.describe AddressBook do
    describe "attributes" do
        it "responds to entries" do
            book = AddressBook.new
            expect(book).to respond_to(:entries)
        end
        
        it "initializes entries as an array" do
            book = AddressBook.new
            expect(book.entries).to be_an(Array)
        end
        
        it "initializes entries as empty" do
            book = AddressBook.new
            expect(book.entries.size).to eq(0)
        end
    end
    
    describe "#add_entry" do
        it "adds only one entry to the address book" do
            book = AddressBook.new
            book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
            
            expect(book.entries.size).to eq(1)
        end
        
        it "adds the correct information to entries" do
            book = AddressBook.new
            book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
            new_entry = book.entries[0]
            
            expect(new_entry.name).to eq('Ada Lovelace')
            expect(new_entry.phone_number).to eq('010.012.1815')
            expect(new_entry.email).to eq('augusta.king@lovelace.com')
        end
    end
    
    describe "remove_entry" do
        it "removes only one entry from the address book" do
            AddressBook.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
            
            expect(entries.name).to_not contain_exactly('Ada Lovelace')
            expect(entries.phone_number)to_not contain_exactly('010.012.1815')
            expect(entries.email)to_not contain_exactly('augusta.king@lovelace.com')
            expect(entries.size).to eq(book.entries.size - 1)
            
        end
    end
end
