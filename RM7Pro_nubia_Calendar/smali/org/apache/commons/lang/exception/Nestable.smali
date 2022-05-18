.class public interface abstract Lorg/apache/commons/lang/exception/Nestable;
.super Ljava/lang/Object;
.source "Nestable.java"


# virtual methods
.method public abstract getCause()Ljava/lang/Throwable;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getMessage(I)Ljava/lang/String;
.end method

.method public abstract getMessages()[Ljava/lang/String;
.end method

.method public abstract getThrowable(I)Ljava/lang/Throwable;
.end method

.method public abstract getThrowableCount()I
.end method

.method public abstract getThrowables()[Ljava/lang/Throwable;
.end method

.method public abstract indexOfThrowable(Ljava/lang/Class;)I
.end method

.method public abstract indexOfThrowable(Ljava/lang/Class;I)I
.end method

.method public abstract printPartialStackTrace(Ljava/io/PrintWriter;)V
.end method

.method public abstract printStackTrace(Ljava/io/PrintStream;)V
.end method

.method public abstract printStackTrace(Ljava/io/PrintWriter;)V
.end method
