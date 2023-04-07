{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,126) ([36016,38406,49361,7090,0,0,24608,3353,0,0,0,512,0,12992,22554,886,0,6496,11277,33187,30565,0,46593,221,64,18008,51971,24680,3353,0,1024,32805,1152,36864,47808,30747,886,26827,6496,13,288,9988,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","int","let","in","if","then","else","true","false","'='","'<'","'+'","'\\\\'","'->'","var","'('","')'","%eof"]
        bit_start = st Prelude.* 21
        bit_end = (st Prelude.+ 1) Prelude.* 21
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..20]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_3
action_0 (6) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (12) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (18) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (4) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_3
action_1 (6) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (11) = happyShift action_6
action_1 (12) = happyShift action_7
action_1 (16) = happyShift action_8
action_1 (18) = happyShift action_9
action_1 (19) = happyShift action_10
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (5) = happyShift action_3
action_2 (6) = happyShift action_4
action_2 (8) = happyShift action_5
action_2 (11) = happyShift action_6
action_2 (12) = happyShift action_7
action_2 (14) = happyShift action_13
action_2 (15) = happyShift action_14
action_2 (16) = happyShift action_8
action_2 (18) = happyShift action_9
action_2 (19) = happyShift action_10
action_2 (4) = happyGoto action_12
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_8

action_4 (18) = happyShift action_18
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (5) = happyShift action_3
action_5 (6) = happyShift action_4
action_5 (8) = happyShift action_5
action_5 (11) = happyShift action_6
action_5 (12) = happyShift action_7
action_5 (16) = happyShift action_8
action_5 (18) = happyShift action_9
action_5 (19) = happyShift action_10
action_5 (4) = happyGoto action_17
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_10

action_7 _ = happyReduce_11

action_8 (18) = happyShift action_16
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_7

action_10 (5) = happyShift action_3
action_10 (6) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (11) = happyShift action_6
action_10 (12) = happyShift action_7
action_10 (16) = happyShift action_8
action_10 (18) = happyShift action_9
action_10 (19) = happyShift action_10
action_10 (4) = happyGoto action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_3
action_11 (6) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (11) = happyShift action_6
action_11 (12) = happyShift action_7
action_11 (14) = happyShift action_13
action_11 (15) = happyShift action_14
action_11 (16) = happyShift action_8
action_11 (18) = happyShift action_9
action_11 (19) = happyShift action_10
action_11 (21) = happyAccept
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (19) = happyFail []
action_12 (4) = happyGoto action_12
action_12 _ = happyReduce_1

action_13 (5) = happyShift action_3
action_13 (6) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (11) = happyShift action_6
action_13 (12) = happyShift action_7
action_13 (16) = happyShift action_8
action_13 (18) = happyShift action_9
action_13 (19) = happyShift action_10
action_13 (4) = happyGoto action_24
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_3
action_14 (6) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (11) = happyShift action_6
action_14 (12) = happyShift action_7
action_14 (16) = happyShift action_8
action_14 (18) = happyShift action_9
action_14 (19) = happyShift action_10
action_14 (4) = happyGoto action_23
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_3
action_15 (6) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (11) = happyShift action_6
action_15 (12) = happyShift action_7
action_15 (14) = happyShift action_13
action_15 (15) = happyShift action_14
action_15 (16) = happyShift action_8
action_15 (18) = happyShift action_9
action_15 (19) = happyShift action_10
action_15 (20) = happyShift action_22
action_15 (4) = happyGoto action_12
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (17) = happyShift action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_3
action_17 (6) = happyShift action_4
action_17 (8) = happyShift action_5
action_17 (9) = happyShift action_20
action_17 (11) = happyShift action_6
action_17 (12) = happyShift action_7
action_17 (14) = happyShift action_13
action_17 (15) = happyShift action_14
action_17 (16) = happyShift action_8
action_17 (18) = happyShift action_9
action_17 (19) = happyShift action_10
action_17 (4) = happyGoto action_12
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (13) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_3
action_19 (6) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (11) = happyShift action_6
action_19 (12) = happyShift action_7
action_19 (16) = happyShift action_8
action_19 (18) = happyShift action_9
action_19 (19) = happyShift action_10
action_19 (4) = happyGoto action_27
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_3
action_20 (6) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (11) = happyShift action_6
action_20 (12) = happyShift action_7
action_20 (16) = happyShift action_8
action_20 (18) = happyShift action_9
action_20 (19) = happyShift action_10
action_20 (4) = happyGoto action_26
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_3
action_21 (6) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (11) = happyShift action_6
action_21 (12) = happyShift action_7
action_21 (16) = happyShift action_8
action_21 (18) = happyShift action_9
action_21 (19) = happyShift action_10
action_21 (4) = happyGoto action_25
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_6

action_23 (8) = happyShift action_5
action_23 (14) = happyShift action_13
action_23 (16) = happyShift action_8
action_23 (19) = happyShift action_10
action_23 (4) = happyGoto action_12
action_23 _ = happyReduce_4

action_24 (8) = happyShift action_5
action_24 (16) = happyShift action_8
action_24 (19) = happyShift action_10
action_24 (4) = happyGoto action_12
action_24 _ = happyReduce_5

action_25 (16) = happyShift action_8
action_25 (19) = happyShift action_10
action_25 (4) = happyGoto action_12
action_25 _ = happyReduce_3

action_26 (5) = happyShift action_3
action_26 (6) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (10) = happyShift action_29
action_26 (11) = happyShift action_6
action_26 (12) = happyShift action_7
action_26 (14) = happyShift action_13
action_26 (15) = happyShift action_14
action_26 (16) = happyShift action_8
action_26 (18) = happyShift action_9
action_26 (19) = happyShift action_10
action_26 (4) = happyGoto action_12
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (5) = happyShift action_3
action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_28
action_27 (8) = happyShift action_5
action_27 (11) = happyShift action_6
action_27 (12) = happyShift action_7
action_27 (14) = happyShift action_13
action_27 (15) = happyShift action_14
action_27 (16) = happyShift action_8
action_27 (18) = happyShift action_9
action_27 (19) = happyShift action_10
action_27 (4) = happyGoto action_12
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (5) = happyShift action_3
action_28 (6) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (11) = happyShift action_6
action_28 (12) = happyShift action_7
action_28 (16) = happyShift action_8
action_28 (18) = happyShift action_9
action_28 (19) = happyShift action_10
action_28 (4) = happyGoto action_31
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (5) = happyShift action_3
action_29 (6) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (11) = happyShift action_6
action_29 (12) = happyShift action_7
action_29 (16) = happyShift action_8
action_29 (18) = happyShift action_9
action_29 (19) = happyShift action_10
action_29 (4) = happyGoto action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (8) = happyFail []
action_30 (16) = happyShift action_8
action_30 (19) = happyShift action_10
action_30 (4) = happyGoto action_12
action_30 _ = happyReduce_9

action_31 (8) = happyShift action_5
action_31 (14) = happyShift action_13
action_31 (15) = happyShift action_14
action_31 (16) = happyShift action_8
action_31 (19) = happyShift action_10
action_31 (4) = happyGoto action_12
action_31 _ = happyReduce_2

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LamApp happy_var_1 happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 6 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 4 4 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lambda happy_var_2 happy_var_4
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
		 (Bool True
	)

happyReduce_11 = happySpecReduce_1  4 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn4
		 (Bool False
	)

happyNewToken action sts stk [] =
	action 21 21 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 5;
	TokenLet _ -> cont 6;
	TokenIn _ -> cont 7;
	TokenIf _ -> cont 8;
	TokenThen _ -> cont 9;
	TokenElse _ -> cont 10;
	TokenTrue _ -> cont 11;
	TokenFalse _ -> cont 12;
	TokenEq _ -> cont 13;
	TokenLess _ -> cont 14;
	TokenPlus _ -> cont 15;
	TokenLambda _ -> cont 16;
	TokenFunction _ -> cont 17;
	TokenVar _ happy_dollar_dollar -> cont 18;
	TokenLParen _ -> cont 19;
	TokenRParen _ -> cont 20;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 21 tk tks = happyError' (tks, explist)
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
data Exp = 
         Var String
         | Int Int
         | Bool Bool
         | Plus Exp Exp
         | Less Exp Exp
         | Let String Exp Exp
         | Lambda String Exp
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
