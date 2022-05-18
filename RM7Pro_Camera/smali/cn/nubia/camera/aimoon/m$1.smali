.class Lcn/nubia/camera/aimoon/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aimoon/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/m;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 12

    .line 160
    iget-object p2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {p2}, Lcn/nubia/camera/aimoon/m;->a(Lcn/nubia/camera/aimoon/m;)I

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "TeleEvController"

    const-string p2, "mOnPreviewAvailableListener: image is null"

    .line 163
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_0
    sget-boolean p2, Lcn/nubia/camera/aimoon/l;->d:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {p2}, Lcn/nubia/camera/aimoon/m;->b(Lcn/nubia/camera/aimoon/m;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p2

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p2, v0, :cond_3

    .line 168
    iget-object p2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {p2}, Lcn/nubia/camera/aimoon/m;->c(Lcn/nubia/camera/aimoon/m;)I

    move-result p2

    rem-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_3

    .line 169
    iget-object p2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {p2}, Lcn/nubia/camera/aimoon/m;->d(Lcn/nubia/camera/aimoon/m;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/m;->e(Lcn/nubia/camera/aimoon/m;)[I

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/m;->f(Lcn/nubia/camera/aimoon/m;)J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/m;->e(Lcn/nubia/camera/aimoon/m;)[I

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/m;->g(Lcn/nubia/camera/aimoon/m;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/m;->e(Lcn/nubia/camera/aimoon/m;)[I

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/m;->h(Lcn/nubia/camera/aimoon/m;)I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 174
    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v8

    .line 175
    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v9

    .line 178
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 179
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v10

    .line 180
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 181
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move v0, v2

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 184
    invoke-static {}, Lcn/nubia/camera/aimoon/m;->d()[I

    move-result-object v1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {}, Lcn/nubia/camera/aimoon/m;->d()[I

    move-result-object v6

    iget-object v0, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/m;->e(Lcn/nubia/camera/aimoon/m;)[I

    move-result-object v7

    sget v11, Lcn/nubia/camera/aimoon/l;->b:F

    invoke-static/range {v5 .. v11}, Lcom/zte/moon/MoonApi;->computeMoonEv(Ljava/nio/ByteBuffer;[I[IIIIF)V

    .line 187
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "[MoonDebug] TeleEvController"

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "teleProcessPreview bitmap: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v5}, Lcn/nubia/camera/aimoon/m;->e(Lcn/nubia/camera/aimoon/m;)[I

    move-result-object v5

    aget v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v2}, Lcn/nubia/camera/aimoon/m;->e(Lcn/nubia/camera/aimoon/m;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v2}, Lcn/nubia/camera/aimoon/m;->e(Lcn/nubia/camera/aimoon/m;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; current_expo_time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    .line 189
    invoke-static {v2}, Lcn/nubia/camera/aimoon/m;->f(Lcn/nubia/camera/aimoon/m;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; current_iso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v2}, Lcn/nubia/camera/aimoon/m;->g(Lcn/nubia/camera/aimoon/m;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; current_boost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/m$1;->a:Lcn/nubia/camera/aimoon/m;

    invoke-static {v2}, Lcn/nubia/camera/aimoon/m;->h(Lcn/nubia/camera/aimoon/m;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 195
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 157
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/aimoon/m$1;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
