.class Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;
.super Ljava/lang/Object;
.source "ProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/ProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleCircle"
.end annotation


# instance fields
.field private mAlpha:I

.field private mCircleEvaluator:Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;

.field private mEndX:I

.field private mEndY:I

.field private mIndex:I

.field private mPreEndAlpha:I

.field private mRadius:I

.field private mStartEndAlpha:I

.field private mStartEndRadius:I

.field private mStartX:I

.field private mStartY:I

.field private mStatus:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

.field private mX:I

.field private mY:I

.field final synthetic this$0:Lcom/zte/mifavor/widget/ProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/ProgressDrawable;I)V
    .locals 1

    .line 189
    iput-object p1, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mIndex:I

    .line 175
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    .line 176
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    .line 177
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mRadius:I

    .line 178
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartX:I

    .line 179
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartY:I

    .line 180
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    .line 181
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    .line 182
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    .line 183
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mAlpha:I

    .line 184
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mPreEndAlpha:I

    .line 185
    iput v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndAlpha:I

    .line 186
    sget-object v0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;->STARTING:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStatus:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    .line 190
    iput p2, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mIndex:I

    .line 191
    new-instance v0, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;

    invoke-direct {v0, p1, p2}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;-><init>(Lcom/zte/mifavor/widget/ProgressDrawable;I)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mCircleEvaluator:Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 222
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    sget-object v1, Lcom/zte/mifavor/widget/ProgressDrawable$2;->$SwitchMap$com$zte$mifavor$widget$ProgressDrawable$CircleStatus:[I

    iget-object v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStatus:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 252
    :pswitch_0
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 253
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mIndex:I

    if-lez v1, :cond_1

    .line 254
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v6, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndAlpha:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$700(Lcom/zte/mifavor/widget/ProgressDrawable;)Lcom/zte/mifavor/widget/MetaBall;

    move-result-object v1

    iget v6, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    iget v7, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    iget v8, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mRadius:I

    iget v9, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    iget v10, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    iget v11, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    iget-object v12, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v12}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v12

    const v15, 0x3f666666    # 0.9f

    const/high16 v16, 0x40000000    # 2.0f

    iget-object v14, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    .line 256
    invoke-static {v14}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v14

    int-to-double v2, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-float v14, v2

    move-object/from16 v2, p1

    move v3, v6

    move v4, v7

    move v5, v8

    move v6, v9

    move v7, v10

    move v8, v11

    move-object v9, v12

    move v10, v15

    move/from16 v11, v16

    move v12, v14

    .line 255
    invoke-virtual/range {v1 .. v12}, Lcom/zte/mifavor/widget/MetaBall;->draw(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;FFF)V

    .line 257
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 258
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$800(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$900(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$1000(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    if-eq v1, v2, :cond_2

    .line 259
    :cond_0
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$802(Lcom/zte/mifavor/widget/ProgressDrawable;I)I

    .line 261
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$902(Lcom/zte/mifavor/widget/ProgressDrawable;I)I

    .line 262
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$1002(Lcom/zte/mifavor/widget/ProgressDrawable;I)I

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 266
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 268
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v0}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_2

    .line 248
    :pswitch_1
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mPreEndAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 249
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mRadius:I

    int-to-float v3, v3

    iget-object v0, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v0}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v13, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 245
    :pswitch_2
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mRadius:I

    int-to-float v3, v3

    iget-object v0, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v0}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v13, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 226
    :pswitch_3
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 227
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mIndex:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 228
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$700(Lcom/zte/mifavor/widget/ProgressDrawable;)Lcom/zte/mifavor/widget/MetaBall;

    move-result-object v1

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartX:I

    iget v6, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartY:I

    iget v7, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    iget v8, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    iget v9, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    iget v10, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mRadius:I

    iget-object v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v11

    const v12, 0x3f666666    # 0.9f

    iget-object v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    .line 230
    invoke-static {v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v2

    int-to-double v14, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v14, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v4

    double-to-float v14, v14

    move-object/from16 v2, p1

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move-object v9, v11

    move v10, v12

    const/high16 v11, 0x40000000    # 2.0f

    move v12, v14

    .line 229
    invoke-virtual/range {v1 .. v12}, Lcom/zte/mifavor/widget/MetaBall;->draw(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;FFF)V

    .line 231
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$800(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$900(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$1000(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    if-eq v1, v2, :cond_5

    .line 233
    :cond_3
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 234
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$802(Lcom/zte/mifavor/widget/ProgressDrawable;I)I

    .line 235
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$902(Lcom/zte/mifavor/widget/ProgressDrawable;I)I

    .line 236
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$1002(Lcom/zte/mifavor/widget/ProgressDrawable;I)I

    goto :goto_1

    .line 239
    :cond_4
    iget-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    iget v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    int-to-float v2, v2

    iget v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v4}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 242
    :cond_5
    :goto_1
    iget-object v0, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v0}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$600(Lcom/zte/mifavor/widget/ProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateCircle(F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 195
    iget-object v2, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mCircleEvaluator:Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getPoint(F)F

    move-result v2

    .line 196
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$000(Lcom/zte/mifavor/widget/ProgressDrawable;)F

    move-result v3

    add-float/2addr v3, v2

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    .line 198
    iget-object v5, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v5}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$200(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v7}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v7

    int-to-double v7, v7

    float-to-double v9, v3

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mX:I

    .line 199
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$400(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mY:I

    .line 200
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$500(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mRadius:I

    .line 201
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$200(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$000(Lcom/zte/mifavor/widget/ProgressDrawable;)F

    move-result v3

    float-to-double v9, v3

    mul-double/2addr v9, v11

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartX:I

    .line 202
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$400(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$000(Lcom/zte/mifavor/widget/ProgressDrawable;)F

    move-result v3

    float-to-double v9, v3

    mul-double/2addr v9, v11

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartY:I

    .line 203
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$200(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$000(Lcom/zte/mifavor/widget/ProgressDrawable;)F

    move-result v3

    add-float/2addr v3, v4

    float-to-double v9, v3

    mul-double/2addr v9, v11

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndX:I

    .line 204
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$400(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v5, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$300(Lcom/zte/mifavor/widget/ProgressDrawable;)I

    move-result v3

    int-to-double v7, v3

    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->this$0:Lcom/zte/mifavor/widget/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/mifavor/widget/ProgressDrawable;->access$000(Lcom/zte/mifavor/widget/ProgressDrawable;)F

    move-result v3

    add-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v3, v11

    div-double/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v7, v3

    sub-double/2addr v5, v7

    double-to-int v3, v5

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mEndY:I

    .line 205
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mCircleEvaluator:Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;

    invoke-virtual {v3, v1}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getStartEndRadius(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndRadius:I

    .line 206
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mCircleEvaluator:Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;

    invoke-virtual {v3, v1}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getAlpha(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mAlpha:I

    .line 207
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mCircleEvaluator:Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;

    invoke-virtual {v3, v1}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getPreEndAlpah(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mPreEndAlpha:I

    .line 208
    iget-object v3, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mCircleEvaluator:Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;

    invoke-virtual {v3, v1}, Lcom/zte/mifavor/widget/ProgressDrawable$CircleEvaluator;->getStartEndAlpha(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStartEndAlpha:I

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    .line 211
    sget-object v1, Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;->STARTING:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    iput-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStatus:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43a00000    # 320.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    .line 213
    sget-object v1, Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;->ENDING:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    iput-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStatus:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x438c0000    # 280.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    .line 215
    sget-object v1, Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;->PREEND:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    iput-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStatus:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    goto :goto_0

    .line 217
    :cond_2
    sget-object v1, Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;->RUNNING:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    iput-object v1, v0, Lcom/zte/mifavor/widget/ProgressDrawable$SingleCircle;->mStatus:Lcom/zte/mifavor/widget/ProgressDrawable$CircleStatus;

    :goto_0
    return-void
.end method
