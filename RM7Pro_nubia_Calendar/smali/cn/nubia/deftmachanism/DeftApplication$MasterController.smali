.class Lcn/nubia/deftmachanism/DeftApplication$MasterController;
.super Lcn/nubia/deftmachanism/DeftController;
.source "DeftApplication.java"

# interfaces
.implements Lcn/nubia/deftmachanism/IDeftEventSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deftmachanism/DeftApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MasterController"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deftmachanism/DeftApplication;


# direct methods
.method public constructor <init>(Lcn/nubia/deftmachanism/DeftApplication;Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deftmachanism/DeftApplication;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    .line 43
    iput-object p1, p0, Lcn/nubia/deftmachanism/DeftApplication$MasterController;->this$0:Lcn/nubia/deftmachanism/DeftApplication;

    .line 44
    invoke-direct {p0, p2, p3}, Lcn/nubia/deftmachanism/DeftController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 45
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "DeftApplication"

    const-string v1, "MasterController.destroy()"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/deftmachanism/DeftApplication$MasterController;->setWorkHandler(Landroid/os/Handler;)V

    .line 56
    return-void
.end method

.method public sendEvent(Lcn/nubia/deftmachanism/DeftEvent;)V
    .locals 0
    .param p1, "evt"    # Lcn/nubia/deftmachanism/DeftEvent;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcn/nubia/deftmachanism/DeftApplication$MasterController;->sendWorkEvent(Lcn/nubia/deftmachanism/DeftEvent;)V

    .line 50
    return-void
.end method
