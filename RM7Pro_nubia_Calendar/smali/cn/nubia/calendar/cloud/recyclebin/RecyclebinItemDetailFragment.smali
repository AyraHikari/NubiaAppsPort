.class public Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
.super Landroid/app/Fragment;
.source "RecyclebinItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;
    }
.end annotation


# static fields
.field private static final MSG_CLOUD_SESSION_INVALID:I = 0x3ef


# instance fields
.field private final PAGE_SIZE:I

.field comparetor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildItemClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mClearButton:Landroid/widget/Button;

.field private mCloudSession:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mExpandInfoAdapter:Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;

.field private mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

.field private mFootView:Landroid/view/View;

.field private mFootViewProgressBar:Landroid/widget/ProgressBar;

.field private mFootViewTextView:Landroid/widget/TextView;

.field private mFormatDataString:Ljava/lang/String;

.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMoreData:Z

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListCalendarListener:Lcn/nubia/cloud/utils/SimpleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoadFinish:Z

.field private mPageIndex:I

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mRecyclebinClient:Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

.field private final mSyncType:Lcn/nubia/cloud/service/common/SyncType;

.field private mToday:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 51
    const/4 v0, 0x3

    invoke-static {v0}, Lcn/nubia/cloud/service/common/SyncType;->valueOf(I)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->PAGE_SIZE:I

    .line 55
    iput v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mPageIndex:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mLoadFinish:Z

    .line 66
    iput-boolean v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mHasMoreData:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mDialogList:Ljava/util/List;

    .line 239
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mListCalendarListener:Lcn/nubia/cloud/utils/SimpleListener;

    .line 284
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$10;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$10;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->comparetor:Ljava/util/Comparator;

    .line 392
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$12;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$12;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mChildItemClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->showClearTips()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mRecyclebinClient:Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->refreshView()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->emptyItemDeal()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mPageIndex:I

    return v0
.end method

