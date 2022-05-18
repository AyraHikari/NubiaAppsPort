.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntryIterator;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 1154
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1156
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 1157
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
