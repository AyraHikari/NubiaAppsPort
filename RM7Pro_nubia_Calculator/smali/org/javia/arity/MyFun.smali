.class Lorg/javia/arity/MyFun;
.super Lorg/javia/arity/Function;
.source "UnitTest.java"


# instance fields
.field f:Lorg/javia/arity/Function;

.field symbols:Lorg/javia/arity/Symbols;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 654
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    .line 651
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/MyFun;->symbols:Lorg/javia/arity/Symbols;

    .line 656
    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/MyFun;->symbols:Lorg/javia/arity/Symbols;

    const-string v1, "1-x"

    invoke-virtual {v0, v1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/javia/arity/MyFun;->f:Lorg/javia/arity/Function;
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 658
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public arity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public eval(D)D
    .locals 0

    .line 663
    iget-object p0, p0, Lorg/javia/arity/MyFun;->f:Lorg/javia/arity/Function;

    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide p0

    return-wide p0
.end method
