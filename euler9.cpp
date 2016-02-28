#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int T;
    cin >> T;
    while (T--){
    	int N;
    	cin >> N;
    	long long result = -1;
    	for (int c = 1; c < N/2; c+=1){
    		for (int b = (N - c)/2; b < N - c && b < c; ++b){
    			int a = N - b - c;
    			if (a > b) continue;

    			if (a*a + b*b == c*c){
    				result = max(result, (long long) a*b*c);
    			}
    		}
    	}
    	printf("%lld\n", result);
    }  
    return 0;
}
