.class public Lorg/apache/commons/lang/NotImplementedException;
.super Ljava/lang/UnsupportedOperationException;
.source "NotImplementedException.java"

# interfaces
.implements Lorg/apache/commons/lang/exception/Nestable;


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "Code is not implemented"

.field private static final serialVersionUID:J = -0x5facd7acd6fec428L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private delegate:Lorg/apache/commons/lang/exception/NestableDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "Code is not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 127
    if-nez p1, :cond_0

    const-string v0, "Code is not implemented"

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 128
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Code is not implemented in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    if-nez p1, :cond_0

    const-string p1, "Code is not implemented"

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    if-nez p1, :cond_0

    const-string p1, "Code is not implemented"

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 117
    iput-object p2, p0, Lorg/apache/commons/lang/NotImplementedException;->cause:Ljava/lang/Throwable;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    const-string v0, "Code is not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 104
    iput-object p1, p0, Lorg/apache/commons/lang/NotImplementedException;->cause:Ljava/lang/Throwable;

    .line 105
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-super {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getMessages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getThrowableCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowableCount()I

    move-result v0

    return v0
.end method

.method public getThrowables()[Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public indexOfThrowable(Ljava/lang/Class;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

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
    .line 249
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang/exception/NestableDelegate;->indexOfThrowable(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public final printPartialStackTrace(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 292
    invoke-super {p0, p1}, Ljava/lang/UnsupportedOperationException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 293
    return-void
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace()V

    .line 260
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    .line 271
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/commons/lang/NotImplementedException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 282
    return-void
.end method
