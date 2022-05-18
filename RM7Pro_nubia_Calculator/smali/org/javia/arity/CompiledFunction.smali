.class public Lorg/javia/arity/CompiledFunction;
.super Lorg/javia/arity/ContextFunction;
.source "CompiledFunction.java"


# static fields
.field private static final EMPTY_DOUBLE:[D

.field private static final EMPTY_FUN:[Lorg/javia/arity/Function;

.field private static final IS_COMPLEX:Lorg/javia/arity/IsComplexException;

.field private static final random:Ljava/util/Random;


# instance fields
.field private final arity:I

.field private final code:[B

.field private final constsIm:[D

.field private final constsRe:[D

.field private final funcs:[Lorg/javia/arity/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lorg/javia/arity/IsComplexException;

    invoke-direct {v0}, Lorg/javia/arity/IsComplexException;-><init>()V

    sput-object v0, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    const/4 v0, 0x0

    .line 39
    new-array v1, v0, [D

    sput-object v1, Lorg/javia/arity/CompiledFunction;->EMPTY_DOUBLE:[D

    .line 40
    new-array v0, v0, [Lorg/javia/arity/Function;

    sput-object v0, Lorg/javia/arity/CompiledFunction;->EMPTY_FUN:[Lorg/javia/arity/Function;

    return-void
.end method

.method constructor <init>(I[B[D[D[Lorg/javia/arity/Function;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/javia/arity/ContextFunction;-><init>()V

    .line 49
    iput p1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    .line 50
    iput-object p2, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    .line 51
    iput-object p3, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    .line 52
    iput-object p4, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    .line 53
    iput-object p5, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    return-void
.end method

.method private evalComplexToReal([DLorg/javia/arity/EvalContext;)D
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->toComplex([DLorg/javia/arity/EvalContext;)[Lorg/javia/arity/Complex;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->asReal()D

    move-result-wide p0

    return-wide p0
.end method

.method private execComplex(Lorg/javia/arity/EvalContext;I)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    const/4 v1, -0x2

    .line 156
    invoke-virtual {p0, p1, p2, v1}, Lorg/javia/arity/CompiledFunction;->execWithoutCheckComplex(Lorg/javia/arity/EvalContext;II)I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 161
    iget-object v0, p1, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    iget v1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v1, p2, v1

    aget-object v0, v0, v1

    iget-object p1, p1, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 162
    iget p0, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int/2addr p2, p0

    return p2

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/Error;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack pointer after exec: expected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private execReal(Lorg/javia/arity/EvalContext;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/IsComplexException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 145
    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->execWithoutCheck(Lorg/javia/arity/EvalContext;I)I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 150
    iget-object v0, p1, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v1, p2, v1

    iget-object p1, p1, Lorg/javia/arity/EvalContext;->stackRe:[D

    aget-wide v2, p1, p2

    aput-wide v2, v0, v1

    .line 151
    iget p0, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int/2addr p2, p0

    return p2

    .line 147
    :cond_0
    new-instance p0, Ljava/lang/Error;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack pointer after exec: expected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static makeOpFunction(I)Lorg/javia/arity/Function;
    .locals 8

    .line 57
    sget-object v0, Lorg/javia/arity/VM;->arity:[B

    aget-byte v0, v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 60
    new-instance v0, Lorg/javia/arity/CompiledFunction;

    sget-object v2, Lorg/javia/arity/VM;->arity:[B

    aget-byte v3, v2, p0

    const/4 v2, 0x2

    new-array v4, v2, [B

    const/4 v2, 0x0

    const/16 v5, 0x26

    aput-byte v5, v4, v2

    int-to-byte v2, p0

    aput-byte v2, v4, v1

    sget-object v5, Lorg/javia/arity/CompiledFunction;->EMPTY_DOUBLE:[D

    sget-object v6, Lorg/javia/arity/CompiledFunction;->EMPTY_DOUBLE:[D

    sget-object v7, Lorg/javia/arity/CompiledFunction;->EMPTY_FUN:[Lorg/javia/arity/Function;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    const/16 v1, 0x1d

    if-ne p0, v1, :cond_0

    .line 62
    new-instance p0, Lorg/javia/arity/CompiledFunction$1;

    invoke-direct {p0}, Lorg/javia/arity/CompiledFunction$1;-><init>()V

    invoke-virtual {v0, p0}, Lorg/javia/arity/CompiledFunction;->setDerivative(Lorg/javia/arity/Function;)V

    :cond_0
    return-object v0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeOpFunction expects arity 1, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/javia/arity/VM;->arity:[B

    aget-byte p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public arity()I
    .locals 0

    .line 77
    iget p0, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    return p0
.end method

.method public eval([DLorg/javia/arity/EvalContext;)D
    .locals 4

    .line 113
    iget-object v0, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->evalComplexToReal([DLorg/javia/arity/EvalContext;)D

    move-result-wide p0

    return-wide p0

    .line 116
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/javia/arity/CompiledFunction;->checkArity(I)V

    const/4 v0, 0x0

    .line 117
    iget-object v1, p2, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v2, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :try_start_0
    iget v0, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p2, v0}, Lorg/javia/arity/CompiledFunction;->execReal(Lorg/javia/arity/EvalContext;I)I

    .line 120
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v1, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    aget-wide v0, v0, v1
    :try_end_0
    .catch Lorg/javia/arity/IsComplexException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 122
    :catch_0
    invoke-direct {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->evalComplexToReal([DLorg/javia/arity/EvalContext;)D

    move-result-wide p0

    return-wide p0
.end method

.method public eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .locals 5

    .line 133
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/javia/arity/CompiledFunction;->checkArity(I)V

    .line 134
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    .line 135
    iget v1, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    const/4 v2, 0x0

    .line 136
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    add-int v3, v2, v1

    .line 137
    aget-object v3, v0, v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    array-length p1, p1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p2, p1}, Lorg/javia/arity/CompiledFunction;->execComplex(Lorg/javia/arity/EvalContext;I)I

    .line 140
    aget-object p0, v0, v1

    return-object p0
.end method

.method execWithoutCheck(Lorg/javia/arity/EvalContext;I)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/IsComplexException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 166
    iget-object v2, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-nez v2, :cond_b

    .line 170
    iget-object v2, v1, Lorg/javia/arity/EvalContext;->stackRe:[D

    .line 172
    iget v3, v0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v3, p2, v3

    .line 176
    iget-object v5, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    array-length v5, v5

    const/4 v6, -0x2

    move v10, v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v6, p2

    :goto_0
    if-ge v4, v5, :cond_a

    .line 180
    iget-object v11, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    aget-byte v11, v11, v4

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/16 v18, 0x0

    packed-switch v11, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x25

    .line 314
    aget-wide v11, v2, v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v6, v6, -0x1

    .line 306
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    invoke-static {v11, v12, v13, v14}, Lorg/javia/arity/MoreMath;->permutations(DD)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    :pswitch_2
    add-int/lit8 v6, v6, -0x1

    .line 305
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    invoke-static {v11, v12, v13, v14}, Lorg/javia/arity/MoreMath;->combinations(DD)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    :pswitch_3
    add-int/lit8 v6, v6, -0x1

    .line 304
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    invoke-static {v11, v12, v13, v14}, Lorg/javia/arity/MoreMath;->gcd(DD)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v6, v6, -0x1

    .line 303
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    :pswitch_5
    add-int/lit8 v6, v6, -0x1

    .line 302
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 300
    :pswitch_6
    aget-wide v11, v2, v6

    cmpl-double v11, v11, v18

    if-lez v11, :cond_0

    goto :goto_1

    :cond_0
    aget-wide v11, v2, v6

    cmpg-double v11, v11, v18

    if-gez v11, :cond_1

    move-wide/from16 v14, v16

    goto :goto_1

    :cond_1
    move-wide/from16 v14, v18

    :goto_1
    aput-wide v14, v2, v6

    goto/16 :goto_2

    .line 299
    :pswitch_7
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 298
    :pswitch_8
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 297
    :pswitch_9
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 295
    :pswitch_a
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Lorg/javia/arity/MoreMath;->atanh(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 294
    :pswitch_b
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Lorg/javia/arity/MoreMath;->acosh(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 293
    :pswitch_c
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Lorg/javia/arity/MoreMath;->asinh(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 292
    :pswitch_d
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 291
    :pswitch_e
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 290
    :pswitch_f
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 278
    :pswitch_10
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 271
    :pswitch_11
    aget-wide v11, v2, v6

    cmpg-double v13, v11, v16

    if-ltz v13, :cond_2

    cmpl-double v13, v11, v14

    if-gtz v13, :cond_2

    .line 275
    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 273
    :cond_2
    sget-object v0, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    throw v0

    .line 263
    :pswitch_12
    aget-wide v11, v2, v6

    cmpg-double v13, v11, v16

    if-ltz v13, :cond_3

    cmpl-double v13, v11, v14

    if-gtz v13, :cond_3

    .line 267
    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 265
    :cond_3
    sget-object v0, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    throw v0

    .line 260
    :pswitch_13
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Lorg/javia/arity/MoreMath;->tan(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 259
    :pswitch_14
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 258
    :pswitch_15
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 281
    :pswitch_16
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 280
    :pswitch_17
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto/16 :goto_2

    .line 288
    :pswitch_18
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto :goto_2

    .line 284
    :pswitch_19
    aget-wide v11, v2, v6

    cmpg-double v13, v11, v18

    if-ltz v13, :cond_4

    .line 285
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto :goto_2

    .line 284
    :cond_4
    sget-object v0, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    throw v0

    .line 256
    :pswitch_1a
    aget-wide v10, v2, v6

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v10, v12

    aput-wide v10, v2, v6

    move v10, v4

    goto :goto_2

    .line 255
    :pswitch_1b
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto :goto_2

    :pswitch_1c
    add-int/lit8 v6, v6, -0x1

    .line 250
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto :goto_2

    .line 254
    :pswitch_1d
    aget-wide v11, v2, v6

    neg-double v11, v11

    aput-wide v11, v2, v6

    goto :goto_2

    :pswitch_1e
    add-int/lit8 v6, v6, 0x1

    .line 221
    sget-object v11, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextDouble()D

    move-result-wide v11

    aput-wide v11, v2, v6

    goto :goto_2

    :pswitch_1f
    add-int/lit8 v6, v6, -0x1

    .line 247
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    rem-double/2addr v11, v13

    aput-wide v11, v2, v6

    goto :goto_2

    :pswitch_20
    add-int/lit8 v6, v6, -0x1

    .line 246
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    div-double/2addr v11, v13

    aput-wide v11, v2, v6

    goto :goto_2

    :pswitch_21
    add-int/lit8 v6, v6, -0x1

    .line 245
    aget-wide v11, v2, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v2, v13

    mul-double/2addr v11, v13

    aput-wide v11, v2, v6

    :goto_2
    move/from16 v23, v5

    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_9

    :pswitch_22
    add-int/lit8 v6, v6, -0x1

    .line 235
    aget-wide v14, v2, v6

    add-int/lit8 v11, v4, -0x1

    if-ne v10, v11, :cond_5

    .line 236
    aget-wide v16, v2, v6

    add-int/lit8 v11, v6, 0x1

    aget-wide v20, v2, v11

    mul-double v16, v16, v20

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v6, 0x1

    aget-wide v16, v2, v11

    :goto_4
    sub-double v16, v14, v16

    .line 237
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    cmpg-double v11, v20, v14

    if-gez v11, :cond_6

    move-wide/from16 v16, v18

    .line 241
    :cond_6
    aput-wide v16, v2, v6

    goto :goto_2

    :pswitch_23
    add-int/lit8 v6, v6, -0x1

    .line 224
    aget-wide v14, v2, v6

    add-int/lit8 v11, v4, -0x1

    if-ne v10, v11, :cond_7

    .line 225
    aget-wide v16, v2, v6

    add-int/lit8 v11, v6, 0x1

    aget-wide v20, v2, v11

    mul-double v16, v16, v20

    goto :goto_5

    :cond_7
    add-int/lit8 v11, v6, 0x1

    aget-wide v16, v2, v11

    :goto_5
    add-double v16, v14, v16

    .line 226
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    cmpg-double v11, v20, v14

    if-gez v11, :cond_8

    move-wide/from16 v16, v18

    .line 230
    :cond_8
    aput-wide v16, v2, v6

    goto :goto_2

    .line 187
    :pswitch_24
    iget-object v11, v0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    add-int/lit8 v12, v9, 0x1

    aget-object v9, v11, v9

    .line 188
    instance-of v11, v9, Lorg/javia/arity/CompiledFunction;

    if-eqz v11, :cond_9

    .line 189
    check-cast v9, Lorg/javia/arity/CompiledFunction;

    invoke-direct {v9, v1, v6}, Lorg/javia/arity/CompiledFunction;->execReal(Lorg/javia/arity/EvalContext;I)I

    move-result v6

    move/from16 v23, v5

    move v9, v12

    goto :goto_3

    .line 191
    :cond_9
    invoke-virtual {v9}, Lorg/javia/arity/Function;->arity()I

    move-result v11

    sub-int/2addr v6, v11

    .line 194
    iget v13, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    add-int/lit8 v14, v6, 0x1

    .line 196
    :try_start_0
    iput v14, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    packed-switch v11, :pswitch_data_1

    move/from16 v23, v5

    move/from16 v22, v8

    .line 208
    new-array v5, v11, [D

    const/4 v7, 0x0

    goto :goto_7

    :pswitch_25
    move/from16 v22, v8

    .line 205
    aget-wide v7, v2, v14

    add-int/lit8 v6, v6, 0x2

    move/from16 v23, v5

    aget-wide v5, v2, v6

    invoke-virtual {v9, v7, v8, v5, v6}, Lorg/javia/arity/Function;->eval(DD)D

    move-result-wide v5

    goto :goto_6

    :pswitch_26
    move/from16 v23, v5

    move/from16 v22, v8

    .line 202
    aget-wide v5, v2, v14

    invoke-virtual {v9, v5, v6}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v5

    goto :goto_6

    :pswitch_27
    move/from16 v23, v5

    move/from16 v22, v8

    .line 199
    invoke-virtual {v9}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v5

    :goto_6
    const/4 v7, 0x0

    goto :goto_8

    .line 209
    :goto_7
    invoke-static {v2, v14, v5, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    invoke-virtual {v9, v5}, Lorg/javia/arity/Function;->eval([D)D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_8
    iput v13, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 215
    aput-wide v5, v2, v14

    move v9, v12

    move v6, v14

    move/from16 v8, v22

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 213
    iput v13, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    throw v0

    :pswitch_28
    move/from16 v23, v5

    move/from16 v22, v8

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x1

    .line 183
    iget-object v5, v0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    add-int/lit8 v8, v22, 0x1

    aget-wide v11, v5, v22

    aput-wide v11, v2, v6

    :goto_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v23

    goto/16 :goto_0

    :cond_a
    return v6

    .line 167
    :cond_b
    sget-object v0, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method

.method execWithoutCheckComplex(Lorg/javia/arity/EvalContext;II)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 325
    iget-object v2, v1, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    .line 327
    iget v3, v0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v3, p2, v3

    .line 331
    iget-object v5, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    array-length v5, v5

    move/from16 v7, p2

    move/from16 v10, p3

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v4, v5, :cond_7

    .line 334
    iget-object v11, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    aget-byte v11, v11, v4

    const-wide/16 v12, 0x0

    packed-switch v11, :pswitch_data_0

    .line 456
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    .line 452
    aget-object v12, v2, v7

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x25

    aget-object v11, v2, v11

    invoke-virtual {v12, v11}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v7, v7, -0x1

    .line 443
    aget-object v11, v2, v7

    add-int/lit8 v12, v7, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v11, v12}, Lorg/javia/arity/Complex;->permutations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 v7, v7, -0x1

    .line 439
    aget-object v11, v2, v7

    add-int/lit8 v12, v7, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v11, v12}, Lorg/javia/arity/Complex;->combinations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_4

    :pswitch_3
    add-int/lit8 v7, v7, -0x1

    .line 435
    aget-object v11, v2, v7

    add-int/lit8 v12, v7, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v11, v12}, Lorg/javia/arity/Complex;->gcd(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_4

    :pswitch_4
    add-int/lit8 v7, v7, -0x1

    .line 428
    aget-object v11, v2, v7

    iget-wide v11, v11, Lorg/javia/arity/Complex;->re:D

    add-int/lit8 v13, v7, 0x1

    aget-object v14, v2, v13

    iget-wide v14, v14, Lorg/javia/arity/Complex;->re:D

    cmpg-double v11, v11, v14

    if-gez v11, :cond_2

    .line 429
    aget-object v11, v2, v7

    aget-object v12, v2, v13

    invoke-virtual {v11, v12}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_4

    :pswitch_5
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v11, v7, 0x1

    .line 421
    aget-object v12, v2, v11

    iget-wide v12, v12, Lorg/javia/arity/Complex;->re:D

    aget-object v14, v2, v7

    iget-wide v14, v14, Lorg/javia/arity/Complex;->re:D

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    .line 422
    aget-object v12, v2, v7

    aget-object v11, v2, v11

    invoke-virtual {v12, v11}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_4

    .line 415
    :pswitch_6
    aget-object v11, v2, v7

    iget-wide v14, v11, Lorg/javia/arity/Complex;->re:D

    .line 416
    aget-object v11, v2, v7

    cmpl-double v16, v14, v12

    if-lez v16, :cond_0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    cmpg-double v14, v14, v12

    if-gez v14, :cond_1

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_1
    move-wide v14, v12

    :goto_1
    invoke-virtual {v11, v14, v15, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto/16 :goto_2

    .line 413
    :pswitch_7
    aget-object v11, v2, v7

    aget-object v14, v2, v7

    iget-wide v14, v14, Lorg/javia/arity/Complex;->re:D

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    invoke-virtual {v11, v14, v15, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto/16 :goto_2

    .line 412
    :pswitch_8
    aget-object v11, v2, v7

    aget-object v14, v2, v7

    iget-wide v14, v14, Lorg/javia/arity/Complex;->re:D

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    invoke-virtual {v11, v14, v15, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_2

    .line 411
    :pswitch_9
    aget-object v11, v2, v7

    aget-object v14, v2, v7

    invoke-virtual {v14}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v14

    invoke-virtual {v11, v14, v15, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_2

    .line 402
    :pswitch_a
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->atanh()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 401
    :pswitch_b
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->acosh()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 400
    :pswitch_c
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->asinh()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 395
    :pswitch_d
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->tanh()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 394
    :pswitch_e
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->cosh()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 393
    :pswitch_f
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->sinh()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 399
    :pswitch_10
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->atan()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 398
    :pswitch_11
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->acos()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 397
    :pswitch_12
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->asin()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 392
    :pswitch_13
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->tan()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 391
    :pswitch_14
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->cos()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 390
    :pswitch_15
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->sin()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 405
    :pswitch_16
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    goto :goto_2

    .line 404
    :pswitch_17
    aget-object v11, v2, v7

    invoke-virtual {v11}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    :goto_2
    move/from16 v17, v7

    goto :goto_3

    .line 408
    :pswitch_18
    aget-object v11, v2, v7

    new-instance v14, Lorg/javia/arity/Complex;

    move/from16 v17, v7

    const-wide v6, 0x400aaaaaaaaaaaabL    # 3.3333333333333335

    invoke-direct {v14, v6, v7, v12, v13}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-virtual {v11, v14}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto :goto_3

    :pswitch_19
    move/from16 v17, v7

    .line 407
    aget-object v6, v2, v17

    invoke-virtual {v6}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    goto :goto_3

    :pswitch_1a
    move/from16 v17, v7

    .line 388
    aget-object v6, v2, v17

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v6, v10, v11}, Lorg/javia/arity/Complex;->mul(D)Lorg/javia/arity/Complex;

    move v10, v4

    goto :goto_4

    :pswitch_1b
    move/from16 v17, v7

    .line 387
    aget-object v6, v2, v17

    invoke-virtual {v6}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    goto :goto_3

    :pswitch_1c
    move/from16 v17, v7

    add-int/lit8 v7, v17, -0x1

    .line 384
    aget-object v6, v2, v7

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v6, v11}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto :goto_4

    :pswitch_1d
    move/from16 v17, v7

    .line 386
    aget-object v6, v2, v17

    invoke-virtual {v6}, Lorg/javia/arity/Complex;->negate()Lorg/javia/arity/Complex;

    :goto_3
    move/from16 v18, v5

    move/from16 v7, v17

    goto :goto_5

    :pswitch_1e
    move/from16 v17, v7

    add-int/lit8 v7, v17, 0x1

    .line 377
    aget-object v6, v2, v7

    sget-object v11, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextDouble()D

    move-result-wide v14

    invoke-virtual {v6, v14, v15, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_4

    :pswitch_1f
    move/from16 v17, v7

    add-int/lit8 v7, v17, -0x1

    .line 383
    aget-object v6, v2, v7

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v6, v11}, Lorg/javia/arity/Complex;->mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto :goto_4

    :pswitch_20
    move/from16 v17, v7

    add-int/lit8 v7, v17, -0x1

    .line 382
    aget-object v6, v2, v7

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v6, v11}, Lorg/javia/arity/Complex;->div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto :goto_4

    :pswitch_21
    move/from16 v17, v7

    add-int/lit8 v7, v17, -0x1

    .line 381
    aget-object v6, v2, v7

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v6, v11}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    :cond_2
    :goto_4
    move/from16 v18, v5

    :goto_5
    const/4 v5, 0x0

    goto/16 :goto_d

    :pswitch_22
    move/from16 v17, v7

    add-int/lit8 v7, v17, -0x1

    .line 380
    aget-object v6, v2, v7

    add-int/lit8 v11, v4, -0x1

    if-ne v10, v11, :cond_3

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    aget-object v12, v2, v7

    invoke-virtual {v11, v12}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v11

    goto :goto_6

    :cond_3
    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    :goto_6
    invoke-virtual {v6, v11}, Lorg/javia/arity/Complex;->sub(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto :goto_4

    :pswitch_23
    move/from16 v17, v7

    add-int/lit8 v7, v17, -0x1

    .line 379
    aget-object v6, v2, v7

    add-int/lit8 v11, v4, -0x1

    if-ne v10, v11, :cond_4

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    aget-object v12, v2, v7

    invoke-virtual {v11, v12}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v11

    goto :goto_7

    :cond_4
    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    :goto_7
    invoke-virtual {v6, v11}, Lorg/javia/arity/Complex;->add(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto :goto_4

    :pswitch_24
    move/from16 v17, v7

    .line 344
    iget-object v6, v0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    add-int/lit8 v7, v9, 0x1

    aget-object v6, v6, v9

    .line 345
    instance-of v9, v6, Lorg/javia/arity/CompiledFunction;

    if-eqz v9, :cond_5

    .line 346
    check-cast v6, Lorg/javia/arity/CompiledFunction;

    move/from16 v11, v17

    invoke-direct {v6, v1, v11}, Lorg/javia/arity/CompiledFunction;->execComplex(Lorg/javia/arity/EvalContext;I)I

    move-result v6

    move/from16 v18, v5

    move v9, v7

    const/4 v5, 0x0

    move v7, v6

    goto/16 :goto_d

    :cond_5
    move/from16 v11, v17

    .line 348
    invoke-virtual {v6}, Lorg/javia/arity/Function;->arity()I

    move-result v9

    sub-int/2addr v11, v9

    .line 351
    iget v14, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    add-int/lit8 v15, v11, 0x1

    .line 353
    :try_start_0
    iput v15, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    packed-switch v9, :pswitch_data_1

    move/from16 v18, v5

    .line 365
    new-array v5, v9, [Lorg/javia/arity/Complex;

    const/4 v11, 0x0

    goto :goto_a

    .line 362
    :pswitch_25
    aget-object v9, v2, v15

    add-int/lit8 v11, v11, 0x2

    aget-object v11, v2, v11

    invoke-virtual {v6, v9, v11}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v6

    goto :goto_8

    .line 359
    :pswitch_26
    aget-object v9, v2, v15

    invoke-virtual {v6, v9}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v6

    :goto_8
    move/from16 v18, v5

    :goto_9
    const/4 v11, 0x0

    goto :goto_b

    .line 356
    :pswitch_27
    new-instance v9, Lorg/javia/arity/Complex;

    move/from16 v18, v5

    invoke-virtual {v6}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v5

    invoke-direct {v9, v5, v6, v12, v13}, Lorg/javia/arity/Complex;-><init>(DD)V

    move-object v6, v9

    goto :goto_9

    .line 366
    :goto_a
    invoke-static {v2, v15, v5, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    invoke-virtual {v6, v5}, Lorg/javia/arity/Function;->eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :goto_b
    iput v14, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 372
    aget-object v5, v2, v15

    invoke-virtual {v5, v6}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v9, v7

    move v5, v11

    move v7, v15

    goto :goto_d

    :catchall_0
    move-exception v0

    .line 370
    iput v14, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    throw v0

    :pswitch_28
    move/from16 v18, v5

    move v11, v7

    const/4 v5, 0x0

    add-int/lit8 v7, v11, 0x1

    .line 339
    aget-object v6, v2, v7

    iget-object v11, v0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    aget-wide v14, v11, v8

    iget-object v11, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-nez v11, :cond_6

    goto :goto_c

    :cond_6
    iget-object v11, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    aget-wide v12, v11, v8

    :goto_c
    invoke-virtual {v6, v14, v15, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    add-int/lit8 v8, v8, 0x1

    :goto_d
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_7
    move v11, v7

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    iget v1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    if-eqz v1, :cond_0

    const-string v1, "arity "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 86
    :goto_0
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 87
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    aget-byte v4, v4, v1

    .line 88
    sget-object v5, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/16 v4, 0x20

    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-nez v4, :cond_1

    .line 92
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    aget-wide v4, v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v4, 0x28

    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    aget-wide v4, v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    aget-wide v4, v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    :goto_2
    const-string v4, "; "

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_4
    iget-object v1, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    array-length v1, v1

    if-eq v2, v1, :cond_5

    const-string v1, "\nuses only "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " consts out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 106
    :cond_5
    iget-object v1, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    array-length v1, v1

    if-eq v3, v1, :cond_6

    const-string v1, "\nuses only "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " funcs out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
