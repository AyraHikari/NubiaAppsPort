.class Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0

    .line 1308
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

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

    .line 1313
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1314
    invoke-static {}, Lcom/zte/mifavor/widget/AlertController;->access$1000()I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;->getCount()I

    move-result p3

    if-lez p3, :cond_1

    .line 1315
    invoke-static {}, Lcom/zte/mifavor/widget/AlertController;->access$900()I

    move-result p3

    sget v0, Lcom/zte/extres/R$attr;->recycleListViewStyle:I

    if-ne p3, v0, :cond_1

    .line 1316
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_0

    .line 1317
    sget p0, Lcom/zte/extres/R$drawable;->dialog_list_bottom_item_bg:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1319
    :cond_0
    sget p0, Lcom/zte/extres/R$drawable;->dialog_list_item_bg:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
