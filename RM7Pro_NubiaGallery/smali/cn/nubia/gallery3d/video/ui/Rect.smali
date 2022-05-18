.class Lcn/nubia/gallery3d/video/ui/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    .line 16
    iput p2, p0, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    .line 17
    iput p3, p0, Lcn/nubia/gallery3d/video/ui/Rect;->right:F

    .line 18
    iput p4, p0, Lcn/nubia/gallery3d/video/ui/Rect;->bottom:F

    return-void
.end method


# virtual methods
.method public final height()F
    .locals 2

    .line 47
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/Rect;->bottom:F

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public set(FFFF)V
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    .line 30
    iput p2, p0, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    .line 31
    iput p3, p0, Lcn/nubia/gallery3d/video/ui/Rect;->right:F

    .line 32
    iput p4, p0, Lcn/nubia/gallery3d/video/ui/Rect;->bottom:F

    return-void
.end method

.method public set(IIII)V
    .locals 0

    int-to-float p1, p1

    .line 22
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    int-to-float p1, p2

    .line 23
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    int-to-float p1, p3

    .line 24
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->right:F

    int-to-float p1, p4

    .line 25
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->bottom:F

    return-void
.end method

.method public set(Lcn/nubia/gallery3d/video/ui/Rect;)V
    .locals 1

    .line 36
    iget v0, p1, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    .line 37
    iget v0, p1, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    .line 38
    iget v0, p1, Lcn/nubia/gallery3d/video/ui/Rect;->right:F

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/Rect;->right:F

    .line 39
    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->bottom:F

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->bottom:F

    return-void
.end method

.method public final width()F
    .locals 2

    .line 43
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/Rect;->right:F

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    sub-float/2addr v0, v1

    return v0
.end method
