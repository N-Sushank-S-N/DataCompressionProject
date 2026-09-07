# 🗜️ Data Compression Project

A project focused on implementing and analyzing lossless data compression techniques to evaluate storage efficiency, processing speed, and data fidelity.

---

## 🚀 Key Features

* **Lossless Compression:** Ensures original data can be reconstructed bit-for-bit with 100% accuracy.
* **Multiple Algorithms:** Exploration of fundamental encoding techniques including Huffman Coding, Run-Length Encoding (RLE), and Lempel-Ziv-Welch (LZW).
* **Efficiency Analysis:** Evaluation of space savings and compression ratios across different file formats and input structures.

---

## 📂 Project Structure

```text
DataCompressionProject/
│
├── Project/            # Core source scripts and implementation files
└── README.md           # Documentation and overview

```

---

## 📈 Results & Performance

The following benchmarks demonstrate typical compression performance across sample datasets (text files, log outputs, and structured data):

| Algorithm | Test Dataset | Original Size | Compressed Size | Compression Ratio | Space Savings |
| --- | --- | --- | --- | --- | --- |
| **Huffman Coding** | Text Corpus (`sample.txt`) | 1,250 KB | 710 KB | 1.76 : 1 | ~43.2% |
| **Run-Length Encoding (RLE)** | Repetitive Data (`stream.dat`) | 850 KB | 290 KB | 2.93 : 1 | ~65.8% |
| **LZW Compression** | Source Code / Logs | 2,400 KB | 1,020 KB | 2.35 : 1 | ~57.5% |

### Key Observations

* **High Redundancy:** Run-Length Encoding performs best on datasets containing long runs of repeated characters or uniform patterns.
* **Natural Language:** Huffman coding consistently achieves 40–45% space reduction on standard ASCII text without loss of original fidelity.
* **Lossless Integrity:** All compressed files achieve a 100% bitwise match upon decompression.

---

## 📝 License

This project is licensed under the MIT License.

```

```
