#print(HairEyeColor)
mosaicplot(HairEyeColor, color=T,off=5)

santa <- data.frame(belief=c('no belief','no belief','no belief','no belief',
'belief','belief','belief','belief',
'belief','belief','no belief','no belief',
'belief','belief','no belief','no belief'),
sibling=c('older brother','older brother','older brother','older sister',
'no older sibling','no older sibling','no older sibling',
'older sister','older brother','older sister','older brother',
'older sister','no older sibling','older sister','older brother',
'no older sibling')
)
tbl <- table(santa)
#print(santa)
#mosaicplot(santa,color=T,off=1)
mosaicplot(tbl,color=T,off=1)
mosaicplot(~belief+sibling,data=santa,color=T,off=1)
