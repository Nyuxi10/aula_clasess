requiere 'test_helper'


 RSpec.describe NoteModel, :type => :model do
  
    describe Note do
      it "is invalid without a value" do
      note = Note.new(valor: nil)
      note.valid?
      expect(note.errors[:valor]).to include("can't be blank")
    end

end