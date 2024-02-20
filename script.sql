with a0 as (
    select
        dr_apt,
        dr_nchk,
        dr_dat,
        dr_ndrugs
    from sales
    group by dr_apt, dr_nchk, dr_dat, dr_ndrugs
),
a as (
    select
        s.dr_ndrugs as product1,
        s2.dr_ndrugs as product2,
        s.dr_dat || ' ' || s.dr_nchk || ' ' || s.dr_apt as cheque
    from a0 s
    join a0 s2
    on s.dr_ndrugs < s2.dr_ndrugs
    and s.dr_nchk = s2.dr_nchk
    and s.dr_dat = s2.dr_dat
    and s.dr_apt = s2.dr_apt
)
select
    product1,
    product2,
    count(distinct cheque) as cnt
from a
group by product1, product2
order by 3 desc
