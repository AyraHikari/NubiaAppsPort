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
    .line 190
    new-instance v0, Lcn/nubia/upgrade/http/DownloadRequest$1;

    invoke-direct {v0}, Lcn/nubia/upgrade/http/DownloadRequest$1;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/http/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    .line 145
    sget-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    .line 145
    sget-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mApkUrl:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDstVersion:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFromVersion:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mAppName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumPatch:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    iput-boolean v2, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    .line 67
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFileSize:J

    .line 70
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSumNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSumPatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumPatch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
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

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDstVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDstVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFileSize:J

    return-wide v0
.end method

.method public getFromVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFromVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPatch()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    return v0
.end method

.method public getSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcn/nubia/upgrade/http/DownloadRequest$State;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    return-object v0
.end method

.method public getStorageLimit()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mApkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mApkUrl:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mAppName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setCheckSumNew(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setCheckSumPatch(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumPatch:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setDownLoadPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setDstVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDstVersion:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setFileSize(J)V
    .locals 1

    .prologue
    .line 130
    iput-wide p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFileSize:J

    .line 131
    return-void
.end method

.method public setFromVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFromVersion:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setIsPatch(Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    .line 99
    return-void
.end method

.method public setState(Lcn/nubia/upgrade/http/DownloadRequest$State;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 143
    return-void
.end method

.method public setStorageLimit(J)V
    .locals 1

    .prologue
    .line 73
    iput-wide p1, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mApkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDstVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFromVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownLoadPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumNew:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mIsPatch:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mCheckSumPatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    :goto_0
    iget-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mDownloadStorageLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-wide v0, p0, Lcn/nubia/upgrade/http/DownloadRequest;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    return-void

    .line 42
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
