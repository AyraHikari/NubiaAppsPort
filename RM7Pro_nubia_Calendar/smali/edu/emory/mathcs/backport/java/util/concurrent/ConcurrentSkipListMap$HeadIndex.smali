.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeadIndex"
.end annotation


# instance fields
.field final level:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;I)V
    .locals 0
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    .param p2, "down"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .param p3, "right"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;
    .param p4, "level"    # I

    .prologue
    .line 583
    invoke-direct {p0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 584
    iput p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 585
    return-void
.end method
