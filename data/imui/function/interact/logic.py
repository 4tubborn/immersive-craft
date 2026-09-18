class ItemStack:
    id = 0
    count = 0
    component = {}

class Player:
    def __init__(self):
        self.equipment = {"mainhand": ItemStack}

    def give(self, stack: ItemStack):
        return


input = ItemStack

this = Player()
hand = this.equipment["mainhand"]

right_click = bool

if(right_click):
    if(input.id == hand.id):
        input.count+=1
        hand.count-=1
    else:
        tmp = input
        input.id = hand.id
        input.count +=1
        hand.count-=1
        #this.give(this,stack=tmp)
else:
    if(input.id == hand.id):
        hand.count = 64 - input.count
        input.count = 64
    else:
        tmp = input
        input = hand
        hand = tmp