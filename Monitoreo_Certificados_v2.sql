
  
  
     
   
   
  
select CERTIFICATE_LABEL, (days(VALIDITY_START) - days(VALIDITY_END)) as fin_cert
  from table (
      qsys2.certificate_info(certificate_store_password => '*NOPWD')
    )
  
  validity_start  
    
  where CERTIFICATE_LABEL not like('GeoTrust%')
  and CERTIFICATE_LABEL not like('Equifax%')
  and CERTIFICATE_LABEL not like('Microsoft%')
  and CERTIFICATE_LABEL not like('Thawte%')
  and CERTIFICATE_LABEL not like('Verisign%')
  and CERTIFICATE_LABEL not like('LOCAL%')
  and validity_start <= current_date + 1 month
  order by validity_end asc;
  
