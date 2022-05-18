.class Lcom/nubia/nucms/api/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/api/CacheManager$Holder;
    }
.end annotation


# instance fields
.field private mIMEI:Ljava/lang/String;

.field private mPlatformVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/nubia/nucms/api/CacheManager;->mIMEI:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/nubia/nucms/api/CacheManager;->mPlatformVersion:Ljava/lang/String;

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/nubia/nucms/api/CacheManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nubia/nucms/api/CacheManager$1;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/nubia/nucms/api/CacheManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nubia/nucms/api/CacheManager;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/nubia/nucms/api/CacheManager$Holder;->access$100()Lcom/nubia/nucms/api/CacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nubia/nucms/api/CacheManager;->mIMEI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p1}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/CacheManager;->mIMEI:Ljava/lang/String;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/api/CacheManager;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nubia/nucms/api/CacheManager;->mPlatformVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/CacheManager;->mPlatformVersion:Ljava/lang/String;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/api/CacheManager;->mPlatformVersion:Ljava/lang/String;

    return-object v0
.end method
