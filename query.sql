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
select d_2000.state, d_2000.state_po, d_2000.candidate, d_2000.candidatevotes, d_2004.state, d_2004.state_po, d_2004.candidate, d_2004.candidatevotes
from public."Democrat_2000" as d_2000
join public."Democrat_2004" as d_2004
on d_2000.state = d_2004.state;

select d_2004.state, d_2004.state_po, d_2004.candidate, d_2004.candidatevotes, d_2008.state, d_2008.state_po, d_2008.candidate, d_2008.candidatevotes
from public."Democrat_2004" as d_2004
join public."Democrat_2008" as d_2008
on d_2004.state = d_2008.state;

select d_2008.state, d_2008.state_po, d_2008.candidate, d_2008.candidatevotes, d_2012.state, d_2012.state_po, d_2012.candidate, d_2012.candidatevotes
from public."Democrat_2008" as d_2008
join public."Democrat_2012" as d_2012
on d_2008.state = d_2012.state;

select d_2012.state, d_2012.state_po, d_2012.candidate, d_2012.candidatevotes, d_2016.state, d_2016.state_po, d_2016.candidate, d_2016.candidatevotes
from public."Democrat_2012" as d_2012
join public."Democrat_2016" as d_2016
on d_2012.state = d_2016.state;

select d_2000.state, d_2000.state_po, d_2000.candidate, d_2000.candidatevotes, r_2000.state, r_2000.state_po, r_2000.candidate, r_2000.candidatevotes
from public."Democrat_2000" as d_2000
join public."Republican_2000" as r_2000
on d_2000.state = r_2000.state;

select d_2004.state, d_2004.state_po, d_2004.candidate, d_2004.candidatevotes, r_2004.state, r_2004.state_po, r_2004.candidate, r_2004.candidatevotes
from public."Democrat_2004" as d_2004
join public."Republican_2004" as r_2004
on d_2004.state = r_2004.state;

select d_2008.state, d_2008.state_po, d_2008.candidate, d_2008.candidatevotes, r_2008.state, r_2008.state_po, r_2008.candidate, r_2008.candidatevotes
from public."Democrat_2008" as d_2008
join public."Republican_2008" as r_2008
on d_2008.state = r_2008.state;

select d_2012.state, d_2012.state_po, d_2012.candidate, d_2012.candidatevotes, r_2012.state, r_2012.state_po, r_2012.candidate, r_2012.candidatevotes
from public."Democrat_2012" as d_2012
join public."Republican_2012" as r_2012
on d_2012.state = r_2012.state;

select d_2016.state, d_2016.state_po, d_2016.candidate, d_2016.candidatevotes, r_2016.state, r_2016.state_po, r_2016.candidate, r_2016.candidatevotes
from public."Democrat_2016" as d_2016
join public."Republican_2016" as r_2016
on d_2016.state = r_2016.state;

select r_2000.state, r_2000.state_po, r_2000.candidate, r_2000.candidatevotes, r_2004.state, r_2004.state_po, r_2004.candidate, r_2004.candidatevotes
from public."Republican_2000" as r_2000
join public."Republican_2004" as r_2004
on r_2000.state = r_2004.state;

select r_2004.state, r_2004.state_po, r_2004.candidate, r_2004.candidatevotes, r_2008.state, r_2008.state_po, r_2008.candidate, r_2008.candidatevotes
from public."Republican_2004" as r_2004
join public."Republican_2008" as r_2008
on r_2004.state = r_2008.state;

select r_2008.state, r_2008.state_po, r_2008.candidate, r_2008.candidatevotes, r_2012.state, r_2012.state_po, r_2012.candidate, r_2012.candidatevotes
from public."Republican_2008" as r_2008
join public."Republican_2012" as r_2012
on r_2008.state = r_2012.state;

select r_2012.state, r_2012.state_po, r_2012.candidate, r_2012.candidatevotes, r_2016.state, r_2016.state_po, r_2016.candidate, r_2016.candidatevotes
from public."Republican_2012" as r_2012
join public."Republican_2016" as r_2016
on r_2012.state = r_2016.state;
