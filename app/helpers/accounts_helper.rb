module AccountsHelper
  def rent_due(current_apartment)
    day = current_apartment.start_date.day.ordinalize
    if Date.today.day > current_apartment.start_date.day
      due_date = Date.today.next_month.strftime('%B') + " " + day
    else
      due_date = Date.today.strftime('%B') + " " + day
    end
    due_date
  end

  def roommates(current_apartment)
    list_of_roommates = []
    roommate_links = ''
    current_apartment.accounts.each do |account|
      list_of_roommates.push(account) if account.user.id != current_user.id
    end
    list_of_roommates.each_with_index do |roommate, index|
      if (index + 1) == list_of_roommates.size
        roommate_links += link_to roommate.name, roommate
      else
        roommate_links += "#{link_to roommate.name, roommate}" + ", "
      end
    end
    roommate_links
  end
end
