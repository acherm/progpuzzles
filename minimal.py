import chess as c,random as r
w=True
s=[r.randrange(0,64) for i in range(0,5)]
b=c.Board(fen=None)
for q in range(0,4):
    b.set_piece_at(s[q],c.Piece(5,w))
b.set_piece_at(s[4],c.Piece(3,w))
print((s,b)[len(set().union(*[list(b.attacks(s[q]))for q in range(0,5)],s))>53])
