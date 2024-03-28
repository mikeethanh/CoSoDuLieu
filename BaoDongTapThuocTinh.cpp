#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

// Hàm kiểm tra xem một vector có phải là tập con của vector khác không
bool isSubset(vector<char>& subset, vector<char>& set) {
    for (char s : subset) {
        if (find(set.begin(), set.end(), s) == set.end()) {
            return false;
        }
    }
    return true;
}

// Hàm tìm bao đóng của tập thuộc tính
vector<char> findClosure(vector<vector<char>>& F, vector<char>& X) {
    vector<char> closure = X;
    bool changed = true;

    while (changed) {
        changed = false;
        for (vector<char>& rule : F) {
            vector<char> left = { rule[0] };
            vector<char> right(rule.begin() + 3, rule.end());

            if (isSubset(left, closure)) {
                if (isSubset(right, closure)) continue;

                // Thêm các phần tử của right vào closure
                for (char c : right) {
                    if (find(closure.begin(), closure.end(), c) == closure.end()) {
                        closure.push_back(c);
                        changed = true;
                    }
                }
            }
        }
    }

    return closure;
}

int main() {
    vector<vector<char>> F = {
        { 'A', '-', 'B', 'C' },
        { 'B', 'C', '-', 'D' },
        { 'E', '-', 'F', 'G' }
    };

    vector<char> X = { 'A', 'B' };

    vector<char> closure = findClosure(F, X);

    cout << "Bao dong cua X+ la: ";
    for (char c : closure) {
        cout << c << " ";
    }
    cout << endl;

    return 0;
}
