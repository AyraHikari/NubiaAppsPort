.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapKeyIterator"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 3115
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3117
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3118
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->advance()V

    .line 3119
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method
