.class public Lcom/bluestareffects/sdk/core/TimerCount;
.super Ljava/lang/Object;
.source "TimerCount.java"


# static fields
.field public static final ME:Lcom/bluestareffects/sdk/core/TimerCount;

.field private static final MILLION:I = 0xf4240


# instance fields
.field private mExecuteDrawCalls:J

.field private mFrame:J

.field private mGLCallback:J

.field private mUploadAll:J

.field private mUploadAlpha:J

.field private mUploadBegin:J

.field private mUploadEnd:J

.field private mUploadMatrix:J

.field private mUploadModule:J

.field private mUploadVertexTexture:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/bluestareffects/sdk/core/TimerCount;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/core/TimerCount;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/core/TimerCount;->ME:Lcom/bluestareffects/sdk/core/TimerCount;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mFrame:J

    .line 13
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mGLCallback:J

    .line 14
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadModule:J

    .line 15
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mExecuteDrawCalls:J

    .line 36
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadBegin:J

    .line 37
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadVertexTexture:J

    .line 38
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAlpha:J

    .line 39
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadMatrix:J

    .line 40
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadEnd:J

    .line 41
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAll:J

    return-void
.end method


# virtual methods
.method public addUploadAlpha(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAlpha:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAlpha:J

    return-void
.end method

.method public addUploadBegin(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadBegin:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadBegin:J

    return-void
.end method

.method public addUploadEnd(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadEnd:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadEnd:J

    return-void
.end method

.method public addUploadMatrix(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadMatrix:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadMatrix:J

    return-void
.end method

.method public addUploadVertexTexture(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadVertexTexture:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadVertexTexture:J

    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/bluestareffects/sdk/core/TimerCount;->clearFrame()V

    .line 71
    invoke-virtual {p0}, Lcom/bluestareffects/sdk/core/TimerCount;->clearUpload()V

    .line 72
    return-void
.end method

.method public clearFrame()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mFrame:J

    .line 31
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mGLCallback:J

    .line 32
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadModule:J

    .line 33
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mExecuteDrawCalls:J

    .line 34
    return-void
.end method

.method public clearUpload()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadBegin:J

    .line 63
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadVertexTexture:J

    .line 64
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAlpha:J

    .line 65
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadMatrix:J

    .line 66
    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadEnd:J

    .line 67
    return-void
.end method

.method public dumpFrame()V
    .locals 4

    .prologue
    .line 23
    const/16 v0, 0x1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame finish Frame("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mFrame:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GL_Callback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mGLCallback:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UploadModule("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadModule:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ExecDrawCall("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mExecuteDrawCalls:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->d(ILjava/lang/String;)I

    .line 27
    return-void
.end method

.method public dumpUpload()V
    .locals 6

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadBegin:J

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadVertexTexture:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAlpha:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadMatrix:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadEnd:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAll:J

    .line 53
    const/16 v0, 0x1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload finish at("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAll:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UploadBegin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadBegin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UploadVertexTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadVertexTexture:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UploadAlpha("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadAlpha:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UploadMatrix("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadMatrix:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UploadEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->d(ILjava/lang/String;)I

    .line 59
    return-void
.end method

.method public setExecuteDrawCalls(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mExecuteDrawCalls:J

    return-void
.end method

.method public setFrame(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mFrame:J

    return-void
.end method

.method public setGLCallback(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mGLCallback:J

    return-void
.end method

.method public setUploadModule(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/bluestareffects/sdk/core/TimerCount;->mUploadModule:J

    return-void
.end method
