.class Lcn/nubia/music/database/DAOAccessManager$c;
.super Landroid/os/Handler;
.source "DAOAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/database/DAOAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/database/DAOAccessManager;


# direct methods
.method public constructor <init>(Lcn/nubia/music/database/DAOAccessManager;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcn/nubia/music/database/DAOAccessManager$c;->a:Lcn/nubia/music/database/DAOAccessManager;

    .line 130
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/music/database/AccessRequest;

    .line 138
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->getListener()Lcn/nubia/music/database/AccessListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->getResult()Lcn/nubia/music/database/AccessRequest$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->getListener()Lcn/nubia/music/database/AccessListener;

    move-result-object v1

    .line 142
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->getResult()Lcn/nubia/music/database/AccessRequest$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest$a;->a()Lcn/nubia/music/database/AccessError;

    move-result-object v0

    .line 141
    invoke-interface {v1, v0}, Lcn/nubia/music/database/AccessListener;->onAccessFail(Lcn/nubia/music/database/AccessError;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/music/database/AccessRequest;

    .line 148
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->getListener()Lcn/nubia/music/database/AccessListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->getResult()Lcn/nubia/music/database/AccessRequest$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->getListener()Lcn/nubia/music/database/AccessListener;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->getResult()Lcn/nubia/music/database/AccessRequest$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest$a;->b()Ljava/lang/Object;

    move-result-object v0

    .line 151
    invoke-interface {v1, v0}, Lcn/nubia/music/database/AccessListener;->onAccessSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
