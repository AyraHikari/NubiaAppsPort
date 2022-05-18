.class public Lcn/nubia/gallery3d/ui/SlotView$RisingAnimation;
.super Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RisingAnimation"
.end annotation


# static fields
.field private static final RISING_DISTANCE:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 0

    .line 466
    iget p2, p0, Lcn/nubia/gallery3d/ui/SlotView$RisingAnimation;->mProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    const/high16 p2, 0x43000000    # 128.0f

    mul-float/2addr p3, p2

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    return-void
.end method
