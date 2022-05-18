.class Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;
.super Ljava/lang/Object;
.source "MSurface.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private post()V
    .locals 2

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private process()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 107
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$400(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    const/16 v4, 0xa5

    if-ne v3, v4, :cond_4

    .line 108
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$500(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$500(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$500(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 109
    :cond_0
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$508(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    .line 149
    :cond_1
    :goto_0
    return v1

    .line 112
    :cond_2
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$500(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    rem-int/lit8 v3, v3, 0xb

    if-nez v3, :cond_3

    .line 113
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->reset()V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$508(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    .line 117
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->post()V

    move v1, v2

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$400(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    const/16 v4, 0x90

    if-ne v3, v4, :cond_7

    .line 120
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$500(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_5

    .line 121
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->resetAndPost()V

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_5
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$508(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    .line 125
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$600(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    .line 126
    iget-object v1, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$602(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;I)I

    .line 128
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v1, v2

    .line 133
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1

    .line 135
    :cond_6
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$608(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    goto :goto_0

    .line 136
    :cond_7
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$400(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_9

    .line 137
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$500(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8

    .line 138
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->resetAndPost()V

    move v1, v2

    .line 139
    goto :goto_0

    .line 141
    :cond_8
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$508(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    goto :goto_0

    .line 142
    :cond_9
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$400(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    .line 143
    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$500(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_a

    .line 144
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->resetAndPost()V

    move v1, v2

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_a
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$508(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    goto/16 :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$502(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;I)I

    .line 159
    return-void
.end method

.method private resetAndPost()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->reset()V

    .line 154
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->post()V

    .line 155
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .param p1, "l"    # J

    .prologue
    .line 83
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$000(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$100(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 85
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$102(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;I)I

    .line 86
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$108(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)I

    .line 91
    :cond_2
    invoke-direct {p0}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->process()Z

    move-result v1

    .line 92
    .local v1, "jumpOneFrame":Z
    if-nez v1, :cond_0

    .line 95
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$300(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    :goto_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iget-object v2, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v2}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface$1;->this$0:Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;

    invoke-static {v3}, Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;->access$200(Lcn/nubia/touping/Utils/RefreshRateControl/MSurface;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method
