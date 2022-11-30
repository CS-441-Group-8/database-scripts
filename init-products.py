import os


def main():
    # Get the current working directory
    cwd = os.getcwd()
    cwd += "/../registore-business-logic/assets/images"
    strs = [
    f"insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('79-114-5362', 'MX Master 3', 'Logitech', 'Ergonomic Mouse', 99.99, 61, 'Electronics', 1, '1/2/2022', 'Skinte', '{cwd}');",
    f"insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('16-232-7508', 'Infinity Bangle', 'Swarovski', 'Symbol of Love ', 131.16, 97, 'Jewelry', 1, '12/16/2021', 'Oyope', '{cwd}');",
    f"insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('28-122-9924', 'Cabernet Sauvignon', 'Hectare', 'American', 2.99, 24, 'Drinks', 1, '8/10/2022', 'Buzzster', '{cwd}');",
    f"insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('32-885-9424', 'Bread', 'Wonder Bread', 'Feed Your Joy. ', 2.89, 95, 'Food', 2, '7/27/2022', 'Avamm', '{cwd}');",
    f"insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier, image_path) values ('78-736-0229', 'Superstar', 'Adidas', 'Originally made for basketball courts in the 70s.', 67.00, 62, 'Shoes', 4, '10/17/2022', 'Roodel', '{cwd}');"
    ]
    # Create a .sql file and write the insert statements to it
    with open("insert-products.sql", "w") as f:
        f.write("\c development;\n\n")
        for s in strs:
            f.write(s + "\n")
    print("Done. Run psql and pass 'insert-products.sql'")



if __name__ == "__main__":
    main()
