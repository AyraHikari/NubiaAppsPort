.class Lcn/nubia/music/app/task/MusicAsyncTask$b;
.super Landroid/os/Handler;
.source "MusicAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/task/MusicAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/app/task/MusicAsyncTask$1;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcn/nubia/music/app/task/MusicAsyncTask$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/music/app/task/MusicAsyncTask$a;

    .line 217
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v1, v0, Lcn/nubia/music/app/task/MusicAsyncTask$a;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    iget-object v0, v0, Lcn/nubia/music/app/task/MusicAsyncTask$a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcn/nubia/music/app/task/MusicAsyncTask;->access$600(Lcn/nubia/music/app/task/MusicAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v1, v0, Lcn/nubia/music/app/task/MusicAsyncTask$a;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    iget-object v0, v0, Lcn/nubia/music/app/task/MusicAsyncTask$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcn/nubia/music/app/task/MusicAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
