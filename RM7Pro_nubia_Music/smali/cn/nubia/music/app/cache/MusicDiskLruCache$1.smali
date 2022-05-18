.class Lcn/nubia/music/app/cache/MusicDiskLruCache$1;
.super Ljava/lang/Object;
.source "MusicDiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/cache/MusicDiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/cache/MusicDiskLruCache;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$000(Lcn/nubia/music/app/cache/MusicDiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    monitor-exit v1

    .line 75
    :goto_0
    return-object v3

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$100(Lcn/nubia/music/app/cache/MusicDiskLruCache;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$200(Lcn/nubia/music/app/cache/MusicDiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$300(Lcn/nubia/music/app/cache/MusicDiskLruCache;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;->a:Lcn/nubia/music/app/cache/MusicDiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->access$402(Lcn/nubia/music/app/cache/MusicDiskLruCache;I)I

    .line 74
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
