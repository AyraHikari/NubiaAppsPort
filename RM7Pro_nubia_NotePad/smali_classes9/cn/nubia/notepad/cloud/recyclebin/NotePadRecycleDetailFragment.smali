.class public Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
.super Landroid/app/Fragment;
.source "NotePadRecycleDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;,
        Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;
    }
.end annotation


# static fields
.field private static final MSG_CLEAR_COMPLETE:I = 0x4

.field private static final MSG_CLOUD_SESSION_INVALID:I = 0x3ef

.field private static final MSG_LOAD_NOTEPAD_LIST_COMPLETE:I = 0x5

.field private static final MSG_LOAD_NOTEPAD_LIST_FAILED:I = 0x6

.field private static final MSG_RESTORE_FAILED:I = 0x3

.field private static final MSG_RESTORE_SUCCESS:I = 0x2

.field private static final MSG_SHOW_TOAST:I = 0x1


# instance fields
.field private final NOTEPAD_SYNCTYPE:I

.field private final PAGE_SIZE:I

.field private mAppDataDir:Ljava/io/File;

.field private mAttachmentManager:Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;

.field private final mChildItemClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mClearButton:Landroid/widget/Button;

.field private mCloudSession:Ljava/lang/String;

.field private final mCollectListener:Lcn/nubia/cloud/utils/SimpleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/SummaryData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCollectNum:I

.field private mCollectTextView:Landroid/widget/TextView;

.field private mContent:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mExpandInfoAdapter:Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

.field private mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

.field private mFailServerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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

.field private mHandler:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

.field private mHasMoreData:Z

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListNotePadListener:Lcn/nubia/cloud/utils/SimpleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;",
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
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 72
    invoke-static {v2}, Lcn/nubia/cloud/service/common/SyncType;->valueOf(I)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    .line 73
    iput v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->NOTEPAD_SYNCTYPE:I

    .line 74
    const/16 v0, 0x32

    iput v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->PAGE_SIZE:I

    .line 87
    iput v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mPageIndex:I

    .line 88
    iput-boolean v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mHasMoreData:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mLoadFinish:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mDialogList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFailServerIds:Ljava/util/List;

    .line 201
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$4;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectListener:Lcn/nubia/cloud/utils/SimpleListener;

    .line 226
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mListNotePadListener:Lcn/nubia/cloud/utils/SimpleListener;

    .line 427
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$11;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$11;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mChildItemClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->showClearTips()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mHasMoreData:Z

    return v0
.end method

