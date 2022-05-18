.class Lcn/nubia/music/app/task/ThreadPool$2;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/task/ThreadPool;-><init>(IIJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/music/app/task/ThreadPool;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/task/ThreadPool;I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/music/app/task/ThreadPool$2;->b:Lcn/nubia/music/app/task/ThreadPool;

    iput p2, p0, Lcn/nubia/music/app/task/ThreadPool$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    iget v1, p0, Lcn/nubia/music/app/task/ThreadPool$2;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 57
    return-object v0
.end method
