.class Lorg/javia/arity/DoubleStack;
.super Ljava/lang/Object;
.source "DoubleStack.java"


# instance fields
.field private im:[D

.field private re:[D

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 20
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    .line 21
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/javia/arity/DoubleStack;->im:[D

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    return-void
.end method

.method getIm()[D
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 62
    :goto_0
    iget v2, p0, Lorg/javia/arity/DoubleStack;->size:I

    if-ge v1, v2, :cond_1

    .line 63
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->im:[D

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_2
    iget v1, p0, Lorg/javia/arity/DoubleStack;->size:I

    new-array v1, v1, [D

    .line 72
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget p0, p0, Lorg/javia/arity/DoubleStack;->size:I

    invoke-static {v2, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method getRe()[D
    .locals 3

    .line 55
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    new-array v0, v0, [D

    .line 56
    iget-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget p0, p0, Lorg/javia/arity/DoubleStack;->size:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method pop()V
    .locals 1

    .line 51
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    return-void
.end method

.method pop(I)V
    .locals 3

    .line 44
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    if-gt p1, v0, :cond_0

    .line 47
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/javia/arity/DoubleStack;->size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method push(DD)V
    .locals 5

    .line 29
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    iget-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    .line 31
    new-array v1, v0, [D

    .line 32
    new-array v0, v0, [D

    .line 33
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget-object v3, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget-object v3, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    .line 36
    iput-object v0, p0, Lorg/javia/arity/DoubleStack;->im:[D

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget v1, p0, Lorg/javia/arity/DoubleStack;->size:I

    aput-wide p1, v0, v1

    .line 39
    iget-object p1, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget p2, p0, Lorg/javia/arity/DoubleStack;->size:I

    aput-wide p3, p1, p2

    .line 40
    iget p1, p0, Lorg/javia/arity/DoubleStack;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/javia/arity/DoubleStack;->size:I

    return-void
.end method
