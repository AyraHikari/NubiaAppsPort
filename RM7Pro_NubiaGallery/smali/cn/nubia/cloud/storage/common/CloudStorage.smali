.class public interface abstract Lcn/nubia/cloud/storage/common/CloudStorage;
.super Ljava/lang/Object;
.source "CloudStorage.java"

# interfaces
.implements Lcn/nubia/cloud/storage/common/IStorage;


# virtual methods
.method public abstract getStorageEngineVersion()I
.end method

.method public abstract queryRemoteFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract switchToTransferPage(Landroid/app/Activity;I)Z
.end method
