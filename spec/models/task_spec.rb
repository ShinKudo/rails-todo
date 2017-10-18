require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is valid with name and done" do
    task = build(:task)
    expect(task).to be_valid
  end

  it "doneがfalseからtrueになる事" do
  	task = build(:task, done: false)
  	task.complete
  	expect(task.done).to eq true
  end

  let(:task) { FactoryGirl.create(:task,done:false) }
  it '' do
  	expect do
  	  task.complete
  	end.to change(task, :done).from(false).to(true)
  end
end
