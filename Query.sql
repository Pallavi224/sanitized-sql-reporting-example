/*
---------------------------

Dear Team,

As discussed with the relevant department, the technical team requires
details of customers who have received a specific waiver amount under
a particular program.

Kindly provide the following details:

- Customer Number
- Customer Name
- Service Type
- Customer Category
- Request Number
- Request Type
- Request Date
- Quotation Amount
- Quotation Issue Date
- Quotation Approval Date
- Quotation Payment Date

Please share the above details at the earliest for further processing.

---------------------------
*/

SELECT sr.request_id AS request_number,
       rt.type_name AS request_type,
       
       tt.task_name AS task_name,
       
       t.actual_start_date AS quotation_issue_date,
       t.actual_end_date   AS quotation_approved_date,
       
       c.customer_number,
       c.customer_name,
       c.category,
       c.service_type,
       
       CASE 
           WHEN c.service_type = 'TYPE_A' THEN 0
           WHEN c.service_type = 'TYPE_B' THEN 1000
           ELSE 0 
       END AS quotation_amount,
       
       r.waiver_amount,
       
       t.actual_end_date AS quotation_paid_date

FROM task_table t
JOIN task_types tt
  ON t.task_type_id = tt.task_type_id

JOIN service_requests sr
  ON t.source_reference = sr.request_id

JOIN request_types rt
  ON sr.request_type_id = rt.request_type_id

JOIN customer_details c
  ON c.customer_id = sr.client_id

JOIN reconciliation_data r
  ON t.source_reference = r.request_id

WHERE tt.task_name = :task_type_param
  AND rt.type_name = :request_type_param
  AND r.waiver_amount = :waiver_amount_param;
