.class public abstract Lcn/nubia/deftmachanism/DeftApplication;
.super Landroid/app/Application;
.source "DeftApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deftmachanism/DeftApplication$WorkHandler;,
        Lcn/nubia/deftmachanism/DeftApplication$MasterController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeftApplication"


# instance fields
.field private mContextRegister:Lcn/nubia/deftmachanism/DeftContextRegister;

.field private mMasterController:Lcn/nubia/deftmachanism/DeftApplication$MasterController;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 91
    iput-object v1, p0, Lcn/nubia/deftmachanism/DeftApplication;->mContextRegister:Lcn/nubia/deftmachanism/DeftContextRegister;

    .line 92
    iput-object v1, p0, Lcn/nubia/deftmachanism/DeftApplication;->mMasterController:Lcn/nubia/deftmachanism/DeftApplication$MasterController;

    .line 24
    new-instance v0, Lcn/nubia/deftmachanism/DeftApplication$MasterController;

    invoke-direct {v0, p0, v1, v1}, Lcn/nubia/deftmachanism/DeftApplication$MasterController;-><init>(Lcn/nubia/deftmachanism/DeftApplication;Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication;->mMasterController:Lcn/nubia/deftmachanism/DeftApplication$MasterController;

    .line 25
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication;->mMasterController:Lcn/nubia/deftmachanism/DeftApplication$MasterController;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication;->mMasterController:Lcn/nubia/deftmachanism/DeftApplication$MasterController;

    new-instance v1, Lcn/nubia/deftmachanism/DeftApplication$WorkHandler;

    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/deftmachanism/DeftApplication$WorkHandler;-><init>(Lcn/nubia/deftmachanism/DeftApplication;Landroid/os/Looper;)V

    .line 26
    invoke-virtual {v0, v1}, Lcn/nubia/deftmachanism/DeftApplication$MasterController;->setWorkHandler(Landroid/os/Handler;)V

    .line 29
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deftmachanism/DeftApplication;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deftmachanism/DeftApplication;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/deftmachanism/DeftApplication;->isDeftNativeEvent(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/deftmachanism/DeftApplication;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deftmachanism/DeftApplication;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/deftmachanism/DeftApplication;->doWithDeftNativeEvent(Landroid/os/Message;)V

    return-void
.end method

.method private doWithDeftNativeEvent(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    .line 87
    return-void
.end method

.method private isDeftNativeEvent(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e7

    if-ge v0, v1, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract doWithAppEvent(Landroid/os/Message;)Z
.end method

.method public getEventSender()Lcn/nubia/deftmachanism/IDeftEventSender;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication;->mMasterController:Lcn/nubia/deftmachanism/DeftApplication$MasterController;

    return-object v0
.end method

.method public getRegister()Lcn/nubia/deftmachanism/IDeftRegister;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication;->mContextRegister:Lcn/nubia/deftmachanism/DeftContextRegister;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcn/nubia/deftmachanism/DeftContextRegister;

    invoke-direct {v0}, Lcn/nubia/deftmachanism/DeftContextRegister;-><init>()V

    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication;->mContextRegister:Lcn/nubia/deftmachanism/DeftContextRegister;

    .line 35
    :cond_0
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftApplication;->mContextRegister:Lcn/nubia/deftmachanism/DeftContextRegister;

    return-object v0
.end method
