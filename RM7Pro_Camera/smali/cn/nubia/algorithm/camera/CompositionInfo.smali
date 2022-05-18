.class public Lcn/nubia/algorithm/camera/CompositionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_OBJECT:I = 0x0

.field public static final TYPE_TARGET_CENTER:I = 0x1

.field public static final TYPE_TARGET_THIRDS:I = 0x2

.field public static final TYPE_TARGET_WELL:I = 0x3


# instance fields
.field public deviceOrientation:I

.field public type:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(IFFI)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcn/nubia/algorithm/camera/CompositionInfo;->type:I

    .line 22
    iput p2, p0, Lcn/nubia/algorithm/camera/CompositionInfo;->x:F

    .line 23
    iput p3, p0, Lcn/nubia/algorithm/camera/CompositionInfo;->y:F

    .line 24
    iput p4, p0, Lcn/nubia/algorithm/camera/CompositionInfo;->deviceOrientation:I

    return-void
.end method
