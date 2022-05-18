.class Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;
.super Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback$Stub;
.source "RecyclebinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IRecyclebinCallbackIml"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback$Stub;"
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

.field private final mListener:Lcn/nubia/cloud/utils/SimpleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<TResult;>;",
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;, "Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml<TResult;>;"
    .local p1, "listener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<TResult;>;"
    .local p2, "creator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<TResult;>;"
    invoke-direct {p0}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback$Stub;-><init>()V

    .line 88
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    .line 89
    iput-object p2, p0, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    .line 90
    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 3
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 101
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;, "Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml<TResult;>;"
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    iget-object v2, p0, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-interface {v2, p1}, Lcn/nubia/cloud/utils/Jsonable$Creator;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/cloud/utils/SimpleListener;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onException(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 94
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;, "Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml<TResult;>;"
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/utils/SimpleListener;->onException(ILjava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method
