.class public Lorg/apache/commons/lang/SerializationException;
.super Lorg/apache/commons/lang/exception/NestableRuntimeException;
.source "SerializationException.java"


# static fields
.field private static final serialVersionUID:J = 0x37e9f9395ae00706L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method
