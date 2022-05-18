.class Lcn/nubia/share/league/LeagueShare$4;
.super Lcn/nubia/leagueshare/INBShareStatusListener$Stub;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/share/league/LeagueShare;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/share/league/LeagueShare;


# direct methods
.method constructor <init>(Lcn/nubia/share/league/LeagueShare;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$4;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-direct {p0}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceArrived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$4;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$500(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDeviceStatusChanged(Lcn/nubia/leagueshare/NBShareDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$4;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$500(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNBShareOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$4;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$500(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNBShareOn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$4;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$500(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
