.class public interface abstract Lcn/nubia/cloud/service/common/IModuleSolution;
.super Ljava/lang/Object;
.source "IModuleSolution.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/service/common/IModuleSolution$Stub;
    }
.end annotation


# virtual methods
.method public abstract getModuleConfigs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/service/common/ModuleConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
