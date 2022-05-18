.class Ledu/emory/mathcs/backport/java/util/Collections$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final this$1:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;

.field private final val$itr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;
    .param p2, "val$itr"    # Ljava/util/Iterator;

    .prologue
    .line 617
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$1;->this$1:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/Collections$1;->val$itr:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$1;->val$itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 616
    new-instance v1, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$1;->this$1:Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;->access$000(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;)Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;

    move-result-object v2

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$1;->val$itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v2, v0}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$1;->val$itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
