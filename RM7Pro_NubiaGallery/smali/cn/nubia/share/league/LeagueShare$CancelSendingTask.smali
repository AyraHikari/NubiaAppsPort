.class Lcn/nubia/share/league/LeagueShare$CancelSendingTask;
.super Landroid/os/AsyncTask;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/LeagueShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelSendingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
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

    .line 982
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 983
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    .line 990
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "NS-LeagueShare"

    if-eqz p1, :cond_3

    .line 988
    array-length v3, p1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 992
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CancelSendingTask, doInBackground, params[0]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, p1, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v3, p0, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcn/nubia/share/league/LeagueShare;->access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1000
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v3}, Lcn/nubia/share/league/LeagueShare;->access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object v3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v3, p1}, Lcn/nubia/leagueshare/INBShareManager;->cancelSending(I)V

    .line 1001
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "CancelSendingTask, doInBackground, Exception"

    .line 1005
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "CancelSendingTask, doInBackground, RemoteException"

    .line 1003
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    const-string p1, "CancelSendingTask, doInBackground, mLeagueShare or RemoteManager is null !"

    .line 995
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    const-string p1, "CancelSendingTask, doInBackground, params is null or params.length != 1 !"

    .line 989
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 979
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CancelSendingTask, onPostExecute out, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NS-LeagueShare"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 979
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$CancelSendingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
