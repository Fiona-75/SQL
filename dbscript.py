import sqlalchemy
from sqlalchemy import create_engine
from sqlalchemy import text
# engine = create_engine("mysql+pymysql://fiona1:password@localhost/film_library", echo=False, future=True)
engine = create_engine("mysql+pymysql://root:password@localhost/film_library", echo=False, future = True)
# returning the email:
# with engine.connect() as conn:
#     result = conn.execute(text("SELECT email FROM customer_details"))
#     for row in result:
#         print(f"email: {row.email}")

# # searching for films that have a 12 rating
# with engine.connect() as conn:
#     result = conn.execute(text("SELECT film_name, age_rating FROM films WHERE age_rating = 12"))
#     for row in result:
#         print(f"film: {row.film_name}, rating: {row.age_rating}")


# print('******parameterised query ********')
#
# rat = str(input("Which age rating are you interested to view?"))
# with engine.connect() as conn:
#     result = conn.execute(
#         text("SELECT film_name, age_rating FROM films WHERE age_rating = :param"),
#         {"param": rat}
#     )
#     for row in result:
#         print(f"film: {row.film_name}, rating: {row.age_rating}")

print('******join query ********')

# #num = str(input("Who's borrowing do you want to see? "))
#
# with engine.connect() as conn:
#     result = conn.execute(
#         text("""select first_name, last_name, film_name, date_due from loaned_items inner join films
#         on customer_details.id=loaned_items.user_id inner join customer_details on customer_details.id=loaned_items.user_id where customer_details.first_name = Fiona"""),
#        # {"param": num}
#     )
#     for row in result:
#         print(f"name: {row.first_name}  film: {row.film_name} due: {row.date_due} ")

## Trying again to do a join that's not as complicated!


gen = str(input("Which genre do you want to see? "))
with engine.connect() as conn:
    result = conn.execute(
        text("SELECT film_name, genre_details.genre, film_summary, runtime, age_rating  FROM films inner join genre_details on films.genre = genre_details.genre_id WHERE genre_details.genre = :param"),
        {"param": gen}
    )
    for row in result:
        print(f"film: {row.film_name}, rating: {row.age_rating}, genre: {row.genre}")