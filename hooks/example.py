import os
import subprocess

from pathlib import Path

import apkrepotool


def run(tc: apkrepotool.ToolConfig, *args: str) -> None:
    assert tc.cfg is not None
    config = tc.cfg.hooks["example"].config
    schema_file = Path(__file__).with_suffix(".json")
    shell_script = Path(__file__).with_suffix(".sh")
    schema = apkrepotool.load_json(schema_file)
    apkrepotool.validate_against_schema(config, schema, "(example hook config)")
    env = dict(COUNT_RECIPES=str(config["count_recipes"]).lower(),
               COUNT_APKS=str(config["count_apks"]).lower())
    print(f"RUNNING example.py\n  name={__name__}\n  config={config}\n  args={args}")
    subprocess.run(["bash", str(shell_script), *args], check=True, env={**os.environ, **env})
