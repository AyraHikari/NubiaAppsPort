.class Lcn/nubia/share/league/LeagueShare$5;
.super Ljava/lang/Object;
.source "LeagueShare.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 376
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 379
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/share/league/LeagueShare;->access$602(Lcn/nubia/share/league/LeagueShare;Z)Z

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected in, mIsBound="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$600(Lcn/nubia/share/league/LeagueShare;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NS-LeagueShare"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {p2}, Lcn/nubia/leagueshare/INBShareManager$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/share/league/LeagueShare;->access$102(Lcn/nubia/share/league/LeagueShare;Lcn/nubia/leagueshare/INBShareManager;)Lcn/nubia/leagueshare/INBShareManager;

    .line 383
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "onServiceConnected, mRemoteManager is null !"

    .line 384
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 389
    :try_start_0
    iget-object p2, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {p2}, Lcn/nubia/share/league/LeagueShare;->access$100(Lcn/nubia/share/league/LeagueShare;)Lcn/nubia/leagueshare/INBShareManager;

    move-result-object p2

    invoke-interface {p2}, Lcn/nubia/leagueshare/INBShareManager;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v1}, Lcn/nubia/share/league/LeagueShare;->access$700(Lcn/nubia/share/league/LeagueShare;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string p2, "onServiceConnected, linkToDeath"

    .line 390
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "onServiceConnected, linkToDeath, Exception"

    .line 394
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    const-string v1, "onServiceConnected, linkToDeath, RemoteException"

    .line 392
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    :goto_0
    new-instance p2, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;

    iget-object v1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-direct {p2, v1}, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;-><init>(Lcn/nubia/share/league/LeagueShare;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, v1, p1}, Lcn/nubia/share/league/LeagueShare$CheckIsLeagueShareOnTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->access$800(Lcn/nubia/share/league/LeagueShare;)V

    const-string p1, "onServiceConnected out"

    .line 402
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 407
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/share/league/LeagueShare;->access$102(Lcn/nubia/share/league/LeagueShare;Lcn/nubia/leagueshare/INBShareManager;)Lcn/nubia/leagueshare/INBShareManager;

    .line 408
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$5;->this$0:Lcn/nubia/share/league/LeagueShare;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/share/league/LeagueShare;->access$602(Lcn/nubia/share/league/LeagueShare;Z)Z

    const-string p1, "NS-LeagueShare"

    const-string v0, "onServiceDisconnected out"

    .line 409
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
