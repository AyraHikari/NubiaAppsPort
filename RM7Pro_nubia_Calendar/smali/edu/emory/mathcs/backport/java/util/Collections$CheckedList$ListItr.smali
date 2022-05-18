.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation


# instance fields
.field final itr:Ljava/util/ListIterator;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;Ljava/util/ListIterator;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;
    .param p2, "itr"    # Ljava/util/ListIterator;

    .prologue
    .line 408
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 423
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 418
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList;->typeCheck(Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedList$ListItr;->itr:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 420
    return-void
.end method
