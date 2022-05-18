.class public Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 55
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    .local v0, "gv":Landroid/widget/GridView;
    :goto_0
    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->gridview:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    .line 62
    return-object v0

    .line 57
    .end local v0    # "gv":Landroid/widget/GridView;
    :cond_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "gv":Landroid/widget/GridView;
    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method
