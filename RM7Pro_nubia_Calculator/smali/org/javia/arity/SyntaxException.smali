.class public Lorg/javia/arity/SyntaxException;
.super Ljava/lang/Exception;
.source "SyntaxException.java"


# instance fields
.field public expression:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/javia/arity/SyntaxException;->message:Ljava/lang/String;

    .line 47
    iput p2, p0, Lorg/javia/arity/SyntaxException;->position:I

    .line 48
    invoke-virtual {p0}, Lorg/javia/arity/SyntaxException;->fillInStackTrace()Ljava/lang/Throwable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyntaxException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/javia/arity/SyntaxException;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/javia/arity/SyntaxException;->expression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/javia/arity/SyntaxException;->position:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
