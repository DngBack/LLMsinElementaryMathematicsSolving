from typing import Dict, List, Union

def multiple_choice(inp: Dict[str, Union[str, List[str], int]]) -> Dict[str, str]:
    return {
        "prompt" : 'Hãy trả lời câu hỏi chỉ với một đáp án. Ví dụ: A.Nội dung đáp án Trả lời: A. Câu hỏi:{query} Lựa chọn:{options} Đáp án: '.format(
            query=inp["question"],
            options=" ".join(inp['choices']),
        ),
        "response" : inp["answer"],
    }