import math from '../src/math';

describe("Math",()=>{

    it("should add two numbers",()=>{
         const result= math.add(10,20);
         expect(result).toBe(30);
    });
});