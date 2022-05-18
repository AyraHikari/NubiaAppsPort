.class public Lcom/huanju/ssp/base/core/view/gif/GifView;
.super Landroid/widget/ImageView;
.source "GifView.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/view/gif/GifAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;,
        Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;
    }
.end annotation


# instance fields
.field private animationType:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

.field private currentImage:Landroid/graphics/Bitmap;

.field private drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

.field private gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

.field private isRun:Z

.field private mScal:F

.field private pause:Z

.field private rect:Landroid/graphics/Rect;

.field private showHeight:I

.field private showWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    .line 33
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->isRun:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->pause:Z

    .line 39
    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->showWidth:I

    .line 40
    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->showHeight:I

    .line 41
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->rect:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->mScal:F

    .line 44
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    .line 46
    sget-object v0, Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;->SYNC_DECODER:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->animationType:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    .line 33
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->isRun:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->pause:Z

    .line 39
    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->showWidth:I

    .line 40
    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->showHeight:I

    .line 41
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->rect:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->mScal:F

    .line 44
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    .line 46
    sget-object v0, Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;->SYNC_DECODER:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->animationType:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/view/gif/GifView;)Lcom/huanju/ssp/base/core/view/gif/GifDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/gif/GifView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/view/gif/GifView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/gif/GifView;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->isRun:Z

    return v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/core/view/gif/GifView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/gif/GifView;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->pause:Z

    return v0
.end method

