.class public final Lcom/loc/j;
.super Ljava/lang/Exception;
.source "AMapCoreException.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private volatile g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x1e

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/loc/j;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/j;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/j;->c:Ljava/lang/String;

    const-string v0, "1900"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "UnknownError"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    iput v1, p0, Lcom/loc/j;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/j;->g:Z

    iput-object p1, p0, Lcom/loc/j;->a:Ljava/lang/String;

    const-string v0, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    iput v0, p0, Lcom/loc/j;->f:I

    const-string v0, "1902"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "IOException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    iput v0, p0, Lcom/loc/j;->f:I

    goto :goto_0

    :cond_1
    const-string v0, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    iput v0, p0, Lcom/loc/j;->f:I

    const-string v0, "1802"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "SocketTimeoutException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x18

    iput v0, p0, Lcom/loc/j;->f:I

    const-string v0, "1901"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "IllegalArgumentException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x19

    iput v0, p0, Lcom/loc/j;->f:I

    const-string v0, "1903"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "NullPointException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "url\u5f02\u5e38 - MalformedURLException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    iput v0, p0, Lcom/loc/j;->f:I

    const-string v0, "1803"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "MalformedURLException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1b

    iput v0, p0, Lcom/loc/j;->f:I

    const-string v0, "1804"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "UnknownHostException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1c

    iput v0, p0, Lcom/loc/j;->f:I

    const-string v0, "1805"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "CannotConnectToHostException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1d

    iput v0, p0, Lcom/loc/j;->f:I

    const-string v0, "1801"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "ProtocolException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput v2, p0, Lcom/loc/j;->f:I

    const-string v0, "1806"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "ConnectionException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v0, "\u670d\u52a1QPS\u8d85\u9650"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v2, p0, Lcom/loc/j;->f:I

    const-string v0, "2001"

    iput-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    const-string v0, "ConnectionException"

    iput-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1f

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_b
    const-string v0, "key\u9274\u6743\u5931\u8d25"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x20

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_c
    const-string v0, "requeust is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_d
    const-string v0, "request url is empty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_e
    const-string v0, "response is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_f
    const-string v0, "thread pool has exception"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_10
    const-string v0, "sdk name is invalid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x5

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_11
    const-string v0, "sdk info is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x6

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_12
    const-string v0, "sdk packages is null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x7

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_13
    const-string v0, "\u7ebf\u7a0b\u6c60\u4e3a\u7a7a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x8

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_14
    const-string v0, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x65

    iput v0, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0

    :cond_15
    iput v1, p0, Lcom/loc/j;->f:I

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/loc/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/loc/j;->f:I

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/loc/j;->f:I

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/j;->g:Z

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/j;->g:Z

    return-void
.end method
