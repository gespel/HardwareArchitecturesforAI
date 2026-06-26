# Create the environment with Python 3.7 and specified packages
conda create --name kerashls python=3.7 scikit-learn numpy matplotlib tensorflow=2.4.1 notebook -y

# Activate the environment
echo "Activating the environment 'kerashls'..."
conda activate kerashls

# Confirm the installation
echo "Installed packages in 'kerashls' environment:"
conda list

# Inform the user that the environment is ready to use
echo "The 'kerashls' environment is now ready to use. To activate this environment, use:"
echo "  On Windows: conda activate kerashls"
echo "  On macOS and Linux: source activate kerashls"

# Additional information for deactivating the environment
echo "To deactivate an active environment, use:"
echo "  conda deactivate"


