.class final Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;
.super Landroid/widget/ScrollView;
.source "PullToRefreshScrollView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalScrollViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 80
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 103
    invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 106
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 8
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 87
    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v7

    .line 91
    .local v7, "returnValue":Z
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 92
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;->getScrollRange()I

    move-result v5

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v6, p9

    .line 91
    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V

    .line 94
    return v7
.end method
