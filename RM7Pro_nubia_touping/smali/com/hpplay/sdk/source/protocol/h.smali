.class public Lcom/hpplay/sdk/source/protocol/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ProtocolCreater"

.field public static final m:Ljava/lang/String; = "255.255.255.255"

.field private static final n:I = 0x100

.field private static o:[B = null

.field private static final p:I = 0x6309

.field private static final q:I = 0x800

.field private static r:[B


# instance fields
.field public b:Ljava/net/Socket;

.field public c:Landroid/os/ParcelFileDescriptor;

.field public d:Ljava/io/FileDescriptor;

.field public e:Ljava/io/FileOutputStream;

.field public f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/net/ServerSocket;

.field public j:Ljava/net/DatagramSocket;

.field public k:Ljava/net/DatagramSocket;

.field public l:Ljava/net/DatagramPacket;

.field private s:Ljava/net/DatagramPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/hpplay/sdk/source/protocol/h;->o:[B

    .line 49
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/hpplay/sdk/source/protocol/h;->r:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    .line 50
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Lcom/hpplay/sdk/source/protocol/h;->o:[B

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->s:Ljava/net/DatagramPacket;

    .line 52
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Lcom/hpplay/sdk/source/protocol/h;->r:[B

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->l:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/protocol/encrypt/d;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 180
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 187
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a()[B

    move-result-object v7

    aput-object v7, v1, v6

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/protocol/h;->a([[B)[B

    move-result-object v1

    .line 189
    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    const-string v6, "dataa2"

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6, v7}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B)Z

    move-result v1

    .line 194
    if-eqz v1, :cond_0

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->b()[B

    move-result-object v1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 200
    const/4 v8, 0x1

    new-array v8, v8, [[B

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {p0, v8}, Lcom/hpplay/sdk/source/protocol/h;->a([[B)[B

    move-result-object v1

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "utime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "genSetupRequest  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz v1, :cond_0

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "utime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " start parseSetupResponse "

    invoke-static {v8, v9}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->b([B)Z

    move-result v1

    .line 207
    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "utime"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSetupResponse  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 213
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->c()[B

    move-result-object v1

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    add-long/2addr v6, v8

    .line 215
    const/4 v8, 0x1

    new-array v8, v8, [[B

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {p0, v8}, Lcom/hpplay/sdk/source/protocol/h;->a([[B)[B

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    .line 219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "utime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "genVerrifyM1Request  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 222
    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->c([B)Z

    move-result v1

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    add-long/2addr v6, v8

    .line 224
    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "utime"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseVerifyM1Response  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 230
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d()[B

    move-result-object v1

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    add-long/2addr v6, v8

    .line 232
    const/4 v8, 0x1

    new-array v8, v8, [[B

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {p0, v8}, Lcom/hpplay/sdk/source/protocol/h;->a([[B)[B

    move-result-object v1

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "utime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "genVerrifyM2Request  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 236
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d([B)Z

    move-result v1

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "utime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encrypt time -->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "utime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseVerifyM2Response  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net time "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    sub-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 244
    goto/16 :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    invoke-static {p2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 78
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->i:Ljava/net/ServerSocket;

    .line 79
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->i:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 80
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->i:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "ProtocolCreater"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a([[B)[B
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 253
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_6

    move v0, v4

    .line 256
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 261
    const/4 v0, 0x1

    new-array v7, v0, [B

    move-object v0, v3

    move v1, v4

    move-object v2, v3

    .line 267
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x1388

    cmp-long v5, v10, v12

    if-gez v5, :cond_3

    .line 269
    if-nez v0, :cond_7

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v5

    if-lez v5, :cond_7

    .line 270
    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v10, 0x0

    array-length v11, v7

    invoke-virtual {v5, v7, v10, v11}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v5

    .line 272
    :goto_2
    if-lez v5, :cond_5

    if-nez v1, :cond_5

    .line 273
    const/4 v5, 0x0

    aget-byte v5, v7, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-static {v6}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getProtocolDivide(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [B

    move v1, v4

    .line 276
    :goto_3
    array-length v0, v5

    if-ge v1, v0, :cond_2

    .line 277
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v5, v1

    .line 276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 280
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getContentLength(Ljava/lang/String;)I

    move-result v1

    .line 281
    array-length v2, v5

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 282
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v5

    invoke-static {v5, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    array-length v10, v5

    .line 284
    if-nez v1, :cond_4

    .line 311
    :cond_3
    :goto_4
    return-object v2

    .line 287
    :cond_4
    iget-object v11, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v11

    .line 288
    iget-object v12, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    array-length v5, v5

    invoke-virtual {v12, v2, v5, v11}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    .line 289
    if-eq v11, v1, :cond_3

    .line 292
    add-int v1, v10, v11

    .line 296
    goto :goto_1

    .line 297
    :cond_5
    if-eqz v2, :cond_1

    .line 298
    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v5

    .line 299
    iget-object v10, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v10, v2, v1, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    .line 300
    add-int/2addr v1, v5

    .line 301
    array-length v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v5, :cond_1

    goto :goto_4

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string v1, "ProtocolCreater"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move-object v2, v3

    .line 311
    goto :goto_4

    :cond_7
    move v5, v4

    goto :goto_2
.end method

.method public varargs b([[B)[B
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 316
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_6

    move v0, v4

    .line 319
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 324
    const/4 v0, 0x1

    new-array v7, v0, [B

    move-object v0, v3

    move v1, v4

    move-object v2, v3

    .line 330
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x1388

    cmp-long v5, v10, v12

    if-gez v5, :cond_3

    .line 332
    if-nez v0, :cond_7

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v5

    if-lez v5, :cond_7

    .line 333
    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v10, 0x0

    array-length v11, v7

    invoke-virtual {v5, v7, v10, v11}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v5

    .line 335
    :goto_2
    if-lez v5, :cond_5

    if-nez v1, :cond_5

    .line 336
    const/4 v5, 0x0

    aget-byte v5, v7, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-static {v6}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getProtocolDivide(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 338
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [B

    move v2, v4

    .line 339
    :goto_3
    array-length v0, v5

    if-ge v2, v0, :cond_2

    .line 340
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v5, v2

    .line 339
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 342
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 343
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getContentLength(Ljava/lang/String;)I

    move-result v5

    .line 344
    new-array v2, v5, [B

    .line 345
    if-nez v5, :cond_4

    .line 372
    :cond_3
    :goto_4
    return-object v2

    .line 348
    :cond_4
    iget-object v10, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v10

    .line 349
    iget-object v11, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v12, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    .line 350
    if-eq v10, v5, :cond_3

    .line 353
    add-int/2addr v1, v10

    .line 357
    goto :goto_1

    .line 358
    :cond_5
    if-eqz v2, :cond_1

    .line 359
    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v5

    .line 360
    iget-object v10, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v10, v2, v1, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    .line 361
    add-int/2addr v1, v5

    .line 362
    array-length v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v5, :cond_1

    goto :goto_4

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string v1, "ProtocolCreater"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move-object v2, v3

    .line 372
    goto :goto_4

    :cond_7
    move v5, v4

    goto :goto_2
.end method

.method public varargs c([[B)[B
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 384
    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_6

    move v2, v0

    .line 386
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 387
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 392
    const/4 v2, 0x4

    new-array v8, v2, [B

    move v4, v0

    move-object v0, v1

    .line 393
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    const-wide/16 v10, 0x1388

    cmp-long v2, v2, v10

    if-gez v2, :cond_4

    .line 394
    if-nez v4, :cond_2

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v2

    if-lez v2, :cond_2

    .line 395
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v3, 0x0

    const/4 v9, 0x4

    invoke-virtual {v2, v8, v3, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v2

    .line 396
    if-lez v2, :cond_1

    .line 399
    invoke-static {v8}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->bytesToInt([B)I

    move-result v2

    .line 400
    if-eqz v2, :cond_1

    const/high16 v3, 0x200000

    if-gt v2, v3, :cond_1

    .line 404
    add-int v0, v2, v5

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [B

    .line 405
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v8

    invoke-static {v8, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v5

    .line 406
    goto :goto_1

    :cond_2
    if-lez v4, :cond_1

    .line 407
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v3

    .line 408
    new-array v2, v3, [B

    .line 409
    if-eqz v0, :cond_3

    array-length v9, v0

    sub-int/2addr v9, v4

    if-le v3, v9, :cond_3

    .line 410
    array-length v2, v0

    sub-int v3, v2, v4

    .line 411
    new-array v2, v3, [B

    .line 413
    :cond_3
    iget-object v9, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    .line 414
    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v2, v9, v0, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    add-int v2, v4, v3

    .line 416
    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_5

    .line 430
    :cond_4
    :goto_2
    return-object v0

    :cond_5
    move v4, v2

    .line 419
    goto :goto_1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    const-string v2, "ProtocolCreater"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/common/store/Session;->getSocketExceptionsListener()Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;

    move-result-object v2

    .line 426
    if-eqz v2, :cond_6

    .line 427
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/h;->g:Ljava/lang/String;

    iget v4, p0, Lcom/hpplay/sdk/source/protocol/h;->h:I

    invoke-interface {v2, v3, v4, v0}, Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;->onProtocolCheckException(Ljava/lang/String;ILjava/lang/Exception;)V

    :cond_6
    move-object v0, v1

    .line 430
    goto :goto_2
.end method

.method public f()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    .line 60
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/h;->g:Ljava/lang/String;

    iget v5, p0, Lcom/hpplay/sdk/source/protocol/h;->h:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 61
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 62
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 63
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 64
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 65
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->c:Landroid/os/ParcelFileDescriptor;

    .line 66
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/h;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 67
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->c:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->d:Ljava/io/FileDescriptor;

    .line 68
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/h;->d:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v2, "ProtocolCreater"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public g()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 90
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    .line 91
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/h;->g:Ljava/lang/String;

    iget v5, p0, Lcom/hpplay/sdk/source/protocol/h;->h:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 92
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 95
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 97
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 98
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 99
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 100
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->b:Ljava/net/Socket;

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->c:Landroid/os/ParcelFileDescriptor;

    .line 101
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/h;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 102
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->c:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->d:Ljava/io/FileDescriptor;

    .line 103
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/h;->d:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v2, "ProtocolCreater"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public h()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 115
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->k:Ljava/net/DatagramSocket;

    .line 116
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->k:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 117
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->k:Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0x6309

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "ProtocolCreater"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 5

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->j:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/h;->k()Z

    .line 135
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 136
    const-string v1, "PTBL"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aq(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    .line 137
    const-string v1, "0000"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ar(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    .line 138
    const-string v1, "search"

    const v2, 0x8052

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    .line 139
    const-string v1, "ProtocolCreater"

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->s:Ljava/net/DatagramPacket;

    const/16 v2, 0x6309

    invoke-virtual {v1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 142
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->s:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramPacket;->setData([B)V

    .line 143
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->s:Ljava/net/DatagramPacket;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 144
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->s:Ljava/net/DatagramPacket;

    const-string v1, "255.255.255.255"

    .line 145
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 146
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->j:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->s:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "ProtocolCreater"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->j:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->j:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 156
    :cond_0
    return-void
.end method

.method public k()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 160
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->j:Ljava/net/DatagramSocket;

    .line 161
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/h;->j:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "ProtocolCreater"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/h;->e:Ljava/io/FileOutputStream;

    return-object v0
.end method
