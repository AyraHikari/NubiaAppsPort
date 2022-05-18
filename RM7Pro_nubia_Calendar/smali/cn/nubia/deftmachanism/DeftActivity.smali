.class public Lcn/nubia/deftmachanism/DeftActivity;
.super Landroid/app/Activity;
.source "DeftActivity.java"


# instance fields
.field protected mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

.field protected mDeftHandler:Landroid/os/Handler;

.field protected mDeftRegister:Lcn/nubia/deftmachanism/IDeftRegister;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftRegister:Lcn/nubia/deftmachanism/IDeftRegister;

    .line 41
    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    .line 42
    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcn/nubia/deftmachanism/DeftActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/deftmachanism/DeftApplication;

    .line 21
    .local v0, "app":Lcn/nubia/deftmachanism/DeftApplication;
    invoke-virtual {v0}, Lcn/nubia/deftmachanism/DeftApplication;->getRegister()Lcn/nubia/deftmachanism/IDeftRegister;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftRegister:Lcn/nubia/deftmachanism/IDeftRegister;

    .line 22
    invoke-virtual {v0}, Lcn/nubia/deftmachanism/DeftApplication;->getEventSender()Lcn/nubia/deftmachanism/IDeftEventSender;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    .line 23
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftRegister:Lcn/nubia/deftmachanism/IDeftRegister;

    invoke-interface {v1, p0}, Lcn/nubia/deftmachanism/IDeftRegister;->register(Landroid/content/Context;)I

    .line 24
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftRegister:Lcn/nubia/deftmachanism/IDeftRegister;

    invoke-interface {v0, p0}, Lcn/nubia/deftmachanism/IDeftRegister;->unregister(Landroid/content/Context;)V

    .line 29
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/deftmachanism/DeftActivity;->setWorkHandler(Landroid/os/Handler;)V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 34
    return-void
.end method

.method protected setWorkHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/deftmachanism/DeftActivity;->mDeftHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method
