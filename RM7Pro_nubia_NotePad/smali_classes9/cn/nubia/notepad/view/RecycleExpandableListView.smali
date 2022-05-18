.class public Lcn/nubia/notepad/view/RecycleExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "RecycleExpandableListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/RecycleExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 14
    new-instance v0, Lcn/nubia/notepad/view/RecycleExpandableListView$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/RecycleExpandableListView$1;-><init>(Lcn/nubia/notepad/view/RecycleExpandableListView;)V

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/RecycleExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 21
    return-void
.end method
