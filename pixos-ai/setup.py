from setuptools import setup, find_packages

setup(
    name='pixos-ai-mascots',
    version='1.0.0',
    packages=find_packages(include=[
        'pixi_bot', 'pando_bot', 'carebit_bot', 'luxi_bot', 'wave_bot', 'eva_bot'
    ]),
    author='Juan',
    description='PixOS emotional mascot AI modules',
)
