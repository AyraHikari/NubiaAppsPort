.class public Lcom/hpplay/sdk/source/protocol/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/a/a;
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String; = "POST /heart"

.field private static final c:Ljava/lang/String; = "POST /event"

.field private static final d:Ljava/lang/String; = "POST /photo"

.field private static final j:Ljava/lang/String; = "state"

.field private static final k:Ljava/lang/String; = "reason"

.field private static final l:Ljava/lang/String; = "stopped"

.field private static final m:Ljava/lang/String; = "error"

.field private static final n:Ljava/lang/String; = "user_stopped"

.field private static final o:Ljava/lang/String; = "force_stopped"

.field private static final p:Ljava/lang/String; = "preempt_stopped"

.field private static final q:Ljava/lang/String; = "server_force_stopped"


# instance fields
.field private a:Ljava/lang/String;

.field private final e:Ljava/io/InputStream;

.field private final f:Ljava/net/Socket;

.field private g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private h:Lcom/hpplay/sdk/source/protocol/a/b;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/a/b;Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "RequestHandler"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/hpplay/sdk/source/protocol/a/c;->e:Ljava/io/InputStream;

    .line 38
    iput-object p4, p0, Lcom/hpplay/sdk/source/protocol/a/c;->f:Ljava/net/Socket;

    .line 39
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 40
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->h:Lcom/hpplay/sdk/source/protocol/a/b;

    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->i:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/a/c;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const v7, 0x33858

    const v6, 0x33857

    const v5, 0x33856

    const v4, 0x3383d

    .line 196
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_1

    .line 200
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    if-eqz v0, :cond_1

    .line 208
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 244
    :cond_1
    :goto_1
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 210
    :sswitch_0
    const-string v3, "stopped"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 212
    :pswitch_0
    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    instance-of v1, v1, Lcom/hpplay/sdk/source/api/IConferenceMirrorListener;

    if-eqz v1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    const-string v2, "callback for IConferenceMirrorListener"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "force_stopped"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    check-cast v0, Lcom/hpplay/sdk/source/api/IConferenceMirrorListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v1}, Lcom/hpplay/sdk/source/api/IConferenceMirrorListener;->onError(IILjava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_2
    const-string v1, "preempt_stopped"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    check-cast v0, Lcom/hpplay/sdk/source/api/IConferenceMirrorListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v1}, Lcom/hpplay/sdk/source/api/IConferenceMirrorListener;->onError(IILjava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_3
    const-string v1, "server_force_stopped"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    check-cast v0, Lcom/hpplay/sdk/source/api/IConferenceMirrorListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v4, v7, v1}, Lcom/hpplay/sdk/source/api/IConferenceMirrorListener;->onError(IILjava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_4
    const-string v1, "force_stopped"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 225
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, v4, v6}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto :goto_1

    .line 226
    :cond_5
    const-string v1, "preempt_stopped"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 227
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, v4, v5}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto/16 :goto_1

    .line 228
    :cond_6
    const-string v1, "server_force_stopped"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->g:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, v4, v7}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto/16 :goto_1

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        -0x70506e33 -> :sswitch_0
        0x5c4d208 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->f:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->h:Lcom/hpplay/sdk/source/protocol/a/b;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->h:Lcom/hpplay/sdk/source/protocol/a/b;

    invoke-interface {v0, p0}, Lcom/hpplay/sdk/source/protocol/a/b;->a(Lcom/hpplay/sdk/source/protocol/a/a;)V

    .line 64
    :cond_2
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v1, 0x1

    const/16 v14, 0xb

    const/4 v2, 0x0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 73
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v6, v2

    move-object v7, v0

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_a

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->e:Ljava/io/InputStream;

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 82
    :goto_1
    if-lez v6, :cond_0

    .line 90
    :try_start_2
    array-length v0, v7

    if-ne v0, v1, :cond_3

    .line 91
    const/4 v0, 0x0

    aget-byte v0, v7, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {v9}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getProtocolDivide(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [B

    move v3, v2

    .line 94
    :goto_2
    array-length v0, v5

    if-ge v3, v0, :cond_1

    .line 95
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v5, v3

    .line 94
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 178
    :catch_1
    move-exception v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/a/c;->a()V

    .line 183
    :goto_3
    return-void

    .line 97
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 98
    const-string v3, "header"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :try_start_5
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getContentLength(Ljava/lang/String;)I

    move-result v0

    .line 101
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentLength"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-lez v0, :cond_2

    const/high16 v3, 0x200000

    if-ge v0, v3, :cond_2

    .line 103
    new-array v0, v0, [B

    .line 104
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :goto_4
    move-object v7, v0

    .line 113
    goto/16 :goto_0

    .line 106
    :cond_2
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 107
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 109
    :catch_2
    move-exception v0

    .line 110
    :try_start_6
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/16 v0, 0xb

    new-array v0, v0, [B

    goto :goto_4

    .line 116
    :cond_3
    array-length v0, v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v0, v14, :cond_6

    if-nez v4, :cond_6

    .line 118
    :try_start_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 119
    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    array-length v5, v7

    invoke-direct {v3, v7, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 120
    const-string v0, "POST /heart"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "POST /event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "POST /photo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    .line 121
    :goto_5
    array-length v5, v7

    if-ge v0, v5, :cond_5

    .line 122
    aget-byte v5, v7, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    const/4 v0, 0x1

    :try_start_8
    new-array v0, v0, [B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    move-object v7, v0

    goto/16 :goto_0

    .line 126
    :catch_3
    move-exception v0

    .line 127
    :try_start_9
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 129
    const/4 v0, 0x1

    :try_start_a
    new-array v0, v0, [B

    goto :goto_6

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 181
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/a/c;->a()V

    throw v0

    .line 134
    :cond_6
    :try_start_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 137
    :try_start_c
    array-length v0, v7

    if-ge v6, v0, :cond_7

    .line 138
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------------->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ----------------   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-array v0, v6, [B

    .line 140
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v7, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    array-length v0, v7

    sub-int/2addr v0, v6

    .line 143
    new-array v3, v0, [B

    .line 144
    if-ne v0, v14, :cond_b

    move v0, v1

    :goto_7
    move v4, v0

    move-object v7, v3

    .line 173
    goto/16 :goto_0

    :cond_7
    move v3, v2

    move v5, v6

    .line 149
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 150
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int v4, v5, v0

    .line 149
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v4

    goto :goto_8

    .line 152
    :cond_8
    new-array v11, v5, [B

    move v3, v2

    move v4, v2

    .line 154
    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 155
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    .line 156
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    .line 155
    invoke-static {v12, v13, v11, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v4, v0

    .line 154
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    .line 159
    :cond_9
    const/4 v0, 0x0

    invoke-static {v7, v0, v11, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v11, v3, v5}, Ljava/lang/String;-><init>([BII)V

    .line 161
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/protocol/a/c;->a(Ljava/lang/String;)V

    .line 163
    const-string v0, "HTTP/1.1 200 OK"

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 165
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 181
    :cond_a
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/a/c;->a()V

    goto/16 :goto_3

    .line 169
    :catch_4
    move-exception v0

    .line 170
    :try_start_d
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 172
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v4, v2

    move-object v7, v0

    .line 173
    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_7
.end method
