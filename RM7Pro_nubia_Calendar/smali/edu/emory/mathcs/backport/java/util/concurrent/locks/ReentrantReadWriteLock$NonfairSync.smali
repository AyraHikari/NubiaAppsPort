.class Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;
.super Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonfairSync"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;-><init>()V

    return-void
.end method
