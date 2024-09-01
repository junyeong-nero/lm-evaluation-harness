from functools import partial

def format_cot_example(example, including_answer=True):
    prompt = "질문:\n"
    question = example["question"]
    prompt += question + "\n"
    prompt += "보기:\n"
    for opt in "ABCDE":
        prompt += "{}. {}\n".format(opt, example[opt])
    if including_answer:
        # CoT Prompt 수정필요
        # KMMLU에서는 "기하학 관련 정보를 위해 위키피디아를 참조하겠습니다." 같은 문장 사용
        cot_content = example["cot_content"].replace(
            "A: 차근차근 생각해 봅시다.", "답변: 단계별로 생각해 봅시다."
        ).replace(
            "A: 단계별로 생각해 봅시다.", "답변: 단계별로 생각해 봅시다."
        )
        prompt += cot_content + "\n\n"
    else:
        prompt += "답변: 단계별로 생각해 봅시다."
    return prompt


def doc_to_target(doc):
    return "ABCDE"[doc["answer"] - 1]


doc_to_text = partial(format_cot_example, including_answer=False)
fewshot_to_text = partial(format_cot_example, including_answer=True)

