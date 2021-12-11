require_relative "room"

class Hotel

    def initialize(name, room_caps)
        @name = name
        @rooms = {}

        room_caps.each do |room_name, capacity|
            @rooms[room_name] = Room.new(capacity)
        end
    end

    def name
        name_array = @name.split(" ")
        name_array.map {|ele| ele.capitalize!}
        cap_names = name_array.join(" ")
        return cap_names
    end

    def rooms
        @rooms
    end

    def room_exists?(room_name)
        @rooms.keys.include?(room_name)
    end

    def check_in(guest_name, room_name)
        if self.room_exists?(room_name)
            if @rooms[room_name].add_occupant(guest_name)
                puts "check in successful"
            else
                puts "sorry, room is full"
            end
        else
            puts "sorry, room does not exist"
        end
    end

    def has_vacancy?
        @rooms.values.any? { |room_name| room_name.available_space > 0}
    end

    def list_rooms
        @rooms.each do |room_name, room_inst|
            puts "#{room_name} : #{room_inst.available_space}"
        end
    end

  
end
