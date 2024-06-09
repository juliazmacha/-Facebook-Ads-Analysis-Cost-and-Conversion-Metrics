WITH my_table AS (
    SELECT  
        campaign_id, 
        SUM(spend) as total_spend, 
        SUM(impressions) as total_impressions, 
        SUM(clicks) as total_clicks, 
        SUM(value) as total_value, 
        CASE 
            WHEN SUM(clicks) > 0 THEN SUM(spend)::numeric / SUM(clicks)::numeric -- CPC (Cost Per Click)
            ELSE NULL
        END AS cpc,
        CASE 
            WHEN SUM(impressions) > 0 THEN SUM(spend)::numeric / SUM(impressions)::numeric * 1000 -- CPM (Cost Per Mille)
            ELSE NULL
        END AS cpm,
        CASE 
            WHEN SUM(impressions) > 0 THEN SUM(clicks)::numeric / SUM(impressions)::numeric * 100-- CTR (Click-Through Rate)
            ELSE NULL
        END AS ctr,
        CASE 
            WHEN SUM(spend) > 0 THEN SUM(value)::numeric - SUM(spend) / SUM(spend)::numeric * 100 -- ROMI (Return On Marketing Investment)
            ELSE NULL
        END AS romi
    FROM 
        facebook_ads_basic_daily
    GROUP BY 
        campaign_id
)
SELECT 
    romi AS max_romi,
    campaign_id
FROM 
    my_table
WHERE 
    total_spend > 500000
ORDER BY 
    romi DESC
LIMIT 1;
   