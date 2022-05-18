.class Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;
.super Ljava/util/TimerTask;
.source "DisconnectTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/service/DisconnectTimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accountsdk/service/DisconnectTimerTask;


# direct methods
.method private constructor <init>(Lcn/nubia/accountsdk/service/DisconnectTimerTask;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;->this$0:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/accountsdk/service/DisconnectTimerTask;Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;-><init>(Lcn/nubia/accountsdk/service/DisconnectTimerTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;->this$0:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-static {v0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->access$0(Lcn/nubia/accountsdk/service/DisconnectTimerTask;)Lcn/nubia/accountsdk/service/DisconnectHandler;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/accountsdk/service/DisconnectHandler;->isConnectionFree()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "disconnect--service"

    .line 37
    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;->this$0:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-static {v0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->access$0(Lcn/nubia/accountsdk/service/DisconnectTimerTask;)Lcn/nubia/accountsdk/service/DisconnectHandler;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/accountsdk/service/DisconnectHandler;->disconnect()V

    .line 39
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask$DisTimerTask;->cancel()Z

    :cond_0
    return-void
.end method
