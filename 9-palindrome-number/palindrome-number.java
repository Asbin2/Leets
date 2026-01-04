class Solution {
    public boolean isPalindrome(int x) {
        String dig = String.valueOf(Math.abs(x));
        if(x<0) return false;
        for(int i=0;i<dig.length()/2;i++){
            if(dig.charAt(i)!= dig.charAt(dig.length()-1-i)) return false;
        }
        return true;
    }
}