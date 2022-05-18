.class Lorg/javia/arity/OptCodeGen;
.super Lorg/javia/arity/SimpleCodeGen;
.source "OptCodeGen.java"


# instance fields
.field context:Lorg/javia/arity/EvalContext;

.field intrinsicArity:I

.field private isPercent:Z

.field sp:I

.field stack:[Lorg/javia/arity/Complex;

.field traceCode:[B

.field traceConstsIm:[D

.field traceConstsRe:[D

.field traceFuncs:[Lorg/javia/arity/Function;

.field tracer:Lorg/javia/arity/CompiledFunction;


# direct methods
.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 6

    .line 40
    invoke-direct {p0, p1}, Lorg/javia/arity/SimpleCodeGen;-><init>(Lorg/javia/arity/SyntaxException;)V

    .line 26
    new-instance p1, Lorg/javia/arity/EvalContext;

    invoke-direct {p1}, Lorg/javia/arity/EvalContext;-><init>()V

    iput-object p1, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    .line 28
    iget-object p1, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    iget-object p1, p1, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    iput-object p1, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    const/4 p1, 0x1

    .line 30
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    .line 31
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    .line 32
    new-array v0, p1, [Lorg/javia/arity/Function;

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    .line 33
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    .line 34
    new-instance p1, Lorg/javia/arity/CompiledFunction;

    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    iget-object v5, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    iput-object p1, p0, Lorg/javia/arity/OptCodeGen;->tracer:Lorg/javia/arity/CompiledFunction;

    return-void
.end method


# virtual methods
.method getFun(I)Lorg/javia/arity/CompiledFunction;
    .locals 7

    .line 137
    new-instance v6, Lorg/javia/arity/CompiledFunction;

    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v0}, Lorg/javia/arity/ByteStack;->toArray()[B

    move-result-object v2

    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v0}, Lorg/javia/arity/DoubleStack;->getRe()[D

    move-result-object v3

    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v0}, Lorg/javia/arity/DoubleStack;->getIm()[D

    move-result-object v4

    iget-object p0, p0, Lorg/javia/arity/OptCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {p0}, Lorg/javia/arity/FunctionStack;->toArray()[Lorg/javia/arity/Function;

    move-result-object v5

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    return-object v6
.end method

.method push(Lorg/javia/arity/Token;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lorg/javia/arity/OptCodeGen;->isPercent:Z

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lorg/javia/arity/OptCodeGen;->isPercent:Z

    .line 57
    iget v2, p1, Lorg/javia/arity/Token;->id:I

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    .line 94
    iget-byte p1, p1, Lorg/javia/arity/Token;->vmop:B

    if-lez p1, :cond_e

    const/16 v2, 0xc

    if-ne p1, v2, :cond_4

    .line 99
    iput-boolean v8, p0, Lorg/javia/arity/OptCodeGen;->isPercent:Z

    goto :goto_2

    .line 66
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/javia/arity/OptCodeGen;->getSymbol(Lorg/javia/arity/Token;)Lorg/javia/arity/Symbol;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lorg/javia/arity/Token;->isDerivative()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    iget-object v2, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    invoke-virtual {v2}, Lorg/javia/arity/Function;->getDerivative()Lorg/javia/arity/Function;

    move-result-object v2

    aput-object v2, p1, v1

    :goto_0
    move p1, v7

    goto :goto_2

    .line 70
    :cond_0
    iget-byte p1, v2, Lorg/javia/arity/Symbol;->op:B

    if-lez p1, :cond_2

    .line 71
    iget-byte p1, v2, Lorg/javia/arity/Symbol;->op:B

    const/16 v2, 0x26

    if-lt p1, v2, :cond_4

    const/16 v2, 0x2a

    if-gt p1, v2, :cond_4

    add-int/lit8 v0, p1, -0x26

    add-int/2addr v0, v8

    .line 74
    iget v1, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    if-le v0, v1, :cond_1

    .line 75
    iput v0, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    .line 77
    :cond_1
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v1, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    add-int/2addr v1, v8

    iput v1, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v0, v0, v1

    iput-wide v3, v0, Lorg/javia/arity/Complex;->re:D

    .line 78
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v1, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v0, v0, v1

    iput-wide v5, v0, Lorg/javia/arity/Complex;->im:D

    .line 79
    iget-object p0, p0, Lorg/javia/arity/OptCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {p0, p1}, Lorg/javia/arity/ByteStack;->push(B)V

    return-void

    .line 83
    :cond_2
    iget-object p1, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-eqz p1, :cond_3

    .line 85
    iget-object p1, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    iget-object v2, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    aput-object v2, p1, v1

    goto :goto_0

    .line 88
    :cond_3
    iget-object p1, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-wide v9, v2, Lorg/javia/arity/Symbol;->valueRe:D

    aput-wide v9, p1, v1

    .line 89
    iget-object p1, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    iget-wide v9, v2, Lorg/javia/arity/Symbol;->valueIm:D

    aput-wide v9, p1, v1

    goto :goto_1

    .line 60
    :pswitch_1
    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-wide v9, p1, Lorg/javia/arity/Token;->value:D

    aput-wide v9, v2, v1

    .line 61
    iget-object p1, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    aput-wide v5, p1, v1

    :goto_1
    move p1, v8

    .line 102
    :cond_4
    :goto_2
    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    .line 103
    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    aput-byte p1, v2, v1

    const/16 v2, 0x8

    const/4 v9, -0x1

    if-eq p1, v2, :cond_6

    .line 105
    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->tracer:Lorg/javia/arity/CompiledFunction;

    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    iget v4, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    if-eqz v0, :cond_5

    move v0, v9

    goto :goto_3

    :cond_5
    const/4 v0, -0x2

    :goto_3
    invoke-virtual {v2, v3, v4, v0}, Lorg/javia/arity/CompiledFunction;->execWithoutCheckComplex(Lorg/javia/arity/EvalContext;II)I

    move-result v0

    iput v0, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    goto :goto_4

    .line 107
    :cond_6
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    add-int/2addr v2, v8

    iput v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v0, v0, v2

    iput-wide v3, v0, Lorg/javia/arity/Complex;->re:D

    .line 108
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v0, v0, v2

    iput-wide v5, v0, Lorg/javia/arity/Complex;->im:D

    .line 114
    :goto_4
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v8, :cond_7

    goto :goto_5

    :cond_7
    if-ne p1, v7, :cond_d

    .line 131
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lorg/javia/arity/FunctionStack;->push(Lorg/javia/arity/Function;)V

    goto :goto_8

    :cond_8
    :goto_5
    if-ne p1, v7, :cond_9

    .line 115
    iget-object p1, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/javia/arity/Function;->arity()I

    move-result p1

    goto :goto_6

    :cond_9
    sget-object v0, Lorg/javia/arity/VM;->arity:[B

    aget-byte p1, v0, p1

    :goto_6
    if-lez p1, :cond_c

    .line 117
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v0}, Lorg/javia/arity/ByteStack;->pop()B

    move-result v0

    if-ne v0, v8, :cond_a

    .line 119
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v0}, Lorg/javia/arity/DoubleStack;->pop()V

    goto :goto_7

    :cond_a
    if-ne v0, v7, :cond_b

    .line 121
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {v0}, Lorg/javia/arity/FunctionStack;->pop()Lorg/javia/arity/Function;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lorg/javia/arity/Function;->arity()I

    move-result v0

    sub-int/2addr v0, v8

    add-int/2addr p1, v0

    goto :goto_7

    .line 124
    :cond_b
    sget-object v1, Lorg/javia/arity/VM;->arity:[B

    aget-byte v0, v1, v0

    add-int/2addr p1, v0

    :goto_7
    add-int/2addr p1, v9

    goto :goto_6

    .line 128
    :cond_c
    iget-object p1, p0, Lorg/javia/arity/OptCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v1, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v0, v0, v1

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v3, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v2, v2, v3

    iget-wide v2, v2, Lorg/javia/arity/Complex;->im:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/javia/arity/DoubleStack;->push(DD)V

    move p1, v8

    .line 133
    :cond_d
    :goto_8
    iget-object p0, p0, Lorg/javia/arity/OptCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {p0, p1}, Lorg/javia/arity/ByteStack;->push(B)V

    return-void

    .line 96
    :cond_e
    new-instance p0, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong vmop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method start()V
    .locals 1

    .line 45
    invoke-super {p0}, Lorg/javia/arity/SimpleCodeGen;->start()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    .line 48
    iput-boolean v0, p0, Lorg/javia/arity/OptCodeGen;->isPercent:Z

    return-void
.end method
