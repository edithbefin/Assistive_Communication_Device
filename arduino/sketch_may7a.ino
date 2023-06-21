// void setup(){
// Serial.begin(9600);
// }
// unsigned long int sum0=0,sum1=0,sum2=0,sum3=0;
// void loop(){
//   for(int i=0;i<200;i++)
//   {
//     sum0=sum0 + analogRead(A0);
//     sum1=sum1 + analogRead(A1);
//     sum2=sum2 + analogRead(A2);
//     sum3=sum3 + analogRead(A3);
//     delay(2);
//   }
//   if(((sum0/200)>900) &&((sum1/200)<850)&&((sum2/200)<850)&&((sum3/200)<850)  ){
//     Serial.print("one");
//   }
//    if(((sum0/200)<900) &&((sum1/200)>850)&&((sum2/200)<850)&&((sum3/200)<850)){
//     Serial.print("three");
//   }
//    if(((sum0/200)<900) &&((sum1/200)<850)&&((sum2/200)>850)&&((sum3/200)<850) ){
//     Serial.print("two");
//   }
//    if(((sum0/200)<900) &&((sum1/200)<850)&&((sum2/200)<850)&&((sum3/200)>850) ){
//     Serial.print("four");
//   } 
//   if(((sum0/200)>900) &&((sum1/200)<850)&&((sum2/200)>850)&&((sum3/200)<850)  ){
//     Serial.print("five");
//   }
//   if(((sum0/200)>900) &&((sum1/200)>850)&&((sum2/200)<850)&&((sum3/200)<850)  ){
//     Serial.print("six");
//   }
//   if(((sum0/200)>900) &&((sum1/200)<850)&&((sum2/200)<850)&&((sum3/200)>850)  ){
//     Serial.print("seven");
//   }
//   if(((sum0/200)<900) &&((sum1/200)>850)&&((sum2/200)<850)&&((sum3/200)>850)  ){
//     Serial.print("eight");
//   }
//    delay(1000);
//    sum0=0;
//    sum1=0;
//    sum2=0;
//    sum3=0;
// }
