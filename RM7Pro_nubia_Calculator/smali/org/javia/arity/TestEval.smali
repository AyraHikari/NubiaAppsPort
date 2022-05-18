.class Lorg/javia/arity/TestEval;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static cases:[Lorg/javia/arity/EvalCase;

.field static casesComplex:[Lorg/javia/arity/EvalCase;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x72

    .line 38
    new-array v0, v0, [Lorg/javia/arity/EvalCase;

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "."

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v5, "1+."

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v5, v6, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v8, "1"

    invoke-direct {v1, v8, v6, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/4 v8, 0x2

    aput-object v1, v0, v8

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "\u03c0"

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/4 v9, 0x3

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "2\u00d73"

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    invoke-direct {v1, v9, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/4 v9, 0x4

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1+\u221a9*2"

    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    invoke-direct {v1, v9, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/4 v9, 0x5

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "3\u221a 4"

    invoke-direct {v1, v9, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/4 v9, 0x6

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "\u221a16sin(2\u03c0/4)"

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    invoke-direct {v1, v9, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/4 v9, 0x7

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1+"

    const-wide/high16 v14, -0x4000000000000000L    # -2.0

    invoke-direct {v1, v9, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x8

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1+1"

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x9

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1+-1"

    invoke-direct {v1, v9, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0xa

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "-0.5"

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0xb

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "+1e2"

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0xc

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1e-1"

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0xd

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1e\u22122"

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0xe

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "-2^3!"

    const-wide/high16 v10, -0x3fb0000000000000L    # -64.0

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0xf

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "(-2)^3!"

    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x10

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "-2^1^2"

    invoke-direct {v1, v9, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x11

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "--1"

    invoke-direct {v1, v9, v6, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x12

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "-3^--2"

    const-wide/high16 v10, -0x3fde000000000000L    # -9.0

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x13

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1+2)(2+3"

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x14

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1+2)!^-2"

    const-wide v10, 0x3f9c71c71c71c71cL    # 0.027777777777777776

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x15

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "sin(0)"

    invoke-direct {v1, v9, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x16

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "cos(0)"

    invoke-direct {v1, v9, v6, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x17

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "sin(-1--1)"

    invoke-direct {v1, v9, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x18

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "-(2+1)*-(4/2)"

    invoke-direct {v1, v9, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x19

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "-.5E-1"

    const-wide v10, -0x4056666666666666L    # -0.05

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x1a

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "1E1.5"

    invoke-direct {v1, v9, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x1b

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "2 3 4"

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x1c

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "pi"

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x1d

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "e"

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x1e

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "sin(pi/2)"

    invoke-direct {v1, v9, v6, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x1f

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "f=sin(2x)"

    const-wide/high16 v10, -0x3ff8000000000000L    # -3.0

    invoke-direct {v1, v9, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x20

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "f(pi/2)"

    invoke-direct {v1, v9, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v9, 0x21

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v9, "a=3"

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-direct {v1, v9, v5, v6}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x22

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "b=a+1"

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-direct {v1, v7, v8, v9}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x23

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "f(x, y) = x*(y+1)"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x24

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "="

    invoke-direct {v1, v7, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x25

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "f(a, b-a)"

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x26

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, " f(a pi/4)"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct {v1, v7, v8, v9}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x27

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "f (  1  +  1  , a+1)"

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x28

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "g(foo) = f (f(foo, 1)pi/2)"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x29

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "g(.5*2)"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x2a

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "NaN"

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x2b

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "Inf"

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x2c

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "Infinity"

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x2d

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "-Inf"

    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x2e

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0/0"

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x2f

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "comb(11, 9)"

    const-wide v12, 0x404b800000000000L    # 55.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x30

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "perm(11, 2)"

    const-wide v12, 0x405b800000000000L    # 110.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x31

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "comb(1000, 999)"

    const-wide v12, 0x408f400000000000L    # 1000.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x32

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "perm(1000, 1)"

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x33

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "c(x)=1+x^2"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x34

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "c(3-1)"

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x35

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "abs(3-4i)"

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x36

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "exp(pi*i)"

    invoke-direct {v1, v7, v8, v9}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x37

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "5%"

    const-wide v12, 0x3fa999999999999aL    # 0.05

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x38

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "200+5%"

    const-wide v12, 0x406a400000000000L    # 210.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x39

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "200-5%"

    const-wide v12, 0x4067c00000000000L    # 190.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x3a

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "100/200%"

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x3b

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "100+200%+5%"

    const-wide v12, 0x4073b00000000000L    # 315.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x3c

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "p1(x)=200+5%+x"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x3d

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "p1(0)"

    const-wide v12, 0x406a400000000000L    # 210.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x3e

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "p2(x,y)=x+y%+(2*y)%"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x3f

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "p2(200,5)"

    const-wide v12, 0x406ce00000000000L    # 231.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x40

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "mod(5,3)"

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x41

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "5.2 # 3.2"

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x42

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "f(x)=3"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x43

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "g(x)=f(x)"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x44

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "g(1)"

    invoke-direct {v1, v7, v5, v6}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x45

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "a(x)=i+x-x"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x46

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "b(x)=a(x)*a(x)"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x47

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "b(5)"

    invoke-direct {v1, v7, v8, v9}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x48

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "h(x)=sqrt(-1+x-x)"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x49

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "k(x)=h(x)*h(x)"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x4a

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "k(5)"

    invoke-direct {v1, v7, v8, v9}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x4b

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "pi=4"

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x4c

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "pi"

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x4d

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "fc(x)=e^(i*x^2"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x4e

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "fc(0)"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x4f

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "aa(x)=sin(x)^1+sin(x)^0"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x50

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "aa(0)"

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x51

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "null(x)=0"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x52

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "n(x)=null(sin(x))"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x53

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "n(1)"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x54

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "(2,"

    invoke-direct {v1, v7, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x55

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "100.1-100-.1"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x56

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "1.1-1+(-.1)"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x57

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "log(2,8)"

    invoke-direct {v1, v7, v5, v6}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x58

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "log(9,81)"

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x59

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "log(4,2)"

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x5a

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "sin\'(0)"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x5b

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "cos\'(0)"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x5c

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "cos\'(pi/2)"

    invoke-direct {v1, v7, v8, v9}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x5d

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "f(x)=2*x^3+x^2+100"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x5e

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "f\'(1)"

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x5f

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "f\'(2)"

    const-wide/high16 v12, 0x403c000000000000L    # 28.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x60

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "abs\'(2)"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x61

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "abs\'(-3)"

    invoke-direct {v1, v7, v8, v9}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x62

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0x0"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x63

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0x100"

    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x64

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0X10"

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x65

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0b10"

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x66

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0o10"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x67

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0o8"

    invoke-direct {v1, v7, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x68

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0xg"

    invoke-direct {v1, v7, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x69

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "0b20"

    invoke-direct {v1, v7, v14, v15}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x6a

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "sin(0x1*pi/2)"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x6b

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "ln(e)"

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x6c

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "log(10)"

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x6d

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "log10(100)"

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x6e

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "lg(.1)"

    invoke-direct {v1, v7, v8, v9}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x6f

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "log2(2)"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v7, v12, v13}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x70

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "lb(256)"

    invoke-direct {v1, v7, v10, v11}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    const/16 v7, 0x71

    aput-object v1, v0, v7

    sput-object v0, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    const/16 v0, 0xb

    .line 169
    new-array v0, v0, [Lorg/javia/arity/EvalCase;

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v7, "sqrt(-1)^2"

    new-instance v10, Lorg/javia/arity/Complex;

    invoke-direct {v10, v8, v9, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v7, v10}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "i"

    new-instance v7, Lorg/javia/arity/Complex;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct {v7, v3, v4, v8, v9}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "sqrt(-1)"

    new-instance v7, Lorg/javia/arity/Complex;

    invoke-direct {v7, v3, v4, v8, v9}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "c(2+0i)"

    new-instance v7, Lorg/javia/arity/Complex;

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-direct {v7, v8, v9, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "c(1+i)"

    new-instance v7, Lorg/javia/arity/Complex;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "ln(-1)"

    new-instance v7, Lorg/javia/arity/Complex;

    const-wide v8, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    invoke-direct {v7, v3, v4, v8, v9}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "i^i"

    new-instance v7, Lorg/javia/arity/Complex;

    const-wide v8, 0x3fca9bcc46f767e0L    # 0.20787957635076193

    invoke-direct {v7, v8, v9, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v7}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "gcd(135-14i, 155+34i)"

    new-instance v3, Lorg/javia/arity/Complex;

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    const-wide/high16 v9, -0x3fec000000000000L    # -5.0

    invoke-direct {v3, v7, v8, v9, v10}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v3}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "comb(1+.5i, 1)"

    new-instance v3, Lorg/javia/arity/Complex;

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v9, v10, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v3}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "perm(2+i, 2)"

    new-instance v3, Lorg/javia/arity/Complex;

    invoke-direct {v3, v9, v10, v5, v6}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v3}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/EvalCase;

    const-string v2, "fc(2)"

    new-instance v3, Lorg/javia/arity/Complex;

    const-wide v4, -0x401b1559f924db3fL    # -0.6536436208636119

    const-wide v6, -0x4017c8462223e152L    # -0.7568024953079282

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v1, v2, v3}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static testEval()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .line 187
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    .line 188
    :goto_0
    sget-object v0, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    array-length v0, v0

    if-ge v4, v0, :cond_8

    .line 189
    sget-object v0, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    aget-object v6, v0, v4

    const-wide/16 v7, 0x0

    .line 194
    :try_start_0
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0}, Lorg/javia/arity/Complex;-><init>()V

    .line 196
    iget-object v9, v6, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v9

    .line 197
    iget-object v10, v9, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    .line 198
    invoke-virtual {v1, v9}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 199
    invoke-virtual {v10}, Lorg/javia/arity/Function;->arity()I

    move-result v9

    if-nez v9, :cond_3

    .line 200
    invoke-virtual {v10}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v11

    .line 201
    invoke-virtual {v10}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;

    move-result-object v9

    .line 202
    invoke-static {v11, v12, v9}, Lorg/javia/arity/UnitTest;->equal(DLorg/javia/arity/Complex;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v2

    goto :goto_1

    :cond_0
    move v10, v3

    .line 203
    :goto_1
    invoke-static {v11, v12, v2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v13

    .line 205
    iget-object v14, v6, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-static {v14}, Lorg/javia/arity/Symbols;->isDefinition(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 206
    iget-object v0, v6, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v7

    .line 207
    iget-object v0, v6, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/javia/arity/Symbols;->evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;

    move-result-object v0

    if-eqz v10, :cond_1

    .line 208
    invoke-static {v11, v12, v7, v8}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v0}, Lorg/javia/arity/Complex;->equals(Lorg/javia/arity/Complex;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v2

    goto :goto_2

    :cond_1
    move v10, v3

    :cond_2
    :goto_2
    if-nez v10, :cond_4

    .line 212
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** failed: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-wide/high16 v11, -0x3ff8000000000000L    # -3.0

    .line 216
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x1

    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    .line 218
    iget-wide v7, v6, Lorg/javia/arity/EvalCase;->result:D

    invoke-static {v7, v8, v11, v12}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    move v0, v3

    goto :goto_5

    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Lorg/javia/arity/SyntaxException;->toString()Ljava/lang/String;

    move-result-object v13

    .line 221
    iget-wide v7, v6, Lorg/javia/arity/EvalCase;->result:D

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    cmpl-double v0, v7, v9

    if-nez v0, :cond_5

    goto :goto_4

    .line 223
    :goto_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    const-string v8, ""

    goto :goto_6

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed (expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lorg/javia/arity/EvalCase;->result:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "                                           "

    iget-object v6, v6, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0xf

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v0, :cond_7

    move v5, v3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    move v0, v3

    .line 232
    :goto_7
    sget-object v2, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 234
    :try_start_1
    sget-object v2, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    aget-object v2, v2, v0

    .line 235
    iget-object v4, v2, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/javia/arity/Symbols;->evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;

    move-result-object v4

    .line 236
    iget-object v6, v2, Lorg/javia/arity/EvalCase;->cResult:Lorg/javia/arity/Complex;

    invoke-static {v6, v4}, Lorg/javia/arity/UnitTest;->equal(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 237
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/javia/arity/EvalCase;->cResult:Lorg/javia/arity/Complex;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v3

    goto :goto_8

    .line 241
    :cond_9
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-static {v4, v2, v3}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/javia/arity/SyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    return v5
.end method