.method static synthetic access$1002(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mHasMoreData:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->loadComplete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getCollectSum()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->clearRecycle()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->clear()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandInfoAdapter:Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->childItemClickDo(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->restoreItem(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/view/RecycleExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mLoadFinish:Z

    return v0
.end method

.method static synthetic access$1902(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mLoadFinish:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCloudSession:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->loadData()V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->saveData(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mAttachmentManager:Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mAppDataDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContent:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$2700(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2800(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/commonui/app/ProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->hideProgress(Lcn/nubia/commonui/app/ProgressDialog;)V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->showToast(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/service/common/SyncType;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mSyncType:Lcn/nubia/cloud/service/common/SyncType;

    return-object v0
.end method

.method static synthetic access$3000(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->showOverTimeDialog()V

    return-void
.end method

.method static synthetic access$3100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->refreshView()V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->emptyItemDeal()V

    return-void
.end method

.method static synthetic access$3300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->updateInRecycleNum()V

    return-void
.end method

.method static synthetic access$3400(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->loadDataFailed()V

    return-void
.end method

.method static synthetic access$3500(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->updateCollectNum()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mPageIndex:I

    return v0
.end method

.method static synthetic access$408(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mPageIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mPageIndex:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/utils/SimpleListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mListNotePadListener:Lcn/nubia/cloud/utils/SimpleListener;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mRecyclebinClient:Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/utils/SimpleListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectListener:Lcn/nubia/cloud/utils/SimpleListener;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectNum:I

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mHandler:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    return-object v0
.end method

.method private childItemClickDo(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
    .locals 4
    .param p1, "info"    # Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    .line 440
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f090005

    new-instance v3, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;

    invoke-direct {v3, p0, p1, p2, p3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$12;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 456
    const v2, 0x7f0a0034

    new-instance v3, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$13;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$13;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 470
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 471
    .local v1, "dialog":Landroid/content/DialogInterface;
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 495
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 496
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFailServerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 497
    return-void
.end method

.method private clearRecycle()V
    .locals 3

    .prologue
    .line 387
    const v1, 0x7f0a0091

    invoke-direct {p0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->createdProgressDialog(I)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 388
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 389
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const v2, 0x7f0d0098

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setAnimPanelBackground(I)V

    .line 391
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$9;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$9;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    .line 413
    .local v0, "listener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<Lcn/nubia/cloud/utils/NBResponse;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;

    invoke-direct {v2, p0, v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method private createdProgressDialog(I)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 2
    .param p1, "tipsResId"    # I

    .prologue
    .line 504
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 505
    .local v0, "dialog":Lcn/nubia/commonui/app/ProgressDialog;
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 507
    return-object v0
.end method

.method private emptyItemDeal()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/RecycleExpandableListView;->removeFooterView(Landroid/view/View;)Z

    .line 377
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/RecycleExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/RecycleExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getCollectSum()V
    .locals 2

    .prologue
    .line 188
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$3;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method private groupByDate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    const/4 v2, 0x0

    .line 330
    .local v2, "lastDate":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "childItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 332
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastDate":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 333
    .restart local v2    # "lastDate":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "childItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 334
    .restart local v0    # "childItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 336
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 337
    .local v1, "info":Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmDeleteDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 341
    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmDeleteDate()Ljava/lang/String;

    move-result-object v2

    .line 346
    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v1    # "info":Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    :cond_3
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method private hideProgress(Lcn/nubia/commonui/app/ProgressDialog;)V
    .locals 1
    .param p1, "progressDialog"    # Lcn/nubia/commonui/app/ProgressDialog;

    .prologue
    .line 511
    if-eqz p1, :cond_0

    .line 512
    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 515
    :cond_0
    return-void
.end method

.method private loadComplete(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;

    .line 274
    .local v8, "gbData":Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;
    invoke-virtual {v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->hasAttachMent()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "yes"

    .line 275
    invoke-virtual {v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->getAttachMent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :cond_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFormatDataString:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 280
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->getDeletedTime()J

    move-result-wide v2

    const-wide/16 v12, 0x3e8

    mul-long/2addr v2, v12

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "deleteDate":Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "today":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mToday:Ljava/lang/String;

    .line 286
    :cond_2
    new-instance v1, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 287
    invoke-virtual {v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->getServerID()J

    move-result-wide v2

    invoke-virtual {v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->getCloudPath()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-virtual {v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->getItemJson()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/ParcelableJson;)V

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    .end local v4    # "deleteDate":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v8    # "gbData":Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;
    .end local v9    # "today":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 291
    invoke-direct {p0, v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->groupByDate(Ljava/util/ArrayList;)V

    .line 293
    :cond_4
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method private loadDataFailed()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootViewProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootViewTextView:Landroid/widget/TextView;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    return-void
.end method

.method private refreshView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 353
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandInfoAdapter:Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->updateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandInfoAdapter:Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

    invoke-virtual {v2}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->getGroupCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 355
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    invoke-virtual {v2, v1}, Lcn/nubia/notepad/view/RecycleExpandableListView;->expandGroup(I)Z

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->emptyItemDeal()V

    .line 358
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootViewProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootViewTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mLoadFinish:Z

    .line 361
    return-void
.end method

.method private restoreItem(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
    .locals 3
    .param p1, "info"    # Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    .param p2, "groupId"    # I
    .param p3, "childId"    # I

    .prologue
    .line 519
    const v1, 0x7f0a0097

    invoke-direct {p0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->createdProgressDialog(I)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 520
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 521
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const v2, 0x7f0d0098

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setAnimPanelBackground(I)V

    .line 524
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V

    .line 569
    .local v0, "restoreListener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<Lcn/nubia/cloud/utils/NBResponse;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;

    invoke-direct {v2, p0, p1, v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 652
    return-void
.end method

.method private saveData(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;)V
    .locals 11
    .param p1, "info"    # Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .prologue
    const/4 v10, 0x1

    .line 655
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v6, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContent:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmServerId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 658
    const-string v7, "content"

    iget-object v6, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContent:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmServerId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v6, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContent:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmServerId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->remove(J)V

    .line 663
    :goto_0
    const-string v6, "resource"

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getResource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v6, "mode"

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getMode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    const-string v6, "modified"

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getModifyDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    const-string v6, "classify"

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getClassify()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getRemind()I

    move-result v1

    .line 668
    .local v1, "remind":I
    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getRemindTime()J

    move-result-wide v2

    .line 669
    .local v2, "remindTime":J
    if-ne v1, v10, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 670
    const-string v6, "remind"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    const-string v6, "remind_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 673
    :cond_0
    const-string v6, "top"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    const-string v6, "server_id"

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmServerId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    const-string v6, "modify"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    iget-object v6, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 680
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 681
    .local v0, "id":I
    if-ne v1, v10, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 682
    iget-object v6, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3, v0}, Lcn/nubia/notepad/utils/Util;->setRemindAlarm(Landroid/content/Context;JI)V

    .line 684
    :cond_1
    return-void

    .line 661
    .end local v0    # "id":I
    .end local v1    # "remind":I
    .end local v2    # "remindTime":J
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v6, "content"

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showClearTips()V
    .locals 7

    .prologue
    .line 296
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0092

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 299
    .local v3, "items":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f030053

    invoke-direct {v0, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 301
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v4, 0x7f0a0034

    new-instance v5, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$7;

    invoke-direct {v5, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$7;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    invoke-virtual {v1, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 310
    new-instance v4, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$8;

    invoke-direct {v4, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$8;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    invoke-virtual {v1, v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 323
    const v4, 0x7f0a0016

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    .line 325
    .local v2, "dialog":Landroid/content/DialogInterface;
    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method private showOverTimeDialog()V
    .locals 4

    .prologue
    .line 254
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0a00a3

    new-instance v3, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$6;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$6;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 265
    const v2, 0x7f0a0017

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 266
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 267
    .local v1, "dialog":Landroid/content/DialogInterface;
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 501
    return-void
.end method

.method private updateCollectNum()V
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectNum:I

    .line 370
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 369
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method private updateInRecycleNum()V
    .locals 5

    .prologue
    .line 364
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandInfoAdapter:Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

    .line 365
    invoke-virtual {v4}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->getTotalItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 364
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    .line 107
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContent:Landroid/util/LongSparseArray;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mGroupList:Ljava/util/ArrayList;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mItemList:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFormatDataString:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mToday:Ljava/lang/String;

    .line 113
    new-instance v1, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mHandler:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    .line 115
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mRecyclebinClient:Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    .line 116
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cloud_session"

    .line 117
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCloudSession:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 125
    const v2, 0x7f030037

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f00ee

    .line 127
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/view/RecycleExpandableListView;

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    .line 128
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mChildItemClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/view/RecycleExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 129
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    new-instance v3, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;

    invoke-direct {v3, p0, v5}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$MyScrollListener;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$1;)V

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/view/RecycleExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 130
    const v2, 0x7f0f00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mCollectTextView:Landroid/widget/TextView;

    .line 131
    const v2, 0x7f030015

    invoke-virtual {p1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootView:Landroid/view/View;

    .line 132
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootView:Landroid/view/View;

    const v3, 0x7f0f0048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootViewProgressBar:Landroid/widget/ProgressBar;

    .line 133
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootView:Landroid/view/View;

    const v3, 0x7f0f0049

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootViewTextView:Landroid/widget/TextView;

    .line 134
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/view/RecycleExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 135
    new-instance v2, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandInfoAdapter:Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

    .line 136
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandInfoAdapter:Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/view/RecycleExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 137
    const v2, 0x7f0f00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mClearButton:Landroid/widget/Button;

    .line 138
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mClearButton:Landroid/widget/Button;

    new-instance v3, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$1;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$1;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v2, 0x7f030023

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mEmptyView:Landroid/view/View;

    .line 145
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mEmptyView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mExpandListView:Lcn/nubia/notepad/view/RecycleExpandableListView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/RecycleExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    new-instance v2, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;

    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mAttachmentManager:Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;

    .line 148
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->loadData()V

    .line 152
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "mAppFilesDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "user-0"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mAppDataDir:Ljava/io/File;

    .line 155
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    .line 162
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 165
    .end local v0    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->clear()V

    .line 166
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-direct {p0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->hideProgress(Lcn/nubia/commonui/app/ProgressDialog;)V

    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 168
    return-void
.end method
