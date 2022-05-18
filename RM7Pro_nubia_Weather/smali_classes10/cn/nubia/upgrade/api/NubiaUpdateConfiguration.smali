.class public Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
.super Ljava/lang/Object;
.source "NubiaUpdateConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowMobileNetwork:Z

.field private appName:Ljava/lang/String;

.field private downloadRunMode:Lcn/nubia/upgrade/api/RunMode;

.field private iconId:I

.field private installRunMode:Lcn/nubia/upgrade/api/RunMode;

.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadStorageLimit:J

.field private mNotificationContent:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;

.field private mNotificationUpdateOffset:J

.field private mSilentDownload:Z

.field private mSilentInstall:Z

.field private showNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 418
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 23
    iput-boolean v2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 24
    iput-boolean v2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 27
    iput-boolean v2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 32
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 33
    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 416
    return-void

    :cond_0
    move v0, v2

    .line 405
    goto :goto_0

    :cond_1
    move v0, v2

    .line 406
    goto :goto_1

    :cond_2
    move v0, v2

    .line 407
    goto :goto_2

    :cond_3
    move v1, v2

    .line 410
    goto :goto_3
.end method

.method private constructor <init>(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 23
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 24
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 27
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 33
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 374
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$100(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 375
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$200(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 376
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$300(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    .line 377
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$400(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    .line 378
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$500(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 379
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$600(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    .line 380
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$700(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    .line 381
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$800(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$900(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 383
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1000(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 384
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1100(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 385
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1200(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/RunMode;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->downloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 386
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1300(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/RunMode;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->installRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .param p2, "x1"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;-><init>(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadRunMode()Lcn/nubia/upgrade/api/RunMode;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->downloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object v0
.end method

.method public getDownloadStorageLimit()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    return-wide v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    return v0
.end method

.method public getInstallRunMode()Lcn/nubia/upgrade/api/RunMode;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->installRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object v0
.end method

.method public getNotificationContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationUpdateOffset()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    return-wide v0
.end method

.method public isAllowMobileNetwork()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    return v0
.end method

.method public isShowNotification()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    return v0
.end method

.method public isSilentDownload()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    return v0
.end method

.method public isSilentInstall()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    return v0
.end method

.method public setSilentDownload(Z)V
    .locals 0
    .param p1, "silentDownload"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 72
    return-void
.end method

.method public setSilentInstall(Z)V
    .locals 0
    .param p1, "silentInstall"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 84
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 392
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 393
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 394
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 397
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 401
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 402
    return-void

    :cond_0
    move v0, v2

    .line 391
    goto :goto_0

    :cond_1
    move v0, v2

    .line 392
    goto :goto_1

    :cond_2
    move v0, v2

    .line 393
    goto :goto_2

    :cond_3
    move v1, v2

    .line 396
    goto :goto_3
.end method
