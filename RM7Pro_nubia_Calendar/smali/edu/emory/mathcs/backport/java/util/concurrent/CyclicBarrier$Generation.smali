.class Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generation"
.end annotation


# instance fields
.field broken:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;->broken:Z

    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$1;)V
    .locals 0
    .param p1, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$1;

    .prologue
    .line 116
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;-><init>()V

    return-void
.end method
