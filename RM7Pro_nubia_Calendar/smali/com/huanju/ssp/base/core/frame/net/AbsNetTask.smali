.class public abstract Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.super Ljava/lang/Object;
.source "AbsNetTask.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/schedule/ITask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;
    }
.end annotation


# static fields
.field private static final HTTP_TIMEOUT:I = 0x7530

.field private static final SOCKET_TIMEOUT:I = 0x7530


# instance fields
.field public isGzipRequest:Z

.field private isReTry:Z

.field protected mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

.field private mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

.field public reqType:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V
    .locals 1
    .param p1, "type"    # Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->isGzipRequest:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->isReTry:Z

    .line 73
    iput-object p1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->reqType:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    .line 74
    return-void
.end method

.method private dealWithHttpConnection(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 7
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dealWithHttpConnection  start reqType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->reqType:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v3

    iget v3, v3, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    if-nez v3, :cond_0

    .line 249
    const-string v3, "dealWithHttpConnection \u5f53\u524d\u4e3a\u4e0d\u4f7f\u7528\u7f51\u7edc"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 250
    const/4 p1, 0x0

    .line 291
    .end local p1    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    return-object p1

    .line 252
    .restart local p1    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    iget-boolean v3, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->isGzipRequest:Z

    if-eqz v3, :cond_1

    .line 253
    const-string v3, "Content-Type"

    const-string v4, "text/html"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip,deflate"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_1
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->onAddHeaders(Ljava/net/HttpURLConnection;)V

    .line 259
    sget-object v3, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$1;->$SwitchMap$com$huanju$ssp$base$core$frame$net$AbsNetTask$ReqType:[I

    iget-object v4, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->reqType:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 290
    :goto_2
    const-string v3, "dealWithHttpConnection  end:"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    const-string v3, "Accept-Encoding"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :pswitch_0
    const-string v3, "GET"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_2

    .line 264
    :pswitch_1
    const-string v3, "POST"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 266
    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "entity":[B
    iget-boolean v3, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->isGzipRequest:Z

    if-eqz v3, :cond_3

    .line 274
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getEntity()[B

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/SystemUtils;->gZip([B)[B

    move-result-object v1

    .line 278
    :goto_3
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 279
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_2
    new-array v3, v5, [Ljava/io/Closeable;

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_2

    .line 276
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getEntity()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_3

    .line 281
    .end local v1    # "entity":[B
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    new-array v3, v5, [Ljava/io/Closeable;

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    new-array v4, v5, [Ljava/io/Closeable;

    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 285
    throw v3

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private execute()V
    .locals 7

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :try_start_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v5, :cond_0

    .line 115
    iget-object v5, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onAdStatusChange(I)V

    .line 117
    :cond_0
    invoke-virtual {p0, v4}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 118
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onAdStatusChange(I)V

    .line 121
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsNetTask request url  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 122
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v0, v5, v6}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getHttpResult(Ljava/net/HttpURLConnection;II)Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;

    move-result-object v2

    .line 123
    iget-object v5, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v5, :cond_2

    .line 124
    iget-object v5, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onAdStatusChange(I)V

    .line 126
    :cond_2
    if-nez v2, :cond_4

    .line 127
    const-string v5, "  httpResult  == null"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  url  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    .line 165
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 132
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v3

    .line 134
    .local v3, "resultCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resultCode  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 135
    const/16 v5, 0xc8

    if-lt v3, v5, :cond_5

    const/16 v5, 0x190

    if-lt v3, v5, :cond_6

    .line 136
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getMsgByErrorCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->onErrorReceived(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    goto :goto_0

    .line 140
    :cond_6
    :try_start_2
    iget-object v5, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v5, :cond_7

    .line 141
    iget-object v5, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    invoke-interface {v5, v2}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V

    .line 145
    :cond_7
    invoke-static {}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->getInstance()Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->reportHisEros()V

    .line 147
    invoke-static {}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->getInstance()Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->reportInstallFailedErrors()V

    .line 149
    invoke-static {}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->getInstance()Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->reportException()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    goto :goto_0

    .line 151
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "resultCode":I
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_3
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->getThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x504

    invoke-direct {p0, v5, v6}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->onErrorReceived(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->getThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x503

    invoke-direct {p0, v5, v6}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->onErrorReceived(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    goto/16 :goto_0

    .line 157
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->getThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {p0, v5, v6}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->onErrorReceived(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    goto/16 :goto_0

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_8

    .line 162
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    .line 164
    :cond_8
    throw v5
.end method

.method private getHttpResult(Ljava/net/HttpURLConnection;II)Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .locals 9
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "RedirectsNum"    # I
    .param p3, "reTryNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 169
    if-nez p1, :cond_1

    .line 170
    const-string v6, "connection == null"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v6, :cond_0

    .line 172
    iget-object v6, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    invoke-interface {v6}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onNetworkError()V

    :cond_0
    move-object v1, v5

    .line 215
    :goto_0
    return-object v1

    .line 176
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v6

    iget v6, v6, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    if-nez v6, :cond_2

    .line 177
    const-string v6, "getHttpResult \u5f53\u524d\u4e3a\u4e0d\u4f7f\u7528\u7f51\u7edc"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    move-object v1, v5

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    const/4 v6, 0x5

    if-lt p2, v6, :cond_4

    .line 181
    const-string v6, "\u5faa\u73af\u91cd\u5b9a\u5411\u8d85\u8fc75\u6b21"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v6, :cond_3

    .line 183
    iget-object v6, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5faa\u73af\u91cd\u5b9a\u5411\u8d85\u8fc75\u6b21\uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onErrorReceived(Ljava/lang/String;I)V

    :cond_3
    move-object v1, v5

    .line 185
    goto :goto_0

    .line 188
    :cond_4
    const/4 v1, 0x0

    .line 190
    .local v1, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :try_start_0
    new-instance v2, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;

    invoke-direct {v2, p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .end local v1    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .local v2, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :try_start_1
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v4

    .line 193
    .local v4, "resultCode":I
    const/16 v6, 0x12c

    if-le v4, v6, :cond_6

    const/16 v6, 0x190

    if-ge v4, v6, :cond_6

    .line 194
    const-string v6, "Location"

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "location":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u91cd\u5b9a\u5411 \uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v3}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, v6, p2, p3}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getHttpResult(Ljava/net/HttpURLConnection;II)Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;

    move-result-object v1

    .end local v2    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v1    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    goto :goto_0

    .line 199
    .end local v1    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v2    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :cond_5
    const-string v6, " location  == null"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v3    # "location":Ljava/lang/String;
    :cond_6
    move-object v1, v2

    .end local v2    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v1    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    goto :goto_0

    .line 202
    .end local v4    # "resultCode":I
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :goto_1
    const/4 v6, 0x3

    if-lt p3, v6, :cond_8

    .line 204
    const-string v6, "\u5df2\u8fbe\u5230\u91cd\u8bd5\u4e0a\u9650"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 205
    iget-object v6, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v6, :cond_7

    .line 206
    iget-object v6, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    invoke-interface {v6}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onNetworkError()V

    :cond_7
    move-object v1, v5

    .line 208
    goto/16 :goto_0

    .line 210
    :cond_8
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, v5, p2, p3}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getHttpResult(Ljava/net/HttpURLConnection;II)Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 212
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v2    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v1    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    goto :goto_2

    .line 202
    .end local v1    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v2    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v1    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    goto :goto_1
.end method

.method private getHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7530

    .line 296
    const-string v1, "getHttpURLConnection start openConnection "

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 298
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    const-string v1, "getHttpURLConnection end openConnection "

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 300
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 301
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 302
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-object v0
.end method

.method private onErrorReceived(Ljava/lang/String;I)V
    .locals 1
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->isReTry:Z

    if-eqz v0, :cond_2

    const/16 v0, -0x504

    if-eq p2, v0, :cond_0

    const/16 v0, -0x503

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1f7

    if-ne p2, v0, :cond_2

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->reTry()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->execute()V

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onErrorReceived(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private reTry()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->ipList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    const-string v4, "http*?://(.+?)/.+"

    const-string v5, "$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->host:Ljava/lang/String;

    .line 354
    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    invoke-static {}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->getInstance()Lcom/huanju/ssp/base/core/request/host/RequestIpManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->getIpList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->ipList:Ljava/util/ArrayList;

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->ipList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 368
    :cond_2
    :goto_0
    return v1

    .line 361
    :cond_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->position:I

    iget-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->ipList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 365
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->ipList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    .local v0, "ip":Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    const-string v3, "(http*?://).+?(/.+)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mDnsBean:Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;

    iget v2, v1, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->position:I

    .line 368
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getEntity()[B
.end method

.method protected abstract getUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onAddHeaders(Ljava/net/HttpURLConnection;)V
.end method

.method public openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openConnection  url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const-string v4, "url == null"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-object v3

    .line 228
    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v4

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    if-nez v4, :cond_1

    .line 229
    const-string v4, "openConnection \u5f53\u524d\u4e3a\u4e0d\u4f7f\u7528\u7f51\u7edc"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "Url":Ljava/net/URL;
    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "str_http":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 242
    .local v1, "connection":Ljava/net/HttpURLConnection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openConnection  end url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->dealWithHttpConnection(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v3

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestAdManager.getInstance().mNetType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v1

    iget v1, v1, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5\uff0c\u7f51\u7edc\u4efb\u52a1\u4e2d\u65ad"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onNetworkError()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    if-nez v0, :cond_2

    .line 87
    const-string v0, "\u5f53\u524d\u4e3a\u4e0d\u4f7f\u7528\u7f51\u7edc"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v0

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->mNetType:I

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isRequstByMobile(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    const-string v0, "\u4ec5wifi\u4e0b\u4f7f\u7528\u7f51\u7edc\u4efb\u52a1"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;->onNetworkError()V

    goto :goto_0

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->execute()V

    goto :goto_0
.end method

.method protected setGzipRequest(Z)V
    .locals 0
    .param p1, "isGzipRequest"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->isGzipRequest:Z

    .line 220
    return-void
.end method

.method public setListener(Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;)V
    .locals 0
    .param p1, "netTaskListener"    # Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->mListener:Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;

    .line 106
    return-void
.end method

.method protected setReTry(Z)V
    .locals 0
    .param p1, "reTry"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->isReTry:Z

    .line 70
    return-void
.end method
