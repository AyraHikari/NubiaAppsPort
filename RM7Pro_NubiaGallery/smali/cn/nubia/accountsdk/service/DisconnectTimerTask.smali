.class Lcn/nubia/accountsdk/service/DisconnectTimerTask;
.super Ljava/lang/Object;
.source "DisconnectTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;
    }
.end annotation


# instance fields
.field private mHandler:Lcn/nubia/accountsdk/service/DisconnectHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcn/nubia/accountsdk/service/DisconnectHandler;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->mHandler:Lcn/nubia/accountsdk/service/DisconnectHandler;

    .line 17
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$0(Lcn/nubia/accountsdk/service/DisconnectTimerTask;)Lcn/nubia/accountsdk/service/DisconnectHandler;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->mHandler:Lcn/nubia/accountsdk/service/DisconnectHandler;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .line 21
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->cancel()V

    .line 22
    new-instance v1, Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;-><init>(Lcn/nubia/accountsdk/service/DisconnectTimerTask;Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;)V

    iput-object v1, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->mTimerTask:Ljava/util/TimerTask;

    .line 23
    iget-object v0, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    const-string v0, "start--timer"

    .line 24
    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    return-void
.end method
