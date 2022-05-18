.class Lcom/zte/mifavor/widget/ZTEPopupWindow$ZTEPopupWindowItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ZTEPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/ZTEPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZTEPopupWindowItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEPopupWindow$ZTEPopupWindowItemAdapter;->getCount()I

    move-result p3

    if-lez p3, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEPopupWindow$ZTEPopupWindowItemAdapter;->getCount()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 87
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_all_corner:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 89
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_top_corner:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEPopupWindow$ZTEPopupWindowItemAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_2

    .line 91
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_bottom_corner:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 93
    :cond_2
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
