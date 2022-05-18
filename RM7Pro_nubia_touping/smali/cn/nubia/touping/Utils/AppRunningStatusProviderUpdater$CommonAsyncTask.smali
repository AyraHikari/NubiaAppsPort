.class public Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;
.super Landroid/os/AsyncTask;
.source "AppRunningStatusProviderUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;->this$0:Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 56
    const-string v0, "AppRunningStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground  mCannotBeKilled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;->this$0:Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;

    invoke-static {v2}, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->access$000(Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater$CommonAsyncTask;->this$0:Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;

    invoke-static {v0}, Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;->access$100(Lcn/nubia/touping/Utils/AppRunningStatusProviderUpdater;)V

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
