SELECT
    ds.date_id AS date_id,
    ds.make_name AS make_name,
    COUNT(DISTINCT(ds.lead_id)) AS unique_leads,
    COUNT(DISTINCT(ds.partner_id)) AS unique_partners
FROM DailySales ds
GROUP BY ds.date_id, ds.make_name
;