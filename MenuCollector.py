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