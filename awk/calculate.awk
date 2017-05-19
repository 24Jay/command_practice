#!/usr/bin/awk 
#before calculate
BEGIN{
	math=0;
	english=0;
	computer=0;
	history=0;
	printf"----------------------------------------------------------------------------\n";
	printf("%-10s %10s %10s %10s %10s %10s %10s\n","Name","NO.","Math","English","Computer","History","Total")
	printf"----------------------------------------------------------------------------\n"
}
#calculating
{
	math+=$3
	english+=$4
	computer+=$5
	history+=$6
	printf("%-10s %10s %10d %10d %10d %10d %10d\n",$1,$2,$3,$4,$5,$6,$3+$4+$5+$6)
}

#after calculating
END{
	printf"----------------------------------------------------------------------------\n"
	printf("%-21s %10d %10d %10d %10d\n","Total",math,english,computer,history)	
	printf("%-21s %10.2f %10.2f %10.2f %10.2f\n","Average",math/NR,english/NR,computer/NR,history/NR)	
	}
