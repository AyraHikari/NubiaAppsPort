.class public abstract Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;,
        Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;,
        Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;,
        Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;,
        Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "cn.nubia.commonui.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "cn.nubia.commonui.v7.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mDividerDecoration:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/support/v7/widget/RecyclerView;

.field private mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 133
    sget v0, Lcn/nubia/commonui/R$layout;->preference_list_fragment:I

    iput v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 135
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    .line 138
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$1;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$2;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    .line 780
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    .prologue
    .line 108
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->bindPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 3

    .prologue
    .line 544
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 545
    .local v0, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->onCreateAdapter(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 547
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->onAttached()V

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->onBindPreferences()V

    .line 550
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 539
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    return-void
.end method

.method private scrollToPreferenceInternal(Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 682
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V

    .line 713
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 714
    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private unbindPreferences()V
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 554
    .local v0, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->onDetached()V

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    .line 558
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .prologue
    .line 439
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 441
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    .line 442
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 441
    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcn/nubia/commonui/v7/preference/PreferenceScreen;)Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->setPreferenceScreen(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)V

    .line 443
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 526
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 529
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallbackFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Lcn/nubia/commonui/v7/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 351
    if-eqz p1, :cond_0

    .line 352
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 353
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 355
    .local v1, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 360
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 209
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$attr;->preferenceTheme:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 210
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 211
    .local v2, "theme":I
    if-nez v2, :cond_0

    .line 212
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must specify preferenceTheme in theme"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 214
    :cond_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    .line 216
    new-instance v4, Lcn/nubia/commonui/v7/preference/PreferenceManager;

    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcn/nubia/commonui/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    .line 217
    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v4, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 218
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "cn.nubia.commonui.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 226
    return-void

    .line 223
    .end local v1    # "rootKey":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "rootKey":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onCreateAdapter(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .prologue
    .line 616
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 606
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 589
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_preference_recyclerview:I

    const/4 v2, 0x0

    .line 590
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 592
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 593
    new-instance v1, Lcn/nubia/commonui/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 596
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const/4 v15, 0x0

    sget-object v16, Lcn/nubia/commonui/R$styleable;->PreferenceFragmentCompat:[I

    sget v17, Lcn/nubia/commonui/R$attr;->preferenceFragmentCompatStyle:I

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 257
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v14, Lcn/nubia/commonui/R$styleable;->PreferenceFragmentCompat_android_layout:I

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mLayoutResId:I

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 260
    sget v14, Lcn/nubia/commonui/R$styleable;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 262
    .local v4, "divider":Landroid/graphics/drawable/Drawable;
    sget v14, Lcn/nubia/commonui/R$styleable;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v15, -0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 264
    .local v5, "dividerHeight":I
    sget v14, Lcn/nubia/commonui/R$styleable;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 267
    .local v3, "allowDividerAfterLastItem":Z
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 271
    .local v12, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    sget v15, Lcn/nubia/commonui/R$attr;->preferenceTheme:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v12, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 272
    iget v9, v12, Landroid/util/TypedValue;->resourceId:I

    .line 274
    .local v9, "theme":I
    new-instance v10, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v10, v14, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 275
    .local v10, "themedContext":Landroid/content/Context;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 277
    .local v11, "themedInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mLayoutResId:I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v11, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 279
    .local v13, "view":Landroid/view/View;
    const v14, 0x102003f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 280
    .local v8, "rawListContainer":Landroid/view/View;
    instance-of v14, v8, Landroid/view/ViewGroup;

    if-nez v14, :cond_0

    .line 281
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    move-object v6, v8

    .line 285
    check-cast v6, Landroid/view/ViewGroup;

    .line 287
    .local v6, "listContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v6, v1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    .line 289
    .local v7, "listView":Landroid/support/v7/widget/RecyclerView;
    if-nez v7, :cond_1

    .line 290
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Could not create RecyclerView"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 293
    :cond_1
    move-object/from16 v0, p0

    iput-object v7, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 297
    const/4 v14, -0x1

    if-eq v5, v14, :cond_2

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    .line 300
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v14, v3}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-object v13
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 231
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->unbindPreferences()V

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 384
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 385
    return-void
.end method

.method public onDisplayPreferenceDialog(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 629
    const/4 v1, 0x0

    .line 630
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 632
    invoke-interface {v2, p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v1

    .line 634
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 635
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 636
    invoke-interface {v2, p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v1

    .line 639
    :cond_1
    if-eqz v1, :cond_3

    .line 661
    :cond_2
    :goto_0
    return-void

    .line 644
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "cn.nubia.commonui.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 649
    instance-of v2, p1, Lcn/nubia/commonui/v7/preference/EditTextPreference;

    if-eqz v2, :cond_4

    .line 650
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/commonui/v7/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v7/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object v0

    .line 659
    .local v0, "f":Landroid/support/v4/app/DialogFragment;
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 660
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "cn.nubia.commonui.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    .end local v0    # "f":Landroid/support/v4/app/DialogFragment;
    :cond_4
    instance-of v2, p1, Lcn/nubia/commonui/v7/preference/ListPreference;

    if-eqz v2, :cond_5

    .line 652
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;

    move-result-object v0

    .restart local v0    # "f":Landroid/support/v4/app/DialogFragment;
    goto :goto_1

    .line 653
    .end local v0    # "f":Landroid/support/v4/app/DialogFragment;
    :cond_5
    instance-of v2, p1, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;

    if-eqz v2, :cond_6

    .line 654
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/commonui/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object v0

    .restart local v0    # "f":Landroid/support/v4/app/DialogFragment;
    goto :goto_1

    .line 656
    .end local v0    # "f":Landroid/support/v4/app/DialogFragment;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onNavigateToScreen(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    .line 509
    invoke-interface {v1, p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Z

    move-result v0

    .line 511
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    .line 513
    invoke-interface {v1, p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Z

    .line 515
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Lcn/nubia/commonui/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 479
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 483
    invoke-interface {v1, p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v0

    .line 485
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 487
    invoke-interface {v1, p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v0

    .line 491
    .end local v0    # "handled":Z
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 392
    .local v1, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 393
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 395
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 397
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 365
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 366
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 367
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 372
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 373
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 374
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 334
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 336
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->bindPreferences()V

    .line 338
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mInitDone:Z

    .line 345
    return-void
.end method

.method public scrollToPreference(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 678
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 318
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 319
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mDividerDecoration:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$DividerDecoration;->setDividerHeight(I)V

    .line 330
    return-void
.end method

.method public setPreferenceScreen(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .prologue
    .line 413
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setPreferences(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 416
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->postBindPreferences()V

    .line 420
    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 5
    .param p1, "preferencesResId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 457
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcn/nubia/commonui/v7/preference/PreferenceScreen;)Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 461
    .local v1, "xmlRoot":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {v1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    .line 463
    .local v0, "root":Lcn/nubia/commonui/v7/preference/Preference;
    instance-of v2, v0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    if-nez v2, :cond_1

    .line 464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preference object with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a PreferenceScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    .end local v0    # "root":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_0
    move-object v0, v1

    .line 471
    .restart local v0    # "root":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_1
    check-cast v0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .end local v0    # "root":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->setPreferenceScreen(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)V

    .line 472
    return-void
.end method
