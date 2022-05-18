.class public Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
.super Ljava/lang/Object;
.source "ChildItemInfo.java"


# instance fields
.field private mCloudPath:Ljava/lang/String;

.field private mContent:Lcn/nubia/cloud/utils/ParcelableJson;

.field private mDeleteDate:Ljava/lang/String;

.field private final mServerId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 1
    .param p1, "serverId"    # J
    .param p3, "deleteDate"    # Ljava/lang/String;
    .param p4, "cloudPath"    # Ljava/lang/String;
    .param p5, "content"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mServerId:J

    .line 15
    iput-object p3, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mDeleteDate:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 17
    iput-object p4, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mCloudPath:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getClassify()I
    .locals 4

    .prologue
    .line 41
    const/4 v0, -0x1

    .line 43
    .local v0, "classify":I
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v3, "classify"

    invoke-virtual {v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 80
    const/4 v1, -0x1

    .line 82
    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v3, "mode"

    invoke-virtual {v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getModifyDate()J
    .locals 5

    .prologue
    .line 90
    const-wide/16 v2, 0x0

    .line 92
    .local v2, "modifyDate":J
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v4, "modified_date"

    invoke-virtual {v1, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 96
    :goto_0
    return-wide v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemind()I
    .locals 4

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "remind":I
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v3, "remind"

    invoke-virtual {v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemindTime()J
    .locals 5

    .prologue
    .line 69
    const-wide/16 v2, 0x0

    .line 71
    .local v2, "remindTime":J
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v4, "remindtime"

    invoke-virtual {v1, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 76
    :goto_0
    return-wide v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getResource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v1, "resource"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmCloudPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mCloudPath:Ljava/lang/String;

    return-object v0
.end method

.method public getmDeleteDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mDeleteDate:Ljava/lang/String;

    return-object v0
.end method

.method public getmServerId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mServerId:J

    return-wide v0
.end method

.method public setmDeleteDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeleteDate"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->mDeleteDate:Ljava/lang/String;

    .line 30
    return-void
.end method
