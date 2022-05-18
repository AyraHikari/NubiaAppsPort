.class public Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExifInfo"
.end annotation


# instance fields
.field public final flipHorizontal:Z

.field public final rotation:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput v0, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 231
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    .line 232
    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 0
    .param p1, "rotation"    # I
    .param p2, "flipHorizontal"    # Z

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p1, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 236
    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    .line 237
    return-void
.end method
