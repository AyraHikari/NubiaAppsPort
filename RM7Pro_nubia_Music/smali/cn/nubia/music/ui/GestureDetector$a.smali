.class Lcn/nubia/music/ui/GestureDetector$a;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/GestureDetector;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/GestureDetector;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    .line 274
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 275
    return-void
.end method

.method constructor <init>(Lcn/nubia/music/ui/GestureDetector;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    .line 278
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 279
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 300
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureDetector;->access$100(Lcn/nubia/music/ui/GestureDetector;)Lcn/nubia/music/ui/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    invoke-static {v1}, Lcn/nubia/music/ui/GestureDetector;->access$000(Lcn/nubia/music/ui/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/music/ui/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureDetector;->access$200(Lcn/nubia/music/ui/GestureDetector;)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureDetector;->access$300(Lcn/nubia/music/ui/GestureDetector;)Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureDetector;->access$400(Lcn/nubia/music/ui/GestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    invoke-static {v0}, Lcn/nubia/music/ui/GestureDetector;->access$300(Lcn/nubia/music/ui/GestureDetector;)Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/ui/GestureDetector$a;->a:Lcn/nubia/music/ui/GestureDetector;

    invoke-static {v1}, Lcn/nubia/music/ui/GestureDetector;->access$000(Lcn/nubia/music/ui/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/music/ui/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
