.class Lcom/huanju/ssp/base/core/report/exception/ReportExceptionProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "ReportExceptionProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    return-void
.end method

.method private isReportCrashLog()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetType()I

    move-result v1

    .line 70
    .local v1, "netType":I
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "is_report_crash_log_switch"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "crashSwitch":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5d29\u6e83\u65e5\u5fd7\u4e0a\u4f20\u5f00\u5173 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 72
    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionTask;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionTask;-><init>()V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 39
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 4
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "\u4e0a\u4f20\u5d29\u6e83\u65e5\u5fd7\u6210\u529f"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "report_exception_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    invoke-static {}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->getInstance()Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->removeExceptionCaches()V

    .line 24
    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u5d29\u6e83\u65e5\u5fd7\u5931\u8d25   eroCode   :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    eroMsg   \uff1a  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "\u4e0a\u4f20\u5d29\u6e83\u65e5\u5fd7  \u7f51\u7edc\u9519\u8bef"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public process()V
    .locals 6

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionProcessor;->isReportCrashLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u7b26\u5408\u4e0a\u62a5\u5d29\u6e83\u4fe1\u606f\u7f51\u7edc\u6761\u4ef6 \u5f53\u524d\u7f51\u7edc\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "report_exception_last_time"

    const-wide/32 v2, 0x5265c00

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/huanju/ssp/base/utils/Utils;->checkIntervalTime(Ljava/lang/String;JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "\u8ddd\u79bb\u4e0a\u6b21\u53d1\u9001\u65f6\u95f4\u672a\u8fbe\u523024\u5c0f\u65f6\uff0c\u4e2d\u65ad\u4e0a\u62a5"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    goto :goto_0
.end method
