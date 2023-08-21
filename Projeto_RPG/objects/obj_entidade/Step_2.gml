// ----> Movimentação e Colisão

var _velv = sign(velv);
var _velh = sign(velh);

// Horizontal
repeat(abs(velh))
{
	if (place_meeting(x + _velh, y, obj_bloco))
	{
		velh = 0;
		break;
	}
	x += _velh;
}

// Vertical
repeat(abs(velv))
{
	if (place_meeting(x, y + velv, obj_bloco))
	{
		velv = 1;
		break;
	}
	y += _velv;
}