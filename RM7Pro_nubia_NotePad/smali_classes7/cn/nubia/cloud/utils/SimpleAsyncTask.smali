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
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private final mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TResult;>;",
            "Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcn/nubia/cloud/utils/SimpleAsyncTask;, "Lcn/nubia/cloud/utils/SimpleAsyncTask<TResult;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    .local p2, "listener":Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;, "Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener<TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object p2, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mListener:Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;

    .line 14
    iput-object p1, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mCallable:Ljava/util/concurrent/Callable;

    .line 15
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcn/nubia/cloud/utils/SimpleAsyncTask;, "Lcn/nubia/cloud/utils/SimpleAsyncTask<TResult;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/SimpleAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcn/nubia/cloud/utils/SimpleAsyncTask;, "Lcn/nubia/cloud/utils/SimpleAsyncTask<TResult;>;"
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 24
    .local p0, "this":Lcn/nubia/cloud/utils/SimpleAsyncTask;, "Lcn/nubia/cloud/utils/SimpleAsyncTask<TResult;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mListener:Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;->onResult(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcn/nubia/cloud/utils/SimpleAsyncTask;, "Lcn/nubia/cloud/utils/SimpleAsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/SimpleAsyncTask;->mListener:Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/utils/SimpleAsyncTask$Listener;->onResult(Ljava/lang/Object;)V

    .line 20
    return-void
.end method
