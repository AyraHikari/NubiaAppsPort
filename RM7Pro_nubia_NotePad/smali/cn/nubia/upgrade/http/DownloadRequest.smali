.class public Lcn/nubia/upgrade/http/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/http/DownloadRequest$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/upgrade/http/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApkUrl:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mCheckSumNew:Ljava/lang/String;

.field private mCheckSumPatch:Ljava/lang/String;

.field private mDownLoadPath:Ljava/lang/String;

.field private mDownloadStorageLimit:J

.field private mDstVersion:Ljava/lang/String;

.field private mFileSize:J

.field private mFromVersion:Ljava/lang/String;

.field private mIsPatch:Z

.field public mState:Lcn/nubia/upgrade/http/DownloadRequest$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcn/nubia/upgrade/http/DownloadRequest$1;

    invoke-direct {v0}, Lcn/nubia/upgrade/http/DownloadRequest$1;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/http/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    .line 143
    sget-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v4, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    .line 21
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    .line 143
    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mApkUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDstVersion:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFromVersion:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mAppName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumPatch:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "isPatch":I
    if-nez v0, :cond_0

    .line 61
    iput-boolean v4, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFileSize:J

    .line 68
    return-void

    .line 63
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSumNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSumPatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumPatch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDstVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDstVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFileSize:J

    return-wide v0
.end method

.method public getFromVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFromVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIspatch()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    return v0
.end method

.method public getSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcn/nubia/upgrade/http/DownloadRequest$State;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    return-object v0
.end method

.method public getStorageLimit()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mApkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mApkUrl"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mApkUrl:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAppName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mAppName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setCheckSumNew(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSumNew"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCheckSumPatch(Ljava/lang/String;)V
    .locals 0
    .param p1, "checksumPatch"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumPatch:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setDownLoadPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDownLoadPath"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setDstVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDstVersion"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDstVersion:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFileSize:J

    .line 129
    return-void
.end method

.method public setFromVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFromVersion"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFromVersion:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setIsPatch(Z)V
    .locals 0
    .param p1, "isPatch"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    .line 97
    return-void
.end method

.method public setState(Lcn/nubia/upgrade/http/DownloadRequest$State;)V
    .locals 0
    .param p1, "mState"    # Lcn/nubia/upgrade/http/DownloadRequest$State;

    .prologue
    .line 140
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 141
    return-void
.end method

.method public setStorageLimit(J)V
    .locals 1
    .param p1, "limitSize"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mApkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDstVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFromVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumPatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    :goto_0
    iget-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    return-void

    .line 40
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
