def doc_to_text(doc) -> str:
    ctxs = "\n".join(doc["CONTEXTS"])
    # Abstract
    return "참고: {}\n질문: {}\n답변:".format(
        ctxs,
        doc["QUESTION"],
    )
