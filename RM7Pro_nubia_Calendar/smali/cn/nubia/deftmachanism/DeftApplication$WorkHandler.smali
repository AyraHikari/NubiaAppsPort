.class Lcn/nubia/deftmachanism/DeftApplication$WorkHandler;
.super Landroid/os/Handler;
.source "DeftApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deftmachanism/DeftApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deftmachanism/DeftApplication;


# direct methods
.method public constructor <init>(Lcn/nubia/deftmachanism/DeftApplication;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/deftmachanism/DeftApplication$WorkHandler;->this$0:Lcn/nubia/deftmachanism/DeftApplication;

    .line 61
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication$WorkHandler;->this$0:Lcn/nubia/deftmachanism/DeftApplication;

    invoke-static {v0, p1}, Lcn/nubia/deftmachanism/DeftApplication;->access$000(Lcn/nubia/deftmachanism/DeftApplication;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication$WorkHandler;->this$0:Lcn/nubia/deftmachanism/DeftApplication;

    invoke-static {v0, p1}, Lcn/nubia/deftmachanism/DeftApplication;->access$100(Lcn/nubia/deftmachanism/DeftApplication;Landroid/os/Message;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication$WorkHandler;->this$0:Lcn/nubia/deftmachanism/DeftApplication;

    invoke-virtual {v0, p1}, Lcn/nubia/deftmachanism/DeftApplication;->doWithAppEvent(Landroid/os/Message;)Z

    goto :goto_0
.end method
