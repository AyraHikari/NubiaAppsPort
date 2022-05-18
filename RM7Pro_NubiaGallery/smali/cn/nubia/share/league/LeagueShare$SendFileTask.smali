.class Lcn/nubia/share/league/LeagueShare$SendFileTask;
.super Landroid/os/AsyncTask;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/LeagueShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeviceId:I

.field private mLeagueShare:Lcn/nubia/share/league/LeagueShare;


# direct methods
.method public constructor <init>(Lcn/nubia/share/league/LeagueShare;I)V
    .locals 0

    .line 952
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 953
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$SendFileTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    .line 954
    iput p2, p0, Lcn/nubia/share/league/LeagueShare$SendFileTask;->mDeviceId:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "NS-LeagueShare"

    const/4 v1, 0x0

    .line 961
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 959
    array-length v3, p1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 964
    :cond_0
    iget-object v3, p0, Lcn/nubia/share/league/LeagueShare$SendFileTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    if-nez v3, :cond_1

    const-string p1, "SendFileTask, doInBackground, mLeagueShare is null !"

    .line 965
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 969
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendFileTask, doInBackground, mDeviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/share/league/LeagueShare$SendFileTask;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shareIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$SendFileTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    iget v2, p0, Lcn/nubia/share/league/LeagueShare$SendFileTask;->mDeviceId:I

    aget-object p1, p1, v1

    invoke-static {v0, v2, p1}, Lcn/nubia/share/league/LeagueShare;->access$1700(Lcn/nubia/share/league/LeagueShare;ILandroid/content/Intent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "SendFileTask, doInBackground, params is null or params.length != 1 !"

    .line 960
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 948
    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$SendFileTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendFileTask, onPostExecute out, result="

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

    .line 948
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$SendFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
