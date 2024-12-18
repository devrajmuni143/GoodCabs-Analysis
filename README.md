# GoodCabs Analysis

## Overview  
**GoodCabs Analysis** is a comprehensive project analyzing the performance of GoodCabs, part of the **[Codebasics Resume Project Challenge 13](https://codebasics.io/challenge/codebasics-resume-project-challenge)**. GoodCabs is a fast-growing cab service company. The project provides actionable insights to optimize trip volumes, enhance passenger satisfaction, and boost repeat bookings.

---

## Problem Statement
**Goodcabs**, a cab service company established two years ago, has gained a strong foothold in the Indian market by focusing on tier-2 cities. Unlike other cab service providers, Goodcabs is committed to supporting local drivers, helping them make a sustainable living in their hometowns while ensuring excellent service to passengers. With operations in ten tier-2 cities across India, Goodcabs has set ambitious performance targets for 2024 to drive growth and improve passenger satisfaction.

As part of this initiative, the Goodcabs management team aims to assess the company’s performance across key metrics, including trip volume, passenger satisfaction, repeat passenger rate, trip distribution, and the balance between new and repeat passengers.

However, the Chief of Operations, Bruce Haryali, wanted this immediately but the analytics manager Tony is engaged on another critical project. Tony decided to give this work to Peter Pandey who is the curious data analyst of Goodcabs. Since these insights will be directly reported to the Chief of Operations, Tony also provided some notes to Peter to support his work.

---

## About GoodCabs  
GoodCabs operates in India's tier-2 cities, empowering local drivers while providing reliable and affordable transportation solutions. Since its inception, the company has earned a trusted reputation through consistent service quality.

---

## Project Goals  
In 2024, GoodCabs focuses on:  
- **Increasing trip volumes**  
- **Enhancing passenger satisfaction**  
- **Boosting repeat bookings**  

This analysis aims to identify key trends, optimize operational strategies, and help GoodCabs achieve its goals.

---

## Tools and Technologies Used
- **MySQL**: For performing Ad-Hoc Analysis and retrieving insights
- **Excel**: For creating detailed reports during the Ad-Hoc Analysis phase
- **Power BI**: For developing the self-explanatory interactive dashboard
- **Key DAX Functions**: Used for calculations and queries in Power BI, including:
   - `CALCULATE`, `CONCATENATEX`, `ISFILTERED`, `SELECTEDVALUE`, `MAXX`, `MINX`, `SUMMARIZE`, `TOPN`, `FILTER`, etc.
- **Other Features**:
   - **Field Parameters**: For Switching between the City View to Monthly View in my Dashboard.
   - **DAX Query View**: For debugging and optimizing DAX queries in Power BI

---

## Dataset Details  
The analysis is based on the following datasets:  
1. `trips_dp`  
2. `dim_city`  
3. `dim_date`  
4. `dim_repeat_trip_distribution`  
5. `fact_passengers_summary`  
6. `fact_trips`  
7. `targets_dp`  
8. `monthly_target_new_passengers`  
9. `monthly_target_trips`  
10. `city_target_passenger_rating`  

Key metrics explored include trip volumes, passenger ratings, revenue, and target performance.

---

## Key Insights  
### 1. **City-Wise Performance**  
- **Busiest Cities**: Jaipur, Lucknow, Surat  
- **Least Demand**: Visakhapatnam, Coimbatore, Mysore  
- **Highest Ratings**: Mysore (Passenger: 8.70, Driver: 8.98)  
- **Lowest Ratings**: Lucknow, Surat  

### 2. **Seasonal Trends**  
- **Highest Trips**: February (15,872 trips)  
- **Lowest Trips**: June (9,842 trips)  
- **Strong Repeat Passenger Rates**: May  

### 3. **Revenue Insights**  
- Jaipur contributes the highest revenue, peaking at ₹7.7 million in February.  
- Promotions during February, April, and May could amplify growth.  

### 4. **Repeat Passenger Behavior**  
- **High Repeat Rates**: Surat (42.63%), Lucknow (37.12%)  
- **Low Repeat Rates**: Mysore (11.23%), Jaipur (17.43%)  

### 5. **Business vs. Tourism Dynamics**  
- **Tourism Cities**: Jaipur, Mysore, Kochi (High weekend trips)  
- **Business Hubs**: Lucknow, Surat (High weekday trips)

---

## Dashboard Pages  
The analysis is visualized through an interactive dashboard with the following pages:  
### 1. **Home**  
![image](https://github.com/user-attachments/assets/5c677cc7-c802-4e74-8d62-8f258970b2f4)

### 2. **Trips**  
![image](https://github.com/user-attachments/assets/d389765c-7945-4777-86c3-9e0c7b7829e8)
 
### 3. **Revenue**  
![image](https://github.com/user-attachments/assets/d33ad039-615c-4d25-8f47-3ba8291eafd1)
 
### 4. **Target**  
![image](https://github.com/user-attachments/assets/0379a63b-95a5-43ad-a219-82785f0362e0)
 
---

## Recommendations  
1. **Focus on Tourism**  
   - Jaipur and Mysore should enhance eco-friendly travel options to attract more tourists.  

2. **Improve Ratings**  
   - Lucknow and Surat need targeted improvements in service quality and driver behavior.  

3. **Optimize Business Cities**  
   - Promotions for corporate travelers in Lucknow and Surat can drive weekday trip volumes.  

4. **Seasonal Promotions**  
   - Leverage high-demand months (February, April, May) for targeted campaigns.  

5. **Adopt Data-Driven Strategies**  
   - Enhance customer feedback mechanisms, operational efficiency, and market trend analysis.

---

## Additional Links  
- **[Live Dashboard](#)** 
https://app.powerbi.com/view?r=eyJrIjoiMTU1ZWNkMTgtNjRhNC00MmIxLTg5M2ItYTUyOWI3MDQwZjg4IiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9 
- **[LinkedIn Post](#)**  
- **[Video Presentation](#)** 
https://youtu.be/I3KcG9igYLc 
- **[Ad-Hoc Analysis Video Presentation](#)**  
https://youtu.be/iB3sbpHtzFk
---

## How to Use the Dashboard  
The dashboard provides an intuitive interface for exploring:  
- **Trip trends** by city and time  
- **Revenue performance** across regions  
- **Target achievements**  
- **Passenger behavior insights**  

Use the interactive filters to drill down into specific cities or months for deeper analysis.

---

## Contact  
For more information, please reach out:  
**Ajit Muni**  
- **Email**: ajit.muni@outlook.com  
- **Phone**: +91 7064649974  

---
