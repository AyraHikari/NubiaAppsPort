.class Lcn/nubia/touping/TouPingApplication$1;
.super Ljava/lang/Object;
.source "TouPingApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/TouPingApplication;->changeThreadInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/TouPingApplication;


# direct methods
.method constructor <init>(Lcn/nubia/touping/TouPingApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/TouPingApplication;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/touping/TouPingApplication$1;->this$0:Lcn/nubia/touping/TouPingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcn/nubia/touping/TouPingApplication$1;->this$0:Lcn/nubia/touping/TouPingApplication;

    invoke-virtual {v1}, Lcn/nubia/touping/TouPingApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/TouPingApplication$1;->this$0:Lcn/nubia/touping/TouPingApplication;

    iget-object v3, p0, Lcn/nubia/touping/TouPingApplication$1;->this$0:Lcn/nubia/touping/TouPingApplication;

    invoke-static {v2, v3}, Lcn/nubia/touping/TouPingApplication;->access$000(Lcn/nubia/touping/TouPingApplication;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwBinder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "threadName":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/touping/TouPingApplication$1;->this$0:Lcn/nubia/touping/TouPingApplication;

    invoke-static {v1, v0}, Lcn/nubia/touping/TouPingApplication;->access$100(Lcn/nubia/touping/TouPingApplication;Ljava/lang/String;)V

    .line 59
    .end local v0    # "threadName":Ljava/lang/String;
    :cond_0
    return-void
.end method
