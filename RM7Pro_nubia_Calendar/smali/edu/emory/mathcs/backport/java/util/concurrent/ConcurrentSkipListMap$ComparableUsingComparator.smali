.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComparableUsingComparator"
.end annotation


# instance fields
.field final actualKey:Ljava/lang/Object;

.field final cmp:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "cmp"    # Ljava/util/Comparator;

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->actualKey:Ljava/lang/Object;

    .line 610
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->cmp:Ljava/util/Comparator;

    .line 611
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "k2"    # Ljava/lang/Object;

    .prologue
    .line 613
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->actualKey:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
