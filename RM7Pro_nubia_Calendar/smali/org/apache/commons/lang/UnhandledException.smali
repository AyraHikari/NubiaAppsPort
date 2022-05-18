.class public Lorg/apache/commons/lang/UnhandledException;
.super Lorg/apache/commons/lang/exception/NestableRuntimeException;
.source "UnhandledException.java"


# static fields
.field private static final serialVersionUID:J = 0x196cee7c03f63cd8L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
