.class Lcn/nubia/music/app/task/MusicAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/task/MusicAsyncTask;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcn/nubia/music/app/task/MusicAsyncTask$3;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask$3;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    invoke-virtual {p0}, Lcn/nubia/music/app/task/MusicAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/app/task/MusicAsyncTask;->access$500(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v0, "InterruptedException"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :catch_2
    move-exception v0

    .line 93
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask$3;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/task/MusicAsyncTask;->access$500(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/lang/Object;)V

    goto :goto_0
.end method
