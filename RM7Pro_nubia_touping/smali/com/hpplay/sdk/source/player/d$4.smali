.class Lcom/hpplay/sdk/source/player/d$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/d;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/d;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 169
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 171
    :sswitch_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 172
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->L()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 173
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "MediaControl/1.0"

    .line 174
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/player/d$4$1;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/d$4$1;-><init>(Lcom/hpplay/sdk/source/player/d$4;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 188
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v3, v4

    .line 176
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :sswitch_1
    :try_start_1
    const-string v0, "LelinkPlayerControl"

    const-string v1, "------------->"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 193
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/g;->M()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "text/x-apple-plist+xml"

    .line 194
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->m(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "0"

    .line 195
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "MediaControl/1.0"

    .line 196
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 198
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 199
    const-string v1, "LelinkPlayerControl"

    const-string v2, "----------- handler start get duration  ----------"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/player/d$4$2;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/d$4$2;-><init>(Lcom/hpplay/sdk/source/player/d$4;)V

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto/16 :goto_0

    .line 209
    :sswitch_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V

    goto/16 :goto_0

    .line 214
    :sswitch_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/player/d;->a(I)V

    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    goto/16 :goto_0

    .line 220
    :sswitch_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    const v2, 0x3345a

    const v3, 0x3345c

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/d;->a(III)V

    goto/16 :goto_0

    .line 229
    :sswitch_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/l;->a()V

    goto/16 :goto_0

    .line 234
    :sswitch_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$4;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->d(Lcom/hpplay/sdk/source/player/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 169
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
