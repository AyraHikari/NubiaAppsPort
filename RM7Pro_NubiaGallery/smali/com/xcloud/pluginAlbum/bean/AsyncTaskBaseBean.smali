.class public Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;
.super Lcom/xcloud/pluginAlbum/bean/BundleObject;
.source "AsyncTaskBaseBean.java"


# static fields
.field public static final STATUS_TYPE_BEGIN:I = 0x1

.field public static final STATUS_TYPE_END:I = 0x2


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mStatusType:I

.field private mTaskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mStatusType:I

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mStatusType:I

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorCode:I

    .line 58
    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorCode:I

    .line 59
    iput-object p2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusType()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mStatusType:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/xcloud/pluginAlbum/bean/BundleObject;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mStatusType:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mTaskId:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorCode:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorCode:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setStatusType(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mStatusType:I

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mTaskId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 159
    invoke-super {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatusType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mStatusType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mTaskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mTaskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mErrorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/xcloud/pluginAlbum/bean/BundleObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    iget p2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mStatusType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget p2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
