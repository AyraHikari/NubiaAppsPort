.class Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;
.super Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAttachCallbackIml"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;"
    }
.end annotation


# instance fields
.field private final mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcn/nubia/cloud/sync/common/attachment/DownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/sync/common/attachment/DownloadListener",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/sync/common/attachment/DownloadListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/attachment/DownloadListener",
            "<TResult;>;",
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;, "Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml<TResult;>;"
    .local p1, "listener":Lcn/nubia/cloud/sync/common/attachment/DownloadListener;, "Lcn/nubia/cloud/sync/common/attachment/DownloadListener<TResult;>;"
    .local p2, "creator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<TResult;>;"
    invoke-direct {p0}, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;-><init>()V

    .line 66
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;->mListener:Lcn/nubia/cloud/sync/common/attachment/DownloadListener;

    .line 67
    iput-object p2, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;->mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    .line 68
    return-void
.end method


# virtual methods
.method public onStatus(IJJLcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "downSize"    # J
    .param p4, "totalSize"    # J
    .param p6, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;, "Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml<TResult;>;"
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;->mListener:Lcn/nubia/cloud/sync/common/attachment/DownloadListener;

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;->mListener:Lcn/nubia/cloud/sync/common/attachment/DownloadListener;

    iget-object v1, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager$IAttachCallbackIml;->mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-interface {v1, p6}, Lcn/nubia/cloud/utils/Jsonable$Creator;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcn/nubia/cloud/sync/common/attachment/DownloadListener;->onStatus(IJJLjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v7

    .line 76
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
