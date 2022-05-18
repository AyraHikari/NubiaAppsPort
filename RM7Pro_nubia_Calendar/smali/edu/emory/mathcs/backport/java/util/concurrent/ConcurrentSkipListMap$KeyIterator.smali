.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeyIterator;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    .prologue
    .line 2279
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeyIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2281
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeyIterator;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2282
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$KeyIterator;->advance()V

    .line 2283
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method
