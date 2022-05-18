.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedSet;
.super Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedSet"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 0
    .param p1, "set"    # Ljava/util/Set;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    .line 434
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 437
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSet;->coll:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSet;->coll:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
