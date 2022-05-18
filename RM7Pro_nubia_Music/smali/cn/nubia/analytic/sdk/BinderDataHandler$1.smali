.class Lcn/nubia/analytic/sdk/BinderDataHandler$1;
.super Ljava/lang/Object;
.source "BinderDataHandler.java"

# interfaces
.implements Lcn/nubia/analytic/interfaces/RemoteDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/analytic/sdk/BinderDataHandler;->insert(Landroid/content/Context;Ljava/util/List;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/analytic/sdk/BinderDataHandler;


# direct methods
.method constructor <init>(Lcn/nubia/analytic/sdk/BinderDataHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/analytic/sdk/BinderDataHandler$1;->a:Lcn/nubia/analytic/sdk/BinderDataHandler;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(I)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 78
    const-string v0, "BinderDataHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send AppInfoBean to trafficcontrol success, sServerTimeOffset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sServerTimeOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler$1;->a:Lcn/nubia/analytic/sdk/BinderDataHandler;

    invoke-static {v0}, Lcn/nubia/analytic/sdk/BinderDataHandler;->access$0(Lcn/nubia/analytic/sdk/BinderDataHandler;)Lcn/nubia/analytic/sdk/BinderDataBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "BinderDataHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "now I will deal session event crash,this is the first time to send session,event,crash to trafficcontrol:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/analytic/sdk/BinderDataHandler$1;->a:Lcn/nubia/analytic/sdk/BinderDataHandler;

    iget-wide v2, v2, Lcn/nubia/analytic/sdk/BinderDataHandler;->mAppLaunchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method
