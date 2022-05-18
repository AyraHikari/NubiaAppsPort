.class public Ledu/emory/mathcs/backport/java/util/concurrent/CancellationException;
.super Ljava/lang/IllegalStateException;
.source "CancellationException.java"


# static fields
.field private static final serialVersionUID:J = -0x7fb4af9837b0d7e7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
