from beet import Context
import re

def nbt(ctx: Context):
    namespace = "{}:{}".format(ctx.meta["datapack_namespace"],ctx.meta["messages_namespace"])
    def fm(match):
        paths = match[1].split()
        json_text = "".join(f', {{"storage": "{namespace}", "nbt": "{path}", "interpret": true}}' for path in paths)
        return f'[""{json_text}]'
    for func in ctx.data.functions.values():
        func.lines = [re.sub(r'"?f%(.*)%"?', fm, line) for line in func.lines]