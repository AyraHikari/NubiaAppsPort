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

.field private iconId:I

.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadStorageLimit:J

.field private mNotificationContent:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;

.field private mNotificationUpdateOffset:J

.field private showNotification:Z

.field private slientDownload:Z

.field private slientInstaller:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 19
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 212
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 18
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 19
    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->slientDownload:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->slientInstaller:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 226
    return-void

    :cond_0
    move v0, v2

    .line 215
    goto :goto_0

    :cond_1
    move v0, v2

    .line 216
    goto :goto_1

    :cond_2
    move v0, v2

    .line 217
    goto :goto_2

    :cond_3
    move v1, v2

    .line 220
    goto :goto_3
.end method

.method static synthetic access$002(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 5
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->slientInstaller:Z

    return p1
.end method

.method static synthetic access$1002(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # J

    .prologue
    .line 5
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    return-wide p1
.end method

.method static synthetic access$102(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 5
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->slientDownload:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 5
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    return p1
.end method

.method static synthetic access$302(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 5
    iput p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    return p1
.end method

.method static synthetic access$502(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 5
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    return p1
.end method

.method static synthetic access$602(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # J

    .prologue
    .line 5
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    return-wide p1
.end method

.method static synthetic access$902(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStorageLimit()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    return-wide v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    return v0
.end method

.method public getNotificationContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationUpdateOffset()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    return-wide v0
.end method

.method public isAllowMobileNetwork()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    return v0
.end method

.method public isShowNotification()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    return v0
.end method

.method public isSlientDownload()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->slientDownload:Z

    return v0
.end method

.method public isSlientInstaller()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->slientInstaller:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->slientDownload:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->slientInstaller:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 204
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 198
    goto :goto_0

    :cond_1
    move v0, v2

    .line 199
    goto :goto_1

    :cond_2
    move v0, v2

    .line 200
    goto :goto_2

    :cond_3
    move v1, v2

    .line 203
    goto :goto_3
.end method
