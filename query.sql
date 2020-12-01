-- create primary key
ALTER TABLE "Democrat_2000" ADD CONSTRAINT PK_Democrat_2000 Primary Key (state);
ALTER TABLE "Democrat_2004" ADD CONSTRAINT PK_Democrat_2004 Primary Key (state);
ALTER TABLE "Democrat_2008" ADD CONSTRAINT PK_Democrat_2008 Primary Key (state);
ALTER TABLE "Democrat_2012" ADD CONSTRAINT PK_Democrat_2012 Primary Key (state);
ALTER TABLE "Democrat_2016" ADD CONSTRAINT PK_Democrat_2016 Primary Key (state);

ALTER TABLE "Republican_2000" ADD CONSTRAINT PK_Republican_2000 Primary Key (state);
ALTER TABLE "Republican_2004" ADD CONSTRAINT PK_Republican_2004 Primary Key (state);
ALTER TABLE "Republican_2008" ADD CONSTRAINT PK_Republican_2008 Primary Key (state);
ALTER TABLE "Republican_2012" ADD CONSTRAINT PK_Republican_2012 Primary Key (state);
ALTER TABLE "Republican_2016" ADD CONSTRAINT PK_Republican_2016 Primary Key (state);

-- join tables
select d_2000.state, d_2000.state_po, d_2000.candidate, d_2000.candidatesvotes, d_2004.state, d_2004.state_po, d_2004.candidate, d_2004.candidatesvotes
from Democrat_2000 as d_2000
join Democrat_2004 as d_2004
on d_2000.state = d_2004.state;