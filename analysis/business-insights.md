# Business Insights

## KPI Summary

| KPIs | Value  | 
| ----------- | ------------:| 
| Gross Sales | 1,354,458.59 |
| Net Sales | 1,265,793.04 |
| Total Discount Amount | 88,665.55 |
| Distinct Orders | 830 |
| Average Order Value (AOV) | 1,525.05 | 


## Business Questions

### BQ01: How have monthly sales changed over time?

**Key Findings:** 
- Monthly net sales generally increased over the observed period, although month-to-month fluctuations occurred.
- April 2018 recorded the highest monthly net sales at approximately 123.8K
- Sales remained relatively high from January through April 2018 compared with most earlier months.

**Limitation:** 
- The dataset covers July 4, 2016, through May 6, 2018. The first and last months contain partial-month data, so direct comparisons with full months may be misleading.  


### BQ02: Which product categories generate the most sales?

**Key Findings:**
- Beverages generated the highest net sales (267.9K) among the eight product categories.
- Dairy Products ranked second, generating net sales of 234.5K.
- Grains/Cereals recorded the lowest net sales (95.7K).
    
**Limitation:**
- Higher net sales do not necessarily indicate higher profitability. Since product cost data is unavailable, profitability cannot be assessed or compared across categories.


### BQ03: Which products contribute the most to sales?

**Key Findings:**
- Côte de Blaye generated the highest net sales (141.4K), accounting for approximately 11.2% of total net sales.
- The top three products collectively contributed approximately 23.1% of total net sales.
- Chocolade recorded the lowest net sales (1.4K) among the products with recorded sales.
    
**Limitations:**
- High sales do not necessarily indicate high profitability because product cost data is unavailable.
- Differences in sales may reflect variations in unit prices, quantities sold, or discounts. These factors have not been analyzed separately.


### BQ04: Which shipping destination countries generate the most net sales?

**Key Findings:**
- The USA generated the highest net sales (245.6K), followed by Germany (230.3K).
- The USA and Germany together accounted for approximately 37.6% of total net sales.
- Recorded shipping destinations were located in Europe and the Americas, with no recorded sales to Asian countries.

**Limitations:**
- Sales were grouped by shipping destination (`Orders.ShipCountry`), which does not necessarily represent the final country of consumption.
- The absence of recorded sales to Asian countries does not necessarily indicate a lack of market demand or business opportunities in Asia.


### BQ05: How does the sales mix by product category differ across shipping destination countries?

**Key Findings:**
- Beverages was the top-selling category in the USA, Germany, and Brazil.
- Dairy Products generated the highest category sales in Austria, while Seafood ranked first in France.
- The contribution of Beverages varied across countries, accounting for approximately 34.8% of Brazil's net sales, compared with 24.6% in the USA and 23.7% in Germany.
    
**Limitations:**
- Differences in category sales mix do not necessarily reflect differences in consumer preferences, as sales may also be influenced by pricing, product availability, and customer composition.
- The analysis is based on shipping destinations rather than confirmed final consumption markets.


## Recommendations

### 1. Investigate the Drivers of Sales Growth

Monthly net sales generally increased over the observed period, reaching their highest level in April 2018.

Analyze changes in order volume, average order value, and product mix to identify the factors associated with this growth. This could help determine which factors contributed to sales performance and whether the growth can be sustained.


### 2. Monitor Revenue Concentration in Key Products

The top three products accounted for approximately 23.1% of total net sales.

Monitor the sales performance of these products and assess potential risks associated with revenue concentration, such as supply disruptions or changes in customer demand. The current concentration level alone does not establish that the business faces excessive risk.


### 3. Evaluate Market-Specific Product Mix

Category sales shares differed across shipping destinations. For example, Beverages accounted for approximately 34.8% of Brazil's net sales, compared with 24.6% in the USA and 23.7% in Germany.

Investigate the factors behind these differences, including customer composition, product availability, and pricing. Use the findings to assess opportunities for market-specific product assortment and sales strategies.


### 4. Evaluate Performance in Major Markets

The USA and Germany together generated approximately 37.6% of total net sales.

Monitor performance in these major markets and assess potential exposure to changes in customer demand or market conditions. Further analysis of order frequency, customer concentration, and product mix could help identify market-specific opportunities and risks.


### 5. Assess Potential Expansion into New Markets

The dataset contains no recorded sales to Australia or New Zealand.

Conduct a preliminary market assessment to evaluate potential demand, distribution feasibility, import regulations, competitive conditions, and expected costs before considering expansion.

The absence of recorded sales does not establish unmet demand or commercial viability in these markets.
