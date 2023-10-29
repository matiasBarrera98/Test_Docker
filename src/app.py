import streamlit as st
import random
import os

def main():
    secret_var = os.getenv('GCP_KEY')
    st.title('Simple Streamlit App')
    st.write(f'GCP: {secret_var}')

    random_number = random.randint(1, 100)
    st.write(f'Random number: {random_number}')

if __name__ == '__main__':
    main()