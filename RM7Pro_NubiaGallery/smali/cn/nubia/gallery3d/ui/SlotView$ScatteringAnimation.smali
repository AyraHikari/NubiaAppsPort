.class public Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;
.super Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScatteringAnimation"
.end annotation


# instance fields
.field private PHOTO_DISTANCE:I

.field private mCenter:Lcn/nubia/gallery3d/ui/RelativePosition;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/RelativePosition;)V
    .locals 1

    .line 474
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;-><init>()V

    const/16 v0, 0x3e8

    .line 471
    iput v0, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->PHOTO_DISTANCE:I

    .line 475
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->mCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->mCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    .line 481
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/RelativePosition;->getX()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->mProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->mCenter:Lcn/nubia/gallery3d/ui/RelativePosition;

    .line 482
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/RelativePosition;->getY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr v1, p3

    iget p3, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->mProgress:F

    sub-float p3, v2, p3

    mul-float/2addr v1, p3

    iget p3, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->PHOTO_DISTANCE:I

    mul-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->mProgress:F

    sub-float/2addr v2, p3

    mul-float/2addr p2, v2

    .line 480
    invoke-interface {p1, v0, v1, p2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 484
    iget p2, p0, Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;->mProgress:F

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    return-void
.end method
