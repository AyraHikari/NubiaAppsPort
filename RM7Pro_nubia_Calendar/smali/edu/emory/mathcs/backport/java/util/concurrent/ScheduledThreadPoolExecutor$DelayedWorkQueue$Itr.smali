.class Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;
.super Ljava/lang/Object;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;

.field cursor:I

.field lastRet:I

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    .line 1151
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    .line 1153
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/lang/Object;

    .line 1154
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1157
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1161
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1162
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1163
    :cond_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    .line 1164
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/lang/Object;

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1168
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    if-gez v0, :cond_0

    .line 1169
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1170
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/lang/Object;

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->remove(Ljava/lang/Object;)Z

    .line 1171
    const/4 v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    .line 1172
    return-void
.end method
