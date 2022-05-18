.class Lcn/nubia/share/league/LeagueShare$TurnOnTask;
.super Landroid/os/AsyncTask;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/LeagueShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TurnOnTask"
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

    .line 210
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 211
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$TurnOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 216
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$TurnOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    if-nez p1, :cond_0

    const-string p1, "NS-LeagueShare"

    const-string v0, "TurnOnTask, doInBackground, mLeagueShare is null !"

    .line 217
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 218
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 221
    :cond_0
    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->access$200(Lcn/nubia/share/league/LeagueShare;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 207
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$TurnOnTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TurnOnTask, onPostExecute, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NS-LeagueShare"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$TurnOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    if-nez p1, :cond_1

    const-string p1, "TurnOnTask, onPostExecute, mLeagueShare is null !"

    .line 232
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 236
    invoke-static {p1, v0}, Lcn/nubia/share/league/LeagueShare;->access$300(Lcn/nubia/share/league/LeagueShare;Z)V

    .line 239
    new-instance p1, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;

    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$TurnOnTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-direct {p1, v0}, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$TurnOnTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
