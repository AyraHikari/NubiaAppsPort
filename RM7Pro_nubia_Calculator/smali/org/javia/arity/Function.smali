.class public abstract Lorg/javia/arity/Function;
.super Ljava/lang/Object;
.source "Function.java"


# instance fields
.field private cachedDerivate:Lorg/javia/arity/Function;

.field comment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/javia/arity/Function;->cachedDerivate:Lorg/javia/arity/Function;

    return-void
.end method


# virtual methods
.method public abstract arity()I
.end method

.method public checkArity(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lorg/javia/arity/Function;->arity()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Lorg/javia/arity/ArityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/javia/arity/Function;->arity()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " arguments, got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/javia/arity/ArityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eval()D
    .locals 1

    .line 56
    new-instance p0, Lorg/javia/arity/ArityException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/javia/arity/ArityException;-><init>(I)V

    throw p0
.end method

.method public eval(D)D
    .locals 0

    .line 63
    new-instance p0, Lorg/javia/arity/ArityException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/javia/arity/ArityException;-><init>(I)V

    throw p0
.end method

.method public eval(DD)D
    .locals 0

    .line 70
    new-instance p0, Lorg/javia/arity/ArityException;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/javia/arity/ArityException;-><init>(I)V

    throw p0
.end method

.method public eval([D)D
    .locals 4

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance p0, Lorg/javia/arity/ArityException;

    array-length p1, p1

    invoke-direct {p0, p1}, Lorg/javia/arity/ArityException;-><init>(I)V

    throw p0

    .line 86
    :pswitch_0
    aget-wide v0, p1, v1

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Function;->eval(DD)D

    move-result-wide p0

    return-wide p0

    .line 84
    :pswitch_1
    aget-wide v0, p1, v1

    invoke-virtual {p0, v0, v1}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide p0

    return-wide p0

    .line 82
    :pswitch_2
    invoke-virtual {p0}, Lorg/javia/arity/Function;->eval()D

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 5

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lorg/javia/arity/Function;->checkArity(I)V

    .line 106
    new-instance v0, Lorg/javia/arity/Complex;

    iget-wide v1, p1, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v1, v2}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    invoke-direct {v0, p0, p1, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V

    return-object v0
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 5

    const/4 v0, 0x2

    .line 113
    invoke-virtual {p0, v0}, Lorg/javia/arity/Function;->checkArity(I)V

    .line 114
    new-instance v0, Lorg/javia/arity/Complex;

    iget-wide v1, p1, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p2, Lorg/javia/arity/Complex;->im:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide p1, p2, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/javia/arity/Function;->eval(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    invoke-direct {v0, p0, p1, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V

    return-object v0
.end method

.method public eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 6

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 129
    array-length v0, p1

    .line 130
    invoke-virtual {p0, v0}, Lorg/javia/arity/Function;->checkArity(I)V

    .line 131
    new-array v0, v0, [D

    .line 132
    array-length v1, p1

    sub-int/2addr v1, v2

    goto :goto_0

    .line 127
    :pswitch_0
    aget-object v0, p1, v1

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 125
    :pswitch_1
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 123
    :pswitch_2
    invoke-virtual {p0}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    :goto_0
    const-wide/16 v2, 0x0

    if-ltz v1, :cond_1

    .line 133
    aget-object v4, p1, v1

    iget-wide v4, v4, Lorg/javia/arity/Complex;->im:D

    cmpl-double v4, v4, v2

    if-eqz v4, :cond_0

    .line 134
    new-instance p0, Lorg/javia/arity/Complex;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;-><init>(DD)V

    return-object p0

    .line 136
    :cond_0
    aget-object v2, p1, v1

    iget-wide v2, v2, Lorg/javia/arity/Complex;->re:D

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 138
    :cond_1
    new-instance p1, Lorg/javia/arity/Complex;

    invoke-virtual {p0, v0}, Lorg/javia/arity/Function;->eval([D)D

    move-result-wide v0

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/javia/arity/Complex;-><init>(DD)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evalComplex()Lorg/javia/arity/Complex;
    .locals 5

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lorg/javia/arity/Function;->checkArity(I)V

    .line 98
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-virtual {p0}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V

    return-object v0
.end method

.method public getDerivative()Lorg/javia/arity/Function;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/javia/arity/Function;->cachedDerivate:Lorg/javia/arity/Function;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/javia/arity/Derivative;

    invoke-direct {v0, p0}, Lorg/javia/arity/Derivative;-><init>(Lorg/javia/arity/Function;)V

    iput-object v0, p0, Lorg/javia/arity/Function;->cachedDerivate:Lorg/javia/arity/Function;

    .line 44
    :cond_0
    iget-object p0, p0, Lorg/javia/arity/Function;->cachedDerivate:Lorg/javia/arity/Function;

    return-object p0
.end method

.method setDerivative(Lorg/javia/arity/Function;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/javia/arity/Function;->cachedDerivate:Lorg/javia/arity/Function;

    return-void
.end method