.method static synthetic access$1308(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mPageIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mPageIndex:I

    return v0
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/utils/SimpleListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mListCalendarListener:Lcn/nubia/cloud/utils/SimpleListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mHasMoreData:Z

    return v0
.end method

.method static synthetic access$1502(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mHasMoreData:Z

    return p1
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->loadComplete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootViewProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootViewTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandInfoAdapter:Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->clearRecyclebin()V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p1, "x1"    # Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->childItemClickDo(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p1, "x1"    # Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->restoreItem(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->showMassageToast(I)V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    return-object v0
.end method

.method static synthetic access$2600(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mLoadFinish:Z

    return v0
.end method

.method static synthetic access$2602(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mLoadFinish:Z

    return p1
.end method

.method static synthetic access$2700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->loadData()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->clearComplete()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/commonui/app/ProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p1, "x1"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->hideProgress(Lcn/nubia/commonui/app/ProgressDialog;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->showOverTimeDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mCloudSession:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/service/common/SyncType;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    return-object v0
.end method

.method private callToNum(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 445
    .local v0, "callIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 446
    return-void
.end method

.method private childItemClickDo(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V
    .locals 6
    .param p1, "info"    # Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    .line 404
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f0c01fd

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 405
    .local v2, "items":[Ljava/lang/String;
    new-instance v3, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;

    invoke-direct {v3, p0, p1, p2, p3}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$13;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V

    .line 422
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v4, 0x7f0c011b

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 425
    const/high16 v4, 0x1040000

    new-instance v5, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$14;

    invoke-direct {v5, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$14;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 432
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 433
    .local v1, "dialog":Landroid/content/DialogInterface;
    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    return-void
.end method

.method private clearComplete()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->clear()V

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$6;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$6;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method private clearRecyclebin()V
    .locals 3

    .prologue
    .line 163
    const v1, 0x7f0c0228

    invoke-direct {p0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->createdProgressDialog(I)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 164
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 165
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$4;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    .line 191
    .local v0, "listener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<Lcn/nubia/cloud/utils/NBResponse;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$5;

    invoke-direct {v2, p0, v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$5;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method private createdProgressDialog(I)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 2
    .param p1, "tipsResId"    # I

    .prologue
    .line 542
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 543
    .local v0, "dialog":Lcn/nubia/commonui/app/ProgressDialog;
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 544
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 545
    return-object v0
.end method

.method private emptyItemDeal()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->removeFooterView(Landroid/view/View;)Z

    .line 385
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private groupByDate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    const/4 v2, 0x0

    .line 342
    .local v2, "lastDate":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "childItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    iget-object v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 344
    iget-object v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastDate":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 345
    .restart local v2    # "lastDate":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "childItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 346
    .restart local v0    # "childItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    iget-object v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 348
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

    .line 349
    .local v1, "info":Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    invoke-virtual {v1}, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->getmDeleteDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 353
    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {v1}, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->getmDeleteDate()Ljava/lang/String;

    move-result-object v2

    .line 358
    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .end local v1    # "info":Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method private hideProgress(Lcn/nubia/commonui/app/ProgressDialog;)V
    .locals 1
    .param p1, "progressDialog"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 549
    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 553
    :cond_0
    return-void
.end method

.method private loadComplete(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;>;"
    iget-object v5, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->comparetor:Ljava/util/Comparator;

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;

    .line 303
    .local v3, "gbData":Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFormatDataString:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    .line 306
    invoke-virtual {v3}, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->getDeletedTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 305
    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "deleteDate":Ljava/lang/String;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "today":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mToday:Ljava/lang/String;

    .line 312
    :cond_0
    new-instance v6, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

    invoke-virtual {v3}, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->getServerID()J

    move-result-wide v8

    .line 313
    invoke-virtual {v3}, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v9, v7, v2}, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "deleteDate":Ljava/lang/String;
    .end local v3    # "gbData":Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;
    .end local v4    # "today":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 316
    invoke-direct {p0, v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->groupByDate(Ljava/util/ArrayList;)V

    .line 318
    :cond_2
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$11;

    invoke-direct {v6, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$11;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method private refreshView()V
    .locals 5

    .prologue
    .line 365
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandInfoAdapter:Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;

    iget-object v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->updateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 366
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandInfoAdapter:Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;

    invoke-virtual {v2}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->getGroupCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 367
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    invoke-virtual {v2, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->expandGroup(I)Z

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->emptyItemDeal()V

    .line 370
    iget-boolean v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mHasMoreData:Z

    if-nez v2, :cond_1

    .line 371
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootViewProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootViewTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mLoadFinish:Z

    .line 379
    return-void

    .line 375
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootViewTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private restoreItem(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V
    .locals 3
    .param p1, "info"    # Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    .param p2, "groupId"    # I
    .param p3, "childId"    # I

    .prologue
    .line 450
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    invoke-direct {v0, p0, p2, p3}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;II)V

    .line 494
    .local v0, "restoreListener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<Lcn/nubia/cloud/utils/NBResponse;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;

    invoke-direct {v2, p0, p1, v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method

.method private showClearTips()V
    .locals 6

    .prologue
    .line 136
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f0c00f0

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 137
    .local v2, "items":[Ljava/lang/String;
    new-instance v3, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$2;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$2;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    .line 143
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v4, 0x7f0c0232

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 146
    const/high16 v4, 0x1040000

    new-instance v5, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$3;

    invoke-direct {v5, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$3;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 154
    .local v1, "dialog":Landroid/content/DialogInterface;
    iget-object v4, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private showMassageToast(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 535
    return-void
.end method

.method private showMassageToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 539
    return-void
.end method

.method private showOverTimeDialog(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 269
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x104000a

    new-instance v3, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$9;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$9;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 279
    const-string v2, "time out"

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 281
    .local v1, "dialog":Landroid/content/DialogInterface;
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method private smsToNum(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 439
    .local v0, "smsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 440
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 74
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mContext:Landroid/content/Context;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mGroupList:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mItemList:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0229

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFormatDataString:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c022a

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mToday:Ljava/lang/String;

    .line 82
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mRecyclebinClient:Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    .line 83
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cloud_session"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mCloudSession:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 93
    const v1, 0x7f0300b0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f11024c

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    .line 97
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mChildItemClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 98
    new-instance v1, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;

    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandInfoAdapter:Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;

    .line 99
    const v1, 0x7f03005a

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootView:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootView:Landroid/view/View;

    const v2, 0x7f11018e

    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootViewProgressBar:Landroid/widget/ProgressBar;

    .line 103
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootView:Landroid/view/View;

    const v2, 0x7f11018f

    .line 104
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootViewTextView:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    new-instance v2, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;

    invoke-direct {v2, p0, v4}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$MyScrollListener;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$1;)V

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 106
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandInfoAdapter:Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 108
    const v1, 0x7f11024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mClearButton:Landroid/widget/Button;

    .line 109
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mClearButton:Landroid/widget/Button;

    new-instance v2, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$1;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$1;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f030059

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mEmptyView:Landroid/view/View;

    .line 117
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mExpandListView:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;

    invoke-virtual {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->loadData()V

    .line 120
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    .line 332
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 335
    .end local v0    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->clear()V

    .line 336
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-direct {p0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->hideProgress(Lcn/nubia/commonui/app/ProgressDialog;)V

    .line 337
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 338
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    return-void
.end method
