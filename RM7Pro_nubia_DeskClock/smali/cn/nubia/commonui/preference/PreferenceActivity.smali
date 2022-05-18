.class public abstract Lcn/nubia/commonui/preference/PreferenceActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/PreferenceActivity$Header;,
        Lcn/nubia/commonui/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 222
    iput v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 223
    iput-boolean v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 232
    new-instance v0, Lcn/nubia/commonui/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/preference/PreferenceActivity$1;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/preference/PreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1530
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1531
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1532
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1534
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1537
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1524
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1525
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1553
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1554
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1556
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1326
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1327
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1330
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1331
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1332
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1334
    const-string v2, "id"

    const-string v3, "prefs"

    invoke-static {v2, v3}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1335
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1336
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1638
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1641
    :try_start_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "inflateFromIntent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1643
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1644
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 1645
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1644
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1653
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1648
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1649
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addPreferencesFromResource(I)V
    .locals 8
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1666
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1670
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const-string v1, "inflateFromResource"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v3

    .line 1671
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v5, v7

    .line 1670
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1673
    return-void
.end method

.method findBestMatchingHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 9
    .param p1, "cur"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;)",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1379
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1381
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1382
    .local v3, "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1384
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1385
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    .end local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1403
    .local v0, "NM":I
    if-ne v0, v8, :cond_7

    .line 1404
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-object v3, v4

    .line 1420
    :cond_2
    :goto_1
    return-object v3

    .line 1388
    .end local v0    # "NM":I
    .restart local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1389
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1390
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1392
    :cond_5
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1393
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1394
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1396
    :cond_6
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1397
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1398
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1405
    .end local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1406
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1407
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1408
    .restart local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1409
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1412
    :cond_8
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1415
    :cond_9
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1406
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1420
    .end local v3    # "oh":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1688
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1689
    const/4 v0, 0x0

    .line 1691
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1496
    invoke-virtual {p0, p2, p3}, Lcn/nubia/commonui/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1497
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->finish()V

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBackPressed()V

    .line 1501
    if-eqz p1, :cond_0

    .line 1502
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1503
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1548
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1612
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 1614
    :try_start_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPreferenceScreen"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 1615
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1616
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1617
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1625
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 1625
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1620
    :catch_1
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 834
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 837
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 998
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 999
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1001
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 22
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    const/16 v16, 0x0

    .line 849
    .local v16, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 850
    invoke-static/range {v16 .. v16}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 853
    .local v8, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    .local v19, "type":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_0

    .line 858
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 859
    .local v14, "nodeName":Ljava/lang/String;
    const-string v2, "preference-headers"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 860
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 862
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v19    # "type":I
    :catch_0
    move-exception v10

    .line 981
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing headers"

    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v2

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 986
    :cond_2
    throw v2

    .line 865
    .restart local v8    # "attrs":Landroid/util/AttributeSet;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_3
    const/4 v9, 0x0

    .line 867
    .local v9, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 868
    .local v15, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_16

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    .line 869
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v15, :cond_16

    .line 870
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_4

    .line 874
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 875
    const-string v2, "header"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 876
    new-instance v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    invoke-direct {v11}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;-><init>()V

    .line 885
    .local v11, "header":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    const-string v2, "PreferenceHeader"

    .line 886
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    .line 885
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 887
    .local v17, "sa":Landroid/content/res/TypedArray;
    const-string v2, "PreferenceHeader_id"

    .line 888
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    .line 887
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    .line 890
    const-string v2, "PreferenceHeader_title"

    .line 891
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 890
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v18

    .line 892
    .local v18, "tv":Landroid/util/TypedValue;
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 893
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_d

    .line 894
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->titleRes:I

    .line 901
    :cond_6
    :goto_1
    const-string v2, "PreferenceHeader_summary"

    .line 902
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 901
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v18

    .line 903
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 904
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_e

    .line 905
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->summaryRes:I

    .line 912
    :cond_7
    :goto_2
    const-string v2, "PreferenceHeader_breadCrumbTitle"

    .line 913
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 912
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v18

    .line 914
    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 915
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_f

    .line 916
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 923
    :cond_8
    :goto_3
    const-string v2, "PreferenceHeader_breadCrumbShortTitle"

    .line 924
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 923
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v18

    .line 925
    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 926
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_10

    .line 927
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 936
    :cond_9
    :goto_4
    const-string v2, "PreferenceHeader_icon"

    .line 937
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 936
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->iconRes:I

    .line 938
    const-string v2, "PreferenceHeader_fragment"

    .line 939
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 938
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 940
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 942
    if-nez v9, :cond_a

    .line 943
    new-instance v9, Landroid/os/Bundle;

    .end local v9    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 946
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    :cond_a
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 947
    .local v12, "innerDepth":I
    :cond_b
    :goto_5
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_13

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_c

    .line 948
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v12, :cond_13

    .line 949
    :cond_c
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_b

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_b

    .line 953
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 954
    .local v13, "innerNodeName":Ljava/lang/String;
    const-string v2, "extra"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "extra"

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 957
    const-string v2, "com.android.internal.util.XmlUtils"

    const-string v3, "skipCurrentTag"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Landroid/content/res/XmlResourceParser;

    aput-object v21, v7, v20

    invoke-static/range {v2 .. v7}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 982
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .end local v11    # "header":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .end local v12    # "innerDepth":I
    .end local v13    # "innerNodeName":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "outerDepth":I
    .end local v17    # "sa":Landroid/content/res/TypedArray;
    .end local v18    # "tv":Landroid/util/TypedValue;
    .end local v19    # "type":I
    :catch_1
    move-exception v10

    .line 983
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing headers"

    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 896
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v8    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v11    # "header":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "outerDepth":I
    .restart local v17    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "tv":Landroid/util/TypedValue;
    .restart local v19    # "type":I
    :cond_d
    :try_start_4
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 907
    :cond_e
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 918
    :cond_f
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 929
    :cond_10
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 959
    .restart local v12    # "innerDepth":I
    .restart local v13    # "innerNodeName":Ljava/lang/String;
    :cond_11
    const-string v2, "intent"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0, v8}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 964
    :cond_12
    const-string v2, "com.android.internal.util.XmlUtils"

    const-string v3, "skipCurrentTag"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Landroid/content/res/XmlResourceParser;

    aput-object v21, v7, v20

    invoke-static/range {v2 .. v7}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 968
    .end local v13    # "innerNodeName":Ljava/lang/String;
    :cond_13
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 969
    iput-object v9, v11, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 970
    const/4 v9, 0x0

    .line 973
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 976
    .end local v11    # "header":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .end local v12    # "innerDepth":I
    .end local v17    # "sa":Landroid/content/res/TypedArray;
    .end local v18    # "tv":Landroid/util/TypedValue;
    :cond_15
    const-string v2, "com.android.internal.util.XmlUtils"

    const-string v3, "skipCurrentTag"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Landroid/content/res/XmlResourceParser;

    aput-object v21, v7, v20

    invoke-static/range {v2 .. v7}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 985
    :cond_16
    if-eqz v16, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 987
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1113
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1115
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1117
    :try_start_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dispatchActivityResult"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    .line 1118
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1120
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1121
    .local v1, "isAcc":Z
    if-nez v1, :cond_0

    .line 1122
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1124
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1132
    .end local v1    # "isAcc":Z
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1128
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1203
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1205
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1207
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1208
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1136
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onContentChanged()V

    .line 1138
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1139
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->postBindPreferences()V

    .line 1141
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 539
    invoke-super/range {p0 .. p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 546
    const/16 v23, 0x0

    const-string v21, "PreferenceActivity"

    .line 547
    invoke-static/range {v21 .. v21}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    check-cast v21, [I

    const-string v22, "attr"

    const-string v24, "preferenceActivityStyle"

    .line 548
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v24, 0x0

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 554
    .local v19, "sa":Landroid/content/res/TypedArray;
    const-string v21, "PreferenceActivity_layout"

    .line 555
    invoke-static/range {v21 .. v21}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const-string v21, "layout"

    const-string v23, "preference_list_content"

    .line 556
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 554
    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 561
    .local v18, "layoutResId":I
    const-string v21, "PreferenceActivity_headerLayout"

    .line 562
    invoke-static/range {v21 .. v21}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const-string v21, "layout"

    const-string v23, "preference_header_item"

    .line 563
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 561
    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 568
    const-string v21, "PreferenceActivity_headerRemoveIconIfEmpty"

    .line 569
    invoke-static/range {v21 .. v21}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x0

    .line 568
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 572
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setContentView(I)V

    .line 578
    const-string v21, "id"

    const-string v22, "list_footer"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 579
    const-string v21, "id"

    const-string v22, "prefs_frame"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v10

    .line 582
    .local v10, "hidingHeaders":Z
    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v21

    if-nez v21, :cond_6

    :cond_0
    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 584
    .local v12, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_args"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 585
    .local v11, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 586
    .local v15, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_short_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 588
    .local v13, "initialShortTitle":I
    if-eqz p1, :cond_7

    .line 591
    const-string v21, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 592
    .local v9, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    if-eqz v9, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    const-string v21, ":android:cur_header"

    const/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 596
    .local v7, "curHeader":I
    if-ltz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 636
    .end local v7    # "curHeader":I
    .end local v9    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    :cond_1
    :goto_1
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 639
    const-string v21, "id"

    const-string v22, "headers"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    if-eqz v15, :cond_2

    .line 642
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 643
    .local v16, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_b

    .line 644
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 645
    .local v14, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 681
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 682
    .local v17, "intent":Landroid/content/Intent;
    const-string v21, "extra_prefs_show_button_bar"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 685
    const-string v21, "id"

    const-string v22, "button_bar"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 688
    const-string v21, "id"

    const-string v22, "back_button"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 689
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v21, Lcn/nubia/commonui/preference/PreferenceActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$2;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    const-string v21, "id"

    const-string v22, "skip_button"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 697
    .local v20, "skipButton":Landroid/widget/Button;
    new-instance v21, Lcn/nubia/commonui/preference/PreferenceActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$3;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    const-string v21, "id"

    const-string v22, "next_button"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcn/nubia/commonui/preference/PreferenceActivity$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$4;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    const-string v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 714
    const-string v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 715
    .local v6, "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 722
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 723
    const-string v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 724
    .restart local v6    # "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 725
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 731
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v21, "extra_prefs_show_skip"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 732
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v20    # "skipButton":Landroid/widget/Button;
    :cond_5
    return-void

    .line 582
    .end local v11    # "initialArguments":Landroid/os/Bundle;
    .end local v12    # "initialFragment":Ljava/lang/String;
    .end local v13    # "initialShortTitle":I
    .end local v15    # "initialTitle":I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 602
    .restart local v11    # "initialArguments":Landroid/os/Bundle;
    .restart local v12    # "initialFragment":Ljava/lang/String;
    .restart local v13    # "initialShortTitle":I
    .restart local v15    # "initialTitle":I
    :cond_7
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 606
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 607
    if-eqz v15, :cond_1

    .line 608
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 609
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_8

    .line 610
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 611
    .restart local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 610
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 616
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_1

    .line 622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 623
    if-nez v12, :cond_a

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onGetInitialHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v8

    .line 625
    .local v8, "h":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 627
    .end local v8    # "h":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 644
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 647
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_e

    .line 648
    new-instance v21, Lcn/nubia/commonui/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 656
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 667
    :cond_e
    sget v21, Lcn/nubia/commonui/R$layout;->nubia_preference_list_content_single:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setContentView(I)V

    .line 672
    const-string v21, "id"

    const-string v22, "list_footer"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 673
    const-string v21, "id"

    const-string v22, "prefs"

    invoke-static/range {v21 .. v22}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 676
    const-string v21, "android.preference.PreferenceManager"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p0, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x64

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Landroid/app/Activity;

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Lcn/nubia/commonui/ReflectUtils;->newInstanceByConstructor(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    goto/16 :goto_3

    .line 719
    .restart local v5    # "backButton":Landroid/widget/Button;
    .restart local v6    # "buttonText":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "skipButton":Landroid/widget/Button;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 728
    :cond_10
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1042
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1043
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1044
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onDestroy()V

    .line 1046
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1048
    :try_start_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dispatchActivityDestroy"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 1049
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1050
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1051
    .local v1, "isAcc":Z
    if-nez v1, :cond_0

    .line 1052
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1054
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1062
    .end local v1    # "isAcc":Z
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1058
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGetInitialHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 793
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 794
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 795
    .local v0, "h":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    iget-object v2, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 796
    return-object v0

    .line 793
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    .end local v0    # "h":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must have at least one header with a fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onGetNewHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcn/nubia/commonui/preference/PreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 1167
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1168
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1169
    iget v5, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1170
    .local v5, "titleRes":I
    iget v6, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1171
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_0

    .line 1172
    iget v5, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->titleRes:I

    .line 1173
    const/4 v6, 0x0

    .line 1175
    :cond_0
    iget-object v1, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1183
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1
    :goto_0
    return-void

    .line 1178
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1180
    :cond_3
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 782
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 4

    .prologue
    .line 769
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v1, "bool"

    const-string v3, "preferences_prefer_dual_pane"

    .line 770
    invoke-static {v1, v3}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 769
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 771
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1146
    const-string v1, "isResumed"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    invoke-super/range {p0 .. p5}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1151
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1153
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lcn/nubia/commonui/preference/PreferenceActivity;->onHeaderClick(Lcn/nubia/commonui/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1696
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 1698
    :try_start_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "dispatchNewIntent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1700
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1701
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1709
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1704
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1705
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1512
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1513
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1512
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1514
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1090
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_0

    .line 1091
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1092
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1094
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 1096
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_0
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1109
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :goto_1
    return-void

    .line 1097
    .restart local v0    # "container":Landroid/os/Bundle;
    .restart local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v1

    .line 1098
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v3, "NubiaWidget"

    const-string v4, "OnResotoreInstanceState Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1108
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/BadParcelableException;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1066
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1068
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1069
    const-string v3, ":android:headers"

    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1070
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 1071
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1072
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1073
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1079
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1080
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 1081
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1082
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1083
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1086
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 1020
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onStop()V

    .line 1022
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1024
    :try_start_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dispatchActivityStop"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 1025
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1026
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1027
    .local v1, "isAcc":Z
    if-nez v1, :cond_0

    .line 1028
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1030
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1038
    .end local v1    # "isAcc":Z
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1034
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1012
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1013
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1296
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1299
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1571
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1573
    :try_start_0
    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setPreferences"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/preference/PreferenceScreen;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1575
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1576
    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1577
    .local v1, "isSetPreference":Z
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1578
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->postBindPreferences()V

    .line 1579
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1581
    .local v3, "title":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1582
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1599
    .end local v1    # "isSetPreference":Z
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1587
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 1588
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .prologue
    .line 1302
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1303
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1304
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1309
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 1310
    return-void

    .line 1307
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .prologue
    .line 1313
    if-eqz p1, :cond_2

    .line 1314
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1315
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1316
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1317
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1321
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1319
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1253
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_4

    .line 1254
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1257
    .local v1, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_1

    .line 1263
    if-eqz p1, :cond_0

    .line 1264
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1258
    :catch_0
    move-exception v2

    .line 1259
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1268
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_3

    .line 1269
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v6}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1272
    const-string v3, "id"

    const-string v4, "breadcrumb_section"

    invoke-static {v3, v4}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1273
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1276
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1277
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1279
    :cond_4
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1280
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1282
    :cond_5
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1433
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const-string v1, "id"

    const-string v2, "prefs"

    invoke-static {v1, v2}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1434
    if-eqz p2, :cond_0

    .line 1435
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1436
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1440
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1441
    return-void

    .line 1438
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1464
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1465
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1483
    :goto_0
    return-void

    .line 1467
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1468
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1469
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1471
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1473
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const-string v0, "id"

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1474
    if-eqz p3, :cond_3

    .line 1475
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1479
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1480
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1481
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1476
    :cond_3
    if-eqz p4, :cond_2

    .line 1477
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1217
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1218
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1239
    invoke-virtual {p0, p1, p2, p5, p6}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1240
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1241
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1245
    :goto_0
    return-void

    .line 1243
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .prologue
    .line 1364
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1376
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    :cond_1
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1374
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1346
    const/4 v1, 0x0

    .line 1347
    .local v1, "selectedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1348
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    iget-object v2, v2, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1349
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "selectedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    check-cast v1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1353
    .restart local v1    # "selectedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 1354
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1355
    return-void

    .line 1347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
