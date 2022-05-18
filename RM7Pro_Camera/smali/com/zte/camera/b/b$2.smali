.class Lcom/zte/camera/b/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/b/b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/b/b;


# direct methods
.method constructor <init>(Lcom/zte/camera/b/b;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->e(Lcom/zte/camera/b/b;)Lcom/zte/camera/ui/common/RotateViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static synthetic a(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method private synthetic b(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 354
    iget-object p1, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-static {p1}, Lcom/zte/camera/b/b;->d(Lcom/zte/camera/b/b;)V

    .line 355
    iget-object p1, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-static {p1}, Lcom/zte/camera/b/b;->e(Lcom/zte/camera/b/b;)Lcom/zte/camera/ui/common/RotateViewGroup;

    move-result-object p1

    new-instance v0, Lcom/zte/camera/b/-$$Lambda$b$2$KBN_k1Tjka8TXf3VsTrr_ztTK6o;

    invoke-direct {v0, p0}, Lcom/zte/camera/b/-$$Lambda$b$2$KBN_k1Tjka8TXf3VsTrr_ztTK6o;-><init>(Lcom/zte/camera/b/b$2;)V

    const-wide/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/camera/ui/common/RotateViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$CEyPow6zZjuf7dKejyThoZJAq-s(Lcom/zte/camera/b/b$2;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b$2;->b(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic lambda$KBN_k1Tjka8TXf3VsTrr_ztTK6o(Lcom/zte/camera/b/b$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b$2;->a()V

    return-void
.end method

.method public static synthetic lambda$vC3lnjwUFHRT-R5tiAvHSxVpHiU(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/zte/camera/b/b$2;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 349
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 350
    iget-object p1, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-static {p1}, Lcom/zte/camera/b/b;->c(Lcom/zte/camera/b/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 351
    iget-object p1, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-static {p1}, Lcom/zte/camera/b/b;->c(Lcom/zte/camera/b/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 352
    iget-object p1, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-static {p1}, Lcom/zte/camera/b/b;->c(Lcom/zte/camera/b/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 353
    iget-object p1, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-static {p1}, Lcom/zte/camera/b/b;->c(Lcom/zte/camera/b/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance p2, Lcom/zte/camera/b/-$$Lambda$b$2$CEyPow6zZjuf7dKejyThoZJAq-s;

    invoke-direct {p2, p0}, Lcom/zte/camera/b/-$$Lambda$b$2$CEyPow6zZjuf7dKejyThoZJAq-s;-><init>(Lcom/zte/camera/b/b$2;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 357
    iget-object p1, p0, Lcom/zte/camera/b/b$2;->a:Lcom/zte/camera/b/b;

    invoke-static {p1}, Lcom/zte/camera/b/b;->c(Lcom/zte/camera/b/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    sget-object p2, Lcom/zte/camera/b/-$$Lambda$b$2$vC3lnjwUFHRT-R5tiAvHSxVpHiU;->INSTANCE:Lcom/zte/camera/b/-$$Lambda$b$2$vC3lnjwUFHRT-R5tiAvHSxVpHiU;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

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
