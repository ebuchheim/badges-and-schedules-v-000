# Write your code here.
def batch_badge_creator(names)
    badge_list = []
    names.each do |name|
        badge = badge_maker(name)
        badge_list.push badge
    end
    badge_list
end

def badge_maker(name)
    "Hello, my name is #{name}."
end

def assign_rooms(names)
    room_list = []
    room = 1
    names.each do |name|
        assignment ="Hello, #{name}! You'll be assigned to room #{room}!"
        room += 1
        room_list.push assignment
    end
    room_list
end

def printer(names)
    size = names.count
    index = 0
    badges = batch_badge_creator(names)
    rooms = assign_rooms(names)
    until index == size
        puts badges[index]
        puts rooms[index]
        index += 1
    end
end