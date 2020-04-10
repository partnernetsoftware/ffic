char* _ffic_strcat(char *buffer, const char *source, const char* append) {
	char* idx = buffer;
	while (*source)  *(idx++) = *(source++);
	while (*append)  *(idx++) = *(append++);
	*idx = '\0';
	return buffer;
}

int main()
{
#define ffic_tmp_string(n) ((char[n]){0})
	char * s1="可以吗？";
	char * s2="可以吧？";
	char * bf0 = ffic_tmp_string(512);
	char * bf1 = _ffic_strcat(ffic_tmp_string(512),s1,s2);
	printf("bf1:%s\n", bf1);
	char * bf2 = _ffic_strcat(bf1,s1,"再来");
	char * bf3 = _ffic_strcat(ffic_tmp_string(512),s1,"再来3");
	//question, will the buffer be freed?
	printf("bf2:%s\n", bf2);
	printf("bf1:%s\n", bf1);
	printf("bf3:%s\n", bf3);
	//printf("test:%s\n", _ffic_strcat(bf,s1,s2) );
	//free(bf1);
	//printf("after free, bf2=%s\n", bf2);
	return 0;
}
