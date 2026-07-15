# Decodelabs Internship
Data Analysis Internship Project. Project 1 to Final Evaluation.

## 📋 Data Dictionary & Schema

The dataset contains **1,200 rows** and **14 columns**. The detailed breakdown of the schema, including data descriptions, non-null counts, and optimized data types.

| # | Column Name | Non-Null Count | Raw Type | Corrected Type | Description |
|---|:---|:---:|:---:|:---:|:---|
| 0 | **OrderID** | 1,200 | `str` | `str` | Unique alphanumeric identifier for each transaction. |
| 1 | **Date** | 1,200 | `str` | `datetime64[ns]` | Date and time when the order was placed. |
| 2 | **CustomerID** | 1,200 | `str` | `str` | Unique identifier assigned to each customer. |
| 3 | **Product** | 1,200 | `str` | `str` / `object` | Name or identifier of the specific item purchased. |
| 4 | **Quantity** | 1,200 | `int64` | `int64` | The number of units purchased for this specific item. |
| 5 | **UnitPrice** | 1,200 | `float64` | `float64` | Price of a single unit of the product. |
| 6 | **ShippingAddress** | 1,200 | `str` | `str` / `object` | Recipient's destination delivery address. |
| 7 | **PaymentMethod** | 1,200 | `str` | `category` | Payment option used by the customer (e.g., Credit Card, PayPal). |
| 8 | **OrderStatus** | 1,200 | `str` | `category` | The current stage of the purchase fulfillment (e.g., Shipped, Pending, Cancelled). |
| 9 | **TrackingNumber** | 1,200 | `str` | `str` / `object` | Identifier used to monitor the shipping status of the order. |
| 10 | **ItemsInCart** | 1,200 | `int64` | `int64` | Total count of all items the shopper had in their digital shopping cart. |
| 11 | **CouponCode** | 891 | `str` | `str` (filled) | Unique promotional code used to apply a discount (contains 309 missing values where no coupon was used). |
| 12 | **ReferralSource** | 1,200 | `str` | `category` | The channel or medium through which the customer discovered the business. |
| 13 | **TotalPrice** | 1,200 | `float64` | `float64` | The final total amount paid by the customer after discounts and quantities are applied. |

> **Note on Missing Data:** The `CouponCode` column has **309 missing values** (representing ~25.8% of the dataset). This indicates that a discount code was not used for those transactions. However, these have been filled with `"No coupon"` during the data cleaning process.

### Dataset Descriptive Statistics Summary

| Metric | Date | Quantity | UnitPrice | ItemsInCart | TotalPrice |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **Count** | 1,200 | 1,200 | 1,200 | 1,200 | 1,200 |
| **Mean (Average)** | 2024-03-22 16:58:48 | 2.95 | $356.41 | 5.49 | $1,053.97 |
| **Standard Deviation** | *N/A* | 1.41 | $197.18 | 2.28 | $819.86 |
| **Minimum** | 2023-01-01 00:00:00 | 1.00 | $11.39 | 1.00 | $11.39 |
| **25% (Q1)** | 2023-08-03 18:00:00 | 2.00 | $186.06 | 4.00 | $410.52 |
| **50% (Median)** | 2024-03-23 00:00:00 | 3.00 | $364.21 | 5.00 | $823.62 |
| **75% (Q3)** | 2024-11-08 12:00:00 | 4.00 | $521.57 | 7.00 | $1,578.48 |
| **Maximum** | 2025-06-30 00:00:00 | 5.00 | $699.93 | 10.00 | $3,456.40 |

1. Date (Timeline & Scope)
•	The Range: The data starts on January 1, 2023 and ends on June 30, 2025.
•	The Distribution: The mean (average date) is March 22, 2024, and the median (50%) is March 23, 2024. Because they are close, sales transactions are evenly distributed across this 2.5-year span. No massive spikes or major gaps in data collection.
2. UnitPrice & TotalPrice (Pricing & Revenue)
•	Low-end vs. High-end: Individual products range from a very cheap $11.39 up to $699.93. The average item costs about $356.41.
•	Cart Values: The absolute minimum order size is $11.39 (someone buying just one of the cheapest items), while the maximum order size is $3,456.40.
•	Skewness: Look at the TotalPrice percentiles:
o	50% (median) of the orders are under $823.62.
o	Maximum is $3,456.40.
This tells us it is right-skewed distribution. Most orders are on the lower-to-middle end, but a few customers are placing large orders that pull the average (mean = $1,053.97) up.
3. Quantity & ItemsInCart (Purchase Habits)
These two columns give us a direct look at how people shop.
Quantity: This is likely the quantity of a specific item.
•	Customers buy between 1 and 5 units of a single product per transaction.
•	The average is 2.9 (almost 3 units).
ItemsInCart: This is the total number of items in their shopping cart.
•	Carts range from 1 to 10 items.
•	The average cart has 5.5 items.
•	Customers aren't buying one item and leaving; they are actively filling their carts.