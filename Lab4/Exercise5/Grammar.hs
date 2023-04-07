{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,208) ([25984,208,16790,22531,3382,0,0,32768,38400,833,0,0,0,0,128,0,22528,3334,55648,52,0,38400,833,1624,24589,30169,0,64,19894,3,1024,0,32770,53349,0,32,1624,13,0,24704,208,18818,22531,7478,24,32800,54133,384,512,0,18,0,0,32768,1,22530,3334,0,72,0,384,512,1624,8205,13528,0,36,512,22528,3334,24,32,4096,0,0,0,57362,13529,25984,208,0,18432,3382,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Bool","Int","int","let","in","if","then","else","true","false","'='","'<'","'+'","','","':'","lam","arr","var","'('","')'","%eof"]
        bit_start = st Prelude.* 26
        bit_end = (st Prelude.+ 1) Prelude.* 26
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..25]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (8) = happyShift action_3
action_0 (9) = happyShift action_4
action_0 (11) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (24) = happyShift action_10
action_0 (4) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (8) = happyShift action_3
action_1 (9) = happyShift action_4
action_1 (11) = happyShift action_5
action_1 (14) = happyShift action_6
action_1 (15) = happyShift action_7
action_1 (21) = happyShift action_8
action_1 (23) = happyShift action_9
action_1 (24) = happyShift action_10
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_3
action_2 (9) = happyShift action_4
action_2 (11) = happyShift action_5
action_2 (14) = happyShift action_6
action_2 (15) = happyShift action_7
action_2 (17) = happyShift action_13
action_2 (18) = happyShift action_14
action_2 (21) = happyShift action_8
action_2 (23) = happyShift action_9
action_2 (24) = happyShift action_10
action_2 (4) = happyGoto action_12
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_8

action_4 (24) = happyShift action_18
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (8) = happyShift action_3
action_5 (9) = happyShift action_4
action_5 (11) = happyShift action_5
action_5 (14) = happyShift action_6
action_5 (15) = happyShift action_7
action_5 (21) = happyShift action_8
action_5 (23) = happyShift action_9
action_5 (24) = happyShift action_10
action_5 (4) = happyGoto action_17
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_10

action_7 _ = happyReduce_11

action_8 (24) = happyShift action_16
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_7

action_10 (8) = happyShift action_3
action_10 (9) = happyShift action_4
action_10 (11) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (15) = happyShift action_7
action_10 (21) = happyShift action_8
action_10 (23) = happyShift action_9
action_10 (24) = happyShift action_10
action_10 (4) = happyGoto action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_3
action_11 (9) = happyShift action_4
action_11 (11) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_7
action_11 (17) = happyShift action_13
action_11 (18) = happyShift action_14
action_11 (21) = happyShift action_8
action_11 (23) = happyShift action_9
action_11 (24) = happyShift action_10
action_11 (26) = happyAccept
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (4) = happyGoto action_12
action_12 _ = happyReduce_1

action_13 (8) = happyShift action_3
action_13 (9) = happyShift action_4
action_13 (11) = happyShift action_5
action_13 (14) = happyShift action_6
action_13 (15) = happyShift action_7
action_13 (21) = happyShift action_8
action_13 (23) = happyShift action_9
action_13 (24) = happyShift action_10
action_13 (4) = happyGoto action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_3
action_14 (9) = happyShift action_4
action_14 (11) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (15) = happyShift action_7
action_14 (21) = happyShift action_8
action_14 (23) = happyShift action_9
action_14 (24) = happyShift action_10
action_14 (4) = happyGoto action_24
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_3
action_15 (9) = happyShift action_4
action_15 (11) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (15) = happyShift action_7
action_15 (17) = happyShift action_13
action_15 (18) = happyShift action_14
action_15 (19) = happyShift action_22
action_15 (21) = happyShift action_8
action_15 (23) = happyShift action_9
action_15 (24) = happyShift action_10
action_15 (25) = happyShift action_23
action_15 (4) = happyGoto action_12
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (23) = happyShift action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_3
action_17 (9) = happyShift action_4
action_17 (11) = happyShift action_5
action_17 (12) = happyShift action_20
action_17 (14) = happyShift action_6
action_17 (15) = happyShift action_7
action_17 (17) = happyShift action_13
action_17 (18) = happyShift action_14
action_17 (21) = happyShift action_8
action_17 (23) = happyShift action_9
action_17 (24) = happyShift action_10
action_17 (4) = happyGoto action_12
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (23) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (20) = happyShift action_29
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_3
action_20 (9) = happyShift action_4
action_20 (11) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (15) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (24) = happyShift action_10
action_20 (4) = happyGoto action_28
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (20) = happyShift action_27
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_3
action_22 (9) = happyShift action_4
action_22 (11) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (15) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (23) = happyShift action_9
action_22 (24) = happyShift action_10
action_22 (4) = happyGoto action_26
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_6

action_24 (8) = happyShift action_3
action_24 (14) = happyShift action_6
action_24 (15) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (24) = happyShift action_10
action_24 (4) = happyGoto action_12
action_24 _ = happyReduce_4

action_25 (8) = happyShift action_3
action_25 (14) = happyShift action_6
action_25 (15) = happyShift action_7
action_25 (17) = happyFail []
action_25 (18) = happyShift action_14
action_25 (21) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (24) = happyShift action_10
action_25 (4) = happyGoto action_12
action_25 _ = happyReduce_5

action_26 (8) = happyShift action_3
action_26 (9) = happyShift action_4
action_26 (11) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (15) = happyShift action_7
action_26 (17) = happyShift action_13
action_26 (18) = happyShift action_14
action_26 (21) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (24) = happyShift action_10
action_26 (25) = happyShift action_36
action_26 (4) = happyGoto action_12
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_31
action_27 (7) = happyShift action_32
action_27 (24) = happyShift action_33
action_27 (5) = happyGoto action_35
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (8) = happyShift action_3
action_28 (9) = happyShift action_4
action_28 (11) = happyShift action_5
action_28 (13) = happyShift action_34
action_28 (14) = happyShift action_6
action_28 (15) = happyShift action_7
action_28 (17) = happyShift action_13
action_28 (18) = happyShift action_14
action_28 (21) = happyShift action_8
action_28 (23) = happyShift action_9
action_28 (24) = happyShift action_10
action_28 (4) = happyGoto action_12
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_31
action_29 (7) = happyShift action_32
action_29 (24) = happyShift action_33
action_29 (5) = happyGoto action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (22) = happyShift action_37
action_30 (25) = happyShift action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_13

action_32 _ = happyReduce_14

action_33 (6) = happyShift action_31
action_33 (7) = happyShift action_32
action_33 (24) = happyShift action_33
action_33 (5) = happyGoto action_40
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (8) = happyShift action_3
action_34 (9) = happyShift action_4
action_34 (11) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (15) = happyShift action_7
action_34 (21) = happyShift action_8
action_34 (23) = happyShift action_9
action_34 (24) = happyShift action_10
action_34 (4) = happyGoto action_39
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (22) = happyShift action_37
action_35 (25) = happyShift action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_12

action_37 (6) = happyShift action_31
action_37 (7) = happyShift action_32
action_37 (24) = happyShift action_33
action_37 (5) = happyGoto action_45
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (8) = happyShift action_3
action_38 (9) = happyShift action_4
action_38 (11) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (15) = happyShift action_7
action_38 (21) = happyShift action_8
action_38 (23) = happyShift action_9
action_38 (24) = happyShift action_10
action_38 (4) = happyGoto action_44
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (8) = happyShift action_3
action_39 (14) = happyShift action_6
action_39 (15) = happyShift action_7
action_39 (17) = happyShift action_13
action_39 (18) = happyShift action_14
action_39 (21) = happyShift action_8
action_39 (23) = happyShift action_9
action_39 (24) = happyShift action_10
action_39 (4) = happyGoto action_12
action_39 _ = happyReduce_9

action_40 (19) = happyShift action_43
action_40 (22) = happyShift action_37
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (16) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (8) = happyShift action_3
action_42 (9) = happyShift action_4
action_42 (11) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (15) = happyShift action_7
action_42 (21) = happyShift action_8
action_42 (23) = happyShift action_9
action_42 (24) = happyShift action_10
action_42 (4) = happyGoto action_47
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_31
action_43 (7) = happyShift action_32
action_43 (24) = happyShift action_33
action_43 (5) = happyGoto action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (8) = happyFail []
action_44 (14) = happyFail []
action_44 (15) = happyFail []
action_44 (21) = happyShift action_8
action_44 (23) = happyFail []
action_44 (24) = happyFail []
action_44 (4) = happyGoto action_12
action_44 _ = happyReduce_3

action_45 _ = happyReduce_16

action_46 (22) = happyShift action_37
action_46 (25) = happyShift action_49
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (8) = happyShift action_3
action_47 (9) = happyShift action_4
action_47 (10) = happyShift action_48
action_47 (11) = happyShift action_5
action_47 (14) = happyShift action_6
action_47 (15) = happyShift action_7
action_47 (17) = happyShift action_13
action_47 (18) = happyShift action_14
action_47 (21) = happyShift action_8
action_47 (23) = happyShift action_9
action_47 (24) = happyShift action_10
action_47 (4) = happyGoto action_12
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (8) = happyShift action_3
action_48 (9) = happyShift action_4
action_48 (11) = happyShift action_5
action_48 (14) = happyShift action_6
action_48 (15) = happyShift action_7
action_48 (21) = happyShift action_8
action_48 (23) = happyShift action_9
action_48 (24) = happyShift action_10
action_48 (4) = happyGoto action_50
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_15

action_50 (8) = happyShift action_3
action_50 (11) = happyShift action_5
action_50 (14) = happyShift action_6
action_50 (15) = happyShift action_7
action_50 (17) = happyShift action_13
action_50 (18) = happyShift action_14
action_50 (21) = happyShift action_8
action_50 (23) = happyShift action_9
action_50 (24) = happyShift action_10
action_50 (4) = happyGoto action_12
action_50 _ = happyReduce_2

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LamApp happy_var_1 happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 10 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_3 happy_var_5 happy_var_8 happy_var_10
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 7 4 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lambda happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Less happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happyReduce 6 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Cond happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn4
		 (TTrue
	)

happyReduce_11 = happySpecReduce_1  4 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn4
		 (TFalse
	)

happyReduce_12 = happyReduce 5 4 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn5
		 (TInt
	)

happyReduce_15 = happyReduce 5 5 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TPair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TFun happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 26 26 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeBool _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenInt _ happy_dollar_dollar -> cont 8;
	TokenLet _ -> cont 9;
	TokenIn _ -> cont 10;
	TokenIf _ -> cont 11;
	TokenThen _ -> cont 12;
	TokenElse _ -> cont 13;
	TokenTrue _ -> cont 14;
	TokenFalse _ -> cont 15;
	TokenEq _ -> cont 16;
	TokenLess _ -> cont 17;
	TokenPlus _ -> cont 18;
	TokenComma _ -> cont 19;
	TokenColon _ -> cont 20;
	TokenLambda _ -> cont 21;
	TokenArrow _ -> cont 22;
	TokenVar _ happy_dollar_dollar -> cont 23;
	TokenLParen _ -> cont 24;
	TokenRParen _ -> cont 25;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 26 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data ToyType = TInt | TBool | TPair ToyType ToyType | TFun ToyType ToyType deriving (Show,Eq)

type Environment = [ (String,Exp) ]

data Exp = 
         Var String
         | Int Int
         | TTrue
         | TFalse
         | Pair Exp Exp
         | Plus Exp Exp
         | Less Exp Exp
         | Let String ToyType Exp Exp
         | Lambda String ToyType Exp
         | Cond Exp Exp Exp
         | LamApp Exp Exp 
         deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
