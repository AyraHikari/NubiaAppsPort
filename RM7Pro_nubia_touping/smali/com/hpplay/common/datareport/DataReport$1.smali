.class Lcom/hpplay/common/datareport/DataReport$1;
.super Lcom/hpplay/common/datareport/DataReport$ReportRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/common/datareport/DataReport;->addTask(Lcom/hpplay/common/datareport/ReportBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/common/datareport/DataReport;

.field final synthetic val$doPostEncode:Z


# direct methods
.method constructor <init>(Lcom/hpplay/common/datareport/DataReport;Z)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/hpplay/common/datareport/DataReport$1;->this$0:Lcom/hpplay/common/datareport/DataReport;

    iput-boolean p2, p0, Lcom/hpplay/common/datareport/DataReport$1;->val$doPostEncode:Z

    invoke-direct {p0}, Lcom/hpplay/common/datareport/DataReport$ReportRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v0, v0, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v0, v0, Lcom/hpplay/common/datareport/ReportBean;->encryptVersion:Ljava/lang/String;

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport$1;->this$0:Lcom/hpplay/common/datareport/DataReport;

    invoke-static {v0}, Lcom/hpplay/common/datareport/DataReport;->access$000(Lcom/hpplay/common/datareport/DataReport;)Lcom/hpplay/common/perfume/CTCipher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v0, v0, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/common/datareport/DataReport$1;->this$0:Lcom/hpplay/common/datareport/DataReport;

    invoke-static {v1}, Lcom/hpplay/common/datareport/DataReport;->access$000(Lcom/hpplay/common/datareport/DataReport;)Lcom/hpplay/common/perfume/CTCipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/common/perfume/CTCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v1, v1, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    if-nez v1, :cond_1

    .line 89
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v1, v1, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v3, v3, Lcom/hpplay/common/datareport/ReportBean;->encryptVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    .line 117
    :cond_0
    :goto_2
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v1, v1, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v2, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v2, v2, Lcom/hpplay/common/datareport/ReportBean;->listener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeHttpTask(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 119
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport$1;->this$0:Lcom/hpplay/common/datareport/DataReport;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/hpplay/common/datareport/DataReport$1;->this$0:Lcom/hpplay/common/datareport/DataReport;

    invoke-static {v2}, Lcom/hpplay/common/datareport/DataReport;->access$204(Lcom/hpplay/common/datareport/DataReport;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/common/datareport/DataReport;->access$202(Lcom/hpplay/common/datareport/DataReport;I)I

    .line 120
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport$1;->this$0:Lcom/hpplay/common/datareport/DataReport;

    invoke-static {v0}, Lcom/hpplay/common/datareport/DataReport;->access$300(Lcom/hpplay/common/datareport/DataReport;)V

    .line 121
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    invoke-static {}, Lcom/hpplay/common/datareport/DataReport;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    .line 91
    invoke-static {}, Lcom/hpplay/common/datareport/DataReport;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v1, v1, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v2, v2, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v3, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v3, v3, Lcom/hpplay/common/datareport/ReportBean;->encryptVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    .line 106
    :cond_2
    :goto_3
    iget-boolean v1, p0, Lcom/hpplay/common/datareport/DataReport$1;->val$doPostEncode:Z

    if-eqz v1, :cond_3

    .line 108
    :try_start_2
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 113
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v1, v1, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iput-object v0, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    goto/16 :goto_2

    .line 102
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v2, v2, Lcom/hpplay/common/datareport/ReportBean;->httpParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v3, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hpplay/common/datareport/DataReport$1;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    iget-object v3, v3, Lcom/hpplay/common/datareport/ReportBean;->encryptVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    goto :goto_3

    .line 109
    :catch_2
    move-exception v1

    .line 110
    invoke-static {}, Lcom/hpplay/common/datareport/DataReport;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_4
.end method
