.class Lcn/nubia/share/league/LeagueShare$7;
.super Ljava/lang/Object;
.source "LeagueShare.java"

# interfaces
.implements Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/share/league/LeagueShare;->createDeviceListAdapter()Lcn/nubia/share/league/DeviceListAdapter;
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

    .line 908
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$7;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;Lcn/nubia/leagueshare/NBShareDevice;II)V
    .locals 2

    .line 911
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$7;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0, p2}, Lcn/nubia/share/league/LeagueShare;->access$1600(Lcn/nubia/share/league/LeagueShare;Lcn/nubia/leagueshare/NBShareDevice;)V

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick out, view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcn/nubia/share/league/LeagueShare;->deviceToStr(Lcn/nubia/leagueshare/NBShareDevice;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", layoutPosition="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", adapterPosition="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NS-LeagueShare"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
