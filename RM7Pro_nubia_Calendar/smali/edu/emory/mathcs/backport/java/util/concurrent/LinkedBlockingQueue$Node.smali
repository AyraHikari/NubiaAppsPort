.class Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field volatile item:Ljava/lang/Object;

.field next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    return-void
.end method
