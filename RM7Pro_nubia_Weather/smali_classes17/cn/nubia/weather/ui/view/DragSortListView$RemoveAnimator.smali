.class Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;
.super Lcn/nubia/weather/ui/view/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mFloatLocX:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field private srcPos:I

.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;FI)V
    .locals 1
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v0, -0x1

    .line 1293
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 1294
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/weather/ui/view/DragSortListView$SmoothAnimator;-><init>(Lcn/nubia/weather/ui/view/DragSortListView;FI)V

    .line 1286
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1287
    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1295
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 1299
    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1300
    iput v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1301
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1302
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1303
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->access$900(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->srcPos:I

    .line 1304
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v3, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->access$102(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    .line 1306
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1307
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1500(Lcn/nubia/weather/ui/view/DragSortListView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1308
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v4, v3

    .line 1309
    .local v0, "minVelocity":F
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    .line 1310
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFloatLocX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v3, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1602(Lcn/nubia/weather/ui/view/DragSortListView;F)F

    .line 1321
    .end local v0    # "minVelocity":F
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "minVelocity":F
    :cond_1
    move v1, v2

    .line 1310
    goto :goto_0

    .line 1312
    :cond_2
    mul-float/2addr v0, v4

    .line 1313
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1314
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    neg-float v2, v0

    invoke-static {v1, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1602(Lcn/nubia/weather/ui/view/DragSortListView;F)F

    goto :goto_1

    .line 1315
    :cond_3
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 1316
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v1, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1602(Lcn/nubia/weather/ui/view/DragSortListView;F)F

    goto :goto_1

    .line 1319
    .end local v0    # "minVelocity":F
    :cond_4
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1700(Lcn/nubia/weather/ui/view/DragSortListView;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1900(Lcn/nubia/weather/ui/view/DragSortListView;)V

    .line 1376
    return-void
.end method

.method public onUpdate(FF)V
    .locals 12
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1325
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v3, v8, p2

    .line 1327
    .local v3, "f":F
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v8}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1328
    .local v4, "firstVis":I
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1332
    .local v5, "item":Landroid/view/View;
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v8}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1500(Lcn/nubia/weather/ui/view/DragSortListView;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mStartTime:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v1, v8, v9

    .line 1334
    .local v1, "dt":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-nez v8, :cond_1

    .line 1371
    .end local v1    # "dt":F
    :cond_0
    :goto_0
    return-void

    .line 1336
    .restart local v1    # "dt":F
    :cond_1
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v8}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v8

    mul-float v2, v8, v1

    .line 1337
    .local v2, "dx":F
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v8}, Lcn/nubia/weather/ui/view/DragSortListView;->getWidth()I

    move-result v7

    .line 1338
    .local v7, "w":I
    iget-object v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v8}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v10

    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v8}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1600(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v8

    const/4 v11, 0x0

    cmpl-float v8, v8, v11

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    int-to-float v8, v8

    mul-float/2addr v8, v1

    int-to-float v11, v7

    mul-float/2addr v8, v11

    add-float/2addr v8, v10

    invoke-static {v9, v8}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1602(Lcn/nubia/weather/ui/view/DragSortListView;F)F

    .line 1339
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFloatLocX:F

    add-float/2addr v8, v2

    iput v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1340
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v8}, Lcn/nubia/weather/ui/view/DragSortListView;->access$500(Lcn/nubia/weather/ui/view/DragSortListView;)Landroid/graphics/Point;

    move-result-object v8

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFloatLocX:F

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 1341
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFloatLocX:F

    int-to-float v9, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFloatLocX:F

    neg-int v9, v7

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mStartTime:J

    .line 1343
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->access$700(Lcn/nubia/weather/ui/view/DragSortListView;Z)V

    goto :goto_0

    .line 1338
    :cond_2
    const/4 v8, -0x1

    goto :goto_1

    .line 1348
    .end local v1    # "dt":F
    .end local v2    # "dx":F
    .end local v7    # "w":I
    :cond_3
    if-eqz v5, :cond_5

    .line 1349
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1350
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstPos:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1800(Lcn/nubia/weather/ui/view/DragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1351
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1353
    :cond_4
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1354
    .local v0, "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1355
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1356
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1358
    .end local v0    # "blank":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v8, v9, :cond_0

    .line 1359
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondPos:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1360
    if-eqz v5, :cond_0

    .line 1361
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 1362
    iget-object v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondPos:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1800(Lcn/nubia/weather/ui/view/DragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1363
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1365
    :cond_6
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1366
    .restart local v0    # "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1367
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcn/nubia/weather/ui/view/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1368
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
