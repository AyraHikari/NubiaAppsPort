.class Lcn/nubia/camera/z/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/z/a/d;-><init>(Lcn/nubia/camera/ad/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/z/a/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/z/a/d;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 77
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    check-cast p1, [B

    .line 79
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 82
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 84
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 85
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v6, 0x2d0

    const/16 v7, 0x438

    if-lt v5, v7, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    if-lt v5, v6, :cond_2

    move v5, v6

    .line 92
    :cond_2
    :goto_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 93
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    iget-object v6, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    array-length v7, p1

    invoke-static {p1, v3, v7, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 95
    invoke-static {p1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result p1

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 99
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v6, v0

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v8, v6, v8

    .line 100
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v3, v8, v10

    if-gtz v3, :cond_3

    const v0, 0x3faaaaab

    goto :goto_1

    :cond_3
    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v6, v8

    .line 102
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v3, v6, v10

    if-gtz v3, :cond_4

    const v0, 0x3fe38e39

    :cond_4
    :goto_1
    if-ge v2, v4, :cond_5

    .line 105
    rem-int/lit16 v3, p1, 0xb4

    if-eqz v3, :cond_6

    :cond_5
    if-le v2, v4, :cond_7

    rem-int/lit16 p1, p1, 0xb4

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_7

    :cond_6
    new-instance p1, Landroid/util/Size;

    int-to-float v2, v5

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-direct {p1, v5, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    :cond_7
    new-instance p1, Landroid/util/Size;

    int-to-float v2, v5

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-direct {p1, v0, v5}, Landroid/util/Size;-><init>(II)V

    .line 107
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 108
    iget-object p1, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p1, v1}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Z)Z

    .line 109
    iget-object p1, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p1}, Lcn/nubia/camera/z/a/d;->b(Lcn/nubia/camera/z/a/d;)V

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p1}, Lcn/nubia/camera/z/a/d;->c(Lcn/nubia/camera/z/a/d;)Ljava/lang/Integer;

    move-result-object p1

    monitor-enter p1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->c(Lcn/nubia/camera/z/a/d;)Ljava/lang/Integer;

    iget-object v0, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->c(Lcn/nubia/camera/z/a/d;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 112
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 135
    :cond_8
    iget-object p1, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p1}, Lcn/nubia/camera/z/a/d;->f(Lcn/nubia/camera/z/a/d;)V

    goto :goto_3

    .line 119
    :cond_9
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0, v1}, Lcn/nubia/camera/z/a/d;->b(Lcn/nubia/camera/z/a/d;Z)Z

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->d(Lcn/nubia/camera/z/a/d;)I

    move-result v5

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->e(Lcn/nubia/camera/z/a/d;)I

    move-result v6

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 123
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 124
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 125
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 126
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 127
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 128
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v2, v0}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {v0}, Lcn/nubia/camera/z/a/d;->b(Lcn/nubia/camera/z/a/d;)V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    .line 115
    :cond_a
    iget-object p1, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p1, v1}, Lcn/nubia/camera/z/a/d;->a(Lcn/nubia/camera/z/a/d;Z)Z

    .line 116
    iget-object p1, p0, Lcn/nubia/camera/z/a/d$1;->a:Lcn/nubia/camera/z/a/d;

    invoke-static {p1}, Lcn/nubia/camera/z/a/d;->b(Lcn/nubia/camera/z/a/d;)V

    :goto_3
    return v1
.end method
