#include <iostream>

int main() {
    // Get the number of terms for the Fibonacci sequence
    int numTerms;
    std::cout << "Enter the number of terms for the Fibonacci sequence: ";
    std::cin >> numTerms;

    // Initialize the first two terms
    int term1 = 0, term2 = 1;

    // Display the Fibonacci sequence
    std::cout << "Fibonacci Sequence up to " << numTerms << " terms:\n";

    for (int i = 0; i < numTerms; ++i) {
        std::cout << term1 << " ";

        // Calculate the next term in the sequence
        int nextTerm = term1 + term2;

        // Update the values of term1 and term2 for the next iteration
        term1 = term2;
        term2 = nextTerm;
    }

    std::cout << std::endl;

    return 0;
}
