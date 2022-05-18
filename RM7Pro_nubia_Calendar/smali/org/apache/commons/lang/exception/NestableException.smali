.class public Lorg/apache/commons/lang/exception/NestableException;
.super Ljava/lang/Exception;
.source "NestableException.java"

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
    .line 116
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 103
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    .line 151
    iput-object p2, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 103
    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    .line 138
    iput-object p1, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    .line 139
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getMessages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getThrowableCount()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowableCount()I

    move-result v0

    return v0
.end method

.method public getThrowables()[Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public indexOfThrowable(Ljava/lang/Class;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

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
    .line 227
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/lang/exception/NestableDelegate;->indexOfThrowable(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public final printPartialStackTrace(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 255
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 256
    return-void
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace()V

    .line 235
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    .line 242
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 249
    return-void
.end method
