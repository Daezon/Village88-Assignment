USE `lead_gen_business`;

SELECT `domain_name`, `client_id` FROM sites where `client_id` = 15;

select DATE_FORMAT(`created_datetime`, '%M') as Month, COUNT(`domain_name`) as total_count from sites where DATE_FORMAT(`created_datetime`, '%M') = "June" GROUP BY Month;

SELECT date_format(`charged_datetime`, '%Y-%m-%e') as date, sum(`amount`) as revenue FROM billing WHERE date_format(`charged_datetime`, '%Y-%m-%e') = '2012-11-19';

4SELECT `client_id`, sum(`amount`) as total_revenue, date_format(`charged_datetime`, '%M') as month, date_format(`charged_datetime`, '%Y') as year FROM billing where `client_id` = 1 GROUP BY month;

SELECT concat(clients.first_name, " " ,clients.last_name) as client_name, `amount` as total_revenue, date_format(`charged_datetime`, '%M') as month, date_format(`charged_datetime`, '%Y') as year FROM billing INNER JOIN clients on clients.client_id = billing.client_id GROUP BY month ORDER BY clients.client_id;

select domain_name AS website, COUNT(*) AS number_of_leads FROM sites INNER JOIN leads On sites.site_id = leads.site_id WHERE leads.registered_datetime BETWEEN '2011-03-15' AND '2011-04-15' GROUP BY domain_name ORDER BY sites.site_id;

SELECT concat(clients.first_name, " ", clients.last_name) as clients_name, sites.domain_name, COUNT(leads.leads_id) FROM leads INNER JOIN sites on leads.site_id = sites.site_id INNER JOIN clients on clients.client_id = sites.client_id GROUP BY sites.domain_name ORDER BY clients.client_id;

SELECT concat(clients.first_name, " ", clients.last_name) as clients_name, count(leads.leads_id) FROM leads INNER JOIN sites on leads.site_id = sites.site_id INNER JOIN clients on clients.client_id = sites.client_id where date_format(`registered_datetime`, '%Y') = 2012 GROUP BY clients_name ORDER BY clients.client_id;

SELECT CONCAT(clients.first_name, ' ', clients.last_name) AS client_name, COUNT(*) AS num_leads, DATE_FORMAT(leads.registered_datetime, '%M') AS month FROM leadsINNER JOIN sites ON leads.site_id = sites.site_idINNER JOIN clients ON sites.client_id = clients.client_idWHERE leads.registered_datetime BETWEEN '2012-01-01' AND '2012-06-30'
GROUP BY CONCAT(DATE_FORMAT(leads.registered_datetime, '%Y-%m'), '-',clients.client_id)
ORDER BY DATE_FORMAT(leads.registered_datetime, '%m'), client_name;

SELECT CONCAT(clients.first_name, ' ', clients.last_name) AS client_name, COUNT(sites.client_id) AS number_of_sites, GROUP_CONCAT(DISTINCT domain_name ORDER BY domain_name) AS sites FROM clients LEFT JOIN sites ON sites.client_id = clients.client_id GROUP BY clients.client_id;