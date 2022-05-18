.class public Lcn/nubia/gallery3d/video/ui/VolumeProgress;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "VolumeProgress.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayLineColor:I

.field private mPlayerVolPro:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mPlayerVolProBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mVolBg_height:I

.field private mVolBg_left:I

.field private mVolBg_top:I

.field private mVolBg_width:I

.field private mVolIcon_height:I

.field private mVolIcon_left:I

.field private mVolIcon_top:I

.field private mVolIcon_width:I

.field private mVolPlayerBg_height:I

.field private mVolPlayerBg_left:I

.field private mVolPlayerBg_top:I

.field private mVolPlayerBg_width:I

.field private mVolPlayerPro_height:I

.field private mVolPlayerPro_left:I

.field private mVolPlayerPro_top:I

.field private mVolPlayerPro_width:I

.field private mVolProBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mVolProIconTex:Lcn/nubia/gallery3d/glrenderer/Texture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_width:I

    .line 36
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_height:I

    .line 37
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_left:I

    .line 38
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_top:I

    .line 39
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_width:I

    .line 40
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_height:I

    .line 41
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_left:I

    .line 42
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_top:I

    .line 43
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_width:I

    .line 44
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_height:I

    .line 45
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_left:I

    .line 46
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_top:I

    .line 47
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_width:I

    .line 48
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_height:I

    .line 49
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_left:I

    .line 50
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_top:I

    .line 53
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->initPixel()V

    .line 55
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->initTex()V

    return-void
.end method

.method private drawSeekBar(Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V
    .locals 12

    .line 112
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolProBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_left:I

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_top:I

    iget v4, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_width:I

    iget v5, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_height:I

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 113
    iget-object v6, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mPlayerVolProBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v8, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_left:I

    iget v9, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_top:I

    iget v10, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_width:I

    iget v11, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_height:I

    move-object v7, p1

    invoke-interface/range {v6 .. v11}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolProIconTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_left:I

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_top:I

    iget v4, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_width:I

    iget v5, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_height:I

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 115
    new-instance v11, Lcn/nubia/gallery3d/glrenderer/GLPaint;

    invoke-direct {v11}, Lcn/nubia/gallery3d/glrenderer/GLPaint;-><init>()V

    .line 116
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mPlayLineColor:I

    invoke-virtual {v11, v0}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setColor(I)V

    .line 117
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_width:I

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    .line 118
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_top:I

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_height:I

    mul-int/2addr p2, v1

    div-int/lit8 p2, p2, 0xf

    sub-int p2, v0, p2

    .line 119
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_left:I

    int-to-float v7, v1

    int-to-float v8, v0

    int-to-float v9, v1

    int-to-float v10, p2

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    return-void
.end method

.method private initPixel()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_width:I

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_height:I

    .line 70
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_width:I

    .line 72
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_height:I

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_width:I

    .line 75
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_height:I

    .line 76
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_width:I

    .line 78
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_height:I

    .line 79
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mPlayLineColor:I

    return-void
.end method

.method private initTex()V
    .locals 3

    .line 60
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    const v2, 0x7f0801e1

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolProBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 61
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    const v2, 0x7f0801e2

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolProIconTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 62
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    const v2, 0x7f0801e4

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mPlayerVolProBgTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 63
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    const v2, 0x7f0801e3

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mPlayerVolPro:Lcn/nubia/gallery3d/glrenderer/Texture;

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V
    .locals 4

    const/16 v0, 0xf

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 86
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 88
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 89
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 90
    iget-object v2, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    if-le v0, v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-le v0, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_3

    :cond_4
    if-le v0, v1, :cond_5

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    if-le v0, v1, :cond_6

    goto :goto_1

    .line 100
    :cond_6
    :goto_3
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_width:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07024c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_left:I

    .line 101
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_height:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_top:I

    .line 102
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_width:I

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_width:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_left:I

    .line 103
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_top:I

    .line 104
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_left:I

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolBg_width:I

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_left:I

    .line 105
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07024f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolIcon_top:I

    .line 106
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_left:I

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_width:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_left:I

    .line 107
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_top:I

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerBg_height:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->mVolPlayerPro_top:I

    .line 108
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->drawSeekBar(Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V

    return-void
.end method
