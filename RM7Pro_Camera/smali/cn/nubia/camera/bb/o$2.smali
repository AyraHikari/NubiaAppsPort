.class Lcn/nubia/camera/bb/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/o;->a(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/o;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/o;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "SlomoVideoRecordManagerImpl"

    const-string v1, "onComplete"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v2}, Lcn/nubia/camera/bb/o;->b(Lcn/nubia/camera/bb/o;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 225
    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1, v0}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SlomoVideoRecordManagerImpl"

    const-string v3, "delete uri fail"

    .line 227
    invoke-static {v2, v3, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->c(Lcn/nubia/camera/bb/o;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 230
    :try_start_1
    iget-object v2, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v2}, Lcn/nubia/camera/bb/o;->d(Lcn/nubia/camera/bb/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v2}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v2, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v2}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v2, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v2}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->e(Lcn/nubia/camera/bb/o;)V

    .line 239
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_pending"

    const/4 v3, 0x0

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-object v2, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-virtual {v2}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v4}, Lcn/nubia/camera/bb/o;->f(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/u;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v2, v4, v1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->c(Lcn/nubia/camera/bb/o;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 244
    :try_start_2
    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->d(Lcn/nubia/camera/bb/o;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v0}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    new-instance v0, Lcn/nubia/l/b/g;

    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    .line 250
    invoke-virtual {v1}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    .line 251
    invoke-static {v2}, Lcn/nubia/camera/bb/o;->f(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, v3}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 254
    iget-object v1, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    const-string v0, "SlomoVideoRecordManagerImpl"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bb/o$2;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v2}, Lcn/nubia/camera/bb/o;->f(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 248
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 235
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
