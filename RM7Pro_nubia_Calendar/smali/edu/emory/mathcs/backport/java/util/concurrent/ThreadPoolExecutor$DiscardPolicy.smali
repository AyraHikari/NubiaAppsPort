.class public Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscardPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 1939
    return-void
.end method
