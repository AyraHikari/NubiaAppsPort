.class public Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;
.super Ljava/lang/Object;
.source "RePortAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;


# instance fields
.field private ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field private isAdActTrack:Z

.field private isAdClick:Z

.field private isAdDplWkUp:Z

.field private isAdShow:Z


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdShow:Z

    .line 51
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdClick:Z

    .line 52
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdDplWkUp:Z

    .line 53
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdActTrack:Z

    .line 57
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->parseClickRecommend(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    return-object v0
.end method

.method private declared-synchronized isViewCovered(Landroid/view/View;F)Z
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shieldRate"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v17

    .line 600
    .local v17, "threadName":Ljava/lang/String;
    const-string v21, "main"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    if-nez v21, :cond_0

    .line 601
    const/16 v21, 0x1

    .line 694
    :goto_0
    monitor-exit p0

    return v21

    .line 604
    :cond_0
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "view:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 605
    const/16 v21, 0x0

    cmpg-float v21, p2, v21

    if-gez v21, :cond_2

    const/16 p2, 0x0

    .line 606
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v2, v0

    .line 607
    .local v2, "adViewArea":F
    move-object/from16 v5, p1

    .line 608
    .local v5, "currentView":Landroid/view/View;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 609
    .local v6, "currentViewRect":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    .line 610
    .local v12, "onScreenVisible":Z
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "currentViewRect:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 611
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "adViewArea:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 612
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onScreenVisible:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 613
    if-nez v12, :cond_3

    .line 614
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 605
    .end local v2    # "adViewArea":F
    .end local v5    # "currentView":Landroid/view/View;
    .end local v6    # "currentViewRect":Landroid/graphics/Rect;
    .end local v12    # "onScreenVisible":Z
    :cond_2
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, p2, v21

    if-lez v21, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 616
    .restart local v2    # "adViewArea":F
    .restart local v5    # "currentView":Landroid/view/View;
    .restart local v6    # "currentViewRect":Landroid/graphics/Rect;
    .restart local v12    # "onScreenVisible":Z
    :cond_3
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 618
    .local v20, "visibleArea":F
    div-float v21, v20, v2

    cmpg-float v21, v21, p2

    if-gez v21, :cond_5

    .line 619
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 688
    .local v4, "currentParent":Landroid/view/ViewGroup;
    .local v9, "i":I
    .local v16, "start":I
    :cond_4
    move-object v5, v4

    .line 622
    .end local v4    # "currentParent":Landroid/view/ViewGroup;
    .end local v9    # "i":I
    .end local v16    # "start":I
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 623
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 625
    .restart local v4    # "currentParent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v21

    if-eqz v21, :cond_6

    .line 627
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 631
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "start":I
    :goto_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 633
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_a

    .line 638
    :cond_7
    add-int/lit8 v9, v16, 0x1

    .restart local v9    # "i":I
    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 640
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 641
    .local v19, "viewRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 643
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 645
    .local v13, "otherView":Landroid/view/View;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 646
    .local v14, "otherViewRect":Landroid/graphics/Rect;
    invoke-virtual {v13, v14}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 648
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "viewRect:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 649
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "otherViewRect:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_b

    .line 651
    move-object/from16 v0, v19

    invoke-static {v0, v14}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 667
    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    if-nez v21, :cond_8

    .line 668
    invoke-virtual {v13}, Landroid/view/View;->isClickable()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 669
    :cond_8
    const/4 v11, 0x0

    .line 670
    .local v11, "mixArea":F
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 672
    .local v10, "left":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 673
    .local v18, "top":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 675
    .local v15, "right":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 677
    .local v3, "bottom":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "left:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",top:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",right:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",bottom:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    if-ge v10, v15, :cond_9

    move/from16 v0, v18

    if-ge v0, v3, :cond_9

    .line 679
    sub-int v21, v15, v10

    sub-int v22, v3, v18

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v11, v0

    .line 681
    :cond_9
    div-float v8, v11, v2

    .line 682
    .local v8, "f":F
    cmpl-float v21, v8, p2

    if-lez v21, :cond_b

    .line 683
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 631
    .end local v3    # "bottom":I
    .end local v8    # "f":F
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v11    # "mixArea":F
    .end local v13    # "otherView":Landroid/view/View;
    .end local v14    # "otherViewRect":Landroid/graphics/Rect;
    .end local v15    # "right":I
    .end local v18    # "top":I
    .end local v19    # "viewRect":Landroid/graphics/Rect;
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 638
    .restart local v9    # "i":I
    .restart local v13    # "otherView":Landroid/view/View;
    .restart local v14    # "otherViewRect":Landroid/graphics/Rect;
    .restart local v19    # "viewRect":Landroid/graphics/Rect;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 691
    .end local v2    # "adViewArea":F
    .end local v4    # "currentParent":Landroid/view/ViewGroup;
    .end local v5    # "currentView":Landroid/view/View;
    .end local v6    # "currentViewRect":Landroid/graphics/Rect;
    .end local v9    # "i":I
    .end local v12    # "onScreenVisible":Z
    .end local v13    # "otherView":Landroid/view/View;
    .end local v14    # "otherViewRect":Landroid/graphics/Rect;
    .end local v16    # "start":I
    .end local v19    # "viewRect":Landroid/graphics/Rect;
    .end local v20    # "visibleArea":F
    :catch_0
    move-exception v7

    .line 692
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 599
    .end local v17    # "threadName":Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21
.end method

.method private parseClickRecommend(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 245
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 247
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 248
    .local v0, "data":Lorg/json/JSONObject;
    const-string v5, "apk_url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const-string v6, "apk_url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend apk_url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 252
    :cond_0
    const-string v5, "package_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const-string v6, "package_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend bundle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 256
    :cond_1
    const-string v5, "dwnlst"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    const-string v5, "dwnlst"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 258
    .local v1, "dwnlst":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object v1, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnlst:Lorg/json/JSONArray;

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend ad_dwnlst:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnlst:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 260
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 262
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x2

    const-string v7, "dwnlst"

    invoke-static {v0, v7}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    .end local v1    # "dwnlst":Lorg/json/JSONArray;
    :cond_2
    const-string v5, "dwnltrackers"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 265
    const-string v5, "dwnltrackers"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 266
    .local v2, "dwnltrackers":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object v2, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnl:Lorg/json/JSONArray;

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend ad_dwnl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnl:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 268
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 270
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x3

    const-string v7, "dwnltrackers"

    invoke-static {v0, v7}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    .end local v2    # "dwnltrackers":Lorg/json/JSONArray;
    :cond_3
    const-string v5, "intltrackers"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 273
    const-string v5, "intltrackers"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 274
    .local v4, "intltrackers":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object v4, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_intl:Lorg/json/JSONArray;

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClickRecommend ad_intl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_intl:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 276
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 278
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v6, 0x4

    const-string v7, "intltrackers"

    invoke-static {v0, v7}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v4    # "intltrackers":Lorg/json/JSONArray;
    :cond_4
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v3

    .line 281
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private reportAppDownloadState(Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "appDownloadState"    # Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 558
    .local v1, "sign":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-static {v6}, Lcom/huanju/ssp/base/core/common/ParameterInfoProducer;->appendReportDataSignParameter(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {p2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getImeiMD5Low()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_app_secret:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 564
    :goto_0
    sget-object v5, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$4;->$SwitchMap$com$huanju$ssp$sdk$AdManager$AppDownloadState:[I

    invoke-virtual {p1}, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 582
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/common/ParameterInfoProducer;->appendReportDataCommonParameter(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "param":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get param "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get param sign"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {p2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sign="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 591
    .end local v0    # "param":Ljava/lang/String;
    .end local v1    # "sign":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 560
    .restart local v1    # "sign":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 561
    .local v4, "var7":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 566
    .end local v4    # "var7":Ljava/io/UnsupportedEncodingException;
    :pswitch_0
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_imptracker:Ljava/lang/String;

    .line 567
    goto :goto_1

    .line 569
    :pswitch_1
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_dwnlsttracker:Ljava/lang/String;

    .line 570
    goto :goto_1

    .line 572
    :pswitch_2
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_dwnltracker:Ljava/lang/String;

    .line 573
    goto :goto_1

    .line 575
    :pswitch_3
    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_intltracker:Ljava/lang/String;

    .line 576
    goto :goto_1

    .line 586
    :catch_1
    move-exception v3

    .line 587
    .local v3, "var6":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 591
    .end local v1    # "sign":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "var6":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v2, ""

    goto :goto_2

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public OnAdClick()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->OnAdClick(IIII)V

    .line 139
    return-void
.end method

.method public OnAdClick(IIII)V
    .locals 4
    .param p1, "down_x"    # I
    .param p2, "down_y"    # I
    .param p3, "up_x"    # I
    .param p4, "up_y"    # I

    .prologue
    const/4 v3, 0x1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnAdClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reportad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdClick:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 125
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    .line 126
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p3, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 127
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v1, v3}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v1, v3}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    .line 132
    iput-boolean v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdClick:Z

    goto :goto_0
.end method

.method public OnAdClose(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    return-void
.end method

.method public OnAdDetailShow(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    const-string v3, "OnAdDetailShow"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 150
    const-string v2, ""

    .line 151
    .local v2, "wkUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v4, "wk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    sget-object v3, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_SHOW:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    invoke-direct {p0, v3, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->reportAppDownloadState(Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    .line 155
    .local v1, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v3

    sget-object v4, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    if-ne v3, v4, :cond_2

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "wkUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public OnAdShow(Landroid/view/View;[I)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ImageViewIDS"    # [I

    .prologue
    .line 88
    if-eqz p2, :cond_0

    :try_start_0
    array-length v3, p2

    if-lez v3, :cond_0

    .line 91
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnAdShow isAdShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reportad:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 93
    iget-boolean v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdShow:Z

    if-eqz v3, :cond_1

    .line 94
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const/4 v5, 0x7

    const-string v6, "API\u5ba2\u6237\u7aef\u4e22\u5f03,\u91cd\u590d\u5c55\u793a"

    const-string v7, ""

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v2, ""

    .line 98
    .local v2, "wkUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v4, "wk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    sget-object v3, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_SHOW:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->reportAppDownloadState(Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wkUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    .line 103
    .local v1, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    if-eqz p1, :cond_4

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v3}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 107
    :cond_4
    const-string v3, "OnAdShow ViewCovered"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    .line 109
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdShow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v1    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "wkUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "wkUrl":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const/4 v5, 0x7

    const-string v6, "API\u5ba2\u6237\u7aef\u4e22\u5f03,\u5c55\u793a\u672a\u8d85\u8fc750%"

    const-string v7, ""

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public OnAppDownloadComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    const-string v2, ""

    .line 197
    .local v2, "wkUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v4, "wk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    sget-object v3, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_DOWNLOAD_COMPLETE:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    invoke-direct {p0, v3, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->reportAppDownloadState(Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    .line 201
    .local v1, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v3

    sget-object v4, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    if-ne v3, v4, :cond_2

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 207
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->delete(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "wkUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public OnAppInstallComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 217
    :try_start_0
    const-string v2, ""

    .line 218
    .local v2, "wkUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v4, "wk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    sget-object v3, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_INSTALL_COMPLETE:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    invoke-direct {p0, v3, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->reportAppDownloadState(Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    .line 222
    .local v1, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v3

    sget-object v4, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    if-ne v3, v4, :cond_2

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 229
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "wkUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public OnAppStartDownload(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    const-string v3, "OnAppStartDownload"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 171
    const-string v2, ""

    .line 172
    .local v2, "wkUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v4, "wk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    sget-object v3, Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;->APP_START_DOWNLOAD:Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;

    invoke-direct {p0, v3, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->reportAppDownloadState(Lcom/huanju/ssp/sdk/AdManager$AppDownloadState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    .line 176
    .local v1, "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v3

    sget-object v4, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    if-ne v3, v4, :cond_2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 182
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :try_start_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .end local v1    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "wkUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 185
    .restart local v1    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "wkUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "tracks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "wkUrl":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 189
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public OnAppStopDowload(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->delete(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadClick(Landroid/content/Context;IIIILcom/huanju/ssp/sdk/inf/AdDownLoadListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "down_x"    # I
    .param p3, "down_y"    # I
    .param p4, "up_x"    # I
    .param p5, "up_y"    # I
    .param p6, "adDownLoadListener"    # Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    .prologue
    .line 528
    if-eqz p1, :cond_0

    .line 529
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 533
    .local v1, "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :goto_0
    const-string v2, "itemDownClick"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 534
    new-instance v0, Lcom/huanju/ssp/base/core/AdController;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/AdController;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 535
    .local v0, "adController":Lcom/huanju/ssp/base/core/AdController;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 536
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p3, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    .line 537
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p4, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 538
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p5, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 539
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object p6, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    .line 540
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/AdController;->clickAdDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 541
    return-void

    .line 531
    .end local v0    # "adController":Lcom/huanju/ssp/base/core/AdController;
    .end local v1    # "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .restart local v1    # "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    goto :goto_0
.end method

.method public getAdID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "img_hash":I
    const/4 v0, 0x0

    .line 68
    .local v0, "clkurl_hash":I
    const/4 v1, 0x0

    .line 70
    .local v1, "dl_url_hash":I
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 73
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdID ad.clkurl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdID222 ad.clkurl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 81
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mSourceData:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl(Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;IIII)V
    .locals 6
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;
    .param p2, "down_x"    # I
    .param p3, "down_y"    # I
    .param p4, "up_x"    # I
    .param p5, "up_y"    # I

    .prologue
    .line 290
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    if-nez v1, :cond_0

    .line 291
    const-string v1, "\u70b9\u51fb\u65f6\u6d17\u5305"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_url:Ljava/lang/String;

    const-string v2, "__REQ_WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__REQ_HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__CLICK_TYPE__"

    const-string v3, "1"

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__TS__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "mUrl":Ljava/lang/String;
    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;

    new-instance v2, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;

    invoke-direct {v2, p0, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$1;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;)V

    invoke-direct {v1, v0, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 357
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;->process()V

    .line 446
    .end local v0    # "mUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v2, "guangdiantong"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    if-nez v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p2, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 363
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p3, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    .line 364
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p4, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 365
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p5, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 366
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    const-string v2, "__REQ_WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__REQ_HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .restart local v0    # "mUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 371
    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;

    new-instance v2, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;

    invoke-direct {v2, p0, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;)V

    invoke-direct {v1, v0, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 429
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/request/ad/RequestUrlProcessor;->process()V

    goto/16 :goto_0

    .line 433
    .end local v0    # "mUrl":Ljava/lang/String;
    :cond_1
    const-string v1, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;->onReceive(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :cond_2
    new-instance v1, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$3;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$3;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;)V

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public getOpenWebUrl(IIII)Ljava/lang/String;
    .locals 5
    .param p1, "down_x"    # I
    .param p2, "down_y"    # I
    .param p3, "up_x"    # I
    .param p4, "up_y"    # I

    .prologue
    .line 453
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    const-string v2, "guangdiantong"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 455
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p2, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    .line 456
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p3, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 457
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p4, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 458
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    const-string v2, "__REQ_WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__REQ_HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WIDTH__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__HEIGHT__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DOWN_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_X__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__UP_Y__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 462
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->request_id:Ljava/lang/String;

    return-object v0
.end method

.method public itemDownClick(Landroid/content/Context;IIIILcom/huanju/ssp/sdk/inf/AdDownLoadListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "down_x"    # I
    .param p3, "down_y"    # I
    .param p4, "up_x"    # I
    .param p5, "up_y"    # I
    .param p6, "adDownLoadListener"    # Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    .prologue
    .line 510
    if-eqz p1, :cond_0

    .line 511
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 515
    .local v1, "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :goto_0
    const-string v2, "itemDownClick"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 516
    new-instance v0, Lcom/huanju/ssp/base/core/AdController;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/AdController;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 517
    .local v0, "adController":Lcom/huanju/ssp/base/core/AdController;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 518
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p3, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    .line 519
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p4, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 520
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput p5, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 521
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object p6, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    .line 522
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/AdController;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 523
    return-void

    .line 513
    .end local v0    # "adController":Lcom/huanju/ssp/base/core/AdController;
    .end local v1    # "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .restart local v1    # "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    goto :goto_0
.end method

.method public onActvTrack()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAdActTrack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdActTrack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reportad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 499
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdActTrack:Z

    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdActTrack:Z

    goto :goto_0
.end method

.method public onDplWkUp()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDplWkUp isAdDplWkUp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdDplWkUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reportad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 488
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdDplWkUp:Z

    if-eqz v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->isAdDplWkUp:Z

    goto :goto_0
.end method

.method public onJsAdClick(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 472
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 476
    .local v1, "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onJsAdClick ad.cl_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->cl_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 477
    new-instance v0, Lcom/huanju/ssp/base/core/AdController;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/AdController;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 478
    .local v0, "adController":Lcom/huanju/ssp/base/core/AdController;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->cl_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 479
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/AdController;->clickAdDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    .line 483
    :goto_1
    return-void

    .line 474
    .end local v0    # "adController":Lcom/huanju/ssp/base/core/AdController;
    .end local v1    # "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .restart local v1    # "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    goto :goto_0

    .line 481
    .restart local v0    # "adController":Lcom/huanju/ssp/base/core/AdController;
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/AdController;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    goto :goto_1
.end method
