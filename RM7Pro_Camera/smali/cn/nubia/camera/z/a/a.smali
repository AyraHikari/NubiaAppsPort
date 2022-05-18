.class Lcn/nubia/camera/z/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcn/nubia/camera/z/a/b;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(IILcn/nubia/camera/z/a/b;Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcn/nubia/camera/z/a/a;->a:I

    .line 24
    iput p2, p0, Lcn/nubia/camera/z/a/a;->b:I

    .line 25
    iput-object p3, p0, Lcn/nubia/camera/z/a/a;->c:Lcn/nubia/camera/z/a/b;

    .line 26
    iput-object p4, p0, Lcn/nubia/camera/z/a/a;->d:Ljava/lang/String;

    .line 27
    iput p5, p0, Lcn/nubia/camera/z/a/a;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/a/a;->c:Lcn/nubia/camera/z/a/b;

    iget v1, p0, Lcn/nubia/camera/z/a/a;->a:I

    iget v2, p0, Lcn/nubia/camera/z/a/a;->b:I

    iget-object v3, p0, Lcn/nubia/camera/z/a/a;->d:Ljava/lang/String;

    iget v4, p0, Lcn/nubia/camera/z/a/a;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/camera/z/a/b;->a(IILjava/lang/String;I)Z

    .line 35
    iget-object v0, p0, Lcn/nubia/camera/z/a/a;->c:Lcn/nubia/camera/z/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/z/a/b;->c()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 39
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 40
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    .line 42
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v9

    int-to-float v6, v10

    move-object v2, v8

    .line 43
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_3

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v9, :cond_1

    sub-int/2addr v9, v2

    .line 51
    div-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    if-le v10, v3, :cond_2

    sub-int/2addr v10, v3

    .line 54
    div-int/lit8 v4, v10, 0x2

    :cond_2
    int-to-float v2, v9

    int-to-float v3, v4

    .line 57
    invoke-virtual {v8, p1, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v8, :cond_4

    .line 67
    invoke-virtual {v0, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v8

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v8

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v8

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 64
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    if-eqz v1, :cond_4

    goto :goto_3

    :catch_3
    move-exception p1

    .line 62
    :goto_2
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    .line 67
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 69
    :cond_4
    :goto_4
    iget-object p1, p0, Lcn/nubia/camera/z/a/a;->c:Lcn/nubia/camera/z/a/b;

    invoke-virtual {p1}, Lcn/nubia/camera/z/a/b;->a()V

    return-void

    :goto_5
    if-eqz v1, :cond_5

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 69
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/z/a/a;->c:Lcn/nubia/camera/z/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/z/a/b;->a()V

    .line 70
    throw p1
.end method
