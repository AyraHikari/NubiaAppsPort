.class Lcom/hpplay/sdk/source/service/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/a;

.field private b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/service/a;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 111
    const-string v0, "serviceCheckDLNA"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/service/a$a;->setName(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    .line 113
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 118
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/service/a;->b(Lcom/hpplay/sdk/source/service/a;Z)Z

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/a;->c(Lcom/hpplay/sdk/source/service/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v1}, Lcom/hpplay/sdk/source/service/a;->d(Lcom/hpplay/sdk/source/service/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v2}, Lcom/hpplay/sdk/source/service/a;->e(Lcom/hpplay/sdk/source/service/a;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->tcpCheckTvState(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget v1, v1, Lcom/hpplay/sdk/source/service/a;->h:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/hpplay/sdk/source/service/a;->i:I

    .line 124
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget v0, v0, Lcom/hpplay/sdk/source/service/a;->h:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    const/16 v1, 0xa

    iput v1, v0, Lcom/hpplay/sdk/source/service/a;->h:I

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget v1, v0, Lcom/hpplay/sdk/source/service/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hpplay/sdk/source/service/a;->h:I

    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v0, v5}, Lcom/hpplay/sdk/source/service/a;->a(Lcom/hpplay/sdk/source/service/a;Z)Z

    .line 129
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iput v4, v0, Lcom/hpplay/sdk/source/service/a;->g:I

    .line 130
    const-string v0, "DlnaLinkService"

    const-string v1, "state is online"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget v0, v0, Lcom/hpplay/sdk/source/service/a;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "DlnaLinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    const/4 v1, 0x5

    iput v1, v0, Lcom/hpplay/sdk/source/service/a;->h:I

    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget v1, v1, Lcom/hpplay/sdk/source/service/a;->h:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/hpplay/sdk/source/service/a;->i:I

    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget v1, v0, Lcom/hpplay/sdk/source/service/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hpplay/sdk/source/service/a;->g:I

    .line 135
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget v0, v0, Lcom/hpplay/sdk/source/service/a;->g:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_4

    .line 137
    const-string v0, "DlnaLinkService"

    const-string v1, "DLNA state is offline"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setConnect(Z)V

    .line 139
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/service/a;->e:Lcom/hpplay/sdk/source/api/IConnectListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    iget-object v1, v1, Lcom/hpplay/sdk/source/service/a;->a:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    const v2, 0x33c20

    const v3, 0x33c21

    invoke-interface {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-static {v0, v4}, Lcom/hpplay/sdk/source/service/a;->a(Lcom/hpplay/sdk/source/service/a;Z)Z

    .line 144
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->a:Lcom/hpplay/sdk/source/service/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/a;->g()V

    goto :goto_1

    .line 154
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/service/a$a;->b:Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;

    .line 155
    return-void
.end method
