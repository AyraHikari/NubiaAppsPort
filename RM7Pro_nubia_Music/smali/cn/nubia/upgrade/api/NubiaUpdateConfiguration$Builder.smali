.class public Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
.super Ljava/lang/Object;
.source "NubiaUpdateConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowMobileNetwork:Z

.field private mAppName:Ljava/lang/String;

.field private mDownLoadStorageLimit:J

.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

.field private mIconId:I

.field private mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

.field private mNotificationContent:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;

.field private mNotificationUpdateOffset:J

.field private mShowNotification:Z

.field private mSilentDownload:Z

.field private mSilentInstall:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentInstall:Z

    .line 183
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentDownload:Z

    .line 184
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    .line 187
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    .line 192
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    .line 194
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentInstall:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/RunMode;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/RunMode;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentDownload:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    return-wide v0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 362
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

    if-nez v0, :cond_1

    .line 363
    new-instance v0, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 365
    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 2

    .prologue
    .line 354
    invoke-direct {p0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    .line 355
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;-><init>(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;)V

    return-object v0
.end method

.method public setAllowMobileNetwork(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .prologue
    .line 268
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    .line 269
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public setDownloadPath(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadPath:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public setDownloadRunMode(Lcn/nubia/upgrade/api/RunMode;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 338
    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    iput p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    .line 259
    return-object p0
.end method

.method public setInstallRunMode(Lcn/nubia/upgrade/api/RunMode;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 350
    return-object p0
.end method

.method public setNotificationContent(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    .line 291
    return-object p0
.end method

.method public setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    .line 280
    return-object p0
.end method

.method public setNotificationUpdateOffset(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    .line 302
    return-object p0
.end method

.method public setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    .line 221
    return-object p0
.end method

.method public setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .prologue
    .line 235
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentDownload:Z

    .line 236
    return-object p0
.end method

.method public setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .prologue
    .line 209
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentInstall:Z

    .line 210
    return-object p0
.end method

.method public setStorageLimit(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 1

    .prologue
    .line 325
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    .line 326
    return-object p0
.end method
