.class public Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;
.super Ljava/lang/Object;
.source "FadeInBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# instance fields
.field private final animateFromDisk:Z

.field private final animateFromMemory:Z

.field private final animateFromNetwork:Z

.field private final durationMillis:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(IZZZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 0
    .param p1, "durationMillis"    # I
    .param p2, "animateFromNetwork"    # Z
    .param p3, "animateFromDisk"    # Z
    .param p4, "animateFromMemory"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->durationMillis:I

    .line 59
    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animateFromNetwork:Z

    .line 60
    iput-boolean p3, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animateFromDisk:Z

    .line 61
    iput-boolean p4, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animateFromMemory:Z

    .line 62
    return-void
.end method

.method public static animate(Landroid/view/View;I)V
    .locals 4
    .param p0, "imageView"    # Landroid/view/View;
    .param p1, "durationMillis"    # I

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 83
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 84
    .local v0, "fadeImage":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 85
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    .end local v0    # "fadeImage":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 66
    invoke-interface {p2, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    .line 68
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animateFromNetwork:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    if-eq p3, v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animateFromDisk:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    if-eq p3, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animateFromMemory:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    if-ne p3, v0, :cond_3

    .line 71
    :cond_2
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->durationMillis:I

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animate(Landroid/view/View;I)V

    .line 73
    :cond_3
    return-void
.end method
