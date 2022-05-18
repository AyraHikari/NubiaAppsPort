.class Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;
.super Landroid/os/AsyncTask;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/LeagueShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDeviceListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcn/nubia/leagueshare/NBShareDevice;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mLeagueShare:Lcn/nubia/share/league/LeagueShare;


# direct methods
.method public constructor <init>(Lcn/nubia/share/league/LeagueShare;)V
    .locals 0

    .line 671
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 672
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 668
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;"
        }
    .end annotation

    .line 677
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    if-nez p1, :cond_0

    const-string p1, "NS-LeagueShare"

    const-string v0, "UpdateDeviceListTask, doInBackground, mLeagueShare is null !"

    .line 678
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 682
    :cond_0
    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->access$1400(Lcn/nubia/share/league/LeagueShare;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 668
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;)V"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$UpdateDeviceListTask;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    if-nez v0, :cond_0

    const-string p1, "NS-LeagueShare"

    const-string v0, "UpdateDeviceListTask, onPostExecute, activity is null !"

    .line 688
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 691
    :cond_0
    invoke-static {v0, p1}, Lcn/nubia/share/league/LeagueShare;->access$1000(Lcn/nubia/share/league/LeagueShare;Ljava/util/List;)V

    return-void
.end method
