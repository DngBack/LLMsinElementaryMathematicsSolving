from typing import Dict, List, Union

def multiple_choice(inp: Dict[str, Union[str, List[str], int]]) -> Dict[str, str]:
    return {
        "prompt" : 'Lựa chọn đáp án đúng. Câu hỏi: {query}.Lựa chọn: {options} '.format(
            query=inp["question"],
            options=" ".join(inp['choices']),
        ),
        "response" : inp["answer"],
    }