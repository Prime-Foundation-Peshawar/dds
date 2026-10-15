import json
import zipfile
from pathlib import Path

import cv2
import numpy as np

ROOT = Path(r"d:\projects\php\www\dds")
SRC = Path(r"d:\New folder\New folder (2)")
MODEL = ROOT / "tools" / "face_detection_yunet_2023mar.onnx"
PHOTO_DIR = ROOT / "assets" / "images" / "faculty"
JSON_PATH = ROOT / "assets" / "data" / "faculty-profiles.json"


def extract_jpeg(docx: Path) -> bytes:
    with zipfile.ZipFile(docx) as z:
        return z.read("word/media/image1.jpeg")


def face_crop_800(jpeg: bytes, dest: Path) -> None:
    img = cv2.imdecode(np.frombuffer(jpeg, np.uint8), cv2.IMREAD_COLOR)
    h, w = img.shape[:2]
    det = cv2.FaceDetectorYN_create(str(MODEL), "", (w, h), 0.6, 0.3, 5000)
    det.setInputSize((w, h))
    _, faces = det.detect(img)
    if faces is None or len(faces) == 0:
        raise SystemExit(f"no face in {dest.name}")
    x, y, bw, bh = [float(v) for v in faces[0][:4]]
    cx, cy = x + bw / 2, y + bh / 2
    side = max(bw, bh) * 1.85
    x0 = int(max(0, cx - side / 2))
    y0 = int(max(0, cy - side / 2))
    x1 = int(min(w, cx + side / 2))
    y1 = int(min(h, cy + side / 2))
    crop = img[y0:y1, x0:x1]
    out = cv2.resize(crop, (800, 800), interpolation=cv2.INTER_CUBIC)
    dest.parent.mkdir(parents=True, exist_ok=True)
    cv2.imwrite(str(dest), out, [int(cv2.IMWRITE_JPEG_QUALITY), 88])
    print("wrote", dest, dest.stat().st_size)


