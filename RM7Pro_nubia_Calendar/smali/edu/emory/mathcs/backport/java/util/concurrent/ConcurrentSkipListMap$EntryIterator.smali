.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntryIterator;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    .prologue
    .line 2287
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2289
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntryIterator;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2290
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 2291
    .local v1, "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$EntryIterator;->advance()V

    .line 2292
    new-instance v2, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
