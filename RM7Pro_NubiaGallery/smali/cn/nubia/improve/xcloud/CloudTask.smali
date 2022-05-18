.class public Lcn/nubia/improve/xcloud/CloudTask;
.super Ljava/lang/Object;
.source "CloudTask.java"


# instance fields
.field private mCloudPath:Ljava/lang/String;

.field private mCurrentSize:I

.field private mDeleted:I

.field private mDirty:I

.field private mDoneTime:J

.field private mFolderName:Ljava/lang/String;

.field private mLocalPath:Ljava/lang/String;

.field private mRate:I

.field private mServerId:I

.field private mSourceType:I

.field private mState:I

.field private mTaskID:I

.field private mTaskType:I

.field private mTotalSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDeleted:I

    const/4 v1, 0x1

    .line 21
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDirty:I

    .line 22
    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mServerId:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDeleted:I

    const/4 v1, 0x1

    .line 21
    iput v1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDirty:I

    .line 22
    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mServerId:I

    const-string v0, "taskid"

    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTaskID:I

    const-string v0, "tasktype"

    .line 29
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTaskType:I

    const-string v0, "sourcetype"

    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mSourceType:I

    const-string v0, "cloudpath"

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mCloudPath:Ljava/lang/String;

    const-string v0, "localpath"

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mLocalPath:Ljava/lang/String;

    const-string v0, "totalsize"

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTotalSize:I

    const-string v0, "currentsize"

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mCurrentSize:I

    const-string v0, "state"

    .line 35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mState:I

    const-string v0, "donetime"

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDoneTime:J

    const-string v0, "foldername"

    .line 37
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mFolderName:Ljava/lang/String;

    const-string v0, "rate"

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mRate:I

    const-string v0, "deleted"

    .line 39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDeleted:I

    const-string v0, "dirty"

    .line 40
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDirty:I

    const-string v0, "serverid"

    .line 41
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mServerId:I

    return-void
.end method


# virtual methods
.method public getCloudPath()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mCloudPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSize()I
    .locals 1

    .line 93
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mCurrentSize:I

    return v0
.end method

.method public getDeleted()I
    .locals 1

    .line 137
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDeleted:I

    return v0
.end method

.method public getDiry()I
    .locals 1

    .line 145
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDirty:I

    return v0
.end method

.method public getDoneTime()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDoneTime:J

    return-wide v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .line 129
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mRate:I

    return v0
.end method

.method public getServerId()I
    .locals 1

    .line 153
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mServerId:I

    return v0
.end method

.method public getSourceType()I
    .locals 1

    .line 61
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mSourceType:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 101
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mState:I

    return v0
.end method

.method public getTaskID()I
    .locals 1

    .line 45
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTaskID:I

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .line 53
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTaskType:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 85
    iget v0, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTotalSize:I

    return v0
.end method

.method public setCloudPath(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mCloudPath:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSize(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mCurrentSize:I

    return-void
.end method

.method public setDeleted(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDeleted:I

    return-void
.end method

.method public setDirty(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDirty:I

    return-void
.end method

.method public setDoneTime(J)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDoneTime:J

    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mFolderName:Ljava/lang/String;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setRate(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mRate:I

    return-void
.end method

.method public setServerId(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mServerId:I

    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mSourceType:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mState:I

    return-void
.end method

.method public setTaskID(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTaskID:I

    return-void
.end method

.method public setTaskType(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTaskType:I

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTotalSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------------CloudTask---------------"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTaskID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTaskID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTaskType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTaskType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSourceType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mSourceType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTotalSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mTotalSize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mCurrentSize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mState:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDoneTime = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDoneTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFolderName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mFolderName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCloudPath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mCloudPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLocalPath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mLocalPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRate = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mRate:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDeleted = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDeleted:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDirty = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mDirty:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServerId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/improve/xcloud/CloudTask;->mServerId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
