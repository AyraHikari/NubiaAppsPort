.class Lcn/nubia/calendar/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcn/nubia/calendar/ContactsAsyncHelper;

    .line 83
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 90
    .local v0, "args":Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    .line 121
    :goto_0
    iget-object v3, p0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcn/nubia/calendar/ContactsAsyncHelper;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 122
    .local v2, "reply":Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 123
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void

    .line 93
    .end local v2    # "reply":Landroid/os/Message;
    :pswitch_0
    const/4 v1, 0x0

    .line 95
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 95
    invoke-static {v3, v4}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_1
    if-eqz v1, :cond_0

    .line 102
    iget-object v3, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 103
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 97
    :catch_0
    move-exception v3

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
