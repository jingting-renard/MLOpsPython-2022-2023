python -m pip install --upgrade pip
python -m pip install --upgrade setuptools wheel

pip install -e packages/inference

cd packages/inference/
python setup.py sdist bdist_wheel
cd dist
cp *.whl ../../../train/evaluate/packages
cp *.whl ../../../production/packages
cd ../../../