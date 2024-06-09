# Facebook Ads Analysis: Cost and Conversion Metrics

This project focuses on analyzing Facebook ad campaigns by extracting, aggregating, and calculating key performance metrics from the `facebook_ads_basic_daily` table. The following steps detail the process:

## Steps Undertaken

### Step 1: SQL Query to Extract Data
A SQL query was written to retrieve the following data from the `facebook_ads_basic_daily` table:
- **ad_date**: The date the ad was displayed.
- **campaign_id**: The unique identifier for the campaign.
- Aggregated values by date and campaign ID for the following metrics:
  - **Total Cost**
  - **Number of Impressions**
  - **Number of Clicks**
  - **Total Conversion Value**

### Step 2: Calculate Performance Metrics
Using the aggregated data on costs and conversions, the following metrics were calculated for each date and campaign ID:
- **CPC (Cost Per Click)**: Calculated as the total cost divided by the number of clicks.
- **CPM (Cost Per Thousand Impressions)**: Calculated as the total cost divided by the number of impressions, multiplied by 1,000.
- **CTR (Click-Through Rate)**: Calculated as the number of clicks divided by the number of impressions.
- **ROMI (Return on Marketing Investment)**: Calculated as the total conversion value divided by the total cost.

The table was grouped by `ad_date` and `campaign_id`.

### Step 3: Identify Top Campaign by ROMI
Among campaigns with total spending above 500,000, the campaign with the highest ROMI was identified. (TASK_2.2)

## Final Product
The resulting analysis provides valuable insights into the performance of Facebook ad campaigns. By extracting, aggregating, and calculating key metrics, this project enables a detailed evaluation of ad effectiveness, helping to identify the most cost-efficient and high-performing campaigns.

