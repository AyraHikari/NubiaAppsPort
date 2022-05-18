.class public abstract Lcom/nubia/nucms/network/frame/NuCmsNetListener;
.super Ljava/lang/Object;
.source "NuCmsNetListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final M_CANCEL:I = 0x4

.field private static final M_END:I = 0x9

.field private static final M_FAILURE:I = 0x3

.field private static final M_READING:I = 0x5

.field private static final M_REDIRECT:I = 0x8

.field private static final M_RETRY:I = 0x7

.field private static final M_START:I = 0x1

.field private static final M_SUCCESS:I = 0x2

.field private static final M_UPLOADING:I = 0x6


# instance fields
.field private delayMillis:J

.field private handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>.HttpHandler;"
        }
    .end annotation
.end field

.field private linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private readingNotify:Z

.field private runOnUiThread:Z

.field private uploadingNotify:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;-><init>(Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    .line 24
    iput-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->readingNotify:Z

    .line 25
    iput-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->uploadingNotify:Z

    .line 37
    iput-wide p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->delayMillis:J

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "runOnUiThread"    # Z

    .prologue
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    .line 24
    iput-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->readingNotify:Z

    .line 25
    iput-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->uploadingNotify:Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->setRunOnUiThread(Z)Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    .line 42
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0
    .param p1, "runOnUiThread"    # Z
    .param p2, "readingNotify"    # Z
    .param p3, "uploadingNotify"    # Z

    .prologue
    .line 45
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    invoke-direct {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;-><init>(Z)V

    .line 46
    iput-boolean p2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->readingNotify:Z

    .line 47
    iput-boolean p3, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->uploadingNotify:Z

    .line 48
    return-void
.end method

.method private delayOrNot()Z
    .locals 6

    .prologue
    .line 316
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iget-wide v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->delayMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 318
    :try_start_0
    iget-wide v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->delayMillis:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    const/4 v1, 0x1

    .line 324
    :goto_0
    return v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 324
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableListener()Z
    .locals 1

    .prologue
    .line 329
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getDelayMillis()J
    .locals 2

    .prologue
    .line 100
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iget-wide v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->delayMillis:J

    return-wide v0
.end method

.method public final getLinkedListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    return-object v0
.end method

.method public final isReadingNotify()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->readingNotify:Z

    return v0
.end method

.method public final isRunOnUiThread()Z
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    return v0
.end method

.method public final isUploadingNotify()Z
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->uploadingNotify:Z

    return v0
.end method

.method public final notifyCallCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    invoke-direct {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->delayOrNot()Z

    .line 216
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v1, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_1
.end method

.method public final notifyCallEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 305
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v1, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_1
.end method

.method public final notifyCallFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 3
    .param p1, "e"    # Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/exception/NuCmsHttpException;",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p2, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    invoke-direct {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->delayOrNot()Z

    .line 199
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v1, p1, p2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_1
.end method

.method public final notifyCallLoading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V
    .locals 8
    .param p2, "total"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "req":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->readingNotify:Z

    if-eqz v0, :cond_2

    .line 236
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 238
    .local v6, "msg":Landroid/os/Message;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v0, v6}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    .end local v6    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallLoading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual/range {p0 .. p5}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onLoading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V

    goto :goto_1
.end method

.method public final notifyCallRedirect(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V
    .locals 4
    .param p2, "max"    # I
    .param p3, "times"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "req":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 289
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallRedirect(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onRedirect(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V

    goto :goto_1
.end method

.method public final notifyCallRetry(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V
    .locals 4
    .param p2, "max"    # I
    .param p3, "times"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "req":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallRetry(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onRetry(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V

    goto :goto_1
.end method

.method public final notifyCallStart(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "req":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    const/4 v2, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v1, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "msg":Landroid/os/Message;
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v1, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallStart(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onStart(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    goto :goto_1
.end method

.method public final notifyCallSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    invoke-direct {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->delayOrNot()Z

    .line 182
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-boolean v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v1, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    invoke-virtual {v1, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_1
.end method

.method public final notifyCallUploading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V
    .locals 8
    .param p2, "total"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "req":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->disableListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->uploadingNotify:Z

    if-eqz v0, :cond_2

    .line 254
    iget-boolean v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 256
    .local v6, "msg":Landroid/os/Message;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-virtual {v0, v6}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    .end local v6    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallUploading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual/range {p0 .. p5}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->onUploading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V

    goto :goto_1
.end method

.method public abstract onCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/exception/NuCmsHttpException;",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onLoading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;JJ)V"
        }
    .end annotation
.end method

.method public abstract onRedirect(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;II)V"
        }
    .end annotation
.end method

.method public abstract onRetry(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;II)V"
        }
    .end annotation
.end method

.method public abstract onStart(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onUploading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;JJ)V"
        }
    .end annotation
.end method

.method public setDelayMillis(J)Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .locals 1
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iput-wide p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->delayMillis:J

    .line 105
    return-object p0
.end method

.method public final setLinkedListener(Lcom/nubia/nucms/network/frame/NuCmsNetListener;)Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;)",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    .local p1, "httpListener":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    if-eqz v1, :cond_2

    .line 56
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    .line 58
    .local v0, "temp":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    :cond_0
    if-ne p1, v0, :cond_1

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Circular refrence:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->getLinkedListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    .end local v0    # "temp":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    :cond_2
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->linkedListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    .line 64
    return-object p0
.end method

.method public final setReadingNotify(Z)Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .locals 0
    .param p1, "readingNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iput-boolean p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->readingNotify:Z

    .line 87
    return-object p0
.end method

.method public final setRunOnUiThread(Z)Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .locals 3
    .param p1, "runOnUiThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    const/4 v2, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->runOnUiThread:Z

    .line 73
    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;-><init>(Lcom/nubia/nucms/network/frame/NuCmsNetListener;Landroid/os/Looper;Lcom/nubia/nucms/network/frame/NuCmsNetListener$1;)V

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    .line 78
    :goto_0
    return-object p0

    .line 76
    :cond_0
    iput-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->handler:Lcom/nubia/nucms/network/frame/NuCmsNetListener$HttpHandler;

    goto :goto_0
.end method

.method public final setUploadingNotify(Z)Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .locals 0
    .param p1, "uploadingNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    iput-boolean p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->uploadingNotify:Z

    .line 96
    return-object p0
.end method
