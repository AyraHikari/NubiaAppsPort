.class public Lcn/nubia/camera/videomaker/LooperShowView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "LooperShowView"


# instance fields
.field private b:J

.field private c:Lcn/nubia/camera/videomaker/b;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    .line 27
    iput-wide p1, p0, Lcn/nubia/camera/videomaker/LooperShowView;->b:J

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/LooperShowView;->b()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/LooperShowView;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcn/nubia/camera/videomaker/LooperShowView;->b:J

    return-wide v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/LooperShowView;->getWidth()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/LooperShowView;->getHeight()I

    move-result v1

    .line 106
    iget-object v2, p0, Lcn/nubia/camera/videomaker/LooperShowView;->c:Lcn/nubia/camera/videomaker/b;

    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/b;->c()Lcn/nubia/camera/videomaker/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/a;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/a;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/LooperShowView;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/videomaker/LooperShowView;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcn/nubia/camera/videomaker/LooperShowView;->setDrawingCacheEnabled(Z)V

    .line 119
    new-instance v0, Lcn/nubia/camera/videomaker/LooperShowView$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/videomaker/LooperShowView$1;-><init>(Lcn/nubia/camera/videomaker/LooperShowView;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/LooperShowView;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/videomaker/LooperShowView;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/videomaker/LooperShowView;->c:Lcn/nubia/camera/videomaker/b;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/b;->b()V

    return-void
.end method

.method public a(IJ)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcn/nubia/camera/videomaker/LooperShowView;->c:Lcn/nubia/camera/videomaker/b;

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/b;->a()V

    .line 64
    iput-wide p2, p0, Lcn/nubia/camera/videomaker/LooperShowView;->b:J

    .line 65
    iget-object p1, p0, Lcn/nubia/camera/videomaker/LooperShowView;->d:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object p1, p0, Lcn/nubia/camera/videomaker/LooperShowView;->d:Landroid/os/Handler;

    iget-wide v0, p0, Lcn/nubia/camera/videomaker/LooperShowView;->b:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 53
    new-instance v0, Lcn/nubia/camera/videomaker/b;

    invoke-direct {v0, p1}, Lcn/nubia/camera/videomaker/b;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/LooperShowView;->c:Lcn/nubia/camera/videomaker/b;

    .line 54
    new-instance p1, Lcn/nubia/camera/videomaker/c$a;

    invoke-direct {p1, p2, p3}, Lcn/nubia/camera/videomaker/c$a;-><init>(II)V

    invoke-virtual {v0, p1}, Lcn/nubia/camera/videomaker/b;->a(Lcn/nubia/camera/videomaker/c$a;)V

    return-void
.end method

.method public getModel()Lcn/nubia/camera/videomaker/b;
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/videomaker/LooperShowView;->c:Lcn/nubia/camera/videomaker/b;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/LooperShowView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method
