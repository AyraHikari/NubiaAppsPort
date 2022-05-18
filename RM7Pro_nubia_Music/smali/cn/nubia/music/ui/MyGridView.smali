.class public Lcn/nubia/music/ui/MyGridView;
.super Landroid/widget/GridView;
.source "MyGridView.java"


# instance fields
.field public isExpandListView:Z

.field public isOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/MyGridView;->isOnMeasure:Z

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/MyGridView;->isExpandListView:Z

    .line 15
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/MyGridView;->isOnMeasure:Z

    .line 19
    iget-boolean v0, p0, Lcn/nubia/music/ui/MyGridView;->isExpandListView:Z

    if-eqz v0, :cond_0

    .line 20
    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 22
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 26
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/MyGridView;->isOnMeasure:Z

    .line 27
    return-void

    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method
