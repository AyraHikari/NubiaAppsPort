.class public Lorg/javia/arity/EvalContext;
.super Ljava/lang/Object;
.source "EvalContext.java"


# static fields
.field static final MAX_STACK_SIZE:I = 0x80


# instance fields
.field args1:[D

.field args1c:[Lorg/javia/arity/Complex;

.field args2:[D

.field args2c:[Lorg/javia/arity/Complex;

.field stackBase:I

.field final stackComplex:[Lorg/javia/arity/Complex;

.field stackRe:[D


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 27
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/javia/arity/EvalContext;->stackRe:[D

    .line 28
    new-array v1, v0, [Lorg/javia/arity/Complex;

    iput-object v1, p0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lorg/javia/arity/EvalContext;->stackBase:I

    const/4 v2, 0x1

    .line 31
    new-array v3, v2, [D

    iput-object v3, p0, Lorg/javia/arity/EvalContext;->args1:[D

    const/4 v3, 0x2

    .line 32
    new-array v4, v3, [D

    iput-object v4, p0, Lorg/javia/arity/EvalContext;->args2:[D

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    .line 40
    iget-object v5, p0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    new-instance v6, Lorg/javia/arity/Complex;

    invoke-direct {v6}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-array v0, v2, [Lorg/javia/arity/Complex;

    new-instance v4, Lorg/javia/arity/Complex;

    invoke-direct {v4}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v4, v0, v1

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    .line 43
    new-array v0, v3, [Lorg/javia/arity/Complex;

    new-instance v3, Lorg/javia/arity/Complex;

    invoke-direct {v3}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v3, v0, v1

    new-instance v1, Lorg/javia/arity/Complex;

    invoke-direct {v1}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    return-void
.end method
