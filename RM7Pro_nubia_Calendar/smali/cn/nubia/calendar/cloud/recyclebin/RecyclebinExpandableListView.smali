.class public Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "RecyclebinExpandableListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 13
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView$1;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;)V

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 20
    return-void
.end method
