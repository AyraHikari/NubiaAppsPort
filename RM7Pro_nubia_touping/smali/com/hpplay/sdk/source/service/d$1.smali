.class Lcom/hpplay/sdk/source/service/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/d;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/d$1;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$1;->a:Lcom/hpplay/sdk/source/service/d;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/service/d;->c:Z

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string v0, ""

    .line 107
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getIMEI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_1
    const-string v2, ""

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$1;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v3, p0, Lcom/hpplay/sdk/source/service/d$1;->a:Lcom/hpplay/sdk/source/service/d;

    iget-object v3, v3, Lcom/hpplay/sdk/source/service/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/hpplay/sdk/source/service/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-static {}, Lcom/hpplay/common/utils/DeviceUtil;->getBluetoothName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 122
    :goto_2
    new-instance v2, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/g;->O()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/g;->x()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    .line 125
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getHID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    const-string v3, "0"

    .line 126
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/g;->ac(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->ad(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    const-string v2, "1"

    .line 129
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->ak(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    const-string v2, "3.28.50"

    .line 130
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->ae(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/g;->Y(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->X(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "HappyCast3,1"

    .line 133
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$1;->a:Lcom/hpplay/sdk/source/service/d;

    .line 134
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/service/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 136
    const-string v1, "LelinkServiceConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/hpplay/sdk/source/service/d$1;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/service/d;->b(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/d$1;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/service/d;->a(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/protocol/j;

    move-result-object v2

    new-array v3, v4, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    const-string v2, "LelinkServiceConnect"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 117
    :cond_1
    :try_start_2
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto/16 :goto_2

    .line 119
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    .line 120
    const-string v3, "LelinkServiceConnect"

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$1;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->c(Lcom/hpplay/sdk/source/service/d;)V

    goto/16 :goto_0
.end method
