.class public Lcn/nubia/improve/share/ShareMoreActivity;
.super Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.source "ShareMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/share/ShareMoreActivity$ViewHolder;,
        Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;,
        Lcn/nubia/improve/share/ShareMoreActivity$OnItemMoreListener;
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private arrayListIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private isSortShare:Z

.field private mActivity:Landroid/app/Activity;

.field private mListView:Landroid/widget/ListView;

.field private mShareAction:Ljava/lang/String;

.field private mShareData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShareMoreTopbarNavigation:Landroid/widget/ImageView;

.field private mShareMoreTopbarTitle:Landroid/widget/TextView;

.field private mShareNum:I

.field private mShareResolveInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareType:Ljava/lang/String;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareData:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mUris:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareResolveInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->arrayListIntents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/share/ShareMoreActivity;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/share/ShareMoreActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->isSortShare:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/improve/share/ShareMoreActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareNum:I

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->arrayList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 181
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v1, 0x400

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 184
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 53
    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/ShareMoreActivity;->setContentView(I)V

    .line 54
    iput-object p0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mActivity:Landroid/app/Activity;

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isSortShare"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->isSortShare:Z

    const-string v0, "share_resolveinfo"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareResolveInfo:Ljava/util/ArrayList;

    const-string v0, "share_uris"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mUris:Ljava/util/ArrayList;

    .line 59
    iget-boolean v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->isSortShare:Z

    if-eqz v0, :cond_0

    const-string v0, "share_action"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareAction:Ljava/lang/String;

    const-string v0, "share_type"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareType:Ljava/lang/String;

    const-string v0, "share_num"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareNum:I

    const-string v0, "share_data"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareData:Ljava/util/ArrayList;

    :cond_0
    const-string v0, "PhotoPageShareManager"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->arrayList:Ljava/util/ArrayList;

    const-string v0, "PhotoPageShareManagerINTENT"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->arrayListIntents:Ljava/util/ArrayList;

    const p1, 0x7f0901a0

    .line 67
    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/ShareMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareMoreTopbarNavigation:Landroid/widget/ImageView;

    const p1, 0x7f0901a1

    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/ShareMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareMoreTopbarTitle:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareMoreTopbarNavigation:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 71
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareMoreTopbarNavigation:Landroid/widget/ImageView;

    new-instance v0, Lcn/nubia/improve/share/ShareMoreActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/improve/share/ShareMoreActivity$1;-><init>(Lcn/nubia/improve/share/ShareMoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mShareMoreTopbarTitle:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/improve/share/ShareMoreActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/improve/share/ShareMoreActivity$2;-><init>(Lcn/nubia/improve/share/ShareMoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900b8

    .line 85
    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/ShareMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mListView:Landroid/widget/ListView;

    .line 86
    new-instance p1, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;

    invoke-direct {p1, p0}, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;-><init>(Lcn/nubia/improve/share/ShareMoreActivity;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcn/nubia/improve/share/ShareMoreActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/improve/share/ShareMoreActivity$3;-><init>(Lcn/nubia/improve/share/ShareMoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
