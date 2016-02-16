def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  new_number = 1+rand(11)
  puts new_number
  return new_number
  # code #deal_card here
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  input = gets.chomp
  return input
  # code #get_user_input here
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  deal_card
  deal_card
  total = deal_card + deal_card

  total_cards = display_card_total (total)
  return total_cards
  print total_cards

  # code #initial_round here
end

def hit? (card_total)
  prompt_user
  input = get_user_input

  if input == "h"
    new_card_total = deal_card + card_total
    return new_card_total
  elsif input != "h" && input != "s"
    prompt_user
  else input == "s"
    return card_total
  end
end

  # code hit? here

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_initial_cards = initial_round

  all_cards = total_initial_cards
  while all_cards < 21
    ultimate_card_total = hit?(all_cards)
    display_card_total(ultimate_card_total)
    all_cards = ultimate_card_total
  end

  end_game (all_cards)
end

