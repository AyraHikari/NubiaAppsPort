.class public Lorg/javia/arity/Constant;
.super Lorg/javia/arity/Function;
.source "Constant.java"


# instance fields
.field private value:Lorg/javia/arity/Complex;


# direct methods
.method public constructor <init>(Lorg/javia/arity/Complex;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    .line 26
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0, p1}, Lorg/javia/arity/Complex;-><init>(Lorg/javia/arity/Complex;)V

    iput-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    return-void
.end method


# virtual methods
.method public arity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public eval()D
    .locals 2

    .line 40
    iget-object p0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->asReal()D

    move-result-wide v0

    return-wide v0
.end method

.method public evalComplex()Lorg/javia/arity/Complex;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
