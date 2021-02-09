def decoupe(px, x, y, t):
    t = t//2
    for i in range(t):
        for j in range(t):
            px[x+i ,y+j], px[x+t+i ,y+j], px[x+t+i ,y+t+j], px[x+i ,y+t+j]= \
                   px[x+t+i ,y+j], px[x+t+i ,y+t+j], px[x+i ,y+t+j], px[x+i ,y+j]



def rotation(px,x,y,t):
    decoupe(px,x,y,t)
    if t>1:
        t = t//2
        decoupe(px,x,y,t)
        decoupe(px,x+t,y,t)
        decoupe(px,x,y+t,t)
        decoupe(px,x+t,y+t,t)



from PIL import Image
im = Image.open("tigre.jpg")
px=im.load()
rotation(px,0,0,256)
im.save("rotation1.jpg")