JOBS = [
    (
        "nasir-bakhtiar",
        SRC / "Dr. Nasir Bakhtiar General Surgery.docx",
        {
            "slug": "nasir-bakhtiar",
            "aliases": ["nasir-bakhtiar", "nasir-bakhtyar"],
            "name": "Nasir Bakhtiar",
            "department": "General Surgery",
            "designation": "Assistant Professor",
            "hod": True,
            "qualifications": [
                "MBBS (Gold Medalist)",
                "FCPS General Surgery",
                "Fellowship Laparoscopic Surgery (GLR)",
                "CHPE, CHR, AI in Health Care",
            ],
            "experience": ["NOVEMBER 2016 TILL DATE"],
            "skills": [
                "General & Laparoscopic Surgery",
                "Pancreaticobiliary Surgery",
            ],
            "publications": [
                "POLY-PROPHYLENE MESH OR ULTRA PRO MESH IS BETTER? IN TERMS OF EFFECTIVENESS AND POST-OPERATIVE COMPLICATIONS. A RANDOMIZED CONTROL STUDY. Muhammad Yunas Khan, Nasir Bakhtiar, Shafi Ullah, Mehwish Asad, Shandana Gul, Qutbi Alam Jan",
                "Safety and Feasibility of Laparoscopic Cholecystectomy in Acute Cholecystitis Mohammad Tayeb1, Fozia Rauf2 and Nasir Bakhtiar3",
                "Comparative Analysis of Intravenous Ceftriaxone and Ciprofloxacin for the Treatment of Bacterial Peritonitis in Liver Cirrhosis. ARBAB MUHAMMAD KASHIF KHAN1, MOHSINA HAQ2, RAHMAN SHAH3, SAIFULLAH KHAN KHALIL4, NASIR BAKHTIAR5, FAHD MASUD6, HIKMAT ULLAH7, QUDRAT ULLAH KHAN8, AMIR ULLAH KHAN",
                "Causes and Management of Blunt Liver Trauma in a Tertiary Care Hospital in Peshawar. Asad Ullah Khan1, Kamran Ahmad2, Abeer Jehanzeb Khan3, Nasir Bakhtiar1, Ahmad Arsalan Tahir1, Muhammad Haris4*, Muhammad Jehangir Khan5, Sobia Haris6 and Farah Deeba",
                "Role of Minimally Invasive Surgery (Laparsocopic Surgery) in the Management of Acute Abdomen. NASIR BAKHTIAR1, MUHAMMAD TAYYEB2, AHMAD ARSALAN TAHIR3, TUFAIL AHMAD4, MUHAMMAD ISHFAQ5, ASAD ULLAH KHAN6",
                "Socioeconomic, Laboratory and Associated Factors in Patients Suffering From Acute Appendicitis. AHMAD ARSALAN TAHIR1, ANWAR ALI2, MOHAMMAD USMAN3, NASIR BAKHTIAR4, IBRAHIM5, ASAD ULLAH KHAN",
                "COMPARISON OF POSTOPERATIVE PAIN IN DESARDA VS LICHTENSTEIN MESH REPAIR IN THE TREATMENT OF INGUINAL HERNIAS. Kaleem Ullah1, Shahidullah Ahmad2, Sheikh Muhammad Ibqar Azeem2, Waleed Mahboob2, Sahibzada Salma Rahman2, Nasir Bakhtiar3",
                "A COMPARATIVE STUDY BETWEEN CLOSED AND OPEN HEMORRHOIDECTOMY IN TERMS OF SURGICAL SITE INFECTION. Nadir Farid1, Imtiaz Ali Langah2 , Mudassar Jabeen3 , Furqan Ullah Butt4 , Ahmad Arsalan Tahir5 , Nasir Bakhtiar6 , Javeria Aabid7 , Saad Suleman8, Muhammad Rashid Waheed9*",
                "SINGLE INCISION LAPAROSCOPIC SURGERY IN CHOLECYSTECTOMY: CURRENT TRENDS AND CHALLENGES. Nadir Farid1, Khurram Shehzad2 , Muhammad Hassaan Amjad3 , Imtiaz Ali Langah4 , Nasir Bakhtiar5 , Ahmad Arsalan Tahir6 , Muhammad Rashid Waheed7*",
                "Outcomes of Lateral Pancreaticojejunostomy in Patients with Chronic Pancreatitis Nasir Bakhtiar, Muhammad Tayyeb, Ambareen Subhan, Ahmad Arsalan Tahir",
                "CLINICAL OUTCOMES OF COMPRESSION ALONG WITH ULTRASOUND GUIDED FOAM SCLEROTHERAPY IN THE MANAGEMENT OF VENOUS ULCERS: A PROSPECTIVE STUDY AT TERTIARY CARE HOSPITAL, PESHAWAR. Shafi Ullah1, Ahmad Arsalan Tahir2, Muhammad Ishfaq3, Nasir Bakhtiar4, Ambareen Subhan5, Muhammad Farooq6.",
                "Comparison of the Outcomes of On-Lay and Sub-Lay Mesh Repair in Patients with Ventral Abdominal Wall Hernias. Ahmad Arsalan Tahir1*, Ambareen Subhan1, Nasir Bakhtiar1, Muhammad Ishfaq1, Muhammad Farooq1 and Muhammad Tayyeb",
                "DEEP VENOUS THROMBOSIS PROPHYLAXIS, STANDARDS AND PRACTICES Nasir Bakhtiar1, Muhammad Tayyab2, Shafi Ullah3, Ambareen Subhan4, Sheikh Muhammad Ibqar Azeem5, Ahmad Arsalan Tahir",
                "Association of Glycated Hemoglobin Level and Postoperative Complications in General Surgical Procedures. Nadir Farid1, Muhammad Rizwan Anwar2, Muhammad Tariq Nazir3, Nasir Bakhtiar4, Muharram Ali5, Muhammad Afzal6, Shahzada Amir Ahmed Babar",
                "Intraoperative Use of Methylene Blue for Sentinel Lymph Node Detection in Breast Cancer Surgery: A Prospective Study. Muhammad Abid Aziz 1*, Nasir Bakhtiar2, Nasir Naseem Akhtar3, Muhammad Ali Naper4, Fazli Akbar5, Mohammad Basil Rizvi",
            ],
        },
    ),
    (
        "riaz-khan",
        SRC / "Dr. Riaz Khan.docx",
        {
            "slug": "riaz-khan",
            "aliases": ["riaz-khan"],
            "name": "Riaz Khan",
            "department": "Oral & Maxillofacial Surgery",
            "designation": "Senior Registrar",
            "hod": False,
            "qualifications": ["BDS", "FCPS"],
            "experience": ["17 Months"],
            "skills": [
                "Specialized in Implants Surgery; Maxillofacial Trauma and Pathology, Minor Oral Surgical Procedure, Facial Aesthetics."
            ],
            "publications": [
                "Pattern and common risk factors of Maxillofacial fractures in adults (Vol 10 : No 03 JKCD September 2020",
                "Lingual nerve injury in mandibular third molar extraction “a comparison of two surgical techniques” published in Pak J.Sarrg 2021:37(2):119-122 Journal of the Khyber college of Dentistry",
                "Post graduate research and medical libraries “ an analytical study  of library of post graduate medical institute Peshawar",
                "Patterns of oral and maxillofacial surgeries in pediatrics patients “retrospective study”",
                "The outcome of Two Drivers Irrigation Needles on Post-Operative Pain after PULPECTOMY in Permanent Dentition published in Annual of R.S.C.B; ISSN: 1583-6258, Vol 25, Issue 6, 2021, Pages 12873-12881.",
                "Role of Interleukin-34together with Receptor Activator of Nuclear Factor kB ligand an Osteoprotegrin levels in Periodontal Disease:",
                "The Association of Indications of Third Molar Coronectomy and Surgical Removal with Pell & Gregory and Winter Classification",
                "Comparative Effectiveness of Topical Triamcinolone in Orabase in Treating Recurrent Aphthous Stomatitis: A Comparative Study Between Diabetic and Non-Diabetic Patients",
            ],
        },
    ),
]


