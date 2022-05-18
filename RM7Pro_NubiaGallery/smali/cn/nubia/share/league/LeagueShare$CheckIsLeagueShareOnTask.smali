.class Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;
.super Landroid/os/AsyncTask;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/LeagueShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckIsLeagueShareOnTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mLeagueShare:Lcn/nubia/share/league/LeagueShare;


# direct methods
.method public constructor <init>(Lcn/nubia/share/league/LeagueShare;)V
    .locals 0

    .line 876
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 877
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 882
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    if-nez p1, :cond_0

    const-string p1, "NS-LeagueShare"

    const-string v0, "CheckIsLeagueShareOnTask, doInBackground, mContext is null !"

    .line 883
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 884
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 887
    :cond_0
    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->access$1500(Lcn/nubia/share/league/LeagueShare;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 872
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 892
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    const-string v1, "NS-LeagueShare"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/share/league/LeagueShare;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 897
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckIsLeagueShareOnTask, onPostExecute, result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 899
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-virtual {p1}, Lcn/nubia/share/league/LeagueShare;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 901
    :cond_1
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-virtual {p1}, Lcn/nubia/share/league/LeagueShare;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "CheckIsLeagueShareOnTask, onPostExecute, activity or mHandler is null !"

    .line 893
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 872
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
