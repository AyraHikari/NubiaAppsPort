.class public abstract Lcn/nubia/cloud/utils/AsyncTaskEx;
.super Landroid/os/AsyncTask;
.source "AsyncTaskEx.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcn/nubia/cloud/utils/AsyncTaskEx;, "Lcn/nubia/cloud/utils/AsyncTaskEx<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method
