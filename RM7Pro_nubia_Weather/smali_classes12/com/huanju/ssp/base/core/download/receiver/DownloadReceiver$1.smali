.class Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;
.super Ljava/lang/Object;
.source "DownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->this$0:Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 123
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 124
    .local v1, "contextWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    iget-object v7, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v10, "download_url"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "downloadUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getDownloadItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-result-object v3

    .line 131
    .local v3, "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sdk DownloadReceiver Action   :  "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    move v7, v8

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 181
    :goto_1
    :pswitch_0
    return-void

    .line 132
    :sswitch_0
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :sswitch_1
    const-string v7, "com.ssp.download.action.ACTION_DOWNLOAD_PAUSE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_0

    :sswitch_2
    const-string v7, "com.ssp.download.action.ACTION_DOWNLOAD_CONTINUE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    const-string v7, "com.ssp.download.action.ACTION_DOWNLOAD_INSTALL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    goto :goto_0

    :sswitch_4
    const-string v7, "com.ssp.download.action.ACTION_DOWNLOAD_OPEN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :sswitch_5
    const-string v7, "com.ssp.download.action.ACTION_CANCEL_DOWNLOAD"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "com.ssp.download.action.ACTION_ERROR_DOWNLOAD"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    goto :goto_0

    :sswitch_7
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "com.ssp.download.action.BEGIN_DOWNLOAD"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x8

    goto :goto_0

    :sswitch_9
    const-string v7, "com.ssp.download.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x9

    goto :goto_0

    :sswitch_a
    const-string v7, "com.ssp.download.action.INSTALL_COMPLETE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xa

    goto :goto_0

    :sswitch_b
    const-string v7, "com.ssp.download.action.OPEN_APP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xb

    goto :goto_0

    :sswitch_c
    const-string v7, "com.ssp.download.action.CANCEL_DOWNLOAD"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xc

    goto/16 :goto_0

    .line 134
    :pswitch_1
    iget-object v7, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sdk DownloadReceiver ACTION_PACKAGE_ADDED packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 136
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->installedApp(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    .end local v5    # "packageName":Ljava/lang/String;
    :pswitch_2
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->pauseDownload(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto/16 :goto_1

    .line 142
    :pswitch_3
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->download(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto/16 :goto_1

    .line 145
    :pswitch_4
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->installApp(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto/16 :goto_1

    .line 148
    :pswitch_5
    iget-object v7, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v9, "package_name"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "pakName":Ljava/lang/String;
    iget-object v7, p0, Lcom/huanju/ssp/base/core/download/receiver/DownloadReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v9, "notification_id"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 150
    .local v4, "notification_id":I
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->openApp(Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 153
    .end local v4    # "notification_id":I
    .end local v6    # "pakName":Ljava/lang/String;
    :pswitch_6
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->cancelDownload(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto/16 :goto_1

    .line 157
    :pswitch_7
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->cancelDownload(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto/16 :goto_1

    .line 160
    :pswitch_8
    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->init(Z)V

    goto/16 :goto_1

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        -0x530d88b0 -> :sswitch_c
        -0x5033e0b0 -> :sswitch_3
        -0x45e5283a -> :sswitch_7
        -0x3ca98eb7 -> :sswitch_b
        -0x194b96c6 -> :sswitch_a
        -0x1263275f -> :sswitch_5
        -0xf2bf315 -> :sswitch_1
        0x6d26972 -> :sswitch_2
        0x7c48895 -> :sswitch_4
        0x3c408c7b -> :sswitch_8
        0x454f1cf3 -> :sswitch_9
        0x5c1076e2 -> :sswitch_0
        0x7a70fe8b -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
