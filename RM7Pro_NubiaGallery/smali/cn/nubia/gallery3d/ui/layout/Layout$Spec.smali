.class public Lcn/nubia/gallery3d/ui/layout/Layout$Spec;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/layout/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public bottomLand:I

.field public bottomPort:I

.field public menuHeight:I

.field public moveHeight:I

.field public padding:I

.field public right:I

.field public rowsLand:I

.field public rowsPort:I

.field public slotGap:I

.field public slotGapLand:I

.field public slotHeight:I

.field public slotHeightAdditional:I

.field public slotWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    .line 12
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeight:I

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeightAdditional:I

    .line 15
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    .line 16
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 17
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    .line 18
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGapLand:I

    .line 20
    iput v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->bottomPort:I

    .line 21
    iput v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->bottomLand:I

    .line 22
    iput v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->right:I

    .line 24
    iput v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->moveHeight:I

    .line 26
    iput v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    .line 28
    iput v1, p0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->menuHeight:I

    return-void
.end method
