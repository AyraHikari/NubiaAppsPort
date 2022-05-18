.class final Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;
.super Lorg/apache/commons/lang/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharMatcher"
.end annotation


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "ch"    # C

    .prologue
    .line 317
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrMatcher;-><init>()V

    .line 318
    iput-char p1, p0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;->ch:C

    .line 319
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I

    .prologue
    .line 331
    iget-char v0, p0, Lorg/apache/commons/lang/text/StrMatcher$CharMatcher;->ch:C

    aget-char v1, p1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
