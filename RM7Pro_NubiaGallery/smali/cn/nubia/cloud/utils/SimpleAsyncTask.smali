.class public final Lcn/nubia/cloud/utils/SimpleAsyncTask;
.super Landroid/os/AsyncTask;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private final mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TResult;>;",
            "Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener<",
            "TResult;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object p2, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mListener:Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;

    .line 14
    iput-object p1, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mCallable:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/SimpleAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .line 30
    :try_start_0
    iget-object p1, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mCallable:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mListener:Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mListener:Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;->onResult(Ljava/lang/Object;)V

    return-void
.end method
