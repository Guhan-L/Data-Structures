public class ExceptionDemo {
    public static void main(String[] args){
        try{
            int a=10;
            int b=0;
            int result=a/b;

            String s="abc";
            int num=Integer.parseInt(s);

        } catch(ArithmeticException e){
            System.out.println("Arithmetic exception handled");
        } catch(NumberFormatException e){
            System.out.println("Number Format exception handled");
        } finally{
            System.out.println("Finally block executed");
        }
    }
}

 

    