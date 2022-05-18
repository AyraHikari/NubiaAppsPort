.class Lorg/javia/arity/TestFormat;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static cases:[Lorg/javia/arity/FormatCase;

.field static sizeCases:[Lorg/javia/arity/SizeCase;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x27

    .line 276
    new-array v0, v0, [Lorg/javia/arity/FormatCase;

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v2, "0.1"

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4, v2}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v2, "0.12"

    const-wide v6, 0x3fbeb851eb851eb8L    # 0.12

    invoke-direct {v1, v5, v6, v7, v2}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v6, "0.001"

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-direct {v1, v5, v7, v8, v6}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v7, "0.0012"

    const-wide v8, 0x3f53a92a30553261L    # 0.0012

    invoke-direct {v1, v5, v8, v9, v7}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/4 v7, 0x3

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v8, "1E-7"

    const-wide v9, 0x3e7ad7f29abcaf48L    # 1.0E-7

    invoke-direct {v1, v5, v9, v10, v8}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/4 v8, 0x4

    aput-object v1, v0, v8

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "1.2E-7"

    const-wide v10, 0x3e801b2b29a4692bL    # 1.2E-7

    invoke-direct {v1, v5, v10, v11, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/4 v9, 0x5

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v12, "0.123456789012345"

    const-wide v13, 0x3fbf9add3746f62eL    # 0.123456789012345

    invoke-direct {v1, v5, v13, v14, v12}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/4 v12, 0x6

    aput-object v1, v0, v12

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v15, "0"

    const-wide/16 v8, 0x0

    invoke-direct {v1, v5, v8, v9, v15}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/4 v15, 0x7

    aput-object v1, v0, v15

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v15, "1"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v5, v7, v8, v15}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v7, 0x8

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v7, "12"

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-direct {v1, v5, v8, v9, v7}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v7, 0x9

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v8, "1234567890"

    const-wide v12, 0x41d26580b4800000L    # 1.23456789E9

    invoke-direct {v1, v5, v12, v13, v8}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v8, 0xa

    aput-object v1, v0, v8

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "1000000000"

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    invoke-direct {v1, v5, v12, v13, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v9, 0xb

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "1.23456789012345"

    const-wide v12, 0x3ff3c0ca428c59ddL    # 1.23456789012345

    invoke-direct {v1, v5, v12, v13, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v9, 0xc

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "12345.6789012345"

    const-wide v14, 0x40c81cd6e63c53b2L    # 12345.6789012345

    invoke-direct {v1, v5, v14, v15, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v9, 0xd

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "1234567890.12345"

    const-wide v14, 0x41d26580b487e69bL    # 1.23456789012345E9

    invoke-direct {v1, v5, v14, v15, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v9, 0xe

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "1.23456789012345E14"

    const-wide v14, 0x42dc12218377de40L    # 1.23456789012345E14

    invoke-direct {v1, v5, v14, v15, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v9, 0xf

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "1E14"

    const-wide v14, 0x42d6bcc41e900000L    # 1.0E14

    invoke-direct {v1, v5, v14, v15, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v9, 0x10

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "1.2E14"

    const-wide v14, 0x42db48eb57e00000L    # 1.2E14

    invoke-direct {v1, v5, v14, v15, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v9, 0x11

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "1.00000000000001E14"

    const-wide v14, 0x42d6bcc41e900040L    # 1.00000000000001E14

    invoke-direct {v1, v5, v14, v15, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v9, 0x12

    aput-object v1, v0, v9

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v9, "0.1"

    invoke-direct {v1, v6, v3, v4, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1.2E-7"

    invoke-direct {v1, v6, v10, v11, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "0.12345678901235"

    const-wide v9, 0x3fbf9add3746f62eL    # 0.123456789012345

    invoke-direct {v1, v6, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "0"

    const-wide/16 v9, 0x0

    invoke-direct {v1, v6, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1.2345678901235"

    invoke-direct {v1, v6, v12, v13, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1.234567890123"

    const/4 v4, 0x3

    invoke-direct {v1, v4, v12, v13, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x18

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "12345.6789012345"

    const-wide v9, 0x40c81cd6e63c53b2L    # 12345.6789012345

    invoke-direct {v1, v5, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1234567890.1235"

    const-wide v9, 0x41d26580b487e69bL    # 1.23456789012345E9

    invoke-direct {v1, v6, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1.234567890123E14"

    const-wide v9, 0x42dc12218377de40L    # 1.23456789012345E14

    const/4 v4, 0x3

    invoke-direct {v1, v4, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1E14"

    const-wide v9, 0x42d6bcc41e900040L    # 1.00000000000001E14

    invoke-direct {v1, v6, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1.2345678901234568E16"

    const-wide v9, 0x4345ee2a2eb5a5c4L    # 1.2345678901234568E16

    invoke-direct {v1, v5, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1.2345678901235E16"

    invoke-direct {v1, v6, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1E17"

    const-wide v9, 0x4376345785d8a000L    # 1.0E17

    invoke-direct {v1, v5, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1E16"

    const-wide v9, 0x4341c37937e08000L    # 1.0E16

    invoke-direct {v1, v5, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "9.99999999999999E14"

    const-wide v9, 0x430c6bf52633fff8L    # 9.99999999999999E14

    invoke-direct {v1, v5, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1E15"

    invoke-direct {v1, v6, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "9.9999999999999E14"

    const-wide v9, 0x430c6bf52633ffd0L    # 9.99999999999994E14

    invoke-direct {v1, v6, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x23

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3ff00014f8b588e3L    # 1.00002

    invoke-static {v3, v4}, Lorg/javia/arity/MoreMath;->log2(D)D

    move-result-wide v3

    const-string v9, "0.000028853612282487"

    invoke-direct {v1, v6, v3, v4, v9}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x24

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "0.0004"

    const-wide v9, 0x3f3a36e2eb1c432dL    # 4.0E-4

    invoke-direct {v1, v5, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x25

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-string v3, "1E30"

    const-wide v9, 0x46293e5939a08ceaL    # 1.0E30

    invoke-direct {v1, v5, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    const/16 v3, 0x26

    aput-object v1, v0, v3

    sput-object v0, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    const/16 v0, 0xf

    .line 346
    new-array v0, v0, [Lorg/javia/arity/SizeCase;

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "1111111110"

    const-string v4, "1.11111E9"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "1111111110"

    const-string v4, "1111111110"

    invoke-direct {v1, v8, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "11111111110"

    const-string v4, "1.11111E10"

    invoke-direct {v1, v8, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "12.11111E9"

    const-string v4, "12.11111E9"

    invoke-direct {v1, v8, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "12.34567E9"

    const-string v4, "12.3456E9"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "12345678E3"

    const-string v4, "1.2345E10"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "-12345678E3"

    const-string v4, "-1.234E10"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "-0.00000007"

    const-string v4, "-0.000000"

    invoke-direct {v1, v7, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "-1.23E123"

    const-string v4, "-1.23E123"

    const/4 v5, 0x5

    invoke-direct {v1, v5, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "-1.2E123"

    const-string v4, "-1.2E123"

    invoke-direct {v1, v5, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "-1E123"

    const-string v4, "-1E123"

    invoke-direct {v1, v5, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "-1"

    const-string v4, "-1"

    invoke-direct {v1, v6, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "-1"

    const-string v4, "-1"

    invoke-direct {v1, v2, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "-0.02"

    const-string v4, "-0.02"

    invoke-direct {v1, v2, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v3, "0.02"

    const-string v4, "0"

    invoke-direct {v1, v2, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lorg/javia/arity/TestFormat;->sizeCases:[Lorg/javia/arity/SizeCase;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static testFormat()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 329
    :goto_0
    sget-object v3, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 330
    sget-object v3, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    aget-object v3, v3, v1

    .line 331
    iget-object v4, v3, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 332
    iget v6, v3, Lorg/javia/arity/FormatCase;->rounding:I

    if-nez v6, :cond_0

    iget-wide v6, v3, Lorg/javia/arity/FormatCase;->val:D

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    .line 333
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wrong test? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lorg/javia/arity/FormatCase;->val:D

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-wide v4, v3, Lorg/javia/arity/FormatCase;->val:D

    iget v6, v3, Lorg/javia/arity/FormatCase;->rounding:I

    invoke-static {v4, v5, v6}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v4

    .line 336
    iget-object v5, v3, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 337
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', got \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'. "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lorg/javia/arity/FormatCase;->val:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v0

    .line 340
    :cond_1
    iget v4, v3, Lorg/javia/arity/FormatCase;->rounding:I

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v3, v3, Lorg/javia/arity/FormatCase;->rounding:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return v2
.end method

.method static testSizeCases()Z
    .locals 9

    .line 368
    sget-object v0, Lorg/javia/arity/TestFormat;->sizeCases:[Lorg/javia/arity/SizeCase;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 369
    iget-object v6, v5, Lorg/javia/arity/SizeCase;->val:Ljava/lang/String;

    iget v7, v5, Lorg/javia/arity/SizeCase;->size:I

    invoke-static {v6, v7}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 370
    iget-object v7, v5, Lorg/javia/arity/SizeCase;->res:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 371
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sizeTruncate("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lorg/javia/arity/SizeCase;->val:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lorg/javia/arity/SizeCase;->size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): got \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' expected \'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/javia/arity/SizeCase;->res:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method
