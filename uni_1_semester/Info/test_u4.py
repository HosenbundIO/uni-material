state = "A"
x = 0

for i in range(1, 15):
    print(f'{i}: State: {state}')
    if state == "A":
        if i % 3 == 0:
            x += i
            print(f'X: {x}')
            state = "B"
        else:
            x -= 1
            print(f'X: {x}')

    elif state == "B":
        if i % 2 == 0:
            x += 2 * i
            print(f'X: {x}')
            state = "C"
        else:
            x -= 2
            print(f'X: {x}')

    else: # state == "C"
        if i % 4 == 0 and i > 10:
            x = x // 2
            print(f'X: {x}')
            state = "A"
        else:
            x += i // 2
            print(f'X: {x}')

S = 'DatenSTRUKTUR-en in Python 2025!'

print("Test", sorted(set(S)))
print("3:", S.join(sorted(set(S))))
print("4:", sum(c.isdigit() for c in S))