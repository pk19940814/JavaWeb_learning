package WMSJ.Flower;

import java.util.Scanner;

/**
 * Created by apple on 2017/3/29.
 */
public class Main {
    public static void main(String [] args){
        Find();
    }

    public static void Find(){
        Scanner in=new Scanner(System.in);
        while (in.hasNext()){
            int m=in.nextInt();
            int n=in.nextInt();
            if (n<m){
                System.out.println("no");
            }
            else {
                boolean flag=false;
                for (int i=m;i<=n;i++){
                    int h=i/100,d=i%100/10,g=i%10;
                    if (h*h*h+d*d*d+g*g*g==i){
                        flag=true;
                        System.out.print(i+" ");
                    }
                }
                if (flag) System.out.println();
                else System.out.println("no");
            }
        }
    }

}

