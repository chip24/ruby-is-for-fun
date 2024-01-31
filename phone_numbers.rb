def phone_to_number(phone_num)
    arr = phone_num.chars
    p arr
    arr.each_with_index do |dig, idx|
    #phone_num.each_char do |dig|
     #   print dig
        if dig == "A"|| dig =="B"|| dig =="C"
            arr[idx] = "2"
        end
        if dig == "D"|| dig =="E"|| dig =="F"
            arr[idx] = "3"
        end
        if dig == "G"|| dig =="G"|| dig =="I"
            arr[idx] = "4"
        end
        if dig == "J"|| dig =="K"|| dig =="L"
            arr[idx] = "5"
        end
        if dig == "M"|| dig =="N"|| dig =="O"
            arr[idx] = "6"
        end
        if dig == "P"|| dig =="Q"|| dig =="R" || dig == "S"
            arr[idx] = "7"
        end
        if dig == "T"|| dig =="U"|| dig =="V"
            arr[idx] = "8"
        end
        if dig == "W"|| dig =="X"|| dig =="Y" || dig == "Z"
            arr[idx] = "9"
        end
    end
    p arr
    p arr.join()

end

phone_to_number("555MATTRESS")