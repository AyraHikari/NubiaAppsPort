.class public Lcom/zte/mifavor/widget/VoiceInputView;
.super Landroid/view/View;
.source "VoiceInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_HIGH_RATE:F = 1.0f

.field private static final DEFAULT_MIN_HIGH_RATE:F = 0.4f

.field private static final LINE_COUNT:I = 0x7

.field public static final MAX_VOLUME:I = 0x96

.field private static final MSG_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VoiceInputView"

.field private static final UPDATE_TIME_MS:I = 0x28

.field private static final mDirections:[Z

.field private static final mMaxHeightRates:[F


# instance fields
.field private mAmplitude:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mVolumeLineWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 27
    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lcom/zte/mifavor/widget/VoiceInputView;->mDirections:[Z

    .line 28
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/mifavor/widget/VoiceInputView;->mMaxHeightRates:[F

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/VoiceInputView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    .line 44
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/VoiceInputView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/VoiceInputView;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->autoUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/VoiceInputView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mVolumeLineWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/VoiceInputView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mAmplitude:I

    return p0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/VoiceInputView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/VoiceInputView;)Landroid/graphics/Paint;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private autoUpdate()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->updateHeight()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->invalidate()V

    return-void
.end method

.method private getPreferredHeight()I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/zte/extres/R$dimen;->voice_input_view_preferred_height:I

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getPreferredWidth()I
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/zte/extres/R$dimen;->voice_input_view_preferred_width:I

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/zte/extres/R$color;->common_controls_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object p1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object p1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance p1, Lcom/zte/mifavor/widget/VoiceInputView$1;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/VoiceInputView$1;-><init>(Lcom/zte/mifavor/widget/VoiceInputView;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private startAnimation()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 82
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->startAnimation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 88
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->stopAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;

    invoke-static {v1, p1}, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->access$200(Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 122
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, -0x80000000

    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getPreferredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 135
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 136
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getPreferredHeight()I

    move-result p2

    goto :goto_1

    .line 139
    :cond_4
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 147
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 148
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 104
    iput p1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mWidth:I

    .line 105
    iput p2, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHeight:I

    .line 106
    iget p1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHeight:I

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mAmplitude:I

    .line 107
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-wide/high16 p2, 0x400c000000000000L    # 3.5

    invoke-static {p1, p2, p3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;D)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mVolumeLineWidth:I

    .line 108
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 109
    iget p2, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mWidth:I

    iget p3, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mVolumeLineWidth:I

    const/4 p4, 0x7

    mul-int/2addr p3, p4

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x6

    .line 110
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->getPaddingLeft()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p4, :cond_0

    .line 113
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    new-instance v7, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;

    iget v1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mVolumeLineWidth:I

    add-int/2addr v1, p2

    mul-int/2addr v1, p3

    add-int v3, p1, v1

    sget-object v1, Lcom/zte/mifavor/widget/VoiceInputView;->mDirections:[Z

    aget-boolean v4, v1, p3

    sget-object v1, Lcom/zte/mifavor/widget/VoiceInputView;->mMaxHeightRates:[F

    aget v5, v1, p3

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VoiceInputView;IZFLcom/zte/mifavor/widget/VoiceInputView$1;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->startAnimation()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->stopAnimation()V

    :goto_0
    return-void
.end method

.method public setVolume(I)V
    .locals 3

    const-string v0, "VoiceInputView"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x96

    if-le p1, v0, :cond_0

    move p1, v0

    .line 175
    :cond_0
    iget v1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mHeight:I

    mul-int/2addr v1, p1

    div-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mAmplitude:I

    const/4 p1, 0x0

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mLineList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;

    iget v1, p0, Lcom/zte/mifavor/widget/VoiceInputView;->mAmplitude:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->updateAmplitude(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
