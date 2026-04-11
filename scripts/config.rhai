let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["BERT", "GPT", "Transformer"];
let titles_method = ["Pre-train", "Pretrain", "Prompt", "Self-Supervised"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = [
  // From your screenshot
  "Tengyu Ma", "Percy Liang", "Tatsunori Hashimoto",
  "Andrej Risteski", "Pradeep Ravikumar", "Zico Kolter", "Aditi Raghunathan", "Andrea Zanette",
  "Bin Yu", "Peter Bartlett", "Jiantao Jiao", "Anant Sahai",
  "Mengdi Wang", "Chi Jin", "Jason Lee", "Sanjeev Arora", "Elad Hazan", "Boris Hanin", "Fan Jianqing", "Jason Klusowski",
  "Tong Zhang", "Han Zhao", "Nan Jiang", "Maxim Raginsky",
  "Simon Du", "Zaid Harchaou", "Kevin Jamieson", "Jerry Li", "Sewoong Oh", "Maryam Fazel",
  "Wei Hu", "Qu Qing", "Samet Oymak", "Salar Fattahi",
  "Boaz Barak", "Sham Kakade", "Cengiz Pehlevan", "Sitan Chen", "David Alvarez-Melis",
  "Zhiyuan Li", "Nathan Srebro",
  "Mikhail Belkin", "Tianhao Wang", "Yuxiang Wang",
  "Surbhi Goel", "Hamed Hassani", "Aaron Roth", "Michael Kearns", "Eric Wong",
  "Daniel Hsu", "Richard Zemel", "Micah Goldblum",
  "Qi Lei", "Joan Bruna", "Tal Linzen", "Julia Kempe", "Andrew Wilson",
  "Weijie Su", "Yuxin Chen", "Edgar Dobriban", "Damek Davis",
  "Yang Zhuoran", "Omar Montasser",
  "Dimitris Papailiopoulos", "Grigoris Chrysos", "Yiqiao Zhong", "Kangwook Lee", "Ilias Diakonikolas",
  "Mahdi Soltanolkotabi", "Vatsal Sharan",
  "Rong Ge", "Anru Zhang", "Pan Xu",
  "Han Shao", "Furong Huang",
  "Volkan Cevher", "Emmanuel Abbe", "Martin Jaggi",
  // From Simons LLM program
  "Song Mei", "Ankur Moitra", "Moses Charikar", "Alberto Bietti",
  "Raghu Meka", "Jacob Steinhardt", "Amin Karbasi",
  "Kaifeng Lyu", "Bingbin Liu", "Enric Boix-Adsera",
  // From M3L 2023
  "Florent Krzakala", "Stefanie Jegelka", "Samory Kpotufe",
  "Christina Baek", "Alex Damian",
  // Other notable DL theory folks not listed above
  "Matus Telgarsky", "Rong Ge", "Surya Ganguli", "Jascha Sohl-Dickstein",
  "Greg Yang", "Behnam Neyshabur", "Moritz Hardt",
  "Yuanzhi Li", "Ruoqi Shen", "Daniel Soudry",
  "Nadav Cohen", "Misha Belkin", "Rene Vidal",
  "Aaditya Ramdas", "Lester Mackey"
];

let conferences = [
    // ML
    "AISTATS", "ICLR", "ICML", "NeurIPS", "NIPS", "UAI", "COLT"
    // NLP
    "ACL", "EMNLP"
    // Journal
    "TMLR", "JMLR"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
