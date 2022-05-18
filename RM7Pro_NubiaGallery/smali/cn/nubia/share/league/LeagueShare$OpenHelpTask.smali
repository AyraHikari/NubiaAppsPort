.class Lcn/nubia/share/league/LeagueShare$OpenHelpTask;
.super Landroid/os/AsyncTask;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/LeagueShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenHelpTask"
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

    .line 168
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 169
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$OpenHelpTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 174
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$OpenHelpTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    const/4 v0, 0x0

    .line 176
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "NS-LeagueShare"

    if-nez p1, :cond_0

    const-string p1, "OpenHelpTask, doInBackground, mLeagueShare is null !"

    .line 175
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 179
    :cond_0
    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "OpenHelpTask, doInBackground, RemoteManager is null !"

    .line 180
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 185
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$OpenHelpTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/leagueshare/INBShareManager;->openNBShareHelp()V

    const/4 p1, 0x1

    .line 186
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "OpenHelpTask, doInBackground, Exception"

    .line 190
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v2, "OpenHelpTask, doInBackground, RemoteException"

    .line 188
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$OpenHelpTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenHelpTask, onPostExecute, result="

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

    .line 165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$OpenHelpTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