def merge_amna(existing: dict, photo: str) -> dict:
    rec = dict(existing)
    rec["aliases"] = sorted(set(rec.get("aliases") or []) | {"amna-umer", "amna-umar"})
    rec["name"] = "Amna Umer"
    rec["department"] = "Pharmacology"
    rec["designation"] = "Assistant Professor"
    rec["hod"] = True
    rec["photo"] = photo
    rec["qualifications"] = ["BDS", "M.Phil Pharmacology"]
    exp = list(rec.get("experience") or [])
    current = "Feb 10, 2018 Till Date"
    if current not in exp:
        exp.append(current)
    rec["experience"] = exp
    pubs = list(rec.get("publications") or [])
    added = [
        "Comparative Analysis of the Effectiveness of the Conventional Treatment versus Ibuprofen and Omega-3 fatty acids in the Management of Patients with Temporomandibular Joint Disorders. Journal name: African journal of biological sciences",
        "Histological and Molecular Findings in Liger Biopsies from Cirrhotic Patients with Heptocellular Carcinoma. Journal name: international neurourology journal",
        "Comparative efficacy of carbamazepine alone versus carbamazepine plus baclofen in patients with trigeminal neuralgia: A cross-sectional study",
    ]
    for p in added:
        if p not in pubs:
            pubs.append(p)
    rec["publications"] = pubs
    rec["skills"] = rec.get("skills") or []
    return rec


def add_index(index: dict, rec: dict) -> None:
    canon = rec["slug"]
    index[canon] = canon
    for alias in rec.get("aliases") or []:
        if alias:
            index[alias] = canon


def main() -> None:
    pack = json.loads(JSON_PATH.read_text(encoding="utf-8"))
    profiles = pack["profiles"]

    for slug, docx, rec in JOBS:
        photo_rel = f"assets/images/faculty/{slug}.jpg"
        face_crop_800(extract_jpeg(docx), ROOT / photo_rel)
        rec = dict(rec)
        rec["photo"] = photo_rel
        profiles[slug] = rec
        print("profile", slug, "pubs", len(rec["publications"]))

    amna_photo = "assets/images/faculty/amna-umer.jpg"
    face_crop_800(extract_jpeg(SRC / "Template for Departmental Data.docx"), ROOT / amna_photo)
    profiles["amna-umer"] = merge_amna(profiles["amna-umer"], amna_photo)
    print("profile amna-umer pubs", len(profiles["amna-umer"]["publications"]))

    pack["source"] = (
        pack.get("source") or ""
    ) + " General Surgery (Nasir Bakhtiar), OMFS (Riaz Khan), and Pharmacology (Amna Umer) Word templates Oct 2026."
    for rec in (profiles["nasir-bakhtiar"], profiles["riaz-khan"], profiles["amna-umer"]):
        add_index(pack["index"], rec)
    JSON_PATH.write_text(json.dumps(pack, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print("json ok", JSON_PATH.stat().st_size)


if __name__ == "__main__":
    main()
