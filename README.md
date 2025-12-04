# 📚 Information Retrieval System (Local Search Engine)

This project is a **complete Information Retrieval (IR) system** that runs fully on a **local machine** (Windows/Mac/Linux).
It implements multiple retrieval strategies — **TF-IDF**, **BM25**, **Boolean Retrieval**, and a **Hybrid model** — and performs search over a dataset of text files.

This system is suitable for academic projects, IR assignments, and educational demonstrations of classic retrieval algorithms.

---

## 🚀 **Features**

* 🔍 **TF-IDF Retrieval**
* 📘 **BM25 Ranking Model**
* ✔ **Boolean AND Retrieval**
* 🔗 **Hybrid Retrieval (TF-IDF + BM25 + Boolean)**
* 🧹 Automatic text cleaning (stopwords removal, stemming)
* 📁 Reads all `.txt` files from a local `documents/` folder
* ⚡ Fast search and scoring
* 🖥 Runs completely offline — **no cloud APIs or hosted vector databases**

---

## 📂 **Project Structure**

```
IR-System/
│
├── main.py              # Main execution file (your provided code)
├── documents/           # Folder containing text documents
│     ├── doc1.txt
│     ├── doc2.txt
│     └── doc3.txt
│
└── README.md            # Instructions and documentation
```

---

## 🛠 **Installation**

### 1. **Clone the Repository**

```bash
git https://github.com/Amna-Ghulam-Nabie/Assignment-3/new/master
cd IR-System
```

### 2. **Install Dependencies**

Required Python libraries:

* scikit-learn
* nltk
* numpy

Install using:

```bash
pip install -r requirements.txt
```

If you don't have a requirements file, you can manually install:

```bash
pip install scikit-learn nltk numpy
```

---

## 📁 **Dataset Instructions**

Place all `.txt` files in the folder:

```
documents/
```

Example:

```
documents/
 ├── chapter1.txt
 ├── intro.txt
 ├── notes.txt
 └── article3.txt
```

⚠ If the folder is empty, the system will automatically create 3 sample documents.

---

## ▶️ **How to Run**

Simply execute:

```bash
python main.py
```

You will see:

```
Loaded X files.
Using search mode: hybrid
→ Building TF-IDF model...
→ Building BM25 model...
→ Building Boolean model...
Index built successfully.
Enter your query:
```

Type any query, for example:

```
information retrieval systems
```

And you’ll get ranked results with document previews.

---

## 🔧 **Retrieval Models**

The system supports 4 modes:

| Mode      | Description                                      |
| --------- | ------------------------------------------------ |
| `tfidf`   | Vector Space Model (TF-IDF cosine similarity)    |
| `bm25`    | BM25 probabilistic ranking                       |
| `boolean` | Boolean AND retrieval                            |
| `hybrid`  | Combines all three models using weighted scoring |

Default mode: **hybrid**

---

## 🧠 **How It Works**

1. **Load Documents** → reads all .txt files
2. **Clean Text** → lowercase, remove stopwords, stem
3. **Build Index** → TF-IDF matrix, BM25 index, inverted index
4. **User enters query**
5. **System ranks all documents**
6. **Returns top-k most relevant documents**

---

## 📌 Example Output

```
======================= RESULTS =======================
Rank: 1
File: doc1.txt
Score: 0.4521
Preview: This document discusses information retrieval...
------------------------------------------------------
Rank: 2
File: doc3.txt
Score: 0.3012
Preview: Data retrieval is important in many fields...
------------------------------------------------------
```

---

## 📜 **Requirements (Assignment Compliance)**

This IR system meets all assignment requirements:

✔ Fully local implementation
✔ No cloud-hosted vector DBs
✔ TF-IDF / BM25 / Boolean retrieval
✔ Reproducible pipeline
✔ Clear documentation + source code included

---

## 👩‍💻 Author

**Amna Ghulam Nabi**
(Replace with your GitHub username if you want)
