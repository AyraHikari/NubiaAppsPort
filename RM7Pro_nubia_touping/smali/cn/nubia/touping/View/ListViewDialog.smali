.class public Lcn/nubia/touping/View/ListViewDialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "ListViewDialog.java"


# static fields
.field private static final SEARCHING_ANIM_INTERVAL:I = 0x320

.field private static final TAG:Ljava/lang/String; = "ListViewDialog"


# instance fields
.field private final DOTS:[Ljava/lang/String;

.field private broseDeviceDoing:Landroid/widget/TextView;

.field private cancle:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private isAnimating:Z

.field private listview:Landroid/widget/ListView;

.field private mDeviceLayout:Landroid/view/View;

.field private mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

.field private mDotIndex:I

.field private mDotsTv:Landroid/widget/TextView;

.field private mNoDeviceTips:Landroid/widget/TextView;

.field private mNoWantedDeviceTips:Landroid/view/View;

.field private mResearchBtn:Landroid/widget/Button;

.field private mResearchCount:I

.field private mSearchAnimTask:Ljava/lang/Runnable;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 33
    iput v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotIndex:I

    .line 34
    iput-boolean v3, p0, Lcn/nubia/touping/View/ListViewDialog;->isAnimating:Z

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "..."

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->DOTS:[Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcn/nubia/touping/View/ListViewDialog;->context:Landroid/content/Context;

    .line 52
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcn/nubia/touping/View/ListViewDialog;->setContentView(I)V

    .line 53
    iput v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mResearchCount:I

    .line 54
    invoke-direct {p0}, Lcn/nubia/touping/View/ListViewDialog;->initView()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/View/ListViewDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/View/ListViewDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/View/ListViewDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/View/ListViewDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->DOTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$208(Lcn/nubia/touping/View/ListViewDialog;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/View/ListViewDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotIndex:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/touping/View/ListViewDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/View/ListViewDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotsTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private initView()V
    .locals 7

    .prologue
    .line 58
    const v3, 0x7f0e00ef

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mTitle:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f0e00f0

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotsTv:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0e00f3

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->listview:Landroid/widget/ListView;

    .line 61
    new-instance v3, Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    iget-object v4, p0, Lcn/nubia/touping/View/ListViewDialog;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    .line 62
    iget-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->listview:Landroid/widget/ListView;

    iget-object v4, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    const v3, 0x7f0e00f4

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->broseDeviceDoing:Landroid/widget/TextView;

    .line 64
    iget-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->context:Landroid/content/Context;

    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "wlanStr":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->context:Landroid/content/Context;

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "searchingTip":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .local v1, "spannableString":Landroid/text/SpannableString;
    new-instance v3, Lcn/nubia/touping/View/ListViewDialog$1;

    invoke-direct {v3, p0}, Lcn/nubia/touping/View/ListViewDialog$1;-><init>(Lcn/nubia/touping/View/ListViewDialog;)V

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x21

    .line 68
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 80
    iget-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->broseDeviceDoing:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->broseDeviceDoing:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 82
    const v3, 0x7f0e00f6

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->cancle:Landroid/widget/Button;

    .line 83
    const v3, 0x7f0e00f7

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mResearchBtn:Landroid/widget/Button;

    .line 84
    const v3, 0x7f0e00f5

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mNoDeviceTips:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f0e00f2

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mNoWantedDeviceTips:Landroid/view/View;

    .line 86
    const v3, 0x7f0e00f1

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/View/ListViewDialog;->mDeviceLayout:Landroid/view/View;

    .line 87
    new-instance v3, Lcn/nubia/touping/View/ListViewDialog$2;

    invoke-direct {v3, p0}, Lcn/nubia/touping/View/ListViewDialog$2;-><init>(Lcn/nubia/touping/View/ListViewDialog;)V

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/ListViewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    return-void
.end method

.method private startSearchAnim()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcn/nubia/touping/View/ListViewDialog;->isAnimating:Z

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mSearchAnimTask:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Lcn/nubia/touping/View/ListViewDialog$3;

    invoke-direct {v0, p0}, Lcn/nubia/touping/View/ListViewDialog$3;-><init>(Lcn/nubia/touping/View/ListViewDialog;)V

    iput-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mSearchAnimTask:Ljava/lang/Runnable;

    .line 231
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/touping/View/ListViewDialog;->mSearchAnimTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 232
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotsTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/touping/View/ListViewDialog;->isAnimating:Z

    goto :goto_0
.end method

.method private stopSearchAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-boolean v0, p0, Lcn/nubia/touping/View/ListViewDialog;->isAnimating:Z

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/touping/View/ListViewDialog;->mSearchAnimTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotsTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iput v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDotIndex:I

    .line 243
    iput-boolean v2, p0, Lcn/nubia/touping/View/ListViewDialog;->isAnimating:Z

    goto :goto_0
.end method


# virtual methods
.method public addResearchCount()V
    .locals 3

    .prologue
    .line 205
    iget v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mResearchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mResearchCount:I

    .line 206
    iget-object v1, p0, Lcn/nubia/touping/View/ListViewDialog;->mNoWantedDeviceTips:Landroid/view/View;

    iget v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mResearchCount:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public equaseWithShowList(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "browseDeviceList":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    const/4 v1, 0x0

    .line 167
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/View/ListViewDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v2}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->getBrowseInfoList()Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "showListData":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 173
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equaseWithShowListForMiracast(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "wifiDisplayMiracastBeanList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    const-string v4, "ListViewDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "equaseWithShowListForMiracast wifiDisplayMiracastBeanList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-nez p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v3

    .line 189
    :cond_1
    const-string v4, "ListViewDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "equaseWithShowListForMiracast isShowing() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/touping/View/ListViewDialog;->isShowing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcn/nubia/touping/View/ListViewDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    iget-object v4, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v4}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->getmiracastBeanList()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "showListData":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 193
    .local v0, "flag":Z
    :goto_1
    const-string v4, "ListViewDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "equaseWithShowListForMiracast flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v1, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0    # "flag":Z
    :cond_2
    move v0, v3

    .line 192
    goto :goto_1

    .restart local v0    # "flag":Z
    :cond_3
    move v2, v3

    .line 195
    goto :goto_2
.end method

.method public getCancleButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->cancle:Landroid/widget/Button;

    return-object v0
.end method

.method public getListview()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method public getResearchBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mResearchBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getResearchCount()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mResearchCount:I

    return v0
.end method

.method public onSearchTimeOut()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 158
    invoke-direct {p0}, Lcn/nubia/touping/View/ListViewDialog;->stopSearchAnim()V

    .line 159
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDeviceLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->broseDeviceDoing:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mNoDeviceTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    return-void
.end method

.method public resetResearchCount()V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mResearchCount:I

    .line 215
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mNoWantedDeviceTips:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    return-void
.end method

.method public updateListView()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->notifyDataSetChanged()V

    .line 155
    :cond_0
    return-void
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "browseDeviceList":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 108
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mNoDeviceTips:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const-string v2, "ListViewDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list.size 555 browseDeviceList.isEmpty() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v2}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->getmiracastBeanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-direct {p0}, Lcn/nubia/touping/View/ListViewDialog;->startSearchAnim()V

    .line 112
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mTitle:Landroid/widget/TextView;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDeviceLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->broseDeviceDoing:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-direct {p0}, Lcn/nubia/touping/View/ListViewDialog;->stopSearchAnim()V

    .line 117
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v2}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->getmiracastBeanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int v0, v2, v3

    .line 118
    .local v0, "datazise":I
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mTitle:Landroid/widget/TextView;

    const-string v3, "%s(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/nubia/touping/View/ListViewDialog;->context:Landroid/content/Context;

    const v6, 0x7f08002f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDeviceLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->broseDeviceDoing:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, p1}, Lcn/nubia/touping/View/ListViewDialog;->equaseWithShowList(Ljava/util/List;)Z

    move-result v1

    .line 122
    .local v1, "equeseWithShowing":Z
    const-string v2, "ListViewDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list.size() equeseWithShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-nez v1, :cond_0

    .line 124
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v2, p1}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->setbrowseInfoListAndUpdate(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateListViewForMiracast(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wifiDisplayMiracastBeanList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 130
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mNoDeviceTips:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    const-string v2, "ListViewDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list.size 555 wifiDisplayMiracastBeanList.isEmpty() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v2}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->getBrowseInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-direct {p0}, Lcn/nubia/touping/View/ListViewDialog;->startSearchAnim()V

    .line 134
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mTitle:Landroid/widget/TextView;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDeviceLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->broseDeviceDoing:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-direct {p0}, Lcn/nubia/touping/View/ListViewDialog;->stopSearchAnim()V

    .line 139
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v2}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->getBrowseInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int v0, v2, v3

    .line 140
    .local v0, "datazise":I
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mTitle:Landroid/widget/TextView;

    const-string v3, "%s(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/nubia/touping/View/ListViewDialog;->context:Landroid/content/Context;

    const v6, 0x7f08002f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDeviceLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->broseDeviceDoing:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-virtual {p0, p1}, Lcn/nubia/touping/View/ListViewDialog;->equaseWithShowListForMiracast(Ljava/util/List;)Z

    move-result v1

    .line 144
    .local v1, "equeseWithShowing":Z
    const-string v2, "ListViewDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list.size() equeseWithShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-nez v1, :cond_0

    .line 146
    iget-object v2, p0, Lcn/nubia/touping/View/ListViewDialog;->mDialogListViewAdapter:Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    invoke-virtual {v2, p1}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->setMiracastBeanListAndUpdate(Ljava/util/List;)V

    goto :goto_0
.end method
