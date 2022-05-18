.class public Lcn/nubia/notepad/NoteListActivity;
.super Lcn/nubia/notepad/NotePadActivity;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams",
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;,
        Lcn/nubia/notepad/NoteListActivity$TimeObserver;,
        Lcn/nubia/notepad/NoteListActivity$LeftAndRightHandObserver;,
        Lcn/nubia/notepad/NoteListActivity$SingleReverseObserver;,
        Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/notepad/NotePadActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;"
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "notepad_all_note_buttom"

.field private static final MSG_GET_CLOUD_STATUS:I = 0x1

.field private static final MSG_QUERY_NOTE_CONTENT_COMPLETED:I = 0x0

.field private static final MSG_SHOW_LABEL_DIALOG:I = 0x3

.field private static final MSG_SHOW_LABEL_LIST:I = 0x2

.field private static final MSG_SHOW_LABEL_NAME:I = 0x4

.field private static final SYNC_DELAY:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "NoteListActivity"


# instance fields
.field private final DEFAULT_LABEL_ID:Ljava/lang/String;

.field private final FIRST_FORCE_TOUCH:Ljava/lang/String;

.field private final NOTEPAD_LOADER:I

.field private final NOTEPAD_SEARCH_LOCATION:I

.field private final REQUEST_CLOUD_ACTIVITY:I

.field private final REQUEST_CLOUD_ACTIVITY_NOACCONUT_BEFORE:I

.field private final SYNC_MIN_INTERVAL_TIME:I

.field private headerView:Landroid/view/View;

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

.field private mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

.field private mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurLabelId:I

.field private mCurViewMode:Z

.field private mFooterView:Landroid/view/View;

.field private mGoBackButton:Landroid/widget/Button;

.field private mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsActionMode:Z

.field private mIsForceTouchSearchAction:Z

.field private mIsLargeTitleOpen:Z

.field private mIsLeftHandMode:Z

.field private mIsSearchMode:Z

.field private mIsSingleReverseOpen:Z

.field private mIsTop:Z

.field private mLabelAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

.field private mLabelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftAndRightHandObserver:Landroid/database/ContentObserver;

.field private mListBottom:Landroid/view/View;

.field private mListEmptyLayout:Landroid/widget/LinearLayout;

.field private mListEmptyText:Landroid/widget/TextView;

.field private mListEmptyTextImg:Landroid/widget/ImageView;

.field private mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

.field private mListViewHeaderHeight:I

.field private mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mMenuLabel:Landroid/widget/TextView;

.field private mMenuLabelMove:Landroid/view/MenuItem;

.field private mMenuNewText:Landroid/widget/TextView;

.field private mMenuTop:Landroid/view/MenuItem;

.field private mMobileSyncPermit:Z

.field private mNotePadNewImg:Landroid/widget/ImageView;

.field private mNotePadSearchImg:Landroid/widget/ImageView;

.field private mNotesData:Lcn/nubia/notepad/utils/NotesData;

.field private mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

.field private mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

.field private mQueryText:Ljava/lang/String;

.field private mReStartSync:Z

.field private mRealSearchViewEditText:Landroid/widget/EditText;

.field private mRegeditListener:Z

.field private mSearchAnimSet:Landroid/animation/AnimatorSet;

.field private mSearchIcon:Landroid/view/View;

.field private mSearchInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSearchLayout:Landroid/view/View;

.field private mSearchMarginBottom:I

.field private mSearchMask:Landroid/view/View;

.field private mSelectAllListener:Landroid/view/View$OnClickListener;

.field private mSelectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSharePreference:Landroid/content/SharedPreferences;

.field private mShowGuideButton:Z

.field private mSingleReverseObserver:Landroid/database/ContentObserver;

.field private mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;

.field private mSyncManger:Lcn/nubia/cloud/sync/common/SyncManager;

.field private mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mTimeObserver:Landroid/database/ContentObserver;

.field private querySpannableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/SpannableStringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v1, 0x3e8

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadActivity;-><init>()V

    .line 122
    iput v1, p0, Lcn/nubia/notepad/NoteListActivity;->REQUEST_CLOUD_ACTIVITY:I

    .line 123
    const/16 v0, 0x3e9

    iput v0, p0, Lcn/nubia/notepad/NoteListActivity;->REQUEST_CLOUD_ACTIVITY_NOACCONUT_BEFORE:I

    .line 124
    const/16 v0, 0x7d0

    iput v0, p0, Lcn/nubia/notepad/NoteListActivity;->SYNC_MIN_INTERVAL_TIME:I

    .line 126
    iput v1, p0, Lcn/nubia/notepad/NoteListActivity;->NOTEPAD_SEARCH_LOCATION:I

    .line 128
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/notepad/NoteListActivity;->NOTEPAD_LOADER:I

    .line 129
    const-string v0, "default label id"

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->DEFAULT_LABEL_ID:Ljava/lang/String;

    .line 130
    const-string v0, "first force touch"

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->FIRST_FORCE_TOUCH:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->querySpannableMap:Ljava/util/Map;

    .line 177
    iput-boolean v3, p0, Lcn/nubia/notepad/NoteListActivity;->mShowGuideButton:Z

    .line 179
    iput v3, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    .line 180
    iput v3, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMarginBottom:I

    .line 188
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchInterpolator:Landroid/view/animation/PathInterpolator;

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchAnimSet:Landroid/animation/AnimatorSet;

    .line 196
    iput-boolean v3, p0, Lcn/nubia/notepad/NoteListActivity;->mIsForceTouchSearchAction:Z

    .line 1048
    new-instance v0, Lcn/nubia/notepad/NoteListActivity$10;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/NoteListActivity$10;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectAllListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->selectAll()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->selectNone()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->setupGuideButtonState()V

    return-void
.end method

