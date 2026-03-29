from lm_eval.utils import weighted_f1_score


def doc_to_choice_eng(doc):
    choices = doc['English_Answer']
    return choices

def doc_to_choice_amh(doc):
    choices = doc['Amharic_Answer']
    return choices


def doc_to_text_amh_eng_ep1(doc):
    output = """ answer the question that follows.

                Question:
                "{question}"

                Your answer :"""

    text = output.format(
        question=doc["Amharic_Questions"]
    )
    return text

def doc_to_text_eng_ep1(doc):
    output = """answer the question that follows.

                Question:
                "{question}"

                Your answer :"""

    text = output.format(
        question=doc["English_Questions"]
    )
    return text

def doc_to_text_amh_eng_ep2(doc):
    output = """answer the question that tests your understanding of it.

                Question:
                "{question}"

                Your answer :"""

    text = output.format(
        question=doc["Amharic_Questions"]
    )
    return text

def doc_to_text_eng_ep2(doc):
    output = """ answer the question that tests your understanding of it.

                Question:
                "{question}"

                Your answer :"""

    text = output.format(
        question=doc["English_Questions"]
    )
    return text


def doc_to_text_amh_eng_ep3(doc):
    output = """choose the most accurate answer to the question that follows.


                Question:
                "{question}"

                Your answer :"""

    text = output.format(
        question=doc["Amharic_Questions"]
    )
    return text

def doc_to_text_eng_ep3(doc):
    output = """ choose the most accurate answer to the question that follows.

                Question:
                "{question}"

                Your answer :"""

    text = output.format(
        question=doc["English_Questions"]
    )
    return text
