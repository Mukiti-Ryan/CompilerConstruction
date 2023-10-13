def construct_ll1_table():
    table = {
        ('S', 'a'): 'AB',
        ('S', 'b'): 'AB',
        ('A', 'a'): 'a',
        ('A', 'b'): '',
        ('A', '$'): 'ε',
        ('B', 'b'): 'b',
        ('B', '$'): 'ε'
    }
    return table

ll1_table = construct_ll1_table()

# Printing the LL(1) table
for non_terminal in ['S', 'A', 'B']:
    for terminal in ['a', 'b', '$']:
        if (non_terminal, terminal) in ll1_table:
            print(f'M[{non_terminal}, {terminal}] = {ll1_table[(non_terminal, terminal)]}')