.class Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 1

    .prologue
    .line 2813
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    .line 2814
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2810
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2806
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2841
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    .line 2842
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    .line 2927
    :goto_0
    return-void

    .line 2848
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2849
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2850
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->getCount()I

    move-result v2

    .line 2851
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingTop()I

    move-result v10

    .line 2852
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v14}, Lcn/nubia/weather/ui/view/DragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2854
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->access$600(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v14}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2000(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v15}, Lcn/nubia/weather/ui/view/DragSortListView;->access$400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2855
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->access$600(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v14}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2000(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v15}, Lcn/nubia/weather/ui/view/DragSortListView;->access$400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2857
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    .line 2858
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2860
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2861
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2864
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2865
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2869
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2300(Lcn/nubia/weather/ui/view/DragSortListView;)Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v14}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2100(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 2870
    invoke-static {v15}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2200(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    .line 2869
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2886
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mCurrTime:J

    .line 2887
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dt:F

    .line 2893
    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dy:I

    .line 2896
    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dy:I

    if-ltz v13, :cond_7

    .line 2897
    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dy:I

    .line 2898
    move v9, v3

    .line 2904
    .local v9, "movePos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2905
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dy:I

    add-int v11, v13, v14

    .line 2907
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2908
    move v11, v10

    .line 2912
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2602(Lcn/nubia/weather/ui/view/DragSortListView;Z)Z

    .line 2914
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcn/nubia/weather/ui/view/DragSortListView;->setSelectionFromTop(II)V

    .line 2915
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->layoutChildren()V

    .line 2916
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->invalidate()V

    .line 2918
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2602(Lcn/nubia/weather/ui/view/DragSortListView;Z)Z

    .line 2921
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v9, v8, v14}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2700(Lcn/nubia/weather/ui/view/DragSortListView;ILandroid/view/View;Z)V

    .line 2923
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mPrevTime:J

    .line 2926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2872
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2873
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2874
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2877
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2878
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2882
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v13}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2300(Lcn/nubia/weather/ui/view/DragSortListView;)Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v15}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2400(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 2883
    invoke-static {v15}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2500(Lcn/nubia/weather/ui/view/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    .line 2882
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2900
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->dy:I

    .line 2901
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2817
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mAbort:Z

    .line 2820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    .line 2821
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->tStart:J

    .line 2822
    iget-wide v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mPrevTime:J

    .line 2823
    iput p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->scrollDir:I

    .line 2824
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v0, p0}, Lcn/nubia/weather/ui/view/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2826
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2829
    if-eqz p1, :cond_0

    .line 2830
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v0, p0}, Lcn/nubia/weather/ui/view/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mScrolling:Z

    .line 2837
    :goto_0
    return-void

    .line 2833
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
