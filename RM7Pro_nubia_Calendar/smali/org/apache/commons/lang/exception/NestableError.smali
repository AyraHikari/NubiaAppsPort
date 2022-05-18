.class public Lorg/apache/commons/lang/exception/NestableError;
.super Ljava/lang/Error;
.source "NestableError.java"

# interfaces
.implements Lorg/apache/commons/lang/exception/Nestable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected delegate:Lorg/apache/commons/lang/exception/NestableDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    .line 91
    iput-object p2, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    .line 78
    iput-object p1, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    .line 79
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getMessages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getThrowableCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowableCount()I

    move-result v0

    return v0
.end method

.method public getThrowables()[Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public indexOfThrowable(Ljava/lang/Class;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/lang/exception/NestableDelegate;->indexOfThrowable(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public indexOfThrowable(Ljava/lang/Class;I)I
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "fromIndex"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang/exception/NestableDelegate;->indexOfThrowable(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public final printPartialStackTrace(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 195
    invoke-super {p0, p1}, Ljava/lang/Error;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 196
    return-void
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace()V

    .line 175
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    .line 182
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableError;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 189
    return-void
.end method
