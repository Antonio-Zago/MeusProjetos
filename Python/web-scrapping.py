from bs4 import BeautifulSoup
import requests

url = "https://economia.uol.com.br/cotacoes/cambio/"

headers = {'User-Agent' : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'}


site = requests.get(url, headers=headers)
soup = BeautifulSoup(site.content, 'html.parser')

print(soup.prettify())