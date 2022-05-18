.class Lcn/nubia/music/online/api/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/online/api/TaskManager;-><init>(IIJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/music/online/api/TaskManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/online/api/TaskManager;I)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/music/online/api/TaskManager$1;->b:Lcn/nubia/music/online/api/TaskManager;

    iput p2, p0, Lcn/nubia/music/online/api/TaskManager$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    iget v1, p0, Lcn/nubia/music/online/api/TaskManager$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 72
    return-object v0
.end method