.method static synthetic access$1202(Lcn/nubia/notepad/NoteListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcn/nubia/notepad/NoteListActivity;->mShowGuideButton:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/DownSynchroniozeListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->searchNote()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyTextImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->querySpannableMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1702(Lcn/nubia/notepad/NoteListActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 109
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity;->querySpannableMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1800(Lcn/nubia/notepad/NoteListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/NoteListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    return v0
.end method

.method static synthetic access$2000(Lcn/nubia/notepad/NoteListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReStartSync:Z

    return v0
.end method

.method static synthetic access$2002(Lcn/nubia/notepad/NoteListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcn/nubia/notepad/NoteListActivity;->mReStartSync:Z

    return p1
.end method

.method static synthetic access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/nubia/notepad/NoteListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mRegeditListener:Z

    return v0
.end method

.method static synthetic access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/notepad/NoteListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getNotesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->unregeditSyncListener()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showSyncPemitDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    return-object v0
.end method

.method static synthetic access$2800(Lcn/nubia/notepad/NoteListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget v0, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    return v0
.end method

.method static synthetic access$2802(Lcn/nubia/notepad/NoteListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    return p1
.end method

.method static synthetic access$2900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showLabelMoveDialog()V

    return-void
.end method

.method static synthetic access$3100(Lcn/nubia/notepad/NoteListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getLabelNameByLabelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/SyncListenerIml;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;

    return-object v0
.end method

.method static synthetic access$3400(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/cloud/sync/common/SyncManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncManger:Lcn/nubia/cloud/sync/common/SyncManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcn/nubia/notepad/NoteListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->canStartNotePadSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startNotePadSync()V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcn/nubia/notepad/NoteListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcn/nubia/notepad/NoteListActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/NoteListActivity;->updateNotesList(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcn/nubia/notepad/NoteListActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NoteListActivity;->checkIsLabelExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/utils/NotesData;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    return-object v0
.end method

.method static synthetic access$4200(Lcn/nubia/notepad/NoteListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NoteListActivity;->updateNotesLabel(I)V

    return-void
.end method

.method static synthetic access$4300(Lcn/nubia/notepad/NoteListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NoteListActivity;->startQueryLabelData(I)V

    return-void
.end method

.method static synthetic access$4400(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4500(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$4600(Lcn/nubia/notepad/NoteListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NoteListActivity;->createLabel(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->cancelSearchMode()V

    return-void
.end method

.method static synthetic access$4800(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5000(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    return-object v0
.end method

.method static synthetic access$5102(Lcn/nubia/notepad/NoteListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcn/nubia/notepad/NoteListActivity;->mMobileSyncPermit:Z

    return p1
.end method

.method static synthetic access$5200(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startNotePadSyncing()V

    return-void
.end method

.method static synthetic access$5300(Lcn/nubia/notepad/NoteListActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSharePreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5400(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showSearchbyForceTouch()V

    return-void
.end method

.method static synthetic access$5500(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showSearch()V

    return-void
.end method

.method static synthetic access$5600(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startNotePadSearch()V

    return-void
.end method

.method static synthetic access$5700(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mRealSearchViewEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/notepad/NoteListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NoteListActivity;->searchNote(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/notepad/NoteListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/notepad/NoteListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    return v0
.end method

.method private canStartNotePadSync()Z
    .locals 3

    .prologue
    .line 1614
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    .line 1615
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1614
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/settings/common/CloudSettings$App;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private cancelSearchMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1106
    iput-boolean v3, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    .line 1107
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showTitle()V

    .line 1108
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->querySpannableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1109
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mRealSearchViewEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setIsSearchMode(Z)V

    .line 1111
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setLongClickable(Z)V

    .line 1112
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v3}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setSearchMode(Z)V

    .line 1113
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mCurViewMode:Z

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setStackFromBottom(Z)V

    .line 1114
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    .line 1115
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setEnabled(Z)V

    .line 1116
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    .line 1117
    invoke-virtual {v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1118
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1119
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSelection()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-direct {p0, v1, v2}, Lcn/nubia/notepad/NoteListActivity;->updateNotesList(Ljava/lang/String;Z)V

    .line 1121
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-static {}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isCloudSyncEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setCanDragToSynchronization(Z)V

    .line 1122
    return-void
.end method

.method private checkIsLabelExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "labelName"    # Ljava/lang/String;

    .prologue
    .line 1813
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 1814
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1815
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1818
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1819
    const/4 v1, 0x1

    .line 1822
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private create()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "NoteListActivity"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->initData()V

    .line 227
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->handleIntent(Landroid/content/Intent;)V

    .line 228
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startDataStatistic()V

    .line 229
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->registerContentObserver()V

    .line 230
    new-instance v0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->upgrade()V

    .line 231
    return-void
.end method

.method private createDeleteItemsDialog()V
    .locals 4

    .prologue
    .line 947
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 948
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0a004a

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 949
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0034

    .line 950
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/NoteListActivity$8;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/NoteListActivity$8;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    .line 949
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 957
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0048

    .line 958
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/NoteListActivity$9;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/NoteListActivity$9;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    .line 957
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 965
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 966
    .local v1, "mAlertDialog":Lcn/nubia/commonui/app/AlertDialog;
    const/4 v2, -0x1

    const v3, 0x7f0d00c4

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/NoteListActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 967
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 968
    return-void
.end method

.method private createLabel(Z)V
    .locals 4
    .param p1, "moveNoteLabel"    # Z

    .prologue
    .line 1784
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1785
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 1788
    :cond_0
    new-instance v0, Lcn/nubia/notepad/NoteListActivity$17;

    invoke-direct {v0, p0, p1}, Lcn/nubia/notepad/NoteListActivity$17;-><init>(Lcn/nubia/notepad/NoteListActivity;Z)V

    .line 1807
    .local v0, "inputListener":Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;
    new-instance v1, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;)V

    .line 1809
    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->show()V

    .line 1810
    return-void
.end method

.method private createSearchMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1089
    iput-boolean v4, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    .line 1090
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showTitle()V

    .line 1091
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->isStackFromBottom()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mCurViewMode:Z

    .line 1092
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setIsSearchMode(Z)V

    .line 1093
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v3}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setLongClickable(Z)V

    .line 1094
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v3}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setEnabled(Z)V

    .line 1095
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setSearchMode(Z)V

    .line 1096
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setStackFromBottom(Z)V

    .line 1097
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    .line 1098
    invoke-virtual {v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1099
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1100
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-virtual {v1, v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setCanDragToSynchronization(Z)V

    .line 1102
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-virtual {v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->hideHeaderOrFooter()V

    .line 1103
    return-void
.end method

.method private createSearchRelultTitle(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 11
    .param p1, "note"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .param p2, "queryText"    # Ljava/lang/String;
    .param p3, "queryResult"    # Ljava/lang/String;
    .param p4, "count"    # I

    .prologue
    const/4 v10, 0x0

    .line 1233
    const-string v7, ""

    .line 1234
    .local v7, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1235
    .local v5, "spannable":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .line 1236
    .local v4, "spanIndex":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 1237
    .local v3, "length":I
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1238
    .local v2, "index":I
    add-int/lit8 v8, v2, -0xa

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1239
    .local v6, "start":I
    div-int/lit8 v8, p4, 0x2

    sub-int v9, v3, v2

    .line 1240
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v1, v2, v8

    .line 1241
    .local v1, "end":I
    const/16 v4, 0xa

    .line 1242
    if-nez v6, :cond_0

    .line 1243
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1244
    move v4, v2

    .line 1247
    :cond_0
    :try_start_0
    invoke-virtual {p3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1251
    :goto_0
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .end local v5    # "spannable":Landroid/text/SpannableStringBuilder;
    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1252
    .restart local v5    # "spannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1254
    :try_start_1
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    .line 1257
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0085

    .line 1258
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v9, p0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    .line 1261
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    .line 1262
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    .line 1260
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/16 v10, 0x21

    .line 1255
    invoke-virtual {v5, v8, v4, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1268
    :cond_1
    :goto_1
    return-object v5

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1264
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1265
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private deleteSelectedItems()V
    .locals 4

    .prologue
    .line 971
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/utils/NotesData;->deleteNoteData(Ljava/util/HashMap;)V

    .line 973
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 974
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 975
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 974
    invoke-static {v2, v3}, Lcn/nubia/notepad/utils/Util;->cancelRemindAlarm(Landroid/content/Context;I)V

    goto :goto_0

    .line 978
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->notifyDataSetChanged()V

    .line 981
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v1, :cond_2

    .line 982
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 984
    :cond_2
    return-void
.end method

.method private getLabelByTitle(Ljava/lang/String;)Lcn/nubia/notepad/utils/NotesLabelData;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1844
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 1845
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1849
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLabelIdByTitle(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 920
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 921
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v1

    .line 925
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLabelNameByLabelId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1762
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1763
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 1764
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v2

    iget v3, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    if-ne v2, v3, :cond_0

    .line 1765
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v1

    .line 1769
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLabelNameByLabelId(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1773
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1774
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 1775
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1776
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v1

    .line 1780
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getNoteTop(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "mSelectMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1056
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1057
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1057
    goto :goto_0
.end method

.method private getNotesCount()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1992
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 1993
    invoke-virtual {v4, v5, v5}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v7

    .line 1998
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    return v1
.end method

.method private getNubiaAccount()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1643
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 1644
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v5, "com.ztemt"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1645
    .local v0, "account":[Landroid/accounts/Account;
    const-string v5, "NoteListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNubiaAccount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    array-length v5, v0

    if-lez v5, :cond_0

    .line 1647
    aget-object v2, v0, v4

    .line 1648
    .local v2, "mnubiaAccount":Landroid/accounts/Account;
    const-string v5, "tokenKey"

    invoke-direct {p0, v5, v2, v1}, Lcn/nubia/notepad/NoteListActivity;->getNubiaAccountData(Ljava/lang/String;Landroid/accounts/Account;Landroid/accounts/AccountManager;)Ljava/lang/String;

    move-result-object v3

    .line 1649
    .local v3, "tokenKey":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1650
    const-string v5, "NoteListActivity"

    const-string v6, "tokenKey is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    .end local v2    # "mnubiaAccount":Landroid/accounts/Account;
    .end local v3    # "tokenKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1653
    .restart local v2    # "mnubiaAccount":Landroid/accounts/Account;
    .restart local v3    # "tokenKey":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getNubiaAccountData(Ljava/lang/String;Landroid/accounts/Account;Landroid/accounts/AccountManager;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mnubiaAccount"    # Landroid/accounts/Account;
    .param p3, "manager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 1660
    const/4 v2, 0x0

    .line 1662
    .local v2, "value":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1663
    :try_start_0
    invoke-virtual {p3, p2, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1664
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    .end local v1    # "v":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .restart local v1    # "v":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 1664
    goto :goto_0

    .line 1666
    .end local v1    # "v":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1668
    const-string v2, ""

    goto :goto_0
.end method

.method private getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method private getSelection()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1750
    iget v0, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    if-nez v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    invoke-virtual {v0, v1, v1}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v0

    .line 1755
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    const/4 v1, 0x5

    iget v2, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getSelectionByType(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2042
    if-nez p1, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2046
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2049
    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v1, :cond_2

    .line 2050
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 2052
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 2054
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v2, "notepad_force_touch_search"

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 2055
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsForceTouchSearchAction:Z

    goto :goto_0

    .line 2052
    :pswitch_1
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7b497aad
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private hasSelectedAll()Z
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v0, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideGuideButton()V
    .locals 4

    .prologue
    const v3, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    .line 2163
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v3, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2164
    .local v1, "exitInterpolater":Landroid/view/animation/PathInterpolator;
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f040025

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2166
    .local v0, "exitAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2167
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2168
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2169
    return-void
.end method

.method private hideSearch()V
    .locals 6

    .prologue
    .line 1973
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 1974
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getSplitActionBarView()Landroid/view/View;

    move-result-object v1

    .line 1975
    .local v1, "splitBarView":Landroid/view/View;
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x64

    .line 1976
    .local v0, "delay":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    new-instance v3, Lcn/nubia/notepad/NoteListActivity$22;

    invoke-direct {v3, p0, v1}, Lcn/nubia/notepad/NoteListActivity$22;-><init>(Lcn/nubia/notepad/NoteListActivity;Landroid/view/View;)V

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1989
    return-void

    .line 1975
    .end local v0    # "delay":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 2135
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 2136
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 2135
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2137
    return-void
.end method

.method private initData()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 724
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMarginBottom:I

    .line 726
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListViewHeaderHeight:I

    .line 728
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    .line 729
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->isLeftOpen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLeftHandMode:Z

    .line 730
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setStackFromBottom(Z)V

    .line 731
    new-instance v0, Lcn/nubia/notepad/NoteListActivity$SingleReverseObserver;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    invoke-direct {v0, v1, p0}, Lcn/nubia/notepad/NoteListActivity$SingleReverseObserver;-><init>(Landroid/os/Handler;Lcn/nubia/notepad/NoteListActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSingleReverseObserver:Landroid/database/ContentObserver;

    .line 732
    new-instance v0, Lcn/nubia/notepad/NoteListActivity$LeftAndRightHandObserver;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    invoke-direct {v0, v1, p0}, Lcn/nubia/notepad/NoteListActivity$LeftAndRightHandObserver;-><init>(Landroid/os/Handler;Lcn/nubia/notepad/NoteListActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLeftAndRightHandObserver:Landroid/database/ContentObserver;

    .line 733
    new-instance v0, Lcn/nubia/notepad/NoteListActivity$TimeObserver;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    invoke-direct {v0, v1, p0}, Lcn/nubia/notepad/NoteListActivity$TimeObserver;-><init>(Landroid/os/Handler;Lcn/nubia/notepad/NoteListActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mTimeObserver:Landroid/database/ContentObserver;

    .line 734
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NoteListActivity$6;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    .line 745
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 746
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 747
    sget-object v0, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 749
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSharePreference:Landroid/content/SharedPreferences;

    const-string v1, "default label id"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    .line 750
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->startQueryLabelData(I)V

    .line 751
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    .line 752
    .local v8, "lm":Landroid/app/LoaderManager;
    const/16 v0, 0xa

    invoke-virtual {v8, v0, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 753
    new-instance v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/String;

    new-array v4, v4, [I

    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mDisplayRoundedImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v6}, Lcn/nubia/notepad/adapter/NotePadListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    .line 755
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setIsActionMode(Z)V

    .line 756
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setIsSearchMode(Z)V

    .line 757
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->querySpannableMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setQuerySpannableMap(Ljava/util/Map;)V

    .line 758
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setSearchText(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setSelectMap(Ljava/util/HashMap;)V

    .line 760
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setIsRevertMode(Z)V

    .line 761
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 764
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setIsStackForBottom(Z)V

    .line 769
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 770
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 771
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 500
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/notepad/utils/Util;->isLargeTitleOpen(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLargeTitleOpen:Z

    .line 501
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->setActionBar()V

    .line 502
    const v6, 0x7f0f00d6

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyLayout:Landroid/widget/LinearLayout;

    .line 503
    const v6, 0x7f0f0098

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyText:Landroid/widget/TextView;

    .line 504
    const v6, 0x7f0f0097

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyTextImg:Landroid/widget/ImageView;

    .line 505
    const v6, 0x7f0f00d3

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/nubia/notepad/view/DownSynchroniozeListView;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    .line 506
    const v6, 0x7f0f00cd

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->headerView:Landroid/view/View;

    .line 507
    const v6, 0x7f0f00cf

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mFooterView:Landroid/view/View;

    .line 508
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showTitle()V

    .line 509
    const v6, 0x7f0f00db

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    .line 510
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    const v6, 0x7f0f00d0

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    .line 512
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-virtual {v6, p0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setLoadDataListener(Lcn/nubia/notepad/cloud/anim/NotePadSyncEventHelper$CanLoadingDataListener;)V

    .line 513
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-static {}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isCloudSyncEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setCanDragToSynchronization(Z)V

    .line 514
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    new-instance v7, Lcn/nubia/notepad/NoteListActivity$2;

    invoke-direct {v7, p0}, Lcn/nubia/notepad/NoteListActivity$2;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v6, v7}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 533
    iget-boolean v6, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLargeTitleOpen:Z

    if-eqz v6, :cond_2

    .line 534
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    new-instance v7, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;

    invoke-direct {v7, p0, v5}, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;-><init>(Lcn/nubia/notepad/NoteListActivity;Lcn/nubia/notepad/NoteListActivity$1;)V

    invoke-virtual {v6, v7}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 553
    :goto_0
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/notepad/utils/Util;->isLeftOpen(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLeftHandMode:Z

    .line 555
    const v6, 0x7f0f00c9

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNotePadSearchImg:Landroid/widget/ImageView;

    .line 556
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNotePadSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    const v6, 0x7f0f00cc

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNotePadNewImg:Landroid/widget/ImageView;

    .line 558
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNotePadNewImg:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    const v6, 0x7f0f00ca

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 561
    .local v4, "label":Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    const v6, 0x7f0f00cb

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuLabel:Landroid/widget/TextView;

    .line 564
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuLabel:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    const v6, 0x7f0f00d8

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mListBottom:Landroid/view/View;

    .line 568
    const v6, 0x7f0f00da

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/widget/NubiaSearchView;

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 569
    const v6, 0x7f0f00d5

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMask:Landroid/view/View;

    .line 570
    const v6, 0x7f0f00d9

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchLayout:Landroid/view/View;

    .line 572
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelBtnVisibility(Z)V

    .line 573
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v6, p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-boolean v6, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLeftHandMode:Z

    invoke-direct {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->switchToLeftHandMode(Z)V

    .line 577
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0a009b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQueryTextView()Landroid/widget/EditText;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mRealSearchViewEditText:Landroid/widget/EditText;

    .line 579
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    new-instance v7, Lcn/nubia/notepad/NoteListActivity$4;

    invoke-direct {v7, p0}, Lcn/nubia/notepad/NoteListActivity$4;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    .line 580
    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V

    .line 606
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v7, 0x7f0f017a

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 607
    .local v2, "cancelView":Landroid/widget/TextView;
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v7, 0x7f0201f7

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelTextViewColor(I)V

    .line 609
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v7, 0x7f0f0179

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 610
    .local v3, "imageview":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 611
    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 615
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 616
    .local v0, "abcv":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectZoneView()Landroid/view/View;

    move-result-object v1

    .line 617
    .local v1, "buttonView":Landroid/view/View;
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v5

    .line 618
    .local v5, "stateView":Landroid/widget/CheckedTextView;
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    .line 619
    new-instance v6, Lcn/nubia/notepad/NoteListActivity$5;

    invoke-direct {v6, p0, v5}, Lcn/nubia/notepad/NoteListActivity$5;-><init>(Lcn/nubia/notepad/NoteListActivity;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    :cond_1
    return-void

    .line 536
    .end local v0    # "abcv":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    .end local v1    # "buttonView":Landroid/view/View;
    .end local v2    # "cancelView":Landroid/widget/TextView;
    .end local v3    # "imageview":Landroid/widget/ImageView;
    .end local v4    # "label":Landroid/view/View;
    .end local v5    # "stateView":Landroid/widget/CheckedTextView;
    :cond_2
    iget-object v6, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    new-instance v7, Lcn/nubia/notepad/NoteListActivity$3;

    invoke-direct {v7, p0}, Lcn/nubia/notepad/NoteListActivity$3;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v6, v7}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_0

    .line 613
    .restart local v2    # "cancelView":Landroid/widget/TextView;
    .restart local v3    # "imageview":Landroid/widget/ImageView;
    .restart local v4    # "label":Landroid/view/View;
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .restart local v0    # "abcv":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    :cond_4
    move-object v1, v5

    .line 616
    goto :goto_2
.end method

.method private onChangeMode(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 1442
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/NoteListActivity;->setMode(Z)V

    .line 1443
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateAdapterView()V

    .line 1444
    return-void
.end method

.method private onForceTouchSearchAction()V
    .locals 2

    .prologue
    .line 2071
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    if-nez v0, :cond_0

    .line 2072
    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/DownSynchroniozeListView;

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    .line 2074
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    .line 2075
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$25;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NoteListActivity$25;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2096
    return-void
.end method

.method private regeditSyncListener()V
    .locals 2

    .prologue
    .line 1491
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mRegeditListener:Z

    if-eqz v0, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return-void

    .line 1495
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mRegeditListener:Z

    .line 1496
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$13;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NoteListActivity$13;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2112
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/utils/Util;->SINGLE_REVERSE_SWITCH_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mSingleReverseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2114
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/utils/Util;->LEFT_AND_RIGHT_HAND_SWITCH_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mLeftAndRightHandObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2116
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    .line 2117
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mTimeObserver:Landroid/database/ContentObserver;

    .line 2116
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2119
    return-void
.end method

.method private resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-class v1, Lcn/nubia/notepad/NoteListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackSessionStart(Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-eqz v0, :cond_0

    .line 247
    iput-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsForceTouchSearchAction:Z

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsForceTouchSearchAction:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-nez v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->onForceTouchSearchAction()V

    .line 251
    iput-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsForceTouchSearchAction:Z

    .line 253
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mReStartSync:Z

    .line 254
    return-void
.end method

.method private searchNote()V
    .locals 23

    .prologue
    .line 1146
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v11, "noteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcn/nubia/notepad/NoteListActivity;->getSelection()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcn/nubia/notepad/utils/NotesData;->getNotesData(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v11

    .line 1149
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1150
    .local v17, "spannableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/text/SpannableStringBuilder;>;"
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_a

    .line 1151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v20, "_id in("

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v3, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 1154
    .local v9, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    iget-object v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getRealTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1155
    .local v12, "noteTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_0

    .line 1156
    iget-object v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v22, "text"

    .line 1157
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1155
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1160
    :cond_2
    iget-object v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 1161
    .local v10, "noteContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0a0105

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0a0056

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1182
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1183
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1185
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 1186
    .local v14, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1187
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1188
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    div-int v18, v20, v22

    .line 1189
    .local v18, "textWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 1190
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1191
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 1192
    .local v5, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v15, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1193
    .local v15, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 1194
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0c0072

    .line 1195
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 1197
    .local v13, "padding":I
    mul-int/lit8 v20, v13, 0x2

    sub-int v19, v15, v20

    .line 1199
    .local v19, "viewWidth":I
    div-int v4, v19, v18

    .line 1200
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1, v10, v4}, Lcn/nubia/notepad/NoteListActivity;->createSearchRelultTitle(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    .line 1202
    .local v16, "spannable":Landroid/text/SpannableStringBuilder;
    iget v0, v9, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->id:I

    move/from16 v20, v0

    .line 1203
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1165
    .end local v4    # "count":I
    .end local v5    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v13    # "padding":I
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "screenWidth":I
    .end local v16    # "spannable":Landroid/text/SpannableStringBuilder;
    .end local v18    # "textWidth":I
    .end local v19    # "viewWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0a0106

    .line 1166
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1165
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0a0057

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1170
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0a0108

    .line 1171
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1170
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0a005a

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1175
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0a0107

    .line 1176
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1175
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0a0059

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1209
    .end local v6    # "i":I
    .end local v9    # "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .end local v10    # "noteContent":Ljava/lang/String;
    .end local v12    # "noteTitle":Ljava/lang/String;
    :cond_8
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 1210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1212
    :cond_9
    const-string v20, ")"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/NoteListActivity;->updateNotesList(Ljava/lang/String;Z)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 1216
    .local v8, "msg":Landroid/os/Message;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1217
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "spannableMap"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1229
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "msg":Landroid/os/Message;
    :goto_3
    return-void

    .line 1221
    :cond_a
    new-instance v20, Lcn/nubia/notepad/NoteListActivity$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/notepad/NoteListActivity$12;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NoteListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private searchNote(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1125
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setEnabled(Z)V

    .line 1131
    :goto_0
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    .line 1132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$11;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NoteListActivity$11;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1143
    :goto_1
    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setEnabled(Z)V

    .line 1129
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setTotalTextHint(I)V

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setSearchText(Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcn/nubia/notepad/NoteListActivity;->updateNotesList(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private selectAll()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 1399
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v5}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1400
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v5, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getNoteId(I)I

    move-result v3

    .line 1401
    .local v3, "noteId":I
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v5, v5, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1402
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v5, v5, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    :cond_0
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v5, v5, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v5}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1407
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v5, "top"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 1408
    .local v2, "isTop":Z
    :goto_1
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1409
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1407
    .end local v2    # "isTop":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1412
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "noteId":I
    :cond_3
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateSelectedNum()V

    .line 1413
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateAdapterView()V

    .line 1414
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcn/nubia/notepad/NoteListActivity;->getNoteTop(Ljava/util/HashMap;)Z

    move-result v5

    iput-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mIsTop:Z

    .line 1415
    invoke-direct {p0, v4}, Lcn/nubia/notepad/NoteListActivity;->updateOptionsMenu(Z)V

    .line 1416
    invoke-direct {p0, v4}, Lcn/nubia/notepad/NoteListActivity;->updateActionBarMenu(Z)V

    .line 1417
    return-void
.end method

.method private selectNone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1386
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1387
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v0, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1388
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateSelectedNum()V

    .line 1389
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateAdapterView()V

    .line 1390
    iput-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsTop:Z

    .line 1391
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->updateOptionsMenu(Z)V

    .line 1392
    invoke-direct {p0, v1}, Lcn/nubia/notepad/NoteListActivity;->updateActionBarMenu(Z)V

    .line 1393
    return-void
.end method

.method private setActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 688
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 689
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 690
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 692
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 693
    .local v1, "bgColor":Landroid/graphics/drawable/ColorDrawable;
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    .line 696
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 697
    .local v2, "inflator":Landroid/view/LayoutInflater;
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-direct {v0, v3, v4, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;-><init>(III)V

    .line 699
    .local v0, "alp":Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const v4, 0x7f030031

    const/4 v5, 0x0

    .line 700
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 699
    invoke-virtual {v3, v4, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    .line 701
    const v3, 0x7f0f00c8

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/NoteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBarTitle:Landroid/widget/TextView;

    .line 702
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 703
    return-void
.end method

.method private setSelectedTextView(Z)V
    .locals 2
    .param p1, "selectAll"    # Z

    .prologue
    .line 1433
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v1

    .line 1434
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 1436
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1439
    :cond_0
    return-void

    .line 1434
    .end local v0    # "checkedTextView":Landroid/widget/CheckedTextView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupGuideButtonState()V
    .locals 2

    .prologue
    .line 2145
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 2151
    :cond_0
    :goto_0
    return-void

    .line 2146
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mShowGuideButton:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 2147
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showGuideButton()V

    goto :goto_0

    .line 2148
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mShowGuideButton:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2149
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hideGuideButton()V

    goto :goto_0
.end method

.method private showGuideButton()V
    .locals 4

    .prologue
    const v3, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    .line 2154
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v3, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2155
    .local v1, "enterInterpolater":Landroid/view/animation/PathInterpolator;
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f040024

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2157
    .local v0, "animEnter":Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2158
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2159
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mGoBackButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2160
    return-void
.end method

.method private showLabelList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1727
    new-instance v0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .line 1728
    new-instance v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    .line 1729
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setListAdapter(Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;)V

    .line 1730
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setAnchorView(Landroid/view/View;)V

    .line 1731
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setOnClickListenerForLeftBottomTitle(Landroid/view/View$OnClickListener;)V

    .line 1732
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setOnClickListenerForRightBottomTitle(Landroid/view/View$OnClickListener;)V

    .line 1733
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$16;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NoteListActivity$16;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setOnItemClickListenerForListView(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1746
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->startQueryLabelData(I)V

    .line 1747
    return-void
.end method

.method private showLabelMoveDialog()V
    .locals 5

    .prologue
    .line 1881
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1882
    .local v2, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 1883
    .local v1, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1886
    .end local v1    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1887
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lcn/nubia/notepad/NoteListActivity$19;

    invoke-direct {v4, p0}, Lcn/nubia/notepad/NoteListActivity$19;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1901
    const v3, 0x7f0a0070

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1902
    const v3, 0x7f0a0034

    new-instance v4, Lcn/nubia/notepad/NoteListActivity$20;

    invoke-direct {v4, p0}, Lcn/nubia/notepad/NoteListActivity$20;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1910
    const v3, 0x7f0a0075

    new-instance v4, Lcn/nubia/notepad/NoteListActivity$21;

    invoke-direct {v4, p0}, Lcn/nubia/notepad/NoteListActivity$21;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1919
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 1920
    return-void
.end method

.method private showSearch()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1946
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getSplitActionBarView()Landroid/view/View;

    move-result-object v0

    .line 1947
    .local v0, "splitBarView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1948
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListBottom:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1949
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1950
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->requestFocus()Z

    .line 1951
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    .line 1952
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setVisibility(I)V

    .line 1953
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMask:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1957
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQueryTextView()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1958
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQueryTextView()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1959
    return-void
.end method

.method private showSearchbyForceTouch()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1962
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getSplitActionBarView()Landroid/view/View;

    move-result-object v0

    .line 1963
    .local v0, "splitBarView":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1964
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListBottom:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1965
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1968
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setVisibility(I)V

    .line 1969
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMask:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1970
    return-void
.end method

.method private showSyncPemitDialog()V
    .locals 3

    .prologue
    .line 2002
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2039
    :goto_0
    return-void

    .line 2005
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2006
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 2007
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 2009
    :cond_1
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2010
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 2011
    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 2012
    const/high16 v1, 0x7f090000

    new-instance v2, Lcn/nubia/notepad/NoteListActivity$23;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NoteListActivity$23;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 2029
    const v1, 0x7f0a0079

    new-instance v2, Lcn/nubia/notepad/NoteListActivity$24;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NoteListActivity$24;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 2037
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 2038
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showTitle()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 375
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 377
    .local v0, "listEmpty":Z
    :goto_0
    const-string v2, "NoteListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsSearchMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mIsLargeTitleOpen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLargeTitleOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mIsActionMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",listEmpty:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mIsSingleReverseOpen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLargeTitleOpen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    if-eqz v2, :cond_2

    .line 384
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->headerView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :goto_1
    return-void

    .end local v0    # "listEmpty":Z
    :cond_1
    move v0, v1

    .line 375
    goto :goto_0

    .line 387
    .restart local v0    # "listEmpty":Z
    :cond_2
    iget-object v4, p0, Lcn/nubia/notepad/NoteListActivity;->headerView:Landroid/view/View;

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mFooterView:Landroid/view/View;

    iget-boolean v4, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    if-nez v4, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->hide()V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 387
    goto :goto_2

    :cond_4
    move v3, v1

    .line 388
    goto :goto_3
.end method

.method private startCloudActivity()V
    .locals 5

    .prologue
    .line 1620
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getNubiaAccount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1621
    .local v2, "isHaveAccount":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1622
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1623
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.cloud"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    const-string v3, "nubia.cloud.action.UserCenter"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1627
    const/16 v3, 0x3e8

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcn/nubia/notepad/NoteListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    :goto_0
    return-void

    .line 1628
    :catch_0
    move-exception v0

    .line 1629
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1632
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1633
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.accounts"

    const-string v4, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    const/16 v3, 0x3e9

    :try_start_1
    invoke-virtual {p0, v1, v3}, Lcn/nubia/notepad/NoteListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1636
    :catch_1
    move-exception v0

    .line 1637
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startDataStatistic()V
    .locals 2

    .prologue
    .line 2099
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$26;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NoteListActivity$26;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2109
    return-void
.end method

.method private startLabelEditActivity()V
    .locals 5

    .prologue
    .line 1826
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1827
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 1828
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .line 1831
    :cond_0
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1832
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0076

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/notepad/NoteListActivity;->getLabelByTitle(Ljava/lang/String;)Lcn/nubia/notepad/utils/NotesLabelData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1833
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/notepad/NotePadLabelEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1834
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "LabelList"

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1835
    const-string v2, "current_label_id"

    iget v3, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1837
    const/16 v2, 0x3ef

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcn/nubia/notepad/NoteListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    :goto_0
    return-void

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startNewNotePad()V
    .locals 7

    .prologue
    .line 894
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 895
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 896
    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a006c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "allLabelName":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getLabelNameByLabelId()Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "labelName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0076

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 902
    :cond_0
    invoke-direct {p0, v3}, Lcn/nubia/notepad/NoteListActivity;->getLabelIdByTitle(Ljava/lang/String;)I

    move-result v4

    .line 904
    .local v4, "newNoteLabelId":I
    const-string v5, "current_label_id"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const-string v5, "label_name"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string v5, "notepad_revert"

    iget-boolean v6, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 913
    const/16 v5, 0x3f3

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcn/nubia/notepad/NoteListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_0
    return-void

    .line 914
    :catch_0
    move-exception v1

    .line 915
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startNotePadSearch()V
    .locals 1

    .prologue
    .line 2064
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 2068
    :goto_0
    return-void

    .line 2067
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->createSearchMode()V

    goto :goto_0
.end method

.method private startNotePadSync()V
    .locals 6

    .prologue
    .line 1604
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v2, "notepad_cloud_sync_start"

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1606
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncManger:Lcn/nubia/cloud/sync/common/SyncManager;

    const-string v2, "cn.nubia.notepad.provider.NotePad"

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/sync/common/SyncManager;->sync(Ljava/lang/String;Lcn/nubia/cloud/sync/common/SyncListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    const/4 v2, 0x1

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1611
    return-void

    .line 1607
    :catch_0
    move-exception v0

    .line 1608
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startNotePadSyncing()V
    .locals 5

    .prologue
    .line 1572
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v4, "notepad_cloud_sync"

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1573
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1574
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1575
    .local v2, "mLastSyncTime":J
    invoke-static {v2, v3}, Lcn/nubia/notepad/utils/Util;->setLastSyncTime(J)V

    .line 1576
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcn/nubia/notepad/NoteListActivity$15;

    invoke-direct {v4, p0, v0, v2, v3}, Lcn/nubia/notepad/NoteListActivity$15;-><init>(Lcn/nubia/notepad/NoteListActivity;Ljava/util/Date;J)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1600
    return-void
.end method

.method private startPreviewNotePad(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 929
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    .line 930
    .local v2, "isOpen":Z
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v3, :cond_0

    .line 931
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hideSoftInput()V

    .line 933
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 934
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 935
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    iget-boolean v3, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 937
    const-string v3, "notepad_query_text"

    iget-object v4, p0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    :cond_1
    const/16 v3, 0x3f3

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcn/nubia/notepad/NoteListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startQueryLabelData(I)V
    .locals 2
    .param p1, "operation"    # I

    .prologue
    .line 1853
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1854
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLabelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1856
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$18;

    invoke-direct {v1, p0, p1}, Lcn/nubia/notepad/NoteListActivity$18;-><init>(Lcn/nubia/notepad/NoteListActivity;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1878
    return-void
.end method

.method private switchToLeftHandMode(Z)V
    .locals 3
    .param p1, "mIsLeftHandMode"    # Z

    .prologue
    const v2, 0x7f02008a

    const v1, 0x7f020089

    .line 678
    if-eqz p1, :cond_0

    .line 679
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotePadSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 680
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotePadNewImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotePadSearchImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotePadNewImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private topSelectedItems()V
    .locals 3

    .prologue
    .line 987
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    if-eqz v0, :cond_0

    .line 988
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsTop:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcn/nubia/notepad/utils/NotesData;->updateNoteDataForTop(Ljava/util/HashMap;Z)V

    .line 990
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->notifyDataSetChanged()V

    .line 993
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 996
    :cond_2
    return-void

    .line 988
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 2122
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSingleReverseObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSingleReverseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2125
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mLeftAndRightHandObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 2126
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mLeftAndRightHandObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2129
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mTimeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 2130
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2132
    :cond_2
    return-void
.end method

.method private unregeditSyncListener()V
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->removeMessages(I)V

    .line 1515
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mRegeditListener:Z

    if-nez v0, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mRegeditListener:Z

    .line 1519
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$14;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NoteListActivity$14;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateActionBarMenu(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 718
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuLabelMove:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 719
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuTop:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 720
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 721
    return-void
.end method

.method private updateActionModeMenu(Z)V
    .locals 2
    .param p1, "isActionMode"    # Z

    .prologue
    .line 712
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuTop:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsTop:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0038

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 713
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuTop:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsTop:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200cd

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 715
    return-void

    .line 712
    :cond_0
    const v0, 0x7f0a00a7

    goto :goto_0

    .line 713
    :cond_1
    const v0, 0x7f0200cc

    goto :goto_1
.end method

.method private updateAdapterView()V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->notifyDataSetChanged()V

    .line 1062
    return-void
.end method

.method private updateNotesLabel(I)V
    .locals 2
    .param p1, "labelId"    # I

    .prologue
    .line 1933
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/notepad/utils/NotesData;->updateNotesDataForBelongToLabel(Ljava/util/HashMap;I)V

    .line 1934
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    if-eqz v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->notifyDataSetChanged()V

    .line 1937
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_1

    .line 1938
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 1940
    :cond_1
    return-void
.end method

.method private updateNotesList(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "revert"    # Z

    .prologue
    .line 1923
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 1924
    .local v1, "manager":Landroid/app/LoaderManager;
    const/16 v2, 0xa

    .line 1925
    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    .line 1926
    .local v0, "loader":Landroid/content/CursorLoader;
    invoke-virtual {v0, p1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 1927
    if-eqz p2, :cond_0

    const-string v2, "top ASC, modified ASC"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 1930
    return-void

    .line 1927
    :cond_0
    const-string v2, "top DESC, modified DESC"

    goto :goto_0
.end method

.method private updateOptionsMenu(Z)V
    .locals 2
    .param p1, "isActionMode"    # Z

    .prologue
    .line 706
    iput-boolean p1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    .line 707
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setIsActionMode(Z)V

    .line 708
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NoteListActivity;->updateActionModeMenu(Z)V

    .line 709
    return-void
.end method

.method private updateSelectedNum()V
    .locals 3

    .prologue
    .line 1420
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->setSelectedNumText(I)V

    .line 1421
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hasSelectedAll()Z

    move-result v0

    .line 1423
    .local v0, "selectAll":Z
    if-eqz v0, :cond_0

    .line 1424
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    invoke-virtual {v1}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->setSelectedAllText()V

    .line 1429
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->setSelectedTextView(Z)V

    .line 1430
    return-void

    .line 1426
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    invoke-virtual {v1}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;->setSelectedNotAllText()V

    goto :goto_0
.end method


# virtual methods
.method public canLoadingData()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x7d0

    const/16 v8, 0x3f0

    .line 1539
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1540
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1541
    .local v2, "mLastSyncTime":J
    invoke-static {v2, v3}, Lcn/nubia/notepad/utils/Util;->setLastSyncTime(J)V

    .line 1542
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/notepad/utils/Util;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1543
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 1544
    .local v4, "sub":J
    cmp-long v1, v4, v10

    if-gez v1, :cond_0

    .line 1545
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    sub-long v6, v10, v4

    invoke-virtual {v1, v8, v6, v7}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1554
    .end local v4    # "sub":J
    :goto_0
    return-void

    .line 1548
    .restart local v4    # "sub":J
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    invoke-virtual {v1, v8}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1552
    .end local v4    # "sub":J
    :cond_1
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startNotePadSyncing()V

    goto :goto_0
.end method

.method public getActionMode()Z
    .locals 1

    .prologue
    .line 999
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    return v0
.end method

.method public handleLeftAndRightHandObserverOnChange()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->isLeftOpen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLeftHandMode:Z

    .line 845
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLeftHandMode:Z

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->switchToLeftHandMode(Z)V

    .line 846
    return-void
.end method

.method public handleSingleReverseObserverOnChange()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NoteListActivity$7;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NoteListActivity$7;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 833
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    .line 834
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setStackFromBottom(Z)V

    .line 835
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showTitle()V

    .line 837
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->setIsRevertMode(Z)V

    .line 838
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->hideHeaderOrFooter()V

    .line 839
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setIsStackForBottom(Z)V

    .line 840
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSelection()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-direct {p0, v0, v1}, Lcn/nubia/notepad/NoteListActivity;->updateNotesList(Ljava/lang/String;Z)V

    .line 841
    return-void
.end method

.method public handleTimeObserverOnChange()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->notifyDataSetChanged()V

    .line 850
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->updateWidget(Landroid/content/Context;)V

    .line 851
    return-void
.end method

.method public onActionItemClicked(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 469
    :pswitch_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->startQueryLabelData(I)V

    goto :goto_0

    .line 472
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->createDeleteItemsDialog()V

    goto :goto_0

    .line 475
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->topSelectedItems()V

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f019c
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1448
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/notepad/NotePadActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1449
    sparse-switch p1, :sswitch_data_0

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1451
    :sswitch_0
    iput-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mReStartSync:Z

    goto :goto_0

    .line 1454
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getNubiaAccount()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1455
    .local v0, "isHaveAccount":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1456
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startCloudActivity()V

    goto :goto_0

    .line 1460
    .end local v0    # "isHaveAccount":Ljava/lang/Boolean;
    :sswitch_2
    if-eqz p3, :cond_0

    .line 1463
    const-string v4, "label_name"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1465
    iget-object v4, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1467
    :cond_1
    const-string v4, "delete_label_id"

    .line 1468
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1469
    .local v3, "selectIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v4, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1470
    iput v5, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    .line 1471
    iget-object v4, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuLabel:Landroid/widget/TextView;

    const v5, 0x7f0a006c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1473
    :cond_2
    invoke-direct {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->startQueryLabelData(I)V

    .line 1474
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSelection()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-direct {p0, v4, v5}, Lcn/nubia/notepad/NoteListActivity;->updateNotesList(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1477
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "selectIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_3
    if-eqz p3, :cond_0

    .line 1478
    const-string v4, "notepad_label_changed"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1479
    .local v1, "isLabelChanged":Z
    if-eqz v1, :cond_0

    .line 1480
    invoke-direct {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->startQueryLabelData(I)V

    .line 1481
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSelection()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    invoke-direct {p0, v4, v5}, Lcn/nubia/notepad/NoteListActivity;->updateNotesList(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1449
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ef -> :sswitch_2
        0x3f3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->cancelSearchMode()V

    .line 1073
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hideSearch()V

    .line 1082
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 1078
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->setMode(Z)V

    goto :goto_0

    .line 1081
    :cond_1
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1675
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1678
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showLabelList()V

    goto :goto_0

    .line 1681
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_label_new"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1682
    invoke-direct {p0, v2}, Lcn/nubia/notepad/NoteListActivity;->createLabel(Z)V

    goto :goto_0

    .line 1685
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_label_edit"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1686
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startLabelEditActivity()V

    goto :goto_0

    .line 1689
    :sswitch_3
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLeftHandMode:Z

    if-eqz v0, :cond_1

    .line 1690
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_list_search"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1691
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showSearch()V

    .line 1692
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startNotePadSearch()V

    goto :goto_0

    .line 1694
    :cond_1
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startNewNotePad()V

    goto :goto_0

    .line 1698
    :sswitch_4
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 1700
    invoke-virtual {p0, v2}, Lcn/nubia/notepad/NoteListActivity;->setMode(Z)V

    goto :goto_0

    .line 1704
    :sswitch_5
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hideSearch()V

    goto :goto_0

    .line 1707
    :sswitch_6
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsLeftHandMode:Z

    if-eqz v0, :cond_2

    .line 1708
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startNewNotePad()V

    goto :goto_0

    .line 1710
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_list_search"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1711
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showSearch()V

    .line 1712
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startNotePadSearch()V

    goto :goto_0

    .line 1716
    :sswitch_7
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_all_note_buttom"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->sendEvent(Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setSelection(I)V

    .line 1718
    iput-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity;->mShowGuideButton:Z

    .line 1719
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hideGuideButton()V

    goto :goto_0

    .line 1675
    :sswitch_data_0
    .sparse-switch
        0x7f0f0032 -> :sswitch_4
        0x7f0f00c2 -> :sswitch_1
        0x7f0f00c4 -> :sswitch_2
        0x7f0f00c9 -> :sswitch_6
        0x7f0f00ca -> :sswitch_0
        0x7f0f00cb -> :sswitch_0
        0x7f0f00cc -> :sswitch_3
        0x7f0f00db -> :sswitch_7
        0x7f0f017a -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->addActivity(Landroid/app/Activity;)V

    .line 208
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->setContentView(I)V

    .line 209
    iput-object p0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    .line 210
    new-instance v0, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    .line 211
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSharePreference:Landroid/content/SharedPreferences;

    .line 212
    new-instance v0, Lcn/nubia/notepad/utils/NotesData;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 213
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    .line 215
    new-instance v0, Lcn/nubia/cloud/sync/common/SyncManager;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/cloud/sync/common/SyncManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncManger:Lcn/nubia/cloud/sync/common/SyncManager;

    .line 216
    invoke-static {}, Lcn/nubia/notepad/cloud/SyncListenerIml;->getInstance()Lcn/nubia/notepad/cloud/SyncListenerIml;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;

    .line 217
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/SyncListenerIml;->setHandler(Landroid/os/Handler;)V

    .line 219
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->initView()V

    .line 220
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->create()V

    .line 221
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->resume()V

    .line 222
    return-void
.end method

.method public onCreateActionMode(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f110002

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 440
    const v3, 0x7f0f019c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 441
    const v3, 0x7f0f019d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuTop:Landroid/view/MenuItem;

    .line 442
    const v3, 0x7f0f019e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mMenuLabelMove:Landroid/view/MenuItem;

    .line 443
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setCanDragToSynchronization(Z)V

    .line 444
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListBottom:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 445
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 446
    .local v0, "abcv":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectZoneView()Landroid/view/View;

    move-result-object v1

    .line 447
    .local v1, "buttonView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getSelectCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v2

    .line 448
    .local v2, "stateView":Landroid/widget/CheckedTextView;
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 449
    new-instance v3, Lcn/nubia/notepad/NoteListActivity$1;

    invoke-direct {v3, p0, v2}, Lcn/nubia/notepad/NoteListActivity$1;-><init>(Lcn/nubia/notepad/NoteListActivity;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    :cond_1
    return-void

    .end local v1    # "buttonView":Landroid/view/View;
    .end local v2    # "stateView":Landroid/widget/CheckedTextView;
    :cond_2
    move-object v1, v2

    .line 446
    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    iget-object v3, v3, Lcn/nubia/notepad/utils/NotesData;->NOTE_PROJECTION:[Ljava/lang/String;

    .line 316
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSelection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSingleReverseOpen:Z

    if-eqz v6, :cond_0

    const-string v6, "top ASC, modified ASC"

    :goto_0
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    return-object v0

    .line 316
    .end local v0    # "cursorLoader":Landroid/content/CursorLoader;
    :cond_0
    const-string v6, "top DESC, modified DESC"

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 270
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setOnPopupWindowDismissedListener(Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;)V

    .line 271
    iput-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .line 273
    :cond_0
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/notepad/SysApplication;->removeActivity(Landroid/app/Activity;)V

    .line 274
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 275
    .local v0, "lm":Landroid/app/LoaderManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 277
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 282
    iput-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    .line 285
    :cond_2
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->unregeditSyncListener()V

    .line 287
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 289
    iput-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncPermitDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 292
    :cond_3
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    if-eqz v1, :cond_4

    .line 293
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mHandler:Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mSyncListener:Lcn/nubia/notepad/cloud/SyncListenerIml;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/cloud/SyncListenerIml;->setHandler(Landroid/os/Handler;)V

    .line 297
    :cond_4
    iget-boolean v1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-eqz v1, :cond_5

    .line 298
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity;->mQueryText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/SysApplication;->setSearchString(Ljava/lang/String;)V

    .line 303
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->destroyDrawingCache()V

    .line 305
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->unRegisterContentObserver()V

    .line 307
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 308
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    .line 310
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onDestroy()V

    .line 311
    return-void

    .line 300
    :cond_5
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/SysApplication;->setSearchString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    invoke-direct {p0, v1}, Lcn/nubia/notepad/NoteListActivity;->onChangeMode(Z)V

    .line 415
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0, v1}, Lcn/nubia/notepad/NoteListActivity;->updateOptionsMenu(Z)V

    .line 417
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v0, v0, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 418
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 419
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->notifyDataSetChanged()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mListBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->updateActionBarMenu(Z)V

    .line 423
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v0}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setCanDragToSynchronization(Z)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-static {}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setCanDragToSynchronization(Z)V

    goto :goto_0
.end method

.method public onHeadFooterClicked()V
    .locals 1

    .prologue
    .line 1561
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->canStartNotePadSync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReStartSync:Z

    .line 1563
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->regeditSyncListener()V

    .line 1565
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->startCloudActivity()V

    .line 1566
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 855
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v7, "NoteListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemClick  position : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / mIsActionMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-boolean v7, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    if-eqz v7, :cond_5

    .line 857
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v7, p3}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getNoteId(I)I

    move-result v3

    .line 858
    .local v3, "noteId":I
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v7, v7, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 859
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v7, v7, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :goto_0
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v7}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 865
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v7, "top"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    .line 866
    .local v1, "isTop":Z
    :goto_1
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 867
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :goto_2
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateSelectedNum()V

    .line 872
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateAdapterView()V

    .line 873
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-direct {p0, v7}, Lcn/nubia/notepad/NoteListActivity;->getNoteTop(Ljava/util/HashMap;)Z

    move-result v7

    iput-boolean v7, p0, Lcn/nubia/notepad/NoteListActivity;->mIsTop:Z

    .line 874
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcn/nubia/notepad/NoteListActivity;->updateOptionsMenu(Z)V

    .line 875
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 876
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcn/nubia/notepad/NoteListActivity;->updateActionBarMenu(Z)V

    .line 891
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "isTop":Z
    .end local v3    # "noteId":I
    :cond_0
    :goto_3
    return-void

    .line 861
    .restart local v3    # "noteId":I
    :cond_1
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v7, v7, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 865
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 869
    .restart local v1    # "isTop":Z
    :cond_3
    iget-object v7, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 878
    :cond_4
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcn/nubia/notepad/NoteListActivity;->updateActionBarMenu(Z)V

    goto :goto_3

    .line 881
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "isTop":Z
    .end local v3    # "noteId":I
    :cond_5
    const v7, 0x7f0f00e0

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 882
    .local v5, "timeView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 885
    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v2, v7

    check-cast v2, [I

    .line 886
    .local v2, "itemTag":[I
    const/4 v7, 0x0

    aget v4, v2, v7

    .line 888
    .local v4, "note_id":I
    invoke-virtual {p0}, Lcn/nubia/notepad/NoteListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 889
    .local v6, "uri":Landroid/net/Uri;
    invoke-direct {p0, v6}, Lcn/nubia/notepad/NoteListActivity;->startPreviewNotePad(Landroid/net/Uri;)V

    goto :goto_3
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1017
    iget-boolean v5, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    if-eqz v5, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return v3

    .line 1020
    :cond_1
    invoke-virtual {p0, v4}, Lcn/nubia/notepad/NoteListActivity;->setMode(Z)V

    .line 1021
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v5, p3}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getNoteId(I)I

    move-result v2

    .line 1022
    .local v2, "noteId":I
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v5, v5, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1023
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v5, v5, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    :cond_2
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    iget-object v5, v5, Lcn/nubia/notepad/adapter/NotePadListAdapter;->mSelectedItem:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v5}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1028
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v5, "top"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1029
    .local v1, "index":I
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1032
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcn/nubia/notepad/NoteListActivity;->mIsTop:Z

    .line 1033
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1034
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcn/nubia/notepad/NoteListActivity;->mIsTop:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :cond_4
    new-instance v3, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, p0}, Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;-><init>(Landroid/content/Context;Lcn/nubia/notepad/engine/actionmode/IActionModeStateListener;)V

    iput-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    .line 1039
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionModeCallback:Lcn/nubia/notepad/engine/actionmode/ActionModeCallback;

    invoke-virtual {p0, v3, v4}, Lcn/nubia/notepad/NoteListActivity;->startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;Z)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mActionMode:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 1040
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/NoteListActivity;->setSelectButtonListener(Landroid/view/View$OnClickListener;)Z

    .line 1041
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateSelectedNum()V

    .line 1042
    invoke-direct {p0, v4}, Lcn/nubia/notepad/NoteListActivity;->updateOptionsMenu(Z)V

    .line 1043
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->updateAdapterView()V

    move v3, v4

    .line 1045
    goto/16 :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 324
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 372
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v5, p2}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 328
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v5}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCount()I

    move-result v5

    if-gtz v5, :cond_4

    .line 329
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v3, v8}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setVisibility(I)V

    .line 330
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setCanDragToSynchronization(Z)V

    .line 331
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    invoke-virtual {v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->hideHeaderOrFooter()V

    .line 337
    const/4 v3, 0x2

    :try_start_0
    new-array v2, v3, [I

    .line 338
    .local v2, "location":[I
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListBottom:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 339
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 342
    .local v1, "layout":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v3, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget v3, v2, v3

    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_2

    const/4 v3, 0x1

    aget v3, v2, v3

    if-lez v3, :cond_2

    .line 343
    const/4 v3, 0x0

    iget v5, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMarginBottom:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 347
    :goto_1
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v1    # "layout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "location":[I
    :goto_2
    iget-boolean v3, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSearchText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 352
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyTextImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0051

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->getSearchText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :goto_3
    iget-boolean v3, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mNubiaSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v4, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-virtual {v4}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/NubiaSearchView;->setTotalTextHint(I)V

    .line 371
    :cond_1
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showTitle()V

    goto/16 :goto_0

    .line 345
    .restart local v1    # "layout":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "location":[I
    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 348
    .end local v1    # "layout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "location":[I
    :catch_0
    move-exception v0

    .line 349
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 356
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyTextImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyText:Landroid/widget/TextView;

    const v4, 0x7f0a0078

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 360
    :cond_4
    iget-object v5, p0, Lcn/nubia/notepad/NoteListActivity;->mMainLayout:Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    iget-boolean v6, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-nez v6, :cond_6

    invoke-static {}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isCloudSyncEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_4
    invoke-virtual {v5, v3}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->setCanDragToSynchronization(Z)V

    .line 361
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMask:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 362
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mSearchMask:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :cond_5
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListView:Lcn/nubia/notepad/view/DownSynchroniozeListView;

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->setVisibility(I)V

    .line 366
    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity;->mListEmptyLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_6
    move v3, v4

    .line 360
    goto :goto_4
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/notepad/NoteListActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 398
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NoteListActivity;->handleIntent(Landroid/content/Intent;)V

    .line 236
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1004
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1005
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-eqz v0, :cond_0

    .line 1006
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hideSoftInput()V

    .line 1007
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->cancelSearchMode()V

    .line 1008
    const/4 v0, 0x1

    .line 1011
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-class v1, Lcn/nubia/notepad/NoteListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackSessionEnd(Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcn/nubia/notepad/NoteListActivity;->mIsSearchMode:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hideSoftInput()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default label id"

    iget v2, p0, Lcn/nubia/notepad/NoteListActivity;->mCurLabelId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onPause()V

    .line 264
    return-void
.end method

.method public onPrepareActionMode()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity;->mAdapter:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NoteListActivity;->updateOptionsMenu(Z)V

    .line 435
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 482
    packed-switch p1, :pswitch_data_0

    .line 494
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/notepad/NotePadActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 497
    :goto_0
    return-void

    .line 484
    :pswitch_0
    array-length v2, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v0, p3, v1

    .line 485
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 490
    .end local v0    # "result":I
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->create()V

    .line 491
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->resume()V

    goto :goto_0

    .line 484
    .restart local v0    # "result":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "NoteListActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onResume()V

    .line 242
    return-void
.end method

.method public selectAllOrNone()V
    .locals 2

    .prologue
    .line 402
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->hasSelectedAll()Z

    move-result v0

    .line 403
    .local v0, "selectAll":Z
    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->selectNone()V

    .line 409
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcn/nubia/notepad/NoteListActivity;->setSelectedTextView(Z)V

    .line 410
    return-void

    .line 406
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->selectAll()V

    goto :goto_0

    .line 409
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMode(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 1065
    iput-boolean p1, p0, Lcn/nubia/notepad/NoteListActivity;->mIsActionMode:Z

    .line 1066
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->showTitle()V

    .line 1067
    return-void
.end method

.method public setNoteGuideButtonState(Z)V
    .locals 0
    .param p1, "showGuideButton"    # Z

    .prologue
    .line 2140
    iput-boolean p1, p0, Lcn/nubia/notepad/NoteListActivity;->mShowGuideButton:Z

    .line 2141
    invoke-direct {p0}, Lcn/nubia/notepad/NoteListActivity;->setupGuideButtonState()V

    .line 2142
    return-void
.end method
