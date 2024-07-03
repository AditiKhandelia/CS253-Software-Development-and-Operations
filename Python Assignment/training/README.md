---
noteId: "392e7b32392711ef956ec3cc80b6a800"
tags: []

---

## TRAINING FOLDER
This is the folder containing the notebooks of relevant experimentation.
Following are the contents of this folder-
- ```submission_1.ipynb``` : This notebook contains models trained after: 
    -   Removing the columns 'Total Assets' and 'Liabilties'.
    - Label encoding state, party and education.
    - Best results were obtained from this approach.

- ```submission_2.ipynb``` : This notebook contains models trained after: 
    - Generating synthetic data using 'CTGAN'.
    - Training KNN and DT on the final training data made after combining the initial train split and synthetic data.
    - Approach to train different models for different states.

- ```submission_3.ipynb``` : This notebook contains models trained after: 
    - Creation of new feature 'doctor'.
    - label encoding state, party and education.
    - converting Total Assets and liabilities to equivalent numerals.