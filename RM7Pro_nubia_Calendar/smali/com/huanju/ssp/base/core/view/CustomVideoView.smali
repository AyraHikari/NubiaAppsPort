.class public Lcom/huanju/ssp/base/core/view/CustomVideoView;
.super Landroid/widget/VideoView;
.source "CustomVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    .line 30
    invoke-static {v2, p1}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->getDefaultSize(II)I

    move-result v1

    .line 31
    .local v1, "width":I
    invoke-static {v2, p2}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->getDefaultSize(II)I

    move-result v0

    .line 32
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->setMeasuredDimension(II)V

    .line 33
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 39
    return-void
.end method
