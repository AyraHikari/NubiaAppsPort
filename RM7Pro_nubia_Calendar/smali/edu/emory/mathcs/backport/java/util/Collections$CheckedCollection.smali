.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;
    }
.end annotation


# instance fields
.field final coll:Ljava/util/Collection;

.field transient emptyArr:[Ljava/lang/Object;

.field final type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 294
    :cond_1
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    .line 295
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    .line 296
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->typeCheck(Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 326
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->getEmptyArr()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    .local v0, "checked":[Ljava/lang/Object;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    .line 328
    .end local v0    # "checked":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/ArrayStoreException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Attempted to insert an element of invalid type  to a collection of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 311
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 313
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected getEmptyArr()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->emptyArr:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->emptyArr:[Ljava/lang/Object;

    .line 342
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->emptyArr:[Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 337
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 312
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 314
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 315
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 310
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->coll:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method typeCheck(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 299
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Attempted to insert an element of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to a collection of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    return-void
.end method
