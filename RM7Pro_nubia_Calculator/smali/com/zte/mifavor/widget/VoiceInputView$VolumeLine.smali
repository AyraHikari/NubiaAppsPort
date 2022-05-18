.class Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;
.super Ljava/lang/Object;
.source "VoiceInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/VoiceInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VolumeLine"
.end annotation


# static fields
.field private static final FRAME_COUNT:I = 0x5


# instance fields
.field private curFrame:I

.field private curHeight:F

.field private delta:F

.field private isMax:Z

.field private maxHeight:F

.field private maxHeightRate:F

.field private minHeight:F

.field private minHeightRate:F

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/zte/mifavor/widget/VoiceInputView;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/VoiceInputView;IZF)V
    .locals 1

    .line 202
    iput-object p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VoiceInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->rect:Landroid/graphics/RectF;

    .line 203
    iput-boolean p3, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->isMax:Z

    .line 204
    iget-object p3, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->rect:Landroid/graphics/RectF;

    int-to-float v0, p2

    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 205
    iget-object p3, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->rect:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/zte/mifavor/widget/VoiceInputView;->access$300(Lcom/zte/mifavor/widget/VoiceInputView;)I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p3, Landroid/graphics/RectF;->right:F

    const p2, 0x3ecccccd    # 0.4f

    .line 206
    iput p2, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->minHeightRate:F

    .line 207
    iput p4, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->maxHeightRate:F

    .line 208
    invoke-static {p1}, Lcom/zte/mifavor/widget/VoiceInputView;->access$400(Lcom/zte/mifavor/widget/VoiceInputView;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->updateAmplitude(I)V

    .line 209
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->isMax:Z

    if-eqz p1, :cond_0

    .line 210
    iget p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->maxHeight:F

    iput p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    goto :goto_0

    .line 212
    :cond_0
    iget p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->minHeight:F

    iput p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/VoiceInputView;IZFLcom/zte/mifavor/widget/VoiceInputView$1;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;-><init>(Lcom/zte/mifavor/widget/VoiceInputView;IZF)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;Landroid/graphics/Canvas;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VoiceInputView;

    invoke-static {v1}, Lcom/zte/mifavor/widget/VoiceInputView;->access$500(Lcom/zte/mifavor/widget/VoiceInputView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 245
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VoiceInputView;

    invoke-static {v1}, Lcom/zte/mifavor/widget/VoiceInputView;->access$500(Lcom/zte/mifavor/widget/VoiceInputView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 246
    iget-object v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VoiceInputView;

    invoke-static {v1}, Lcom/zte/mifavor/widget/VoiceInputView;->access$300(Lcom/zte/mifavor/widget/VoiceInputView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VoiceInputView;

    invoke-static {v2}, Lcom/zte/mifavor/widget/VoiceInputView;->access$300(Lcom/zte/mifavor/widget/VoiceInputView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->this$0:Lcom/zte/mifavor/widget/VoiceInputView;

    invoke-static {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->access$600(Lcom/zte/mifavor/widget/VoiceInputView;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public updateAmplitude(I)V
    .locals 1

    int-to-float p1, p1

    .line 217
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->minHeightRate:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->minHeight:F

    .line 218
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->maxHeightRate:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->maxHeight:F

    .line 219
    iget p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->maxHeight:F

    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->minHeight:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->delta:F

    return-void
.end method

.method public updateHeight()V
    .locals 5

    .line 223
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->isMax:Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    iget v4, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->delta:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    .line 225
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curFrame:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curFrame:I

    .line 226
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curFrame:I

    if-ne v0, v1, :cond_1

    .line 227
    iput v2, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curFrame:I

    .line 228
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->minHeight:F

    iput v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    .line 229
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->isMax:Z

    goto :goto_0

    .line 233
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    iget v4, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->delta:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    .line 234
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curFrame:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curFrame:I

    .line 235
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curFrame:I

    if-ne v0, v1, :cond_1

    .line 236
    iput v2, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curFrame:I

    .line 237
    iget v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->maxHeight:F

    iput v0, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->curHeight:F

    .line 238
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/VoiceInputView$VolumeLine;->isMax:Z

    :cond_1
    :goto_0
    return-void
.end method
