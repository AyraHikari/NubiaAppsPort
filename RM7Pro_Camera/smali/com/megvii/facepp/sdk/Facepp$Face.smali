.class public Lcom/megvii/facepp/sdk/Facepp$Face;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/facepp/sdk/Facepp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public age:F

.field public blurness:F

.field public confidence:F

.field public feature:[B

.field public female:F

.field public happy:F

.field public index:I

.field public leftEyestatus:[F

.field public male:F

.field public minority:F

.field public moutstatus:[F

.field public pitch:F

.field public points:[Landroid/graphics/PointF;

.field public rect:Landroid/graphics/Rect;

.field public rightEyestatus:[F

.field public roll:F

.field public trackID:I

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
