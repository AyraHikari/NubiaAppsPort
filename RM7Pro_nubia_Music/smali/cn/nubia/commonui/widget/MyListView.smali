.class public Lcn/nubia/commonui/widget/MyListView;
.super Landroid/widget/ListView;
.source "MyListView.java"


# instance fields
.field private mMaxHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/MyListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/MyListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/MyListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_character_list_view_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/commonui/widget/MyListView;->mMaxHeight:F

    .line 28
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 33
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 35
    int-to-float v2, v0

    iget v3, p0, Lcn/nubia/commonui/widget/MyListView;->mMaxHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    int-to-float v0, v0

    :goto_0
    float-to-int v0, v0

    .line 36
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 38
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    .line 39
    return-void

    .line 35
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/MyListView;->mMaxHeight:F

    goto :goto_0
.end method
