.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;
.super Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    .line 360
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    .line 361
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 376
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 378
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .prologue
    .line 383
    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->getEmptyArr()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    .local v0, "checked":[Ljava/lang/Object;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v2

    return v2

    .line 385
    .end local v0    # "checked":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/ArrayStoreException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Attempted to insert an element of invalid type  to a list of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 368
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

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

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 362
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 364
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 365
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 403
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 363
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 371
    invoke-virtual {p0, p2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 395
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method
