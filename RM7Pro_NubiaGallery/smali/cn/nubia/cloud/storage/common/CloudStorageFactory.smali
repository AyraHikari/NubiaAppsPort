.class public Lcn/nubia/cloud/storage/common/CloudStorageFactory;
.super Ljava/lang/Object;
.source "CloudStorageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcn/nubia/cloud/storage/common/CloudStorage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    sget-object v0, Lcn/nubia/cloud/storage/common/StorageEngineType;->BAIDU_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

    invoke-static {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageFactory;->get(Landroid/content/Context;Lcn/nubia/cloud/storage/common/StorageEngineType;)Lcn/nubia/cloud/storage/common/CloudStorage;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Lcn/nubia/cloud/storage/common/StorageEngineType;)Lcn/nubia/cloud/storage/common/CloudStorage;
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->get(Landroid/content/Context;Lcn/nubia/cloud/storage/common/StorageEngineType;)Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    move-result-object p0

    return-object p0
.end method
