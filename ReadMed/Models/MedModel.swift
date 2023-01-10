//
//  MedModel.swift
//  ReadMed
//
//  Created by ShahadQadi on 17/06/1444 AH.
//

import Foundation

struct MedModle: Identifiable {
    
    var id = UUID()
    var image: String
    var title: String
    var dosage: String
    var sideEffect: String
    var medInt: String
    
}

extension MedModle{
    static var mediModle: [MedModle] = [
        
        MedModle(image: "Panadol Extra", title: "Panadol Extra", dosage:"It’s an extra effective pain relief, for adults, take 2 tablets every 4 hours as required. Do not take more than 8 tablets in 24 hours", sideEffect:"Paracetamol has no common side effects, unless you are allergic to paracetamol or any of the other ingredients", medInt:"Paracetamol increases the anticoagulant effect of Acenocoumarol, Asparaginase, Atorvastatin,Bedaquiline,Busulfan, Carbamazepine. DO NOT TAKE WITH ANY OTHER PARACETAMOL CONTAINING PRODUCTS"),
        
        MedModle(image: "Brufen", title: "Brufen", dosage:"It is used to relieve pain from various conditions such as, dental pain, menstrual cramps. adult usually take 200-400 mg every 4-6 hours unless doctor directs you otherwise", sideEffect:"Upset stomach, nausea, vomiting, diarrhea  commonly occur. If any of these effects last or get worse, tell your doctor or pharmacist promptly", medInt:"Some products that may interact with thisdrug include: aliskiren(such as captopril, lisinopril), angiotensin II receptor blockers (such as losartan, valsartan), cidofovir,lithium, water pills (diuretics such as furosemide)"),
        
        MedModle(image: "Lipitor", title: "Lipitor", dosage:"It is used along with a proper diet to help lower bad cholesterol. The dosage is based on your medical condition once a day at the same time", sideEffect:"Headache, abdominal pain and nausea are common to happen", medInt:"Some products that may interact with this drug include: daptomycin, gemfibrozil. Avoid eating or drinking grapefruit while using this medication"),
        
        MedModle(image: "Nifedipine", title: "Nifedipine", dosage: "It is used to treat severe chest pain or high blood pressure. Take it by mouth, usually 3 times daily as perscribed", sideEffect:"Dizziness, flushing, weakness, swelling ankles/feet, constipation, and headache may occur", medInt:"These meducations may affect how nifedipine works: apalutamide, cimetidine, enzalutamide, mitotane, quinupristin/dalfopristin, rifabutin. drugs used to treat seizures (such as carbamazepine, phenytoin)"),
        
        MedModle(image: "Levothyroxine", title: "Levothyroxine", dosage: "It provides more thyroid hormone to treat an underactive thyroid gland. Take it as perscribed once daily on an empty stomach, 30 minutes to 1 hour before breakfast", sideEffect:"Hair loss may occur during the first few months of treatment. This effect is usually temporary as your body adjusts to this medication", medInt:"Some products that may interact with this drug include are: blood thinners (such as warfarin), digoxin, sucroferric oxyhydroxide")
        
        
    ]
    
}


