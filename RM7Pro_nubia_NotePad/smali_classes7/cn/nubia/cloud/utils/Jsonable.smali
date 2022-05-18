.class public interface abstract Lcn/nubia/cloud/utils/Jsonable;
.super Ljava/lang/Object;
.source "Jsonable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/utils/Jsonable$Creator;
    }
.end annotation


# virtual methods
.method public abstract toJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
