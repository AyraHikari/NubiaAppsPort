.class public Lcn/nubia/commonui/widget/NubiaMorePopupSub;
.super Lcn/nubia/commonui/widget/NubiaMorePopup;
.source "NubiaMorePopupSub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;
    }
.end annotation


# instance fields
.field private mItemIds:[I

.field private mMenuDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuDataListBkp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataListBkp:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaMorePopupSub;)Ljava/util/ArrayList;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addMenuItem(Ljava/lang/CharSequence;II)V
    .locals 8

    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 140
    new-instance v7, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopupSub;Ljava/lang/CharSequence;IIZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addMenuItemToBkp(Ljava/lang/CharSequence;II)V
    .locals 8

    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataListBkp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 144
    new-instance v7, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopupSub;Ljava/lang/CharSequence;IIZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private getItemPosition(Ljava/lang/CharSequence;I)I
    .locals 2

    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 66
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getmItem()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getmItemId()I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private getOrdFromBkp(Ljava/lang/CharSequence;I)I
    .locals 2

    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataListBkp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 149
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataListBkp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getmItem()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataListBkp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getmItemId()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 150
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataListBkp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getOrder()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private hidenMenuItemWithMenuID(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setMenuVisable(Ljava/lang/CharSequence;ZI)V

    return-void
.end method

.method private initMenuData([Ljava/lang/CharSequence;[I)V
    .locals 3

    .line 129
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 133
    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->addMenuItem(Ljava/lang/CharSequence;II)V

    .line 134
    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->addMenuItemToBkp(Ljava/lang/CharSequence;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private itemsContainId(Ljava/lang/CharSequence;I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 55
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 56
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getmItem()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getmItemId()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private orderByAsc(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;",
            ">;)V"
        }
    .end annotation

    .line 117
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$2;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopupSub;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private removeMenuItem(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 157
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->getItemPosition(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 158
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 159
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setMenuVisable(Ljava/lang/CharSequence;ZI)V
    .locals 0

    if-eqz p2, :cond_1

    .line 36
    invoke-direct {p0, p1, p3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->itemsContainId(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 37
    invoke-direct {p0, p1, p3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->getOrdFromBkp(Ljava/lang/CharSequence;I)I

    move-result p2

    if-gez p2, :cond_0

    .line 39
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataListBkp:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 40
    invoke-direct {p0, p1, p3, p2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->addMenuItemToBkp(Ljava/lang/CharSequence;II)V

    .line 42
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->addMenuItem(Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0, p1, p3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->itemsContainId(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 46
    invoke-direct {p0, p1, p3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->removeMenuItem(Ljava/lang/CharSequence;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showMenuItemWithMenuID(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, v0, p2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setMenuVisable(Ljava/lang/CharSequence;ZI)V

    return-void
.end method

.method private structDisplayData()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->orderByAsc(Ljava/util/ArrayList;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->initItemsState([Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 108
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getmItem()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 110
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->isEnable()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setItemEnabled(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mItems:[Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->notifyDataChange()V

    return-void
.end method


# virtual methods
.method public addMenuID([I)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mItemIds:[I

    return-void
.end method

.method public setEnableMenuItemWihtMenuID(ZLjava/lang/CharSequence;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 21
    invoke-direct {p0, p2, p3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->showMenuItemWithMenuID(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0, p2, p3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->hidenMenuItemWithMenuID(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mItemIds:[I

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->initMenuData([Ljava/lang/CharSequence;[I)V

    .line 84
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$1;-><init>(Lcn/nubia/commonui/widget/NubiaMorePopupSub;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    invoke-super {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    return-void
.end method

.method public setMenuDisable(Ljava/lang/CharSequence;IZ)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->getItemPosition(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 76
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->mMenuDataList:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {p1, p3}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->structDisplayData()V

    .line 95
    invoke-super {p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    return-void
.end method

.method public show(Z)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->structDisplayData()V

    .line 101
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show(Z)V

    return-void
.end method
