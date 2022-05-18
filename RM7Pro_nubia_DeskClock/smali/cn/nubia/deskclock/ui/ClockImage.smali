.class public Lcn/nubia/deskclock/ui/ClockImage;
.super Ljava/lang/Object;
.source "ClockImage.java"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapId:I

.field public mHeight:I

.field public mImageView:Landroid/widget/ImageView;

.field public mPaint:Landroid/graphics/Paint;

.field public mRotateAngle:F

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    return-void
.end method
