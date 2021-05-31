#include "stack.h"

int top=-1;

void push(int m){   
	top++;   
	stack[top]=m;
}


int pop(){   
	int j;   
	if(top==-1)
		return(top);   
	else   
	{      
		j=stack[top];      
		top--;      
		return(j);   
	}
}
