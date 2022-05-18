.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryView"
.end annotation


# instance fields
.field final entry:Ljava/util/Map$Entry;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .prologue
    .line 666
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->entry:Ljava/util/Map$Entry;

    .line 668
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 673
    if-ne p1, p0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v1

    .line 674
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 675
    check-cast v0, Ljava/util/Map$Entry;

    .line 676
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ledu/emory/mathcs/backport/java/util/Collections;->access$100(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ledu/emory/mathcs/backport/java/util/Collections;->access$100(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->entry:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 680
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->access$200(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/lang/Object;)V

    .line 681
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
