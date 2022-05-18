.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;
.super Ledu/emory/mathcs/backport/java/util/AbstractSet;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 1194
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1216
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1199
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 1201
    check-cast v0, Ljava/util/Map$Entry;

    .line 1202
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1203
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1196
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntryIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntryIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1206
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 1207
    const/4 v1, 0x0

    .line 1209
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1208
    check-cast v0, Ljava/util/Map$Entry;

    .line 1209
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
