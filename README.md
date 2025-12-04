# Information Retrieval System (Local Search Engine)

This project is a **complete Information Retrieval (IR) system** that runs fully on a **local machine** (Windows/Mac/Linux).
It implements multiple retrieval strategies — **TF-IDF**, **BM25**, **Boolean Retrieval**, and a **Hybrid model** — and performs search over a dataset of text files.

This system is suitable for academic projects, IR assignments, and educational demonstrations of classic retrieval algorithms.


## **Features**

*  **TF-IDF Retrieval**
*  **BM25 Ranking Model**
*  **Boolean AND Retrieval**
*  **Hybrid Retrieval (TF-IDF + BM25 + Boolean)**
*  Automatic text cleaning (stopwords removal, stemming)
*  Reads all `.txt` files from a local `documents/` folder
*  Fast search and scoring
*  Runs completely offline — **no cloud APIs or hosted vector databases**


## **Retrieval Models**

The system supports 4 modes:

| Mode      | Description                                      |
| --------- | ------------------------------------------------ |
| `tfidf`   | Vector Space Model (TF-IDF cosine similarity)    |
| `bm25`    | BM25 probabilistic ranking                       |
| `boolean` | Boolean AND retrieval                            |
| `hybrid`  | Combines all three models using weighted scoring |

Default mode: **hybrid**

##  **How It Works**

1. **Load Documents** → reads all .txt files
2. **Clean Text** → lowercase, remove stopwords, stem
3. **Build Index** → TF-IDF matrix, BM25 index, inverted index
4. **User enters query**
5. **System ranks all documents**
6. **Returns top-k most relevant documents**

##  Example Output

```
Found 10 relevant documents:
--------------------------------------------------
RANK 1 (Score: 0.3673)
Snippet: LONDON: Gold fell back towards five-year lows on Wednesday as investors continued to pull away from the precious metal, with a slide through key chart...
--------------------------------------------------
RANK 2 (Score: 0.3672)
Snippet: strong>MUMBAI: Indian gold refiners just months ago were ramping up capacity and struggling to secure enough ore from miners. Now, they are suspending...
--------------------------------------------------
RANK 3 (Score: 0.3668)
Snippet: strong>SYDNEY: India´s gold imports could hit a record high this year amid widespread smuggling to sidestep government levies on overseas shipments, A...
--------------------------------------------------
RANK 4 (Score: 0.3526)
Snippet: strong>MANILA: Gold edged up to near its highest since June on Tuesday, as uncertainty over global growth that has hammered stocks puts the precious m...
--------------------------------------------------
RANK 5 (Score: 0.3437)
Snippet: strong>BENGALURU: Gold hit a three-week low on Thursday, after falling more than 1 percent in the previous session, as investors looked to buy into ri...
--------------------------------------------------
RANK 6 (Score: 0.3298)
Snippet: strong>SINGAPORE: </strong><strong>Gold on Friday clung to sharp overnight gains that pushed the metal to a one-year high, and looked set to post its ...
--------------------------------------------------
RANK 7 (Score: 0.3264)
Snippet: strong>MANILA: Gold climbed to a 13-month high on Friday, buoyed by gains in the euro after the European Central Bank (ECB) signalled it was done cutt...
--------------------------------------------------
RANK 8 (Score: 0.3031)
Snippet: strong>BENGALURU: Gold dropped to a seven-week low on Wednesday, driven by expectations of an early interest rate hike by the U.S. Federal Reserve.</s...```

##  **Requirements (Assignment Compliance)**

This IR system meets all assignment requirements:

 * Fully local implementation
 * No cloud-hosted vector DBs
 * TF-IDF / BM25 / Boolean retrieval
 * Reproducible pipeline
 * Clear documentation + source code included

##  Author

**Amna Ghulam Nabi**
(Amna-Ghulam-Nabie) Github
