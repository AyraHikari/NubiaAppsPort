.class public Lcom/zte/mifavor/widget/VolumeView;
.super Landroid/view/View;
.source "VolumeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/VolumeView$VolumeLine;
    }
.end annotation


# static fields
.field private static AUTO_DELAY:I = 0x28

.field private static final DEFAULT_MAX_HIGH:F = 10.0f

.field private static final DEFAULT_MIN_HIGH:F = 4.0f

.field private static final LINE_COUNT:I = 0x7

.field public static final MAX_VOLUME:I = 0x96

.field public static final MINI_VOLUME:I = 0x50

.field private static final MSG_UPDATE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "VolumeView"


# instance fields
.field private halfHeight:I

.field private halfVolume:I

.field private halfVolumeWidth:I

.field private lineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zte/mifavor/widget/VolumeView$VolumeLine;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mWidth:I

.field private miniHalfVolume:I

.field private nextHalfVolume:I

.field private padding:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    .line 35
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/VolumeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    .line 40
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/VolumeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/VolumeView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VolumeView;->autoUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/VolumeView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/VolumeView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolume:I

    return p0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/VolumeView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/VolumeView;)Landroid/graphics/Paint;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zte/mifavor/widget/VolumeView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private autoUpdate()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/zte/mifavor/widget/VolumeView;->AUTO_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VolumeView;->changeHeight()V

    .line 152
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VolumeView;->invalidate()V

    return-void
.end method

.method private changeHeight()V
    .locals 2

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changMaxAndMin()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    invoke-static {v1, p1}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->access$200(Lcom/zte/mifavor/widget/VolumeView$VolumeLine;Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/VolumeView;->paint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/zte/extres/R$color;->common_controls_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object p1, p0, Lcom/zte/mifavor/widget/VolumeView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object p1, p0, Lcom/zte/mifavor/widget/VolumeView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    new-instance p1, Lcom/zte/mifavor/widget/VolumeView$1;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/VolumeView$1;-><init>(Lcom/zte/mifavor/widget/VolumeView;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/VolumeView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private startAnimation()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/zte/mifavor/widget/VolumeView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/zte/mifavor/widget/VolumeView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 78
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VolumeView;->startAnimation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 84
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VolumeView;->stopAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/VolumeView;->doDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 100
    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView;->mWidth:I

    .line 101
    iput p2, p0, Lcom/zte/mifavor/widget/VolumeView;->mHeight:I

    .line 102
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView;->mHeight:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView;->halfHeight:I

    .line 103
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView;->halfHeight:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolume:I

    .line 104
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolume:I

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView;->nextHalfVolume:I

    .line 105
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VolumeView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-wide/high16 p2, 0x400c000000000000L    # 3.5

    invoke-static {p1, p2, p3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;D)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    .line 106
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/VolumeView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView;->padding:I

    .line 107
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView;->mWidth:I

    iget p2, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    mul-int/lit8 p2, p2, 0x7

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/zte/mifavor/widget/VolumeView;->padding:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x6

    .line 108
    iget p2, p0, Lcom/zte/mifavor/widget/VolumeView;->padding:I

    .line 110
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    new-instance p4, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VolumeView;IZFLcom/zte/mifavor/widget/VolumeView$1;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    new-instance p4, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    add-int/2addr v0, p2

    add-int v2, v0, p1

    const/4 v3, 0x1

    const/high16 v4, 0x41000000    # 8.0f

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VolumeView;IZFLcom/zte/mifavor/widget/VolumeView$1;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    new-instance p4, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    mul-int/lit8 v1, p1, 0x2

    add-int v2, v0, v1

    const/4 v3, 0x0

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VolumeView;IZFLcom/zte/mifavor/widget/VolumeView$1;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    new-instance p4, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p2

    mul-int/lit8 v1, p1, 0x3

    add-int v2, v0, v1

    const/4 v3, 0x1

    const/high16 v4, 0x40c00000    # 6.0f

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VolumeView;IZFLcom/zte/mifavor/widget/VolumeView$1;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    new-instance p4, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    mul-int/lit8 v1, p1, 0x4

    add-int v2, v0, v1

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VolumeView;IZFLcom/zte/mifavor/widget/VolumeView$1;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    new-instance p4, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    mul-int/lit8 v1, p1, 0x5

    add-int v2, v0, v1

    const/4 v3, 0x1

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VolumeView;IZFLcom/zte/mifavor/widget/VolumeView$1;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    new-instance p4, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView;->halfVolumeWidth:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr p2, v0

    mul-int/lit8 p1, p1, 0x6

    add-int v2, p2, p1

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VolumeView;IZFLcom/zte/mifavor/widget/VolumeView$1;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView;->mHeight:I

    mul-int/lit8 p1, p1, 0x50

    div-int/lit16 p1, p1, 0x96

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView;->miniHalfVolume:I

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VolumeView;->startAnimation()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/VolumeView;->stopAnimation()V

    :goto_0
    return-void
.end method

.method public setVolume(I)V
    .locals 3

    const-string v0, "VolumeView"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView;->mHeight:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x96

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView;->nextHalfVolume:I

    const/4 p1, 0x0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;

    iget v1, p0, Lcom/zte/mifavor/widget/VolumeView;->nextHalfVolume:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeMyHalfVolume(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView;->nextHalfVolume:I

    iget p0, p0, Lcom/zte/mifavor/widget/VolumeView;->miniHalfVolume:I

    if-gt p1, p0, :cond_1

    const/16 p0, 0x3c

    .line 142
    sput p0, Lcom/zte/mifavor/widget/VolumeView;->AUTO_DELAY:I

    goto :goto_1

    :cond_1
    const/16 p0, 0x2d

    .line 144
    sput p0, Lcom/zte/mifavor/widget/VolumeView;->AUTO_DELAY:I

    :goto_1
    return-void
.end method
