.class Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseComparator"
.end annotation


# instance fields
.field final cmp:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .param p1, "cmp"    # Ljava/util/Comparator;

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;->cmp:Ljava/util/Comparator;

    .line 786
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 788
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;->cmp:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 791
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;->cmp:Ljava/util/Comparator;

    check-cast p1, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;->cmp:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$ReverseComparator;->cmp:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/high16 v1, 0x10000000

    xor-int/2addr v0, v1

    return v0
.end method
