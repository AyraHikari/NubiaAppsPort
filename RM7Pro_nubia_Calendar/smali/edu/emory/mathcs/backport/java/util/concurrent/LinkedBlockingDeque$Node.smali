.class final Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field item:Ljava/lang/Object;

.field next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

.field prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "p"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    .param p3, "n"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->prev:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 69
    iput-object p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 70
    return-void
.end method
