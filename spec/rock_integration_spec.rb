require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("rock paper scissors game",{:type =>:feature}) do
  it("will get Player 1 Winner if player 1 chooses paper and player2 chooses rock") do
    visit('/')
    select("paper", :from=>('player1'))
    select("rock", :from=>('player2'))
    click_button('send')
    expect(page).to have_content('Player 1 Winner')
  end
end
