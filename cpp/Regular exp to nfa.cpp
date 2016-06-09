


//Regular exp to nfa

# include # include # include # include // regular expression to nfa by g.ram kumar // works for everything but produces excessive epsilon transitions int ret[100]; static int pos=0; static int sc=0; void nfa(int st,int p,char *s) { int i,sp,fs[15],fsc=0; sp=st;pos=p;sc=st; while(*s!=NULL) { if(isalpha(*s)) { ret[pos++]=sp; ret[pos++]=*s; ret[pos++]=++sc; } if(*s=='.') { sp=sc; ret[pos++]=sc; ret[pos++]=238; ret[pos++]=++sc; sp=sc; } if(*s=='|') { sp=st; fs[fsc++]=sc; } if(*s=='*') { ret[pos++]=sc; ret[pos++]=238; ret[pos++]=sp; ret[pos++]=sp; ret[pos++]=238; ret[pos++]=sc; } if (*s=='(') { char ps[50]; int i=0,flag=1; s++; while(flag!=0) { ps[i++]=*s; if (*s=='(') flag++; if (*s==')') flag--; s++; } ps[--i]='\0'; nfa(sc,pos,ps); s--; } s++; } sc++; for(i=0;i%d\n",ret[i],ret[i+1],ret[i+2]); printf("\n"); getch(); } 
