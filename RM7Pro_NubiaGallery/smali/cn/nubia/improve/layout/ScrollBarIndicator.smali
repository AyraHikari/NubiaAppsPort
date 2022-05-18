.class public Lcn/nubia/improve/layout/ScrollBarIndicator;
.super Ljava/lang/Object;
.source "ScrollBarIndicator.java"


# instance fields
.field private final DEFAULT_HEAD_SIZE:F

.field private final DEFAULT_TAIL_SIZE:F

.field private final DEFAULT_TEXT_COLOR:I

.field private final INDICATOR_OFFSET:I

.field private final SCROLL_BAR_BG_COLOR:I

.field private final XOFFSET:I

.field private mCurrName:Ljava/lang/String;

.field private mScrollBarBg:Lcn/nubia/gallery3d/glrenderer/ColorTexture;

.field private mScrollBarIndicator:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mScrollBarTextBg:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

.field private mScrollIndicatorHeight:I

.field private mScrollIndicatorWidth:I

.field private mStringTextureHead:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mStringTextureTail:Lcn/nubia/gallery3d/glrenderer/StringTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mCurrName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarTextBg:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    .line 20
    iput-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarIndicator:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 21
    iput-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarBg:Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    .line 22
    iput-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureHead:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 23
    iput-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureTail:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->DEFAULT_TEXT_COLOR:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->SCROLL_BAR_BG_COLOR:I

    .line 31
    new-instance v1, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    const v2, 0x7f0801e9

    invoke-direct {v1, p1, v2}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarTextBg:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    .line 32
    new-instance v1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v2, 0x7f0801e8

    invoke-direct {v1, p1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarIndicator:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 33
    new-instance v1, Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    invoke-direct {v1, v0}, Lcn/nubia/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarBg:Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07020c

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->DEFAULT_HEAD_SIZE:F

    const v0, 0x7f070210

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->DEFAULT_TAIL_SIZE:F

    const v0, 0x7f07020f

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->XOFFSET:I

    const v0, 0x7f07020d

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->INDICATOR_OFFSET:I

    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    .line 42
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarTextBg:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v5

    iput v5, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollIndicatorHeight:I

    .line 43
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarBg:Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    iget v4, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollIndicatorWidth:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 46
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureHead:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureTail:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    .line 52
    :cond_1
    iget v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->XOFFSET:I

    mul-int/lit8 v0, v0, 0x2

    add-int v4, v1, v0

    .line 53
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarTextBg:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    iget v5, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollIndicatorHeight:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 54
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollBarIndicator:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget v1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->INDICATOR_OFFSET:I

    add-int v2, p2, v1

    .line 55
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    iget v5, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollIndicatorHeight:I

    move-object v1, p1

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 56
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureHead:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_2

    .line 57
    iget v1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollIndicatorHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->DEFAULT_HEAD_SIZE:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    .line 58
    iget v2, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->XOFFSET:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 60
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureTail:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_2

    .line 61
    iget v2, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->DEFAULT_HEAD_SIZE:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->DEFAULT_TAIL_SIZE:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 62
    iget v2, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->XOFFSET:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureHead:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 63
    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    invoke-virtual {v0, p1, v2, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_2
    return-void
.end method

.method public getWidth()I
    .locals 1

    .line 98
    iget v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollIndicatorWidth:I

    return v0
.end method

.method public setCurrName(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 69
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mCurrName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    iput-object p1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mCurrName:Ljava/lang/String;

    const-string v0, "/"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 74
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    aget-object v4, p1, v3

    goto :goto_0

    .line 78
    :cond_0
    aget-object v0, p1, v3

    .line 79
    iput-object v4, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureTail:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    :goto_0
    const/4 p1, -0x1

    if-eqz v0, :cond_1

    .line 82
    iget v1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->DEFAULT_HEAD_SIZE:F

    invoke-static {v0, v1, p1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureHead:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    :cond_1
    if-eqz v4, :cond_2

    .line 85
    iget v0, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->DEFAULT_TAIL_SIZE:F

    invoke-static {v4, v0, p1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mStringTextureTail:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    :cond_2
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollIndicatorHeight:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcn/nubia/improve/layout/ScrollBarIndicator;->mScrollIndicatorWidth:I

    return-void
.end method
