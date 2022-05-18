.class public Lcn/nubia/notepad/SysApplication;
.super Landroid/app/Application;
.source "SysApplication.java"


# static fields
.field private static instance:Lcn/nubia/notepad/SysApplication;


# instance fields
.field private final lifecycle:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/SysApplication;->mList:Ljava/util/List;

    .line 114
    new-instance v0, Lcn/nubia/notepad/SysApplication$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/SysApplication$1;-><init>(Lcn/nubia/notepad/SysApplication;)V

    iput-object v0, p0, Lcn/nubia/notepad/SysApplication;->lifecycle:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static getInstance()Lcn/nubia/notepad/SysApplication;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcn/nubia/notepad/SysApplication;->instance:Lcn/nubia/notepad/SysApplication;

    return-object v0
.end method

.method private initImageLoader(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x1e00000

    .line 51
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 53
    .local v0, "configuration":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 54
    return-void
.end method

.method public static isInterVersion()Z
    .locals 3

    .prologue
    .line 41
    const-string v1, "sys.nubia_internal_version_flag"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    instance-of v1, p1, Lcn/nubia/notepad/NotePadShareActivity;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcn/nubia/notepad/SysApplication;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 63
    .local v0, "a":Landroid/app/Activity;
    instance-of v2, v0, Lcn/nubia/notepad/NotePadShareActivity;

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 69
    .end local v0    # "a":Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/SysApplication;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/SysApplication;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 88
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/SysApplication;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 96
    return-void
.end method

.method public getAcitivitiesSize()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/notepad/SysApplication;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/notepad/SysApplication;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/notepad/SysApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcn/nubia/notepad/SysApplication;->initImageLoader(Landroid/content/Context;)V

    .line 34
    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->updateLabelDataBase(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->getInstance()Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->init(Landroid/content/Context;)V

    .line 37
    sput-object p0, Lcn/nubia/notepad/SysApplication;->instance:Lcn/nubia/notepad/SysApplication;

    .line 38
    iget-object v1, p0, Lcn/nubia/notepad/SysApplication;->lifecycle:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/SysApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 39
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 111
    iget-object v0, p0, Lcn/nubia/notepad/SysApplication;->lifecycle:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/SysApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 112
    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/SysApplication;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/notepad/SysApplication;->mSearchString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iput-object p1, p0, Lcn/nubia/notepad/SysApplication;->mSearchString:Ljava/lang/String;

    .line 106
    :cond_0
    return-void
.end method
