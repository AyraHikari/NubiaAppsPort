.class public Lu/aly/al;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lu/aly/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lu/aly/al;->b:Ljava/lang/String;

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lu/aly/al;->c:I

    .line 45
    iput-object p1, p0, Lu/aly/al;->d:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lu/aly/al;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/al;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    const-string v0, "Android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v0, "6.0.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    invoke-static {p1}, Lu/aly/bj;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-static {p1}, Lu/aly/bj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 63
    const-string v0, "constructURLS"

    invoke-static {v0}, Lu/aly/bl;->b(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lu/aly/al;->d:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lu/aly/x$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lu/aly/al;->d:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lu/aly/x$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-static {v0}, Lcom/umeng/analytics/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->f:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-static {v1}, Lcom/umeng/analytics/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->g:Ljava/lang/String;

    .line 74
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/a;->f:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/a;->g:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lu/aly/al;->d:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/a;->g:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/a;->f:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    .line 94
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructURLS list size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->b(Ljava/lang/String;)V

    .line 95
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lu/aly/al;->d:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aw;->a(Landroid/content/Context;)Lu/aly/aw;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/aw;->b()I

    move-result v0

    .line 83
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 84
    if-nez v0, :cond_4

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/a;->f:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/a;->g:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_4
    if-ne v0, v3, :cond_2

    .line 88
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/a;->g:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/a;->f:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    goto :goto_0
.end method

.method private a([BLjava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 156
    .line 159
    :try_start_0
    iget-object v0, p0, Lu/aly/al;->e:Lu/aly/aj;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lu/aly/al;->e:Lu/aly/aj;

    invoke-interface {v0}, Lu/aly/aj;->a()V

    .line 162
    :cond_0
    invoke-direct {p0}, Lu/aly/al;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lu/aly/al;->b:Ljava/lang/String;

    iget v7, p0, Lu/aly/al;->c:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v2, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 164
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    .line 169
    :goto_0
    :try_start_1
    const-string v0, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "X-Umeng-Sdk"

    iget-object v5, p0, Lu/aly/al;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "Msg-Type"

    const-string v5, "envelope/json"

    invoke-virtual {v2, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "Content-Type"

    const-string v5, "envelope/json"

    invoke-virtual {v2, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/16 v0, 0x2710

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 175
    const/16 v0, 0x7530

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 176
    const-string v0, "POST"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 182
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x8

    if-ge v0, v5, :cond_1

    .line 183
    const-string v0, "http.keepAlive"

    const-string v5, "false"

    invoke-static {v0, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 189
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 190
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 192
    iget-object v0, p0, Lu/aly/al;->e:Lu/aly/aj;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lu/aly/al;->e:Lu/aly/aj;

    invoke-interface {v0}, Lu/aly/aj;->b()V

    .line 195
    :cond_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 196
    const-string v0, "Content-Type"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "application/thrift"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 204
    :goto_1
    const/16 v3, 0xc8

    if-ne v5, v3, :cond_6

    if-eqz v0, :cond_6

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send message to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->c(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 210
    :try_start_2
    invoke-static {v3}, Lu/aly/bk;->b(Ljava/io/InputStream;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 212
    :try_start_3
    invoke-static {v3}, Lu/aly/bk;->c(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 220
    if-eqz v2, :cond_3

    .line 221
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 224
    :cond_3
    :goto_2
    return-object v0

    .line 166
    :cond_4
    :try_start_4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v0

    goto/16 :goto_0

    .line 212
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v3}, Lu/aly/bk;->c(Ljava/io/InputStream;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :goto_3
    :try_start_6
    const-string v3, "IOException,Failed to send message."

    invoke-static {v3, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 220
    if-eqz v2, :cond_5

    .line 221
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v0, v1

    goto :goto_2

    .line 220
    :cond_6
    if-eqz v2, :cond_7

    .line 221
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v0, v1

    .line 224
    goto :goto_2

    .line 220
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_8

    .line 221
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    .line 220
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 216
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :cond_9
    move v0, v4

    goto :goto_1
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lu/aly/al;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 127
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v4, p0, Lu/aly/al;->d:Landroid/content/Context;

    .line 128
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lu/aly/al;->d:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 133
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    iget-object v3, p0, Lu/aly/al;->d:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v3, v4}, Lu/aly/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 140
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_3

    const-string v3, "cmwap"

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "3gwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "uniwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 144
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v0, v1

    .line 151
    goto :goto_0
.end method


# virtual methods
.method public a(Lu/aly/aj;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lu/aly/al;->e:Lu/aly/aj;

    .line 51
    return-void
.end method

.method public a([B)[B
    .locals 3

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 111
    sget-object v1, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v1}, Lu/aly/al;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    iget-object v0, p0, Lu/aly/al;->e:Lu/aly/aj;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lu/aly/al;->e:Lu/aly/aj;

    invoke-interface {v0}, Lu/aly/aj;->c()V

    .line 122
    :cond_0
    return-object v1

    .line 118
    :cond_1
    iget-object v2, p0, Lu/aly/al;->e:Lu/aly/aj;

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lu/aly/al;->e:Lu/aly/aj;

    invoke-interface {v2}, Lu/aly/aj;->d()V

    .line 110
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
