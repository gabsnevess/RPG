// Variáveis
max_velv = 7;
max_velh = 5;
var _direita = keyboard_check(ord("D"));
var _esquerda = keyboard_check(ord("A"));
var _pulo = keyboard_check(vk_space);

var _chao = place_meeting(x, y + 1, obj_bloco);

// Movimentação
velh = (_direita - _esquerda) * max_velh;

// Gravidade
if (!_chao)
{
	if (velv < max_velv * 2)
	{
		velv += GRAVIDADE * massa;
	}
}
else
{
	if (_pulo)
	{
		velv = -max_velv;
	}
}