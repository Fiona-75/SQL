import sqlalchemy
from sqlalchemy import create_engine
from sqlalchemy import text
from sqlalchemy import Table
engine = create_engine("mysql+pymysql://fiona1:password@localhost:3306/film_library", echo=False, future=True)

# engine = create_engine("mysql+pymysql://root:password@localhost/film_library", echo=False, future = True)
# #returning the email:
# with engine.connect() as conn:
#     result = conn.execute(text("SELECT email FROM customer_details"))
#     for row in result:
#         print(f"email: {row.email}")


# with engine.connect() as conn:
#     result = conn.execute("""insert into film_library.customer_details values ('C0005', 'Lady', 'Gaga', '1990-10-01', 'madeupemail5@gmail.com')""")
#
id=engine.execute(text("INSERT INTO  film_library.customer_details (`id` ,`first_name ` ,`last_name` ,`dob`, 'email') VALUES ('C0005', 'Lady', 'Gaga', '1990-10-01', 'madeupemail5@gmail.com')"))

result = engine.execute(select([film_library.customer_details.c.id,first_name,last_name,dob,email]))

print(result.fetchall())
