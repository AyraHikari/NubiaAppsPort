.class Lorg/javia/arity/EvalCase;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static final ERR:D = -2.0

.field static final FUN:D = -3.0


# instance fields
.field cResult:Lorg/javia/arity/Complex;

.field expr:Ljava/lang/String;

.field result:D


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    .line 28
    iput-wide p2, p0, Lorg/javia/arity/EvalCase;->result:D

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/javia/arity/EvalCase;->cResult:Lorg/javia/arity/Complex;

    return-void
.end method
