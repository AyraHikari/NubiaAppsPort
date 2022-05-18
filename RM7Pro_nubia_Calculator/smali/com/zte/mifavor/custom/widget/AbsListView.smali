.class public Lcom/zte/mifavor/custom/widget/AbsListView;
.super Ljava/lang/Object;
.source "AbsListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsListView"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onInterceptTouchEvent_setMenuItemSelector([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 16
    aget-object v0, p0, v0

    check-cast v0, Landroid/content/Context;

    .line 17
    invoke-static {v0}, Lcom/zte/mifavor/custom/Config;->isMifavorTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 20
    aget-object v1, p0, v0

    check-cast v1, Landroid/widget/AbsListView;

    .line 21
    instance-of v2, v1, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    .line 22
    aget-object p0, p0, v2

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_3

    .line 27
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne p0, v2, :cond_2

    .line 28
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_all_corner:I

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->setSelector(I)V

    goto :goto_0

    .line 30
    :cond_2
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_top_corner:I

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->setSelector(I)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne p0, v2, :cond_4

    .line 33
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_bottom_corner:I

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->setSelector(I)V

    goto :goto_0

    .line 35
    :cond_4
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg:I

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->setSelector(I)V

    :cond_5
    :goto_0
    return-void
.end method
