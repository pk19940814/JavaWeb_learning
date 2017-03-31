package WMSJ.PLUS;

import java.math.BigDecimal;
import java.util.Scanner;

/**
 * Created by apple on 2017/3/29.
 */
public class MAIN {
    public static void main(String[] args){

    }
    public static void PLUS(){
        Scanner in =new Scanner(System.in);
        while (in.hasNext()){
            int n=in.nextInt();
            int m=in.nextInt();
            BigDecimal temp=new BigDecimal(n*n);
            double result=0;
            double f1=temp.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
            for (int i=0;i<m;i++){


            }
        }
    }
}
