.class Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializableLock"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$1;)V
    .locals 0
    .param p1, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$1;

    .prologue
    .line 492
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$SerializableLock;-><init>()V

    return-void
.end method
