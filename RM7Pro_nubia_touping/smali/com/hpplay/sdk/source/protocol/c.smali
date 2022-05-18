.class public Lcom/hpplay/sdk/source/protocol/c;
.super Lcom/hpplay/sdk/source/protocol/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final n:Ljava/lang/String; = "MirrorEventReceiver"


# instance fields
.field public a:I

.field private o:Lcom/hpplay/sdk/source/protocol/a/b;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private s:Z

.field private t:Ljava/lang/Thread;

.field private u:Z

.field private v:[B

.field private w:Lcom/hpplay/sdk/source/api/AudioStateListener;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/api/AudioStateListener;Z)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/h;-><init>()V

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->v:[B

    .line 32
    const v0, 0xc7af

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/c;->a:I

    .line 44
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/c;->w:Lcom/hpplay/sdk/source/api/AudioStateListener;

    .line 45
    new-instance v0, Lcom/hpplay/sdk/source/protocol/a/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/a/d;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    .line 46
    iput-boolean p2, p0, Lcom/hpplay/sdk/source/protocol/c;->u:Z

    .line 47
    return-void

    .line 31
    nop

    :array_0
    .array-data 1
        0x31t
        0x32t
        0x37t
        0x2et
        0x30t
        0x2et
        0x30t
        0x2et
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/h;-><init>()V

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->v:[B

    .line 32
    const v0, 0xc7af

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/c;->a:I

    .line 36
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/c;->p:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/hpplay/sdk/source/protocol/c;->q:I

    .line 38
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/c;->r:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 39
    new-instance v0, Lcom/hpplay/sdk/source/protocol/a/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/a/d;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    .line 40
    iput-boolean p4, p0, Lcom/hpplay/sdk/source/protocol/c;->u:Z

    .line 41
    return-void

    .line 31
    nop

    :array_0
    .array-data 1
        0x31t
        0x32t
        0x37t
        0x2et
        0x30t
        0x2et
        0x30t
        0x2et
        0x31t
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/c;->e()V

    .line 51
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->t:Ljava/lang/Thread;

    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->t:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->t:Ljava/lang/Thread;

    const-string v1, "EventServer"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/c;->v:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->p:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/c;->q:I

    if-nez v0, :cond_0

    .line 66
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/c;->a:I

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/c;->q:I

    .line 68
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/c;->a:I

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->checkLoaclPort(I)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/c;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/c;->q:I

    .line 72
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/c;->q:I

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/protocol/a/b;->a()V

    .line 102
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/protocol/a/b;->a()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->i:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->i:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/c;->s:Z

    .line 116
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/protocol/a/b;->a()V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 122
    :cond_3
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "MirrorEventReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/c;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/protocol/c;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/c;->s:Z

    .line 78
    const-string v0, "MirrorEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start state  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/protocol/c;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/c;->s:Z

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/c;->i:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 83
    const-string v2, "MirrorEventReceiver"

    const-string v3, "new connection"

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/protocol/c;->u:Z

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    invoke-interface {v2}, Lcom/hpplay/sdk/source/protocol/a/b;->a()V

    .line 86
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    new-instance v3, Lcom/hpplay/sdk/source/protocol/a/e;

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/c;->w:Lcom/hpplay/sdk/source/api/AudioStateListener;

    invoke-direct {v3, v4, v1, v0, v5}, Lcom/hpplay/sdk/source/protocol/a/e;-><init>(Lcom/hpplay/sdk/source/protocol/a/b;Ljava/io/InputStream;Ljava/net/Socket;Lcom/hpplay/sdk/source/api/AudioStateListener;)V

    invoke-interface {v2, v3}, Lcom/hpplay/sdk/source/protocol/a/b;->b(Lcom/hpplay/sdk/source/protocol/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "MirrorEventReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_0
    return-void

    .line 88
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    new-instance v3, Lcom/hpplay/sdk/source/protocol/a/c;

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/c;->o:Lcom/hpplay/sdk/source/protocol/a/b;

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/c;->r:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/hpplay/sdk/source/protocol/a/c;-><init>(Lcom/hpplay/sdk/source/protocol/a/b;Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;Ljava/io/InputStream;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Lcom/hpplay/sdk/source/protocol/a/b;->b(Lcom/hpplay/sdk/source/protocol/a/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
