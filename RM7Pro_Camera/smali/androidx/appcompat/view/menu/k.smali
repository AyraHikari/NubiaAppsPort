.class abstract Landroidx/appcompat/view/menu/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/m;
.implements Landroidx/appcompat/view/menu/p;


# instance fields
.field private a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 9

    const/4 v0, 0x0

    .line 147
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 148
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 149
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move-object v7, v4

    :goto_0
    if-ge v0, v3, :cond_4

    .line 151
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v4

    move v6, v8

    :cond_0
    if-nez p1, :cond_1

    .line 158
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    :cond_1
    invoke-interface {p0, v0, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 162
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 164
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p3, :cond_2

    return p3

    :cond_2
    if-le v8, v5, :cond_3

    move v5, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method protected static a(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/f;
    .locals 1

    .line 184
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 185
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/f;

    return-object p0

    .line 187
    :cond_0
    check-cast p0, Landroidx/appcompat/view/menu/f;

    return-object p0
.end method

.method protected static b(Landroidx/appcompat/view/menu/g;)Z
    .locals 5

    .line 203
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 206
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 207
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .line 71
    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->a:Landroid/graphics/Rect;

    return-void
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract a(Landroidx/appcompat/view/menu/g;)V
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Z)V
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Z)V
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Landroid/graphics/Rect;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    .line 124
    invoke-static {p1}, Landroidx/appcompat/view/menu/k;->a(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/f;

    move-result-object p2

    .line 128
    iget-object p2, p2, Landroidx/appcompat/view/menu/f;->a:Landroidx/appcompat/view/menu/g;

    .line 129
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->f()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    .line 128
    :goto_0
    invoke-virtual {p2, p1, p0, p3}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    return-void
.end method
