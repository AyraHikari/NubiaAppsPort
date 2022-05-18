.class Ledu/emory/mathcs/backport/java/util/AbstractMap$2;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final itr:Ljava/util/Iterator;

.field private final this$1:Ledu/emory/mathcs/backport/java/util/AbstractMap$1;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/AbstractMap$1;)V
    .locals 1
    .param p1, "this$1"    # Ledu/emory/mathcs/backport/java/util/AbstractMap$1;

    .prologue
    .line 42
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$2;->this$1:Ledu/emory/mathcs/backport/java/util/AbstractMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$2;->this$1:Ledu/emory/mathcs/backport/java/util/AbstractMap$1;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$1;->access$000(Ledu/emory/mathcs/backport/java/util/AbstractMap$1;)Ledu/emory/mathcs/backport/java/util/AbstractMap;

    move-result-object v0

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$2;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$2;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$2;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$2;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
