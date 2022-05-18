.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapValueIterator"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    .prologue
    .line 3107
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3109
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;->nextValue:Ljava/lang/Object;

    .line 3110
    .local v0, "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;->advance()V

    .line 3111
    return-object v0
.end method
