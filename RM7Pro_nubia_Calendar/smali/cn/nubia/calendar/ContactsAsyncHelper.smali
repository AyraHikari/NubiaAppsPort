.class public Lcn/nubia/calendar/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/ContactsAsyncHelper$WorkerHandler;,
        Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;,
        Lcn/nubia/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_DRAWABLE:I = 0x2

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static mInstance:Lcn/nubia/calendar/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/calendar/ContactsAsyncHelper;->mInstance:Lcn/nubia/calendar/ContactsAsyncHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v1, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerHandler;-><init>(Lcn/nubia/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcn/nubia/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method public static final retrieveContactPhotoAsync(Landroid/content/Context;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    .param p2, "run"    # Ljava/lang/Runnable;
    .param p3, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 204
    if-nez p3, :cond_0

    .line 231
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;-><init>(Lcn/nubia/calendar/ContactsAsyncHelper$1;)V

    .line 213
    .local v0, "args":Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;
    iput-object p0, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 214
    iput-object p1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->item:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    .line 215
    iput-object p3, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 216
    iput-object p2, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->callback:Ljava/lang/Runnable;

    .line 218
    sget-object v2, Lcn/nubia/calendar/ContactsAsyncHelper;->mInstance:Lcn/nubia/calendar/ContactsAsyncHelper;

    if-nez v2, :cond_1

    .line 219
    new-instance v2, Lcn/nubia/calendar/ContactsAsyncHelper;

    invoke-direct {v2}, Lcn/nubia/calendar/ContactsAsyncHelper;-><init>()V

    sput-object v2, Lcn/nubia/calendar/ContactsAsyncHelper;->mInstance:Lcn/nubia/calendar/ContactsAsyncHelper;

    .line 222
    :cond_1
    sget-object v2, Lcn/nubia/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 223
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 224
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    sget-object v2, Lcn/nubia/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "contact"    # Landroid/net/Uri;
    .param p3, "placeholderImageResource"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 149
    if-nez p2, :cond_0

    .line 153
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;-><init>(Lcn/nubia/calendar/ContactsAsyncHelper$1;)V

    .line 163
    .local v0, "args":Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;
    iput-object p0, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 164
    iput-object p1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 165
    iput-object p2, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 166
    iput p3, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 168
    sget-object v2, Lcn/nubia/calendar/ContactsAsyncHelper;->mInstance:Lcn/nubia/calendar/ContactsAsyncHelper;

    if-nez v2, :cond_1

    .line 169
    new-instance v2, Lcn/nubia/calendar/ContactsAsyncHelper;

    invoke-direct {v2}, Lcn/nubia/calendar/ContactsAsyncHelper;-><init>()V

    sput-object v2, Lcn/nubia/calendar/ContactsAsyncHelper;->mInstance:Lcn/nubia/calendar/ContactsAsyncHelper;

    .line 172
    :cond_1
    sget-object v2, Lcn/nubia/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 173
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 174
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    if-eq p3, v3, :cond_2

    .line 183
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_1
    sget-object v2, Lcn/nubia/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 186
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 239
    .local v0, "args":Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v2, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 247
    :cond_1
    iget v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 248
    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v2, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 254
    iget-object v2, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->item:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iput-object v1, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, v0, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;->callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
