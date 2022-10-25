def Check(str)
    new_mass = [str[0]]
    for i in 1..str.length do
        is_found = true
        for s in 0...i do
            if str[s] == str[i]
                is_found = false
                break
            end
        end
        if is_found
            new_mass.push(str[i])     
        end
    end
    return new_mass.join
end


puts('============== DUBLICATE ERASER v1.0 ==============')
loop do
    puts('Enter your number (Enter 0 to exit): ')
    input = gets.chomp
    if input == '0'
        break
    elsif input.length <= 1 
        puts('ERROR: Enter more than 1 number') 
    else
        line = input.split('')
        print('Output is ')
        puts(Check(line))
    end
end


