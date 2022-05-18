.class public abstract Lcn/nubia/deskclock/fragment/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;
    }
.end annotation


# static fields
.field public static final KEY_CC_NAVI_STATUS:Ljava/lang/String; = "cc_navi_status"

.field private static final TAG:Ljava/lang/String; = "BaseFragment"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field private static final mMobileModel:Ljava/lang/String;


# instance fields
.field protected mActivity:Lcn/nubia/deskclock/DeskClock;

.field private mBaseNaviStatusObserver:Landroid/database/ContentObserver;

.field protected mHandler:Landroid/os/Handler;

.field protected mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

.field protected mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/fragment/BaseFragment$MyContentObserver;-><init>(Lcn/nubia/deskclock/fragment/BaseFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/BaseFragment;->mBaseNaviStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    return-object v0
.end method

.method private needRegisterNaviStatus()Z
    .locals 3

    .prologue
    .line 187
    sget-object v1, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    const-string v2, "NX629"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    const-string v2, "NX627"

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    const-string v2, "NX619"

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    const-string v2, "NX616"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    const-string v2, "NX651"

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    const-string v2, "NX659"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    const-string v2, "NX666"

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/nubia/deskclock/fragment/BaseFragment;->mMobileModel:Ljava/lang/String;

    const-string v2, "NX669"

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 195
    .local v0, "need":Z
    :goto_0
    return v0

    .line 194
    .end local v0    # "need":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract doBackPressed()Z
.end method

.method public abstract getMotionContentView()Landroid/widget/ListView;
.end method

.method public abstract isEmpty()Z
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 161
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->needRegisterNaviStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cc_navi_status"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/BaseFragment;->mBaseNaviStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    sget-object v1, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ui_night_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/BaseFragment;->mBaseNaviStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BaseFragment"

    const-string v2, " onAttach "

    invoke-static {v1, v2, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 176
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->needRegisterNaviStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/BaseFragment;->mBaseNaviStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/BaseFragment;->mBaseNaviStatusObserver:Landroid/database/ContentObserver;

    .line 184
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BaseFragment"

    const-string v2, " onDetach "

    invoke-static {v1, v2, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPageChanged(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 142
    return-void
.end method

.method public setDeleteModeListener(Lcn/nubia/deskclock/inter/IViewPagerEnableListener;)V
    .locals 0
    .param p1, "Listener"    # Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/BaseFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    .line 138
    return-void
.end method

.method public setWorkingHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 151
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/BaseFragment;->mHandler:Landroid/os/Handler;

    .line 152
    return-void
.end method

.method public setWorkingMode(Lcn/nubia/deskclock/model/LocalWorkingModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/deskclock/model/LocalWorkingModel;

    .prologue
    .line 155
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/BaseFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    .line 156
    return-void
.end method
