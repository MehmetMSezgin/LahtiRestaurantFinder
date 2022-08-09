def menu1(menu):
    with open('menu1.txt', 'w') as f:
        f.write(menu)


def menu2(m1, m2, m3):
    lines = [m1,m2,m3]
    print(m1)
    print(m2)
    print(m3)
    with open('menu2.txt','w') as f:
        f.write(lines[0])
        '''for line in lines:
            f.write(line)
            f.write('\n')'''

def txtToString():
    # open text file in read mode
    text_file = open("menu1.txt", "r")

    # read whole file to a string
    data = text_file.read()

    # close file
    text_file.close()

    return data

