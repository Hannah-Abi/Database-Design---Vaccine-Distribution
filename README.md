## Relational Database Design | Modelling the distribution of vaccines 
### Business Perspective 
Assuming that you are responsible for Corona vaccine distribution and treatment in Finland, you need to build **a database to keep track of the different vaccine types, transportation of vaccine batches, treatment plans, and patient data**

### Business Descriptions 
#### Description 1 - Vaccine manufactures and vaccine batches
- A pharmaceutical company that has designed a vaccine type can grant licences to many manufacturers, who produce this vaccine type in batches and send them to Finland. Each manufacturer has
    - (1) a unique ID
    - (2) countries of origin
    - (3) contact information (phone number)
    - (4) ID of the vaccine they manufacture.
- The number of batches varies depending on the order number as well as availability. We need to store the data about received vaccine batches, including
    - (1) batch ID
    - (2) number of vaccines in the batch
    - (3) vaccine type
    - (4) the date the vaccine was produced
    - (5) the expiration date.
- There are different types of vaccines, and each batch only contains one type of vaccine. The vaccine data should include
    - (1) the ID of the vaccine
    - (2) how many doses of this vaccine should be given
    - (3) critical temperature.
### ER Digram:

![ERD_Vaccine](/ERD_vaccine.png)


