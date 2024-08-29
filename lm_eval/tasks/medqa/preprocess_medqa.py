def doc_to_text(doc) -> str:
    option_choices = {
        "A": doc["A"],
        "B": doc["B"],
        "C": doc["C"],
        "D": doc["D"],
    }
    answers = "".join((f"{k}. {v}\n") for k, v in option_choices.items())
    return f"질문: {doc['question']}\n{answers}정답:"


def doc_to_target(doc) -> str:
    return doc["answer_idx"]
