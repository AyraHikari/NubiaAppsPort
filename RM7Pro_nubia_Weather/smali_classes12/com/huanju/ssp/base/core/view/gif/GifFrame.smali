.class public Lcom/huanju/ssp/base/core/view/gif/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;

.field public nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "im"    # Landroid/graphics/Bitmap;
    .param p2, "del"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 26
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 27
    iput p2, p0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->delay:I

    .line 28
    return-void
.end method
