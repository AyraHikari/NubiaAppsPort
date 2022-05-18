.class public Lcn/nubia/gallery3d/ui/StaticBackground;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "StaticBackground.java"


# instance fields
.field private mBackground:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mIsLandscape:Z

.field private mLandscapeResource:I

.field private mPortraitResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mColor:I

    .line 35
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setOrientation(Z)V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 45
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    .line 46
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mBackground:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 47
    :cond_1
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mLandscapeResource:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mPortraitResource:I

    :goto_0
    invoke-direct {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mBackground:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    .line 49
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/StaticBackground;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/StaticBackground;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/StaticBackground;->getHeight()I

    move-result p2

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/StaticBackground;->setOrientation(Z)V

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 7

    .line 68
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/StaticBackground;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/StaticBackground;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mColor:I

    return-void
.end method

.method public setImage(II)V
    .locals 3

    .line 53
    iput p1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mLandscapeResource:I

    .line 54
    iput p2, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mPortraitResource:I

    .line 55
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mBackground:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 56
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    invoke-direct {v0, v1, p1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/StaticBackground;->mBackground:Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    .line 58
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/StaticBackground;->invalidate()V

    return-void
.end method
