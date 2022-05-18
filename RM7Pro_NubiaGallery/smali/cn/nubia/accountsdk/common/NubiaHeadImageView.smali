.class public Lcn/nubia/accountsdk/common/NubiaHeadImageView;
.super Landroid/widget/ImageView;
.source "NubiaHeadImageView.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcn/nubia/accountsdk/common/NubiaHeadImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/accountsdk/common/NubiaHeadImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private getCircleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 66
    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    iget-object v2, p0, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 73
    iget-object v2, p0, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->mPaint:Landroid/graphics/Paint;

    const v3, -0xbdbdbe

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 76
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    iget-object v2, p0, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    iget-object v2, p0, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 42
    invoke-virtual {p0}, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0xe

    .line 48
    invoke-direct {p0, v0, v1}, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->getCircleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    iget-object v3, p0, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 52
    iget-object v3, p0, Lcn/nubia/accountsdk/common/NubiaHeadImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method
