#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
	char buffer[64];

	if (argc != 2) {
		printf("Usage: %s <text_to_copy>\n", argv[0]);
		exit(1);
	}

	strcpy(buffer, argv[1]);

	printf("%s\n", buffer);

	return 0;
}
