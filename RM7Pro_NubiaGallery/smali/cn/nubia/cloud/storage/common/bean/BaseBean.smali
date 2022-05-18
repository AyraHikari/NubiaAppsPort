.class public Lcn/nubia/cloud/storage/common/bean/BaseBean;
.super Lcn/nubia/cloud/storage/common/bean/BundleObj;
.source "BaseBean.java"


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public requestId:Ljava/lang/String;

.field public taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BundleObj;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BundleObj;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    .line 41
    iput p1, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    .line 42
    iput-object p2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 86
    iget v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcn/nubia/cloud/storage/common/bean/BaseBean;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BundleObj;->init(Lcn/nubia/cloud/storage/common/bean/BundleObj;)V

    .line 47
    iget-object v0, p1, Lcn/nubia/cloud/storage/common/bean/BaseBean;->taskId:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->taskId:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcn/nubia/cloud/storage/common/bean/BaseBean;->requestId:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->requestId:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    .line 50
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorMessage:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BundleObj;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->requestId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->taskId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->taskId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "requestId:"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " taskId:"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorMessage:"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BundleObj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BundleObj;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget p2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/BaseBean;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
