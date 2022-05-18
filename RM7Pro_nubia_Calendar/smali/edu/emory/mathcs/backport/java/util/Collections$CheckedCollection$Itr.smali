.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Itr"
.end annotation


# instance fields
.field final itr:Ljava/util/Iterator;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;
    .param p2, "itr"    # Ljava/util/Iterator;

    .prologue
    .line 347
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedCollection$Itr;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
