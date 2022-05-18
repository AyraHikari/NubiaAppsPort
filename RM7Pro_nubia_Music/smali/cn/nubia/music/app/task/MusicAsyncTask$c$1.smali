.class Lcn/nubia/music/app/task/MusicAsyncTask$c$1;
.super Ljava/lang/Object;
.source "MusicAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/task/MusicAsyncTask$c;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcn/nubia/music/app/task/MusicAsyncTask$c;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/task/MusicAsyncTask$c;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcn/nubia/music/app/task/MusicAsyncTask$c$1;->b:Lcn/nubia/music/app/task/MusicAsyncTask$c;

    iput-object p2, p0, Lcn/nubia/music/app/task/MusicAsyncTask$c$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask$c$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lcn/nubia/music/app/task/MusicAsyncTask$c$1;->b:Lcn/nubia/music/app/task/MusicAsyncTask$c;

    invoke-virtual {v0}, Lcn/nubia/music/app/task/MusicAsyncTask$c;->a()V

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/music/app/task/MusicAsyncTask$c$1;->b:Lcn/nubia/music/app/task/MusicAsyncTask$c;

    invoke-virtual {v1}, Lcn/nubia/music/app/task/MusicAsyncTask$c;->a()V

    throw v0
.end method
