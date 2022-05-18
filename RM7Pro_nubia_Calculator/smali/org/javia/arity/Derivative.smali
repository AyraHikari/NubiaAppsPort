.class public Lorg/javia/arity/Derivative;
.super Lorg/javia/arity/Function;
.source "Derivative.java"


# static fields
.field private static final H:D = 1.0E-12

.field private static final INVH:D = 1.0E12


# instance fields
.field private c:Lorg/javia/arity/Complex;

.field private final f:Lorg/javia/arity/Function;


# direct methods
.method public constructor <init>(Lorg/javia/arity/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    .line 6
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0}, Lorg/javia/arity/Complex;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Derivative;->c:Lorg/javia/arity/Complex;

    .line 11
    iput-object p1, p0, Lorg/javia/arity/Derivative;->f:Lorg/javia/arity/Function;

    const/4 p0, 0x1

    .line 12
    invoke-virtual {p1, p0}, Lorg/javia/arity/Function;->checkArity(I)V

    return-void
.end method


# virtual methods
.method public arity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public eval(D)D
    .locals 3

    .line 16
    iget-object v0, p0, Lorg/javia/arity/Derivative;->f:Lorg/javia/arity/Function;

    iget-object p0, p0, Lorg/javia/arity/Derivative;->c:Lorg/javia/arity/Complex;

    const-wide v1, 0x3d719799812dea11L    # 1.0E-12

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object p0

    iget-wide p0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide v0, 0x426d1a94a2000000L    # 1.0E12

    mul-double/2addr p0, v0

    return-wide p0
.end method
