.class public Lcom/android/common/ui/InnerScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/android/common/ui/InnerScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/InnerScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/common/ui/InnerScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/common/ui/InnerScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/common/ui/InnerScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 41
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
