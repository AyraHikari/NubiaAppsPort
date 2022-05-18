.class public Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;
.super Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/ipcclient/IPCClient",
        "<",
        "Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "nubia.cloud.sync.AttachmentManager"

.field public static final RESULT_KEY:Ljava/lang/String; = "result"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcn/nubia/cloud/sync/common/attachment/AttachServiceHandler;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/sync/common/attachment/AttachServiceHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    .line 22
    return-void
.end method

.method private getResultList(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/util/List;
    .locals 7
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/attachment/AttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 34
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-object v3

    .line 37
    :cond_1
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/attachment/AttachmentData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 44
    new-instance v4, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    new-instance v5, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public downloadAttachByCloudPaths([Ljava/lang/String;ILcn/nubia/cloud/sync/common/attachment/DownloadListener;)Ljava/util/List;
    .locals 4
    .param p1, "cloudPaths"    # [Ljava/lang/String;
    .param p2, "syncType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcn/nubia/cloud/sync/common/attachment/DownloadListener",
            "<",
            "Lcn/nubia/cloud/sync/common/attachment/AttachmentData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/attachment/AttachmentData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "listener":Lcn/nubia/cloud/sync/common/attachment/DownloadListener;, "Lcn/nubia/cloud/sync/common/attachment/DownloadListener<Lcn/nubia/cloud/sync/common/attachment/AttachmentData;>;"
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;

    new-instance v2, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;

    sget-object v3, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {v2, p3, v3}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;-><init>(Lcn/nubia/cloud/sync/common/attachment/DownloadListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    invoke-interface {v1, p1, p2, v2}, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;->downloadAttachByCloudPaths([Ljava/lang/String;ILcn/nubia/cloud/sync/common/attachment/IAttachCallback;)Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;->getResultList(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 57
    throw v0
.end method

.method public downloadAttachByServerIds([JILcn/nubia/cloud/sync/common/attachment/DownloadListener;)Ljava/util/List;
    .locals 4
    .param p1, "ids"    # [J
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JI",
            "Lcn/nubia/cloud/sync/common/attachment/DownloadListener",
            "<",
            "Lcn/nubia/cloud/sync/common/attachment/AttachmentData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/attachment/AttachmentData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "listener":Lcn/nubia/cloud/sync/common/attachment/DownloadListener;, "Lcn/nubia/cloud/sync/common/attachment/DownloadListener<Lcn/nubia/cloud/sync/common/attachment/AttachmentData;>;"
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;

    new-instance v2, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;

    sget-object v3, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {v2, p3, v3}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;-><init>(Lcn/nubia/cloud/sync/common/attachment/DownloadListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    invoke-interface {v1, p1, p2, v2}, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;->downloadAttachBySrverIds([JILcn/nubia/cloud/sync/common/attachment/IAttachCallback;)Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;->getResultList(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 29
    throw v0
.end method
