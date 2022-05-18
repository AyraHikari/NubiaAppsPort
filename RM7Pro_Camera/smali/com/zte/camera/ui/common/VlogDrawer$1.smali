.class Lcom/zte/camera/ui/common/VlogDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/ui/common/VlogDrawer;->b(Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/ui/common/VlogDrawer$a$a;

.field final synthetic b:I

.field final synthetic c:Lcom/zte/camera/ui/common/VlogDrawer;


# direct methods
.method constructor <init>(Lcom/zte/camera/ui/common/VlogDrawer;Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    iput-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->a:Lcom/zte/camera/ui/common/VlogDrawer$a$a;

    iput p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V
    .locals 1

    .line 290
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->x:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;Landroid/media/MediaPlayer;)V
    .locals 3

    .line 284
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-nez p2, :cond_0

    .line 285
    invoke-static {}, Lcom/zte/camera/ui/common/VlogDrawer;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnPrepared mediaplayer is null"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 289
    iget-object p2, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->x:Landroid/widget/ImageView;

    new-instance v0, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$1$n0ASNaQk-RpDv2JwEuBbttURy4c;

    invoke-direct {v0, p1}, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$1$n0ASNaQk-RpDv2JwEuBbttURy4c;-><init>(Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$GLV4zS4TqEwlAvZxaypHkbOMcn4(Lcom/zte/camera/ui/common/VlogDrawer$1;Lcom/zte/camera/ui/common/VlogDrawer$a$a;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/common/VlogDrawer$1;->a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic lambda$n0ASNaQk-RpDv2JwEuBbttURy4c(Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V
    .locals 0

    invoke-static {p0}, Lcom/zte/camera/ui/common/VlogDrawer$1;->a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 265
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->a:Lcom/zte/camera/ui/common/VlogDrawer$a$a;

    iget-object p2, p2, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 266
    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p3}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;)I

    move-result p3

    if-eq p3, p2, :cond_0

    return-void

    .line 269
    :cond_0
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 270
    iget p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->b:I

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->d(I)I

    move-result p1

    .line 271
    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p3}, Lcom/zte/camera/ui/common/VlogDrawer;->b(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 272
    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->b(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 275
    :try_start_0
    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p3}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-nez p3, :cond_1

    .line 276
    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {p3, v0}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 278
    :cond_1
    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p3}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->reset()V

    .line 279
    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p3}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 280
    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p3}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 281
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 282
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 283
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p2

    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->a:Lcom/zte/camera/ui/common/VlogDrawer$a$a;

    new-instance v0, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$1$GLV4zS4TqEwlAvZxaypHkbOMcn4;

    invoke-direct {v0, p0, p3}, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$1$GLV4zS4TqEwlAvZxaypHkbOMcn4;-><init>(Lcom/zte/camera/ui/common/VlogDrawer$1;Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 293
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 296
    :try_start_1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 300
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :goto_0
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 302
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    :cond_2
    :goto_1
    throw p2

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 300
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 302
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 314
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$1;->c:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->i(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
