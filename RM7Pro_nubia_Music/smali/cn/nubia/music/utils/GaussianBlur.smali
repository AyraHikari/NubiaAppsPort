.class public Lcn/nubia/music/utils/GaussianBlur;
.super Ljava/lang/Object;
.source "GaussianBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/utils/GaussianBlur$b;,
        Lcn/nubia/music/utils/GaussianBlur$a;,
        Lcn/nubia/music/utils/GaussianBlur$c;
    }
.end annotation


# static fields
.field public static final MAX_RADIUS:I = 0x19

.field public static final MAX_SIZE:I = 0x320

.field public static final MIN_RADIUS:I

.field public static final MIN_SIZE:I


# instance fields
.field private context:Landroid/content/Context;

.field private radius:I

.field private size:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/music/utils/GaussianBlur;->context:Landroid/content/Context;

    .line 37
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcn/nubia/music/utils/GaussianBlur;->radius(I)Lcn/nubia/music/utils/GaussianBlur;

    .line 38
    const/high16 v0, 0x44480000    # 800.0f

    invoke-virtual {p0, v0}, Lcn/nubia/music/utils/GaussianBlur;->size(F)Lcn/nubia/music/utils/GaussianBlur;

    .line 39
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcn/nubia/music/utils/GaussianBlur;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcn/nubia/music/utils/GaussianBlur;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/GaussianBlur;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getRadius()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcn/nubia/music/utils/GaussianBlur;->radius:I

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcn/nubia/music/utils/GaussianBlur;->size:F

    return v0
.end method

.method public put(ILandroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcn/nubia/music/utils/GaussianBlur$c;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/utils/GaussianBlur$c;-><init>(Lcn/nubia/music/utils/GaussianBlur;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/GaussianBlur$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method

.method public put(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcn/nubia/music/utils/GaussianBlur$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/utils/GaussianBlur$a;-><init>(Lcn/nubia/music/utils/GaussianBlur;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/GaussianBlur$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method

.method public put(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcn/nubia/music/utils/GaussianBlur$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/utils/GaussianBlur$a;-><init>(Lcn/nubia/music/utils/GaussianBlur;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/GaussianBlur$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method public radius(I)Lcn/nubia/music/utils/GaussianBlur;
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcn/nubia/music/utils/GaussianBlur;->radius:I

    .line 117
    return-object p0
.end method

.method public render(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/music/utils/GaussianBlur;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/utils/GaussianBlur;->render(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public render(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 57
    .line 58
    iget-object v0, p0, Lcn/nubia/music/utils/GaussianBlur;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->a(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/music/utils/GaussianBlur;->getSize()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcn/nubia/music/utils/GaussianBlur;->scaleDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    sget-object v2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->a:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    .line 66
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->b(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    .line 68
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/support/v8/renderscript/i;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/i;

    move-result-object v4

    .line 69
    invoke-virtual {p0}, Lcn/nubia/music/utils/GaussianBlur;->getRadius()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v8/renderscript/i;->a(F)V

    .line 70
    invoke-virtual {v4, v2}, Landroid/support/v8/renderscript/i;->a(Landroid/support/v8/renderscript/Allocation;)V

    .line 71
    invoke-virtual {v4, v3}, Landroid/support/v8/renderscript/i;->b(Landroid/support/v8/renderscript/Allocation;)V

    .line 72
    invoke-virtual {v3, v1}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/graphics/Bitmap;)V

    .line 74
    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->d()V

    .line 76
    return-object v1
.end method

.method public render(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/utils/GaussianBlur;->render(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaleDown(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/music/utils/GaussianBlur;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/utils/GaussianBlur;->scaleDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaleDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcn/nubia/music/utils/GaussianBlur;->getSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/music/utils/GaussianBlur;->getSize()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 105
    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public size(F)Lcn/nubia/music/utils/GaussianBlur;
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcn/nubia/music/utils/GaussianBlur;->size:F

    .line 132
    return-object p0
.end method
