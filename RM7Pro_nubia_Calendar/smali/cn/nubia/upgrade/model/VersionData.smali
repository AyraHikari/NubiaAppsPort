.class public Lcn/nubia/upgrade/model/VersionData;
.super Ljava/lang/Object;
.source "VersionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/upgrade/model/VersionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApkUrl:Ljava/lang/String;

.field private mCheckSumNew:Ljava/lang/String;

.field private mCheckSumPatch:Ljava/lang/String;

.field private mFileSize:J

.field private mFromVersionCode:Ljava/lang/String;

.field private mIsForce:Z

.field private mPackageName:Ljava/lang/String;

.field private mToVersionCode:Ljava/lang/String;

.field private mUpdate:Z

.field private mUpgradeContent:Ljava/lang/String;

.field private mUpgradeTime:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private silentFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcn/nubia/upgrade/model/VersionData$1;

    invoke-direct {v0}, Lcn/nubia/upgrade/model/VersionData$1;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/model/VersionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/upgrade/model/VersionData;->mFileSize:J

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/upgrade/model/VersionData;->mFileSize:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "isUpdate":I
    if-eqz v1, :cond_0

    .line 56
    iput-boolean v5, p0, Lcn/nubia/upgrade/model/VersionData;->mUpdate:Z

    .line 61
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeTime:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/model/VersionData;->mVersion:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeContent:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/model/VersionData;->mApkUrl:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/model/VersionData;->mCheckSumNew:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/model/VersionData;->mFromVersionCode:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/model/VersionData;->mToVersionCode:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, "isForce":I
    if-eqz v0, :cond_1

    .line 70
    iput-boolean v5, p0, Lcn/nubia/upgrade/model/VersionData;->mIsForce:Z

    .line 74
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/model/VersionData;->mCheckSumPatch:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/upgrade/model/VersionData;->mFileSize:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcn/nubia/upgrade/model/VersionData;->silentFlag:I

    .line 78
    return-void

    .line 58
    .end local v0    # "isForce":I
    :cond_0
    iput-boolean v4, p0, Lcn/nubia/upgrade/model/VersionData;->mUpdate:Z

    goto :goto_0

    .line 72
    .restart local v0    # "isForce":I
    :cond_1
    iput-boolean v4, p0, Lcn/nubia/upgrade/model/VersionData;->mIsForce:Z

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mApkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSumNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mCheckSumNew:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSumPatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mCheckSumPatch:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcn/nubia/upgrade/model/VersionData;->mFileSize:J

    return-wide v0
.end method

.method public getFromVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mFromVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSilentFlag()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcn/nubia/upgrade/model/VersionData;->silentFlag:I

    return v0
.end method

.method public getToVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mToVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeContent:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isForce()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcn/nubia/upgrade/model/VersionData;->mIsForce:Z

    return v0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcn/nubia/upgrade/model/VersionData;->mUpdate:Z

    return v0
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mApkUrl"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mApkUrl:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCheckSumNew(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCheckSumNew"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mCheckSumNew:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setCheckSumPatch(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCheckSumPatch"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mCheckSumPatch:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 215
    iput-wide p1, p0, Lcn/nubia/upgrade/model/VersionData;->mFileSize:J

    .line 216
    return-void
.end method

.method public setFromVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFromVersionCode"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mFromVersionCode:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setIsForce(Z)V
    .locals 0
    .param p1, "mIsForce"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcn/nubia/upgrade/model/VersionData;->mIsForce:Z

    .line 192
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mPackageName:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setSilentFlag(I)V
    .locals 0
    .param p1, "silentFlag"    # I

    .prologue
    .line 211
    iput p1, p0, Lcn/nubia/upgrade/model/VersionData;->silentFlag:I

    .line 212
    return-void
.end method

.method public setToVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mToVersionCode"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mToVersionCode:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setUpdate(Z)V
    .locals 0
    .param p1, "mUpdate"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcn/nubia/upgrade/model/VersionData;->mUpdate:Z

    .line 95
    return-void
.end method

.method public setUpgradeContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpgradeContent"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeContent:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setUpgradeTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpgradeTime"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeTime:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mVersion"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/upgrade/model/VersionData;->mVersion:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionData{has_new_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/upgrade/model/VersionData;->mUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/VersionData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/VersionData;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/VersionData;->mToVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", release_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apk_size(Byte):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/upgrade/model/VersionData;->mFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", download_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/VersionData;->mApkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_force_upgrade:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/upgrade/model/VersionData;->mIsForce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silent_flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/upgrade/model/VersionData;->silentFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decription_content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    iget-boolean v0, p0, Lcn/nubia/upgrade/model/VersionData;->mUpdate:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    :goto_0
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mUpgradeContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mApkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mCheckSumNew:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mFromVersionCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mToVersionCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-boolean v0, p0, Lcn/nubia/upgrade/model/VersionData;->mIsForce:Z

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/model/VersionData;->mCheckSumPatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lcn/nubia/upgrade/model/VersionData;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget v0, p0, Lcn/nubia/upgrade/model/VersionData;->silentFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
