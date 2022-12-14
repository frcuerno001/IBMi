       SELECT JOURNAL_LIBRARY AS LIBRARY,
               JOURNAL_NAME,ASP_NUMBER,
              TOTAL_SIZE_JOURNAL_RECEIVERS, TOTAL_SIZE_JOURNAL_RECEIVERS / 1000.0 / 1000.0 AS TOTAL_SIZE_JOURNAL_RECEIVERS_GB,
               ATTACHED_JOURNAL_RECEIVER_NAME,
              ATTACHED_JOURNAL_RECEIVER_LIBRARY,
              NUMBER_JOURNAL_RECEIVERS,
              STATE
          FROM QSYS2.JOURNAL_INFO
           ORDER BY TOTAL_SIZE_JOURNAL_RECEIVERS DESC
         FETCH FIRST 10 ROWS ONLY