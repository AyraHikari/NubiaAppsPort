.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$ValueIterator;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 1121
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$ValueIterator;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1122
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1123
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
