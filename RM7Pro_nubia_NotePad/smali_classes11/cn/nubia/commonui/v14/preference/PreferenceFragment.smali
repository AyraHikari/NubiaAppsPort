.class public abstract Lcn/nubia/commonui/v14/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;,
        Lcn/nubia/commonui/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;,
        Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;,
        Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "cn.nubia.commonui.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "cn.nubia.commonui.v14.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mDividerDecoration:Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;

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
    .line 118
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 143
    sget v0, Lcn/nubia/commonui/R$layout;->preference_list_fragment:I

    iput v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mLayoutResId:I

    .line 145
    new-instance v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;-><init>(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v14/preference/PreferenceFragment$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mDividerDecoration:Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;

    .line 148
    new-instance v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$1;-><init>(Lcn/nubia/commonui/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$2;-><init>(Lcn/nubia/commonui/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 791
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/v14/preference/PreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v14/preference/PreferenceFragment;

    .prologue
    .line 118
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v14/preference/PreferenceFragment;

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 3

    .prologue
    .line 554
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 555
    .local v0, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->onCreateAdapter(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 557
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->onAttached()V

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->onBindPreferences()V

    .line 560
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 549
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    return-void
.end method

.method private scrollToPreferenceInternal(Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 693
    new-instance v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$3;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$3;-><init>(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V

    .line 724
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 725
    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private unbindPreferences()V
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 564
    .local v0, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->onDetached()V

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 568
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 449
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 451
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 452
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 451
    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcn/nubia/commonui/v7/preference/PreferenceScreen;)Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->setPreferenceScreen(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)V

    .line 453
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Lcn/nubia/commonui/v7/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 361
    if-eqz p1, :cond_0

    .line 362
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 363
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 365
    .local v1, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 370
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 217
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 218
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$attr;->preferenceTheme:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 220
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 221
    .local v2, "theme":I
    if-nez v2, :cond_0

    .line 222
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must specify preferenceTheme in theme"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 226
    new-instance v4, Lcn/nubia/commonui/v7/preference/PreferenceManager;

    iget-object v5, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcn/nubia/commonui/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    .line 227
    iget-object v4, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v4, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 228
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 230
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "cn.nubia.commonui.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 236
    return-void

    .line 233
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
    .line 627
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 617
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

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
    .line 599
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_preference_recyclerview:I

    const/4 v2, 0x0

    .line 600
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 603
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 604
    new-instance v1, Lcn/nubia/commonui/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 607
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 20
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v15, 0x0

    sget-object v16, Lcn/nubia/commonui/R$styleable;->PreferenceFragment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget v18, Lcn/nubia/commonui/R$attr;->preferenceFragmentStyle:I

    sget v19, Lcn/nubia/commonui/v7/preference/AndroidResources;->ANDROID_R_PREFERENCE_FRAGMENT_STYLE:I

    .line 264
    invoke-static/range {v17 .. v19}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v17

    const/16 v18, 0x0

    .line 262
    invoke-virtual/range {v14 .. v18}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 269
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v14, Lcn/nubia/commonui/R$styleable;->PreferenceFragment_android_layout:I

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mLayoutResId:I

    .line 271
    sget v14, Lcn/nubia/commonui/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 272
    .local v4, "divider":Landroid/graphics/drawable/Drawable;
    sget v14, Lcn/nubia/commonui/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/4 v15, -0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 274
    .local v5, "dividerHeight":I
    sget v14, Lcn/nubia/commonui/R$styleable;->PreferenceFragment_allowDividerAfterLastItem:I

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 276
    .local v3, "allowDividerAfterLastItem":Z
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 280
    .local v12, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    sget v15, Lcn/nubia/commonui/R$attr;->preferenceTheme:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v12, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 282
    iget v9, v12, Landroid/util/TypedValue;->resourceId:I

    .line 284
    .local v9, "theme":I
    new-instance v10, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v10, v14, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 285
    .local v10, "themedContext":Landroid/content/Context;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 287
    .local v11, "themedInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mLayoutResId:I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v11, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 289
    .local v13, "view":Landroid/view/View;
    const v14, 0x102003f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 290
    .local v8, "rawListContainer":Landroid/view/View;
    instance-of v14, v8, Landroid/view/ViewGroup;

    if-nez v14, :cond_0

    .line 291
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    move-object v6, v8

    .line 295
    check-cast v6, Landroid/view/ViewGroup;

    .line 297
    .local v6, "listContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v6, v1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    .line 299
    .local v7, "listView":Landroid/support/v7/widget/RecyclerView;
    if-nez v7, :cond_1

    .line 300
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Could not create RecyclerView"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iput-object v7, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mDividerDecoration:Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 306
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 307
    const/4 v14, -0x1

    if-eq v5, v14, :cond_2

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->setDividerHeight(I)V

    .line 310
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mDividerDecoration:Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v14, v3}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-object v13
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 241
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 389
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-boolean v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->unbindPreferences()V

    .line 393
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 394
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 395
    return-void
.end method

.method public onDisplayPreferenceDialog(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 640
    const/4 v1, 0x0

    .line 641
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_0

    .line 642
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 643
    invoke-interface {v2, p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v1

    .line 645
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 646
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 647
    invoke-interface {v2, p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v1

    .line 650
    :cond_1
    if-eqz v1, :cond_3

    .line 672
    :cond_2
    :goto_0
    return-void

    .line 655
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cn.nubia.commonui.v14.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 660
    instance-of v2, p1, Lcn/nubia/commonui/v7/preference/EditTextPreference;

    if-eqz v2, :cond_4

    .line 661
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;

    move-result-object v0

    .line 670
    .local v0, "f":Landroid/app/DialogFragment;
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 671
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cn.nubia.commonui.v14.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    .end local v0    # "f":Landroid/app/DialogFragment;
    :cond_4
    instance-of v2, p1, Lcn/nubia/commonui/v7/preference/ListPreference;

    if-eqz v2, :cond_5

    .line 663
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v14/preference/ListPreferenceDialogFragment;

    move-result-object v0

    .restart local v0    # "f":Landroid/app/DialogFragment;
    goto :goto_1

    .line 664
    .end local v0    # "f":Landroid/app/DialogFragment;
    :cond_5
    instance-of v2, p1, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;

    if-eqz v2, :cond_6

    .line 665
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    move-result-object v0

    .restart local v0    # "f":Landroid/app/DialogFragment;
    goto :goto_1

    .line 667
    .end local v0    # "f":Landroid/app/DialogFragment;
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
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 519
    invoke-interface {v1, p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Z

    move-result v0

    .line 521
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 523
    invoke-interface {v1, p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Z

    .line 525
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Lcn/nubia/commonui/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 489
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 493
    invoke-interface {v1, p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v0

    .line 495
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 497
    invoke-interface {v1, p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v0

    .line 501
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
    .line 399
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 401
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 402
    .local v1, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 405
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 407
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 375
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 376
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 377
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 382
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 383
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 384
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 344
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 346
    iget-boolean v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->bindPreferences()V

    .line 348
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 354
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mInitDone:Z

    .line 355
    return-void
.end method

.method public scrollToPreference(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->scrollToPreferenceInternal(Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->scrollToPreferenceInternal(Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 328
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mDividerDecoration:Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 329
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mDividerDecoration:Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->setDividerHeight(I)V

    .line 340
    return-void
.end method

.method public setPreferenceScreen(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .prologue
    .line 423
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setPreferences(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mHavePrefs:Z

    .line 426
    iget-boolean v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->postBindPreferences()V

    .line 430
    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 5
    .param p1, "preferencesResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 465
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 467
    iget-object v2, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    iget-object v3, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcn/nubia/commonui/v7/preference/PreferenceScreen;)Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 471
    .local v1, "xmlRoot":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    if-eqz p2, :cond_0

    .line 472
    invoke-virtual {v1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    .line 473
    .local v0, "root":Lcn/nubia/commonui/v7/preference/Preference;
    instance-of v2, v0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    if-nez v2, :cond_1

    .line 474
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

    .line 478
    .end local v0    # "root":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_0
    move-object v0, v1

    .line 481
    .restart local v0    # "root":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_1
    check-cast v0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .end local v0    # "root":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->setPreferenceScreen(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)V

    .line 482
    return-void
.end method
