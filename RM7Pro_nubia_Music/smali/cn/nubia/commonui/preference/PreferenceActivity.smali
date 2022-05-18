.class public abstract Lcn/nubia/commonui/preference/PreferenceActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/PreferenceActivity$Header;,
        Lcn/nubia/commonui/preference/PreferenceActivity$a;
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

    .prologue
    .line 131
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 1

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
    if-eqz v0, :cond_0

    .line 1531
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1532
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1534
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

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
    .locals 4

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1326
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fragment for this activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 1331
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1332
    const/16 v0, 0x1003

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1334
    const-string v0, "id"

    const-string v3, "prefs"

    invoke-static {v0, v3}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1335
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1336
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1638
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1641
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "inflateFromIntent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/preference/PreferenceScreen;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1643
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1644
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 1645
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1644
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1653
    :goto_0
    return-void

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1648
    :catch_1
    move-exception v0

    .line 1649
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addPreferencesFromResource(I)V
    .locals 8
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
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1379
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1380
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1381
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1382
    if-eq p1, v0, :cond_0

    iget-wide v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1384
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1385
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1403
    if-ne v1, v8, :cond_7

    .line 1404
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1420
    :cond_2
    :goto_1
    return-object v0

    .line 1388
    :cond_3
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1389
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1390
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1392
    :cond_5
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1393
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1394
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1396
    :cond_6
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1397
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1398
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1405
    :cond_7
    if-le v1, v8, :cond_b

    .line 1406
    :goto_3
    if-ge v2, v1, :cond_b

    .line 1407
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1408
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1409
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1412
    :cond_8
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1415
    :cond_9
    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1406
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1420
    :cond_b
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
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
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1612
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1614
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPreferenceScreen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 1615
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1616
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1617
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1625
    :goto_0
    return-object v0

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 1625
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1620
    :catch_1
    move-exception v0

    .line 1621
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
    .locals 16
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
    const/4 v3, 0x0

    .line 849
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v8

    .line 850
    :try_start_1
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 853
    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 858
    :cond_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 859
    const-string v3, "preference-headers"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 860
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 862
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 980
    :catch_0
    move-exception v2

    move-object v3, v8

    .line 981
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing headers"

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 985
    :catchall_0
    move-exception v2

    move-object v8, v3

    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v2

    .line 865
    :cond_3
    const/4 v2, 0x0

    .line 867
    :try_start_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    move-object v9, v2

    .line 868
    :cond_4
    :goto_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 869
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v11, :cond_15

    .line 870
    :cond_5
    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 874
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 875
    const-string v3, "header"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 876
    new-instance v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    invoke-direct {v12}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;-><init>()V

    .line 885
    const-string v2, "PreferenceHeader"

    .line 886
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    .line 885
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 887
    const-string v2, "PreferenceHeader_id"

    .line 888
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    .line 887
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->id:J

    .line 890
    const-string v2, "PreferenceHeader_title"

    .line 891
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 890
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 892
    if-eqz v2, :cond_6

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 893
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_d

    .line 894
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    iput v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->titleRes:I

    .line 901
    :cond_6
    :goto_3
    const-string v2, "PreferenceHeader_summary"

    .line 902
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 901
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 903
    if-eqz v2, :cond_7

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 904
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_e

    .line 905
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    iput v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->summaryRes:I

    .line 912
    :cond_7
    :goto_4
    const-string v2, "PreferenceHeader_breadCrumbTitle"

    .line 913
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 912
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 914
    if-eqz v2, :cond_8

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 915
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_f

    .line 916
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    iput v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 923
    :cond_8
    :goto_5
    const-string v2, "PreferenceHeader_breadCrumbShortTitle"

    .line 924
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 923
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 925
    if-eqz v2, :cond_9

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 926
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_10

    .line 927
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    iput v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 936
    :cond_9
    :goto_6
    const-string v2, "PreferenceHeader_icon"

    .line 937
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    .line 936
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->iconRes:I

    .line 938
    const-string v2, "PreferenceHeader_fragment"

    .line 939
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 938
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 940
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 942
    if-nez v9, :cond_a

    .line 943
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 946
    :cond_a
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    .line 947
    :cond_b
    :goto_7
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 948
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v13, :cond_13

    .line 949
    :cond_c
    const/4 v3, 0x3

    if-eq v2, v3, :cond_b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b

    .line 953
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 954
    const-string v3, "extra"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "extra"

    invoke-virtual {v2, v3, v10, v9}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 957
    const-string v2, "com.android.internal.util.XmlUtils"

    const-string v3, "skipCurrentTag"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/res/XmlResourceParser;

    aput-object v15, v7, v14

    invoke-static/range {v2 .. v7}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 982
    :catch_1
    move-exception v2

    .line 983
    :goto_8
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing headers"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 985
    :catchall_1
    move-exception v2

    goto/16 :goto_1

    .line 896
    :cond_d
    :try_start_5
    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 907
    :cond_e
    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 918
    :cond_f
    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 929
    :cond_10
    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 959
    :cond_11
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v8, v10}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_7

    .line 964
    :cond_12
    const-string v2, "com.android.internal.util.XmlUtils"

    const-string v3, "skipCurrentTag"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/res/XmlResourceParser;

    aput-object v15, v7, v14

    invoke-static/range {v2 .. v7}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 968
    :cond_13
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 969
    iput-object v9, v12, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 970
    const/4 v2, 0x0

    .line 973
    :goto_9
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v2

    .line 974
    goto/16 :goto_2

    .line 976
    :cond_14
    const-string v2, "com.android.internal.util.XmlUtils"

    const-string v3, "skipCurrentTag"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/res/XmlResourceParser;

    aput-object v13, v7, v12

    invoke-static/range {v2 .. v7}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 985
    :cond_15
    if-eqz v8, :cond_16

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 987
    :cond_16
    return-void

    .line 985
    :catchall_2
    move-exception v2

    move-object v8, v3

    goto/16 :goto_1

    .line 982
    :catch_2
    move-exception v2

    move-object v8, v3

    goto/16 :goto_8

    .line 980
    :catch_3
    move-exception v2

    goto/16 :goto_0

    :cond_17
    move-object v2, v9

    goto :goto_9
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 1113
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1115
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dispatchActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    .line 1118
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1121
    if-nez v1, :cond_0

    .line 1122
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1124
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1132
    :cond_1
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1128
    :catch_1
    move-exception v0

    .line 1129
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
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
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
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 546
    const-string v0, "PreferenceActivity"

    .line 547
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const-string v1, "attr"

    const-string v5, "preferenceActivityStyle"

    .line 548
    invoke-static {v1, v5}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 546
    invoke-virtual {p0, v4, v0, v1, v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 554
    const-string v0, "PreferenceActivity_layout"

    .line 555
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v0, "layout"

    const-string v6, "preference_list_content"

    .line 556
    invoke-static {v0, v6}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 554
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 561
    const-string v0, "PreferenceActivity_headerLayout"

    .line 562
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v0, "layout"

    const-string v7, "preference_header_item"

    .line 563
    invoke-static {v0, v7}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 561
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 568
    const-string v0, "PreferenceActivity_headerRemoveIconIfEmpty"

    .line 569
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 568
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 572
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    invoke-virtual {p0, v5}, Lcn/nubia/commonui/preference/PreferenceActivity;->setContentView(I)V

    .line 578
    const-string v0, "id"

    const-string v1, "list_footer"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 579
    const-string v0, "id"

    const-string v1, "prefs_frame"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 581
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    .line 582
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    .line 583
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, ":android:show_fragment_title"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 586
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, ":android:show_fragment_short_title"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 588
    if-eqz p1, :cond_8

    .line 591
    const-string v0, ":android:headers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_1

    .line 593
    iget-object v7, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    const-string v0, ":android:cur_header"

    const/4 v7, -0x1

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 596
    if-ltz v0, :cond_1

    iget-object v7, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 597
    iget-object v7, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 636
    :cond_1
    :goto_1
    if-eqz v1, :cond_c

    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_c

    .line 639
    const-string v0, "id"

    const-string v1, "headers"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    if-eqz v5, :cond_3

    .line 642
    invoke-virtual {p0, v5}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 643
    if-eqz v6, :cond_2

    .line 644
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 645
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 681
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 682
    const-string v0, "extra_prefs_show_button_bar"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 685
    const-string v0, "id"

    const-string v1, "button_bar"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 688
    const-string v0, "id"

    const-string v1, "back_button"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 689
    new-instance v1, Lcn/nubia/commonui/preference/PreferenceActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/preference/PreferenceActivity$2;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    const-string v1, "id"

    const-string v2, "skip_button"

    invoke-static {v1, v2}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 697
    new-instance v2, Lcn/nubia/commonui/preference/PreferenceActivity$3;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/preference/PreferenceActivity$3;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    const-string v2, "id"

    const-string v5, "next_button"

    invoke-static {v2, v5}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 705
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcn/nubia/commonui/preference/PreferenceActivity$4;

    invoke-direct {v5, p0}, Lcn/nubia/commonui/preference/PreferenceActivity$4;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 714
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 716
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 722
    :cond_4
    :goto_3
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 723
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 725
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 731
    :cond_5
    :goto_4
    const-string v0, "extra_prefs_show_skip"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 732
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    :cond_6
    return-void

    :cond_7
    move v0, v3

    .line 582
    goto/16 :goto_0

    .line 602
    :cond_8
    if-eqz v1, :cond_a

    iget-boolean v7, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v7, :cond_a

    .line 606
    invoke-virtual {p0, v1, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 607
    if-eqz v5, :cond_1

    .line 608
    invoke-virtual {p0, v5}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 609
    if-eqz v6, :cond_9

    .line 610
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 611
    :goto_5
    invoke-virtual {p0, v7, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    move-object v0, v4

    .line 610
    goto :goto_5

    .line 616
    :cond_a
    iget-object v7, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 621
    iget-object v7, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 622
    iget-boolean v7, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v7, :cond_1

    .line 623
    if-nez v1, :cond_b

    .line 624
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onGetInitialHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 625
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 627
    :cond_b
    invoke-virtual {p0, v1, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 647
    :cond_c
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 648
    new-instance v0, Lcn/nubia/commonui/preference/PreferenceActivity$a;

    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    iget-boolean v5, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    invoke-direct {v0, p0, v1, v4, v5}, Lcn/nubia/commonui/preference/PreferenceActivity$a;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 650
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v0, :cond_3

    .line 652
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 653
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_d

    .line 654
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 656
    :cond_d
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 667
    :cond_e
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_preference_list_content_single:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setContentView(I)V

    .line 672
    const-string v0, "id"

    const-string v1, "list_footer"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 673
    const-string v0, "id"

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 676
    const-string v0, "android.preference.PreferenceManager"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcn/nubia/commonui/ReflectUtils;->newInstanceByConstructor(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager;

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    goto/16 :goto_2

    .line 719
    :cond_f
    iget-object v5, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 728
    :cond_10
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1042
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1043
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1044
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onDestroy()V

    .line 1046
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1048
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dispatchActivityDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 1049
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1051
    if-nez v1, :cond_0

    .line 1052
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1054
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1062
    :cond_1
    :goto_0
    return-void

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1058
    :catch_1
    move-exception v0

    .line 1059
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGetInitialHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 793
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 794
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 795
    iget-object v2, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 796
    return-object v0

    .line 793
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 799
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have at least one header with a fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .prologue
    const/4 v4, 0x0

    .line 1167
    iget-object v0, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1168
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1169
    iget v5, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1170
    iget v6, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1171
    if-nez v5, :cond_0

    .line 1172
    iget v5, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->titleRes:I

    move v6, v4

    .line 1175
    :cond_0
    iget-object v1, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1183
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
    .locals 3

    .prologue
    .line 769
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v0, "bool"

    const-string v2, "preferences_prefer_dual_pane"

    .line 770
    invoke-static {v0, v2}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 769
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 771
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 1146
    const-string v0, "isResumed"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    invoke-super/range {p0 .. p5}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1151
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1153
    instance-of v1, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0, p3}, Lcn/nubia/commonui/preference/PreferenceActivity;->onHeaderClick(Lcn/nubia/commonui/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 1696
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1698
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dispatchNewIntent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1700
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1701
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1704
    :catch_1
    move-exception v0

    .line 1705
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7

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
    .locals 3

    .prologue
    .line 1090
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1091
    const-string v0, ":android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1094
    if-eqz v1, :cond_0

    .line 1096
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_0
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1109
    :goto_1
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    const-string v1, "NubiaWidget"

    const-string v2, "OnResotoreInstanceState Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1108
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1066
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1068
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1069
    const-string v0, ":android:headers"

    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1070
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1072
    if-ltz v0, :cond_0

    .line 1073
    const-string v1, ":android:cur_header"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1080
    if-eqz v0, :cond_1

    .line 1081
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1082
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1083
    const-string v0, ":android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1086
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 1020
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onStop()V

    .line 1022
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1024
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dispatchActivityStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 1025
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    .line 1027
    if-nez v1, :cond_0

    .line 1028
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1030
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1038
    :cond_1
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1034
    :catch_1
    move-exception v0

    .line 1035
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4

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
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1571
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1573
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setPreferences"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/preference/PreferenceScreen;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1575
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1576
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1577
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1578
    invoke-direct {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->postBindPreferences()V

    .line 1579
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_0

    .line 1582
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1587
    :catch_1
    move-exception v0

    .line 1588
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V
    .locals 3

    .prologue
    .line 1302
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mCurHeader:Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1303
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1304
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

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V
    .locals 2

    .prologue
    .line 1313
    if-eqz p1, :cond_2

    .line 1314
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1315
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

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
    :goto_0
    return-void

    .line 1319
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1253
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v0, :cond_4

    .line 1254
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1257
    :try_start_0
    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v0, :cond_1

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
    move-exception v0

    .line 1259
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1268
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_3

    .line 1269
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, v3}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1272
    const-string v0, "id"

    const-string v1, "breadcrumb_section"

    invoke-static {v0, v1}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1273
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1276
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1277
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1279
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1280
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1282
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, v2, v2, v2}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 3

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1433
    const-string v0, "id"

    const-string v2, "prefs"

    invoke-static {v0, v2}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1434
    if-eqz p2, :cond_0

    .line 1435
    const/16 v0, 0x1001

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1436
    const-string v0, ":android:prefs"

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1440
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1441
    return-void

    .line 1438
    :cond_0
    const/16 v0, 0x1003

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 7

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

    move-result-object v1

    .line 1468
    if-eqz p5, :cond_1

    .line 1469
    invoke-virtual {v1, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1471
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1473
    const-string v0, "id"

    const-string v3, "prefs"

    invoke-static {v0, v3}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1474
    if-eqz p3, :cond_3

    .line 1475
    invoke-virtual {v2, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1479
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1480
    const-string v0, ":android:prefs"

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1481
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1476
    :cond_3
    if-eqz p4, :cond_2

    .line 1477
    invoke-virtual {v2, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7

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

    .prologue
    .line 1239
    invoke-virtual {p0, p1, p2, p5, p6}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1240
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

    .prologue
    .line 1346
    const/4 v2, 0x0

    .line 1347
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1348
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    iget-object v0, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 1353
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    .line 1354
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1355
    return-void

    .line 1347
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
