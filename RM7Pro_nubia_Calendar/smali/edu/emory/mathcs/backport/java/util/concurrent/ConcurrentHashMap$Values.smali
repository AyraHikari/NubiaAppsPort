.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;
.super Ledu/emory/mathcs/backport/java/util/AbstractCollection;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 1179
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1191
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1187
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1181
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$ValueIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$Values;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
