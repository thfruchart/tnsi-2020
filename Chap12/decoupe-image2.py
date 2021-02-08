def decoupe(px, x, y, t):
    t = t//2
    for i in range(t):
        for j in range(t):
            px[x+i ,y+j], px[x+t+i ,y+j], px[x+t+i ,y+t+j], px[x+i ,y+t+j]= \
                   px[x+t+i ,y+j], px[x+t+i ,y+t+j], px[x+i ,y+t+j], px[x+i ,y+j]


from PIL import Image
im = Image.open("tigre.jpg")
px=im.load()
decoupe(px,0,0,256)
decoupe(px,0,0,128)
decoupe(px,64,64,64)
im.save("decoupage2.jpg")
