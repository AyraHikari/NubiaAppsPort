.class public Lorg/apache/commons/lang/exception/CloneFailedException;
.super Lorg/apache/commons/lang/exception/NestableRuntimeException;
.source "CloneFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1329157L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method
