.class public Lcom/zte/mifavor/widget/ArrayAdapterZTE;
.super Landroid/widget/ArrayAdapter;
.source "ArrayAdapterZTE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 43
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ArrayAdapterZTE;->getCount()I

    move-result p3

    if-lez p3, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ArrayAdapterZTE;->getCount()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 45
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_all_corner:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 47
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_top_corner:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ArrayAdapterZTE;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_2

    .line 49
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg_bottom_corner:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 51
    :cond_2
    sget p0, Lcom/zte/extres/R$drawable;->popupwindow_list_item_bg:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-object p2
.end method
