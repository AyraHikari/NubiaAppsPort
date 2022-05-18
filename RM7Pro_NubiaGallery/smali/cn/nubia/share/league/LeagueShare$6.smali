.class Lcn/nubia/share/league/LeagueShare$6;
.super Ljava/lang/Object;
.source "LeagueShare.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/LeagueShare;
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

    .line 447
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$6;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$6;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NS-LeagueShare"

    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$6;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/leagueshare/INBShareManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/share/league/LeagueShare$6;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v3}, Lcn/nubia/share/league/LeagueShare;->access$700(Lcn/nubia/share/league/LeagueShare;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const-string v0, "binderDied, unlinkToDeath"

    .line 453
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "binderDied, unlinkToDeath, Exception"

    .line 457
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "binderDied, unlinkToDeath, NoSuchElementException"

    .line 455
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$6;->this$0:Lcn/nubia/share/league/LeagueShare;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcn/nubia/share/league/LeagueShare;->access$102(Lcn/nubia/share/league/LeagueShare;Lcn/nubia/leagueshare/INBShareManager;)Lcn/nubia/leagueshare/INBShareManager;

    .line 461
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$6;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0, v1}, Lcn/nubia/share/league/LeagueShare;->access$602(Lcn/nubia/share/league/LeagueShare;Z)Z

    .line 463
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$6;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$900(Lcn/nubia/share/league/LeagueShare;)V

    const-string v0, "binderDied out"

    .line 464
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
