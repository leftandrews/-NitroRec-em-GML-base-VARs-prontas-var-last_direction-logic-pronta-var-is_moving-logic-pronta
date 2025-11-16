#region codigo da movimentção (W, D, A, S)
if keyboard_check(ord("W"))

{
	y-=3
}

if keyboard_check(ord("D"))

{
	x+=3
}
if keyboard_check(ord("A"))

{
	x-=3
}
if keyboard_check(ord("S"))

{
	y+=3
}
#endregion

#region programação dos sprites animados de caminhada do player
if (keyboard_check(ord("W"))) 
{	
	sprite_index = andando_para_cima;	
}
else if (keyboard_check(ord("S"))) 
{	
	sprite_index = andando_para_baixo;
}
else if (keyboard_check(ord("A"))) 
{	
	sprite_index = andando_para_esquerda;	
}
else if (keyboard_check(ord("D")))

{	
	sprite_index = andando_para_direita;
}
else 

{
    
if (sprite_index == andando_para_cima) 

{
    sprite_index = parado_pra_cima;
} 
    else if (sprite_index == andando_para_baixo) 
{
    sprite_index = parado_pra_baixo;
}
    else if (sprite_index == andando_para_esquerda) 
{
    sprite_index = parado_pra_esquerda;
}
    else if (sprite_index == andando_para_direita) 
{
    sprite_index = parado_pra_direita;
}
    
    // Se ele nunca se moveu ou tem um sprite diferente, ele mantém o sprite atual.
}
#endregion

#region lógica da var "last_direction" ---(ainda sem utilidae)---
if keyboard_check(ord("W"))

{
last_direction = 1;
}
if keyboard_check(ord("A"))

{
last_direction = 2;
}

if keyboard_check(ord("S"))

{
last_direction = 3;
}

if keyboard_check(ord("D"))

{
last_direction = 4;
}

#endregion

#region nova lógica da var "is_moving" ---(ainda sem utilidae)---
//nova lógica da var "is_moving":
if (keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")))
{
    is_moving = 1; // Verdadeiro: Pelo menos uma tecla de movimento está pressionada
}
else
{
    is_moving = 0; // Falso: Nenhuma das teclas de movimento está pressionada
}
#endregion