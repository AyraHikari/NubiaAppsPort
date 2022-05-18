.class Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;
.super Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;
.source "RecyclebinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;
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
        "Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;"
    }
.end annotation


# instance fields
.field private final mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcn/nubia/cloud/common/SimpleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/SimpleListener<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/SimpleListener;Lcn/nubia/cloud/common/Jsonable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/common/SimpleListener<",
            "TResult;>;",
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TResult;>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;-><init>()V

    .line 84
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mListener:Lcn/nubia/cloud/common/SimpleListener;

    .line 85
    iput-object p2, p0, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/common/ParcelableJson;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mListener:Lcn/nubia/cloud/common/SimpleListener;

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;

    invoke-interface {v1, p1}, Lcn/nubia/cloud/common/Jsonable$Creator;->createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/nubia/cloud/common/SimpleListener;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;->mListener:Lcn/nubia/cloud/common/SimpleListener;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/common/SimpleListener;->onException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
