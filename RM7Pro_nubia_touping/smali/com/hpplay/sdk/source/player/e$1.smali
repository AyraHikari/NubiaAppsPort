.class Lcom/hpplay/sdk/source/player/e$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/e;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 122
    :sswitch_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v1, "type"

    const-string v2, "position"

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "uuid"

    .line 124
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "seek-position"

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    new-instance v2, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 128
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/d;->g()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 127
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/player/e$1$1;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/e$1$1;-><init>(Lcom/hpplay/sdk/source/player/e$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 131
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    :sswitch_1
    :try_start_1
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------> play state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/e;->b(Lcom/hpplay/sdk/source/player/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    .line 148
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->h()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    const/4 v2, 0x0

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "NewLelinkPlayerControl"

    const-string v2, "----------- handler start get duration  ----------"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/player/e$1$2;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/e$1$2;-><init>(Lcom/hpplay/sdk/source/player/e$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 150
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto/16 :goto_0

    .line 162
    :sswitch_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V

    goto/16 :goto_0

    .line 167
    :sswitch_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/e;->a(I)V

    .line 168
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    goto/16 :goto_0

    .line 173
    :sswitch_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x0

    const v2, 0x3345a

    const v3, 0x3345c

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/e;->a(III)V

    goto/16 :goto_0

    .line 177
    :sswitch_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->c(Lcom/hpplay/sdk/source/player/e;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->c(Lcom/hpplay/sdk/source/player/e;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->a()V

    goto/16 :goto_0

    .line 182
    :sswitch_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$1;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->d(Lcom/hpplay/sdk/source/player/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0x82 -> :sswitch_0
        0x8c -> :sswitch_2
        0x96 -> :sswitch_3
        0x97 -> :sswitch_4
        0x99 -> :sswitch_5
        0x9a -> :sswitch_6
    .end sparse-switch
.end method
