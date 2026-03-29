from lm_eval.utils import weighted_f1_score


def doc_to_choice_eng(doc):
    choices = ['A','B','C','D']
    return choices


def doc_to_text_amh_eng_ep1(doc):
    output = """Answer the question .

                Question:
                "{question}"

                Choices:
                A) {choice1}
                B) {choice2}
                C) {choice3}
                D) {choice4}

                Your answer (A, B, C, or D):"""

    text = output.format(
        question=doc["Amharic_Questions"],
        choice1=doc["choice_A_amharic"],
        choice2=doc["choice_B_amharic"],
        choice3=doc["choice_C_amharic"],
        choice4=doc["choice_D_amharic"],
    )
    return text

def doc_to_text_eng_ep1(doc):
    output = """answer the question that follows.

                Question:
                "{question}"

                Choices:
                A) {choice1}
                B) {choice2}
                C) {choice3}
                D) {choice4}

                Your answer (A, B, C, or D):"""

    text = output.format(
        question=doc["Amharic_Questions"],
        choice1=doc["choice_A_amharic"],
        choice2=doc["choice_B_amharic"],
        choice3=doc["choice_C_amharic"],
        choice4=doc["choice_D_amharic"],
    )
    return text

def doc_to_text_amh_eng_ep2(doc):
    output = """ answer the question that tests your understanding of it.


                Question:
                "{question}"

                Choices:
                A) {choice1}
                B) {choice2}
                C) {choice3}
                D) {choice4}

                Your answer (A, B, C, or D):"""

    text = output.format(
        question=doc["Amharic_Questions"],
        choice1=doc["choice_A_amharic"],
        choice2=doc["choice_B_amharic"],
        choice3=doc["choice_C_amharic"],
        choice4=doc["choice_D_amharic"],
    )
    return text

def doc_to_text_eng_ep2(doc):
    output = """answer the question that tests your understanding of it.

                
                Question:
                "{question}"

                Choices:
                A) {choice1}
                B) {choice2}
                C) {choice3}
                D) {choice4}

                Your answer (A, B, C, or D):"""

    text = output.format(
        question=doc["English_Questions"],
        choice1=doc["choice_A_english"],
        choice2=doc["choice_B_english"],
        choice3=doc["choice_C_english"],
        choice4=doc["choice_D_english"],
    )
    return text


def doc_to_text_amh_eng_ep3(doc):
    output = """ choose the most accurate answer to the question that follows.


                Question:
                "{question}"

                Choices:
                A) {choice1}
                B) {choice2}
                C) {choice3}
                D) {choice4}

                Your answer (A, B, C, or D):"""

    text = output.format(
        question=doc["English_Questions"],
        choice1=doc["choice_A_english"],
        choice2=doc["choice_B_english"],
        choice3=doc["choice_C_english"],
        choice4=doc["choice_D_english"],
    )
    return text

def doc_to_text_eng_ep3(doc):
    output = """choose the most accurate answer to the question that follows.

                
                Question:
                "{question}"

                Choices:
                A) {choice1}
                B) {choice2}
                C) {choice3}
                D) {choice4}

                Your answer (A, B, C, or D):"""

    text = output.format(
        question=doc["English_Questions"],
        choice1=doc["choice_A_english"],
        choice2=doc["choice_B_english"],
        choice3=doc["choice_C_english"],
        choice4=doc["choice_D_english"],
    )
    return text
