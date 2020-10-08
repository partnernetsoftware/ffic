#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>

int exec_comm_handler( int sck )
{
	close(0); /* close standard input  */
	close(1); /* close standard output */
	close(2); /* close standard error  */

	if( dup(sck) != 0 || dup(sck) != 1 || dup(sck) != 2 ) {
		perror("error duplicating socket for stdin/stdout/stderr");
		exit(1);
	}

	printf("this should now go across the socket...\n");
	execl( "/bin/sh", "/bin/sh", "-c", "/path/to/redirected_program" );
	perror("the execl(3) call failed.");
	exit(1);
}

int main( int, char** )
{
	int sck, client, addrlen;
	struct sockaddr_in this_addr, peer_addr;
	pid_t child_pid;
	unsigned short port = 4137; /* random port to listen on */

	addrlen = sizeof( struct sockaddr_in );
	memset( &this_addr, 0, addrlen );
	memset( &peer_addr, 0, addrlen );

	this_addr.sin_port        = htons(port);
	this_addr.sin_family      = AF_INET;
	this_addr.sin_addr.s_addr = htonl(INADDR_ANY);

	sck = socket( AF_INET, SOCK_STREAM, IPPROTO_IP);
	bind( sck, &this_addr, addrlen );
	listen( sck, 5 );

	while( -1 != (client = accept( sck, &peer_addr, &addrlen ) ) ) {
		child_pid = fork();
		if( child_pid < 0 ) 
			perror("Error forking");  exit(1);   /* error */

		if( child_pid == 0 ) {
			exec_comm_handler(sck);
		}
	}

	exit(0);

	return 0;
}
//@ref http://www6.uniovi.es/cscene/CS5/CS5-05.html