.method static synthetic access$402(Lcom/huanju/ssp/base/core/view/gif/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/gif/GifView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/huanju/ssp/base/core/view/gif/GifView;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/gif/GifView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->reDraw()V

    return-void
.end method

.method private reDraw()V
    .locals 0

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->postInvalidate()V

    .line 337
    return-void
.end method

.method private setGifDecoderImage(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->free()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    .line 87
    :cond_0
    new-instance v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-direct {v0, p1, p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;-><init>(Ljava/io/InputStream;Lcom/huanju/ssp/base/core/view/gif/GifAction;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    .line 88
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->start()V

    .line 89
    return-void
.end method

.method private setGifDecoderImage([B)V
    .locals 1
    .param p1, "gif"    # [B

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->free()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    .line 73
    :cond_0
    new-instance v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-direct {v0, p1, p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;-><init>([BLcom/huanju/ssp/base/core/view/gif/GifAction;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    .line 74
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->start()V

    .line 75
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->isRun:Z

    .line 344
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "gifDecoder free"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->free()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    const-string v0, "currentImage free"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->interrupt()V

    .line 355
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 139
    .local v1, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    iget v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->showWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 144
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v1    # "saveCount":I
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOM    :   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "saveCount":I
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->rect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 160
    iget v10, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->mScal:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_1

    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 162
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingLeft()I

    move-result v11

    sub-int v6, v10, v11

    .line 163
    .local v6, "sizeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 164
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingLeft()I

    move-result v11

    sub-int v7, v10, v11

    .line 165
    .local v7, "sizehight":I
    iget v10, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->mScal:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_0

    .line 166
    int-to-float v10, v6

    iget v11, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->mScal:F

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 168
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setShowDimension(II)V

    .line 169
    invoke-virtual {p0, v6, v7}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setMeasuredDimension(II)V

    .line 201
    .end local v6    # "sizeWidth":I
    .end local v7    # "sizehight":I
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingLeft()I

    move-result v3

    .line 172
    .local v3, "pleft":I
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingRight()I

    move-result v4

    .line 173
    .local v4, "pright":I
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingTop()I

    move-result v5

    .line 174
    .local v5, "ptop":I
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getPaddingBottom()I

    move-result v2

    .line 182
    .local v2, "pbottom":I
    iget-object v10, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    if-nez v10, :cond_2

    .line 183
    const/4 v8, 0x1

    .line 184
    .local v8, "w":I
    const/4 v0, 0x1

    .line 190
    .local v0, "h":I
    :goto_1
    add-int v10, v3, v4

    add-int/2addr v8, v10

    .line 191
    add-int v10, v5, v2

    add-int/2addr v0, v10

    .line 193
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 194
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 196
    invoke-static {v8, p1}, Lcom/huanju/ssp/base/core/view/gif/GifView;->resolveSize(II)I

    move-result v9

    .line 197
    .local v9, "widthSize":I
    invoke-static {v0, p2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->resolveSize(II)I

    move-result v1

    .line 199
    .local v1, "heightSize":I
    invoke-virtual {p0, v9, v1}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 186
    .end local v0    # "h":I
    .end local v1    # "heightSize":I
    .end local v8    # "w":I
    .end local v9    # "widthSize":I
    :cond_2
    iget-object v10, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    iget v8, v10, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    .line 187
    .restart local v8    # "w":I
    iget-object v10, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    iget v0, v10, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->height:I

    .restart local v0    # "h":I
    goto :goto_1
.end method

.method public onOOM([B)V
    .locals 2
    .param p1, "gifData"    # [B

    .prologue
    .line 329
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 330
    const-string v0, "OOM setImageBitmap"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    :cond_0
    return-void
.end method

.method public parseOk(ZI)V
    .locals 6
    .param p1, "parseStatus"    # Z
    .param p2, "frameIndex"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    if-eqz v1, :cond_6

    .line 266
    sget-object v1, Lcom/huanju/ssp/base/core/view/gif/GifView$1;->$SwitchMap$com$huanju$ssp$base$core$view$gif$GifView$GifImageType:[I

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->animationType:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 268
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 269
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getFrameCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 270
    new-instance v0, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    invoke-direct {v0, p0, v5}, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;-><init>(Lcom/huanju/ssp/base/core/view/gif/GifView;Lcom/huanju/ssp/base/core/view/gif/GifView$1;)V

    .line 271
    .local v0, "dt":Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;
    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->start()V

    goto :goto_0

    .line 273
    .end local v0    # "dt":Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;
    :cond_1
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->reDraw()V

    goto :goto_0

    .line 278
    :pswitch_1
    if-ne p2, v3, :cond_2

    .line 279
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 280
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->reDraw()V

    goto :goto_0

    .line 281
    :cond_2
    if-ne p2, v4, :cond_0

    .line 282
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getFrameCount()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 283
    iput-boolean v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->isRun:Z

    .line 284
    new-instance v1, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    invoke-direct {v1, p0, v5}, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;-><init>(Lcom/huanju/ssp/base/core/view/gif/GifView;Lcom/huanju/ssp/base/core/view/gif/GifView$1;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    .line 285
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->start()V

    goto :goto_0

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->reDraw()V

    goto :goto_0

    .line 306
    :pswitch_2
    if-ne p2, v3, :cond_4

    .line 307
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 308
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->reDraw()V

    goto :goto_0

    .line 309
    :cond_4
    if-ne p2, v4, :cond_5

    .line 310
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->reDraw()V

    goto :goto_0

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    if-nez v1, :cond_0

    .line 313
    new-instance v1, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    invoke-direct {v1, p0, v5}, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;-><init>(Lcom/huanju/ssp/base/core/view/gif/GifView;Lcom/huanju/ssp/base/core/view/gif/GifView$1;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    .line 314
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->drawThread:Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/gif/GifView$DrawThread;->start()V

    goto :goto_0

    .line 321
    :cond_6
    const-string v1, "gif parse error"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setGifImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 118
    .local v0, "is":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifDecoderImage(Ljava/io/InputStream;)V

    .line 119
    return-void
.end method

.method public setGifImage(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifDecoderImage(Ljava/io/InputStream;)V

    .line 108
    return-void
.end method

.method public setGifImage([B)V
    .locals 0
    .param p1, "gif"    # [B

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifDecoderImage([B)V

    .line 99
    return-void
.end method

.method public setGifImageType(Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;)V
    .locals 1
    .param p1, "type"    # Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    if-nez v0, :cond_0

    .line 240
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->animationType:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    .line 241
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    :cond_0
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 424
    return-void
.end method

.method public setNativeScale(F)V
    .locals 0
    .param p1, "scal"    # F

    .prologue
    .line 204
    iput p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->mScal:F

    .line 205
    return-void
.end method

.method public setShowDimension(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 251
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 252
    iput p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->showWidth:I

    .line 253
    iput p2, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->showHeight:I

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->rect:Landroid/graphics/Rect;

    .line 255
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 256
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 257
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 258
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 260
    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->pause:Z

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->pause:Z

    .line 230
    :cond_0
    return-void
.end method

.method public showCover()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->pause:Z

    .line 217
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->gifDecoder:Lcom/huanju/ssp/base/core/view/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 219
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->invalidate()V

    goto :goto_0
.end method
