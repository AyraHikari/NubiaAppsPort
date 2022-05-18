.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;
.super Ledu/emory/mathcs/backport/java/util/AbstractSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySetView"
.end annotation


# instance fields
.field final entrySet:Ljava/util/Set;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;
    .param p2, "entrySet"    # Ljava/util/Set;

    .prologue
    .line 601
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;)Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;

    .prologue
    .line 599
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 608
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 609
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    new-instance v1, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {v1, v2, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 613
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 614
    .local v0, "itr":Ljava/util/Iterator;
    new-instance v1, Ledu/emory/mathcs/backport/java/util/Collections$1;

    invoke-direct {v1, p0, v0}, Ledu/emory/mathcs/backport/java/util/Collections$1;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 604
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 622
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 623
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    sget-object v3, Ledu/emory/mathcs/backport/java/util/Collections;->class$edu$emory$mathcs$backport$java$util$Collections$CheckedMap$EntryView:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "edu.emory.mathcs.backport.java.util.Collections$CheckedMap$EntryView"

    invoke-static {v3}, Ledu/emory/mathcs/backport/java/util/Collections;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ledu/emory/mathcs/backport/java/util/Collections;->class$edu$emory$mathcs$backport$java$util$Collections$CheckedMap$EntryView:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 624
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 625
    new-instance v4, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v4, v5, v3}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/util/Map$Entry;)V

    aput-object v4, v0, v1

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 623
    .end local v1    # "i":I
    :cond_0
    sget-object v3, Ledu/emory/mathcs/backport/java/util/Collections;->class$edu$emory$mathcs$backport$java$util$Collections$CheckedMap$EntryView:Ljava/lang/Class;

    goto :goto_0

    .line 630
    :cond_1
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 631
    .local v2, "newa":[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 632
    new-instance v4, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v4, v5, v3}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/util/Map$Entry;)V

    aput-object v4, v2, v1

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 634
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "newa":[Ljava/lang/Object;
    :cond_3
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 640
    array-length v2, p1

    if-nez v2, :cond_0

    .line 641
    move-object v0, p1

    .line 646
    .local v0, "base":[Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->entrySet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 650
    new-instance v3, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v3, v4, v2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/util/Map$Entry;)V

    aput-object v3, v0, v1

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 644
    .end local v0    # "base":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .restart local v0    # "base":[Ljava/lang/Object;
    goto :goto_0

    .line 652
    .restart local v1    # "i":I
    :cond_1
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_3

    .line 653
    move-object p1, v0

    .line 660
    :cond_2
    :goto_2
    return-object p1

    .line 657
    :cond_3
    array-length v2, v0

    invoke-static {v0, v5, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    array-length v2, v0

    array-length v3, p1

    if-ge v2, v3, :cond_2

    array-length v2, v0

    const/4 v3, 0x0

    aput-object v3, p1, v2

    goto :goto_2
.end method
