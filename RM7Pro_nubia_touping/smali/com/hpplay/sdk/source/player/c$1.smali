.class Lcom/hpplay/sdk/source/player/c$1;
.super Lcom/hpplay/sdk/source/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/c;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsg(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/a/g;->onMsg(JLjava/lang/String;)V

    .line 75
    const-string v0, "IMPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v0, "sid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v0, "st"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 80
    const/4 v1, -0x1

    .line 82
    :try_start_1
    const-string v0, "std"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 86
    :goto_0
    :try_start_2
    const-string v1, "IMPlayerControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  cabackSid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  sid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v5, v5, Lcom/hpplay/sdk/source/player/c;->o:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    packed-switch v4, :pswitch_data_0

    .line 133
    :cond_0
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v5, "IMPlayerControl"

    invoke-static {v5, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPause()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    const-string v1, "IMPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 96
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    const-string v1, "duration"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/c;->a(Lcom/hpplay/sdk/source/player/c;I)I

    .line 97
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    const-string v1, "period"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/c;->b(Lcom/hpplay/sdk/source/player/c;I)I

    .line 98
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/c;->a(Lcom/hpplay/sdk/source/player/c;)I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/c;->b(Lcom/hpplay/sdk/source/player/c;)I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPositionUpdate(JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 101
    :catch_2
    move-exception v0

    .line 102
    :try_start_4
    const-string v1, "IMPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    goto :goto_1

    .line 111
    :pswitch_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_1

    .line 112
    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onCompletion()V

    .line 122
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/c;->b()V

    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/c;->b(Lcom/hpplay/sdk/source/player/c;I)I

    goto/16 :goto_1

    .line 114
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/c;->a(Lcom/hpplay/sdk/source/player/c;)I

    move-result v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/c;->b(Lcom/hpplay/sdk/source/player/c;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/c;->a(Lcom/hpplay/sdk/source/player/c;)I

    move-result v0

    if-lez v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onCompletion()V

    goto :goto_2

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/c;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    goto :goto_2

    .line 126
    :pswitch_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/c$1;->a:Lcom/hpplay/sdk/source/player/c;

    const/4 v1, 0x0

    const v2, 0x3345a

    const v3, 0x3345b

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/c;->a(III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
