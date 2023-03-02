from db import select_one, select_all, write

def get_all_gifts():
    gifts = select_all(f"SELECT * FROM gifts;") 
    gift_list = []
    for gift in gifts:
        gift_list.append(gift)
    return gift_list