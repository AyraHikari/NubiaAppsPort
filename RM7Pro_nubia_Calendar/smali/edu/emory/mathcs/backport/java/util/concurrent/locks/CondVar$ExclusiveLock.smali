.class interface abstract Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;
.super Ljava/lang/Object;
.source "CondVar.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/Lock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ExclusiveLock"
.end annotation


# virtual methods
.method public abstract getHoldCount()I
.end method

.method public abstract isHeldByCurrentThread()Z
.end method
