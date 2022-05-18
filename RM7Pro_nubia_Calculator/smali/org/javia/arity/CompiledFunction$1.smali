.class Lorg/javia/arity/CompiledFunction$1;
.super Lorg/javia/arity/Function;
.source "CompiledFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/javia/arity/CompiledFunction;->makeOpFunction(I)Lorg/javia/arity/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public arity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public eval(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    cmpg-double p0, p1, v0

    if-gez p0, :cond_1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :cond_1
    :goto_0
    return-wide v0
.end method
