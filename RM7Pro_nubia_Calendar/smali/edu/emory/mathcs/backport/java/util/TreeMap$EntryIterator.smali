.class Ledu/emory/mathcs/backport/java/util/TreeMap$EntryIterator;
.super Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIterator"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p2, "cursor"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 727
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 728
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/TreeMap$EntryIterator;->nextEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    return-object v0
.end method
