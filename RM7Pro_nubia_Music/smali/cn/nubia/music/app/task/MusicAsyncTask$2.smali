.class Lcn/nubia/music/app/task/MusicAsyncTask$2;
.super Lcn/nubia/music/app/task/MusicAsyncTask$d;
.source "MusicAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/task/MusicAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/music/app/task/MusicAsyncTask$d",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/task/MusicAsyncTask;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/task/MusicAsyncTask;)V
    .locals 1

    .prologue
    .line 73
    iput-object p1, p0, Lcn/nubia/music/app/task/MusicAsyncTask$2;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/app/task/MusicAsyncTask$d;-><init>(Lcn/nubia/music/app/task/MusicAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask$2;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    invoke-static {v0}, Lcn/nubia/music/app/task/MusicAsyncTask;->access$300(Lcn/nubia/music/app/task/MusicAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 79
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask$2;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    iget-object v1, p0, Lcn/nubia/music/app/task/MusicAsyncTask$2;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    iget-object v2, p0, Lcn/nubia/music/app/task/MusicAsyncTask$2;->b:[Ljava/lang/Object;

    .line 80
    invoke-virtual {v1, v2}, Lcn/nubia/music/app/task/MusicAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcn/nubia/music/app/task/MusicAsyncTask;->access$400(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
