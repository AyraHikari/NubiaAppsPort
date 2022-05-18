.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ValueIterator;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    .prologue
    .line 2271
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ValueIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ValueIterator;->nextValue:Ljava/lang/Object;

    .line 2274
    .local v0, "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ValueIterator;->advance()V

    .line 2275
    return-object v0
.end method
