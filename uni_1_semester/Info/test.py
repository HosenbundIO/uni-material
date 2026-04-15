# 22 Buchstaben 4 Zahlzeichen

# 1 von 22 Buchstaben als Abschlussbuchstabe immer am Ende von Wort oder Zahl

# Worte bestehen nur aus Buchstaben und Zahlen nur aus Zahlen
# mit Ausnahme des Abschlusszeichens

# Jedes Wort % 2 == 0 mit Abschlussglyphe

sequence3 = [1,2,3,4,5,6,7,7,7,7,0,11,26,33] # cycle len of 1 (7)

sequence1 = [1,2,3,5,6,7,4,7,4,7,4,0,10,23,25] # cycle len of 2 (7,4)

sequence2 = [1,2,3,4,5,6,7,8,9,7,8,9,7,8,9,0,10,23,25] # cycle len of 3 (7,8,9)

def find_cycle(sequence: list):
    seq_len = len(sequence)

    for i in range(seq_len, 0, -1):
            for length in range(1, i // 2 + 1):
                pattern = sequence[i - length : i]
                previous_chunk = sequence[i - 2*length : i - length]
                if pattern == previous_chunk:
                    return length, pattern, i

    return None, None, None
    

for h in [sequence1, sequence2, sequence3]:
    length, cycle, end_index = find_cycle(h)
    if cycle:
        print(f"Found cycle of length {length}: {cycle}")
    else:
        print("No cycle found")


x = False
y = True
print((x or not y) and (not x or y))