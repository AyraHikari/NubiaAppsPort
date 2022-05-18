.class Lcom/zte/mifavor/widget/VolumeView$VolumeLine;
.super Ljava/lang/Object;
.source "VolumeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/VolumeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VolumeLine"
.end annotation


# static fields
.field private static final MAX_RATE:I = 0x5


# instance fields
.field private changeCount:I

.field private curHeight:F

.field private delta:F

.field private isMax:Z

.field private maxHeightRate:F

.field private minHeightRate:F

.field private miniHeight:F

.field private myHalfVolume:F

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/zte/mifavor/widget/VolumeView;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/VolumeView;IZF)V
    .locals 1

    .line 172
    iput-object p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    .line 173
    iput-boolean p3, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->isMax:Z

    .line 174
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->rect:Landroid/graphics/RectF;

    int-to-float v0, p2

    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 175
    iget-object p3, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->rect:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/zte/mifavor/widget/VolumeView;->access$300(Lcom/zte/mifavor/widget/VolumeView;)I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p3, Landroid/graphics/RectF;->right:F

    .line 176
    iput p4, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->maxHeightRate:F

    const/high16 p2, 0x40800000    # 4.0f

    .line 177
    iput p2, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->minHeightRate:F

    .line 178
    invoke-static {p1}, Lcom/zte/mifavor/widget/VolumeView;->access$400(Lcom/zte/mifavor/widget/VolumeView;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeMyHalfVolume(I)V

    .line 179
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->isMax:Z

    if-eqz p1, :cond_0

    .line 180
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->myHalfVolume:F

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    goto :goto_0

    .line 182
    :cond_0
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->miniHeight:F

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/VolumeView;IZFLcom/zte/mifavor/widget/VolumeView$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VolumeView;IZF)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/VolumeView$VolumeLine;Landroid/graphics/Canvas;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->drawVolumeLine(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private changHigh()V
    .locals 0

    return-void
.end method

.method private drawVolumeLine(Landroid/graphics/Canvas;)V
    .locals 3

    .line 218
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    iget-object v1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-static {v1}, Lcom/zte/mifavor/widget/VolumeView;->access$500(Lcom/zte/mifavor/widget/VolumeView;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-static {v0}, Lcom/zte/mifavor/widget/VolumeView;->access$500(Lcom/zte/mifavor/widget/VolumeView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    .line 221
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    iget v1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->miniHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 222
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->miniHeight:F

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-static {v1}, Lcom/zte/mifavor/widget/VolumeView;->access$500(Lcom/zte/mifavor/widget/VolumeView;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 225
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-static {v1}, Lcom/zte/mifavor/widget/VolumeView;->access$500(Lcom/zte/mifavor/widget/VolumeView;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 226
    iget-object v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-static {v1}, Lcom/zte/mifavor/widget/VolumeView;->access$300(Lcom/zte/mifavor/widget/VolumeView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-static {v2}, Lcom/zte/mifavor/widget/VolumeView;->access$300(Lcom/zte/mifavor/widget/VolumeView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-static {p0}, Lcom/zte/mifavor/widget/VolumeView;->access$600(Lcom/zte/mifavor/widget/VolumeView;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public changMaxAndMin()V
    .locals 5

    .line 193
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->isMax:Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 194
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    iget v4, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->delta:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    .line 195
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    .line 196
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    if-ne v0, v1, :cond_1

    .line 197
    iput v2, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    .line 198
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->miniHeight:F

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    .line 199
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->isMax:Z

    goto :goto_0

    .line 203
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    iget v4, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->delta:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    .line 204
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    .line 205
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    if-ne v0, v1, :cond_1

    .line 206
    iput v2, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->changeCount:I

    .line 207
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->myHalfVolume:F

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->curHeight:F

    .line 208
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->isMax:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public changeMyHalfVolume(I)V
    .locals 2

    int-to-float p1, p1

    .line 187
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->minHeightRate:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->miniHeight:F

    .line 188
    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->maxHeightRate:F

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->myHalfVolume:F

    .line 189
    iget p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->myHalfVolume:F

    iget v0, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->miniHeight:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zte/mifavor/widget/VolumeView$VolumeLine;->delta:F

    return-void
.end method
