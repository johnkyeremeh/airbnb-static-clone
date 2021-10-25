describe Catagory do 
    it 'has a Catagory' do 

        #setup
        catagory = Catagory.new
        catagory.name = "Fiction"

        #expectation
        
        expect(catagory.name).to eq("Fiction")
    end
end