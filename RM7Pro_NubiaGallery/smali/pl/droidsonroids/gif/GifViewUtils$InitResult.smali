.class Lpl/droidsonroids/gif/GifViewUtils$InitResult;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitResult"
.end annotation


# instance fields
.field final mBackgroundResId:I

.field final mFreezesAnimation:Z

.field final mSourceResId:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lpl/droidsonroids/gif/GifViewUtils$InitResult;->mSourceResId:I

    .line 93
    iput p2, p0, Lpl/droidsonroids/gif/GifViewUtils$InitResult;->mBackgroundResId:I

    .line 94
    iput-boolean p3, p0, Lpl/droidsonroids/gif/GifViewUtils$InitResult;->mFreezesAnimation:Z

    return-void
.end method
