.class Lcom/hpplay/sdk/source/push/PublicCastClient$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/push/PublicCastClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

.field final synthetic b:Lcom/hpplay/sdk/source/push/PublicCastClient;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/push/PublicCastClient;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$a;->b:Lcom/hpplay/sdk/source/push/PublicCastClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 460
    iput-object p2, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$a;->a:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    .line 461
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 465
    .line 466
    const-string v0, ""

    .line 468
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 470
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 471
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 473
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 474
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 475
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 476
    const-string v1, "Content-type"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "Accept-Charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v1, "contentType"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 480
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 481
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 482
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 483
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 484
    const/16 v1, 0xc8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 485
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 486
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 487
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 488
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 489
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    const-string v1, "PublicCastClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 491
    :cond_0
    :try_start_1
    const-string v1, "PublicCastClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result----->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 495
    :cond_1
    const-string v1, "HTTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connction failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 506
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-direct {v0, v1, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iput-object p1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 510
    iget-object v1, p0, Lcom/hpplay/sdk/source/push/PublicCastClient$a;->a:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    invoke-interface {v1, v0}, Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;->onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V

    .line 512
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 455
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/push/PublicCastClient$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 455
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/push/PublicCastClient$a;->a(Ljava/lang/String;)V

    return-void
.end method
