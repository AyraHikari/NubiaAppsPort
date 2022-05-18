.class Lcn/nubia/share/league/LeagueShare$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcn/nubia/share/league/LeagueShare;Landroid/os/Handler;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$3;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 316
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 317
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$3;->this$0:Lcn/nubia/share/league/LeagueShare;

    iget-object v0, p1, Lcn/nubia/share/league/LeagueShare;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/nubia/share/league/LeagueShare;->access$400(Lcn/nubia/share/league/LeagueShare;Landroid/content/Context;)Z

    move-result p1

    const-string v0, "NS-LeagueShare"

    if-eqz p1, :cond_0

    const-string p1, "mLeagueShareStateObserver state ON and show helpPanel"

    .line 318
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$3;->this$0:Lcn/nubia/share/league/LeagueShare;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/share/league/LeagueShare;->access$300(Lcn/nubia/share/league/LeagueShare;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "mLeagueShareStateObserver state OFF and don\'t show OpenPanel"

    .line 321
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$3;->this$0:Lcn/nubia/share/league/LeagueShare;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/share/league/LeagueShare;->access$300(Lcn/nubia/share/league/LeagueShare;Z)V

    :goto_0
    return-void
.end method
