install.packages("data.table", type = "binary")
library(data.table)

Film <- fread("C:/Users/MPC/Desktop/Assignment-3/Data/Film.csv")
Language <- fread("C:/Users/MPC/Desktop/Assignment-3/Data/Language.csv")
Customer <- fread("C:/Users/MPC/Desktop/Assignment-3/Data/Customer.csv")
Store <- fread("C:/Users/MPC/Desktop/Assignment-3/Data/store.csv")
Payment <- fread("C:/Users/MPC/Desktop/Assignment-3/Data/payment.csv")
Rental <- fread("C:/Users/MPC/Desktop/Assignment-3/Data/Rental.csv")
Staff <- fread("C:/Users/MPC/Desktop/Assignment-3/Data/Staff.csv")
Inventory <- fread("C:/Users/MPC/Desktop/Assignment-3/Data/Inventory.csv")

print(Film)

print(Language)

films_pg <- Film[
  rating == "PG" & rental_duration > 5,
  .(film_id, title, rating, rental_duration)
]
print(films_pg)

Avg_rentals<- Film[
  ,
  .(avg_rental_rate = mean(rental_rate)),
  by = rating
]
print(Avg_rentals)

Languages <- Film[, .(total_films = .N), by = language_id
][Language, on = .(language_id = language_id)]
print(Languages)

Cust_Store <- Customer[Store, on = "store_id", nomatch = 0][
  ,
  .(
    customer_id,
    customer_name = paste(first_name, last_name, sep = " "),
    store_id
  )
]
print(Cust_Store)

Payment[Staff, on= "staff_id"][,
  .(
    payment_id, amount, payment_date,
    staff_member = paste(first_name, last_name, sep = " ")
  )
][order(payment_id)]

rented_film_ids <- merge(Inventory, Rental, by = "inventory_id")[, unique(film_id)]
res <- Film[!film_id %in% rented_film_ids]
print(res)

film_count <- Film[, .N, by = rating]

barplot(film_count$N,
        names.arg = film_count$rating,
        main = "Number of Films by Rating",
        xlab = "Rating", ylab = "Count")
