-- What are all the neighborhoods, alphabetically?

-- +------------------------+
-- | Albany Park            |
-- | Archer Heights         |
-- | Armour Square          |
-- | Ashburn                |
-- | Auburn Gresham         |
-- | Austin                 |
-- | Avalon Park            |
-- | Avondale               |
-- | Belmont Cragin         |
-- | Beverly                |

SELECT listings.property_type, Count(reviews.id), Max(reviews.date_reviewed)
FROM reviews INNER JOIN listings ON listings.id = reviews.listing_id
GROUP BY listings.property_type;

-- Output
-- property_type                        Count(reviews.id)  Max(reviews.date_reviewed)
-- -----------------------------------  -----------------  --------------------------
-- Boat                                 2                  2021-06-19                
-- Entire bungalow                      424                2021-10-18                
-- Entire condominium (condo)           26518              2021-10-18                
-- Entire cottage                       129                2021-10-12                
-- Entire guest suite                   11176              2021-10-18                
-- Entire guesthouse                    3577               2021-10-18                
-- Entire home/apt                      21                 2019-10-19                
-- Entire loft                          8416               2021-10-17                
-- Entire place                         10                 2019-03-31                
-- Entire rental unit                   149681             2021-10-18                
-- Entire residential home              13889              2021-10-18                
-- Entire serviced apartment            1271               2021-10-17                
-- Entire townhouse                     3588               2021-10-17                
-- Entire villa                         75                 2021-10-12                
-- Private room                         65                 2021-10-05                
-- Private room in bed and breakfast    828                2021-10-18                
-- Private room in bungalow             1763               2021-10-17                
-- Private room in cabin                13                 2021-09-20                
-- Private room in casa particular      3                  2021-10-11                
-- Private room in condominium (condo)  8909               2021-10-18                
-- Private room in cottage              233                2021-10-18                
-- Private room in farm stay            51                 2021-06-26                
-- Private room in guest suite          1608               2021-10-18                
-- Private room in guesthouse           257                2021-10-11                
-- Private room in hostel               279                2021-10-17                
-- Private room in loft                 3510               2021-10-17                
-- Private room in rental unit          25891              2021-10-18                
-- Private room in residential home     24454              2021-10-18                
-- Private room in serviced apartment   6                  2021-10-17                
-- Private room in tiny house           13                 2020-02-16                
-- Private room in townhouse            3440               2021-10-17                
-- Room in aparthotel                   90                 2021-10-11                
-- Room in bed and breakfast            44                 2021-10-03                
-- Room in boutique hotel               8504               2021-10-18                
-- Room in hostel                       89                 2021-09-14                
-- Room in hotel                        586                2021-10-17                
-- Room in serviced apartment           453                2021-09-21                
-- Shared room                          5                  2021-09-06                
-- Shared room in bungalow              15                 2021-09-30                
-- Shared room in condominium (condo)   41                 2021-09-18                
-- Shared room in hostel                501                2021-10-12                
-- Shared room in loft                  1                  2021-07-17                
-- Shared room in rental unit           1618               2021-10-10                
-- Shared room in residential home      658                2021-10-15                
-- Tiny house                           45                 2021-09-20    

