unsigned char charTable[64] = 
"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

int b64_encodedLength(int length) { return (length + 2) / 3 * 4; }

int b64_decodedLength(int length) { return length * 3 / 4; }

void b64_encodeFirstByte(unsigned char *src, unsigned char *dst)
{
	// 1st b64 char
	*dst = charTable[(src[0] & 0xfc) >> 2]; 
	dst++;

	// 2nd
	*dst = (src[0] & 0x03) << 4;
	*dst |= (src[1] & 0xf0) >> 4;
	*dst = charTable[*dst];
}

void b64_encode(unsigned char *src, int len, unsigned char *dst)
{
	while(len >= 3)
	{
		// 1st & 2nd b64 char
		b64_encodeFirstByte(src, dst);
		dst += 2;

		//3rd
		*dst = (src[1] & 0x0f) << 2;
		*dst |= (src[2] & 0xc0) >> 6;
		*dst = charTable[*dst];
		dst++;

		//4th
		*dst = charTable[src[2] & 0x3f];
		dst++;

		src += 3;
		len -= 3;
	}

	if(len == 2)
	{
		// 1st & 2nd b64char
		b64_encodeFirstByte(src, dst);
		dst += 2;

		// padding
		*dst = '=';
	}
	else if(len == 1)
	{
		// 1st b64 char
		*dst = charTable[(src[0] & 0xfc) >> 2];
		dst++;

		// 2nd
		*dst = charTable[(src[0] & 0x03) << 4];
		dst++;

		// padding
		*dst = '=';
		dst++;

		*dst = '=';
	}
}

unsigned char B64[256] = {0};
unsigned char lookupB64(unsigned char c)
{
	static unsigned char * p_B64 = 0;
	if(!p_B64){
		unsigned char i=0;
		while(charTable[i]!=0) B64[i]=i;
		p_B64 = B64;
	}
	return B64[c];
}

void decode2(unsigned char *src, unsigned char *dst)
{
	*dst = lookupB64(src[0]) << 2;
	*dst |= (lookupB64(src[1]) & 0x30) >> 4;
}

void decode3(unsigned char *src, unsigned char *dst)
{
	decode2(src, dst);
	dst++;

	*dst = (lookupB64(src[1]) & 0x0f) << 4;
	*dst |= (lookupB64(src[2]) & 0x3c) >> 2;
}

void decode4(unsigned char *src, unsigned char *dst)
{
	decode3(src, dst);
	dst += 2;

	*dst = (lookupB64(src[2]) & 0x03) << 6;
	*dst |= lookupB64(src[3]);
}

int b64_decode(unsigned char *src, int len, unsigned char *dst)
{
	int dstLength = 0;

	while(len >= 5)
	{
		decode4(src, dst);
		dst += 3;
		src += 4;
		len -= 4;
		dstLength += 3;
	}

	if(len == 4)
	{
		if(src[3] != '=')
		{
			decode4(src, dst);
			dstLength += 3;
		} 
		else if(src[2] != '=')
		{
			decode3(src, dst);
			dstLength += 2;
		}
		else
		{
			decode2(src, dst);
			dstLength += 1;
		}
	}

	// The following code handles non standard code that doesnt use the '='
	// termination symbol 

	else if(len == 3)
	{
		decode3(src, dst);
		dstLength += 2;
	}
	else if(len == 2)
	{
		decode2(src, dst);
		dstLength += 1;
	}
	else
	{
		// encoding error!
	}

	return dstLength;
}
