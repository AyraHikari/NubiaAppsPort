.class public Lcom/zupgrade/sdk/util/Bsdiff;
.super Ljava/lang/Object;
.source "Bsdiff.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "update"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
