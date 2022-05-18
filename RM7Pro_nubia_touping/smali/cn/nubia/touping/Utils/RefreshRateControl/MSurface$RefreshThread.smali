.class Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;
.super Ljava/lang/Thread;
.source "MSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 220
    iput-object p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 224
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$700(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 227
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$300(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 233
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$800(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 234
    .local v0, "mCanvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 235
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v5}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$900(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$800(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    .end local v0    # "mCanvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v6

    .line 239
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 240
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1

    .line 228
    :catch_1
    move-exception v1

    .line 230
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$RefreshThread;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 244
    :cond_1
    return-void
.end method
