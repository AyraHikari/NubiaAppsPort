.class Ledu/emory/mathcs/backport/java/util/AbstractMap$1;
.super Ledu/emory/mathcs/backport/java/util/AbstractSet;
.source "AbstractMap.java"


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/AbstractMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/AbstractMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/AbstractMap;

    .prologue
    .line 37
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$1;->this$0:Ledu/emory/mathcs/backport/java/util/AbstractMap;

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    return-void
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/AbstractMap$1;)Ledu/emory/mathcs/backport/java/util/AbstractMap;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/AbstractMap$1;

    .prologue
    .line 37
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$1;->this$0:Ledu/emory/mathcs/backport/java/util/AbstractMap;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$1;->this$0:Ledu/emory/mathcs/backport/java/util/AbstractMap;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ledu/emory/mathcs/backport/java/util/AbstractMap$2;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/AbstractMap$2;-><init>(Ledu/emory/mathcs/backport/java/util/AbstractMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$1;->this$0:Ledu/emory/mathcs/backport/java/util/AbstractMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method
