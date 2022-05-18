.class final Lcom/huanju/ssp/sdk/AdManager$2;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/AdManager;->checkupdate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/huanju/ssp/sdk/AdManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 150
    :try_start_0
    iget-object v5, p0, Lcom/huanju/ssp/sdk/AdManager$2;->val$context:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v5, p0, Lcom/huanju/ssp/sdk/AdManager$2;->val$context:Landroid/content/Context;

    const-string v8, "nubia_ad_info"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 154
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "dex_load_time"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 155
    .local v6, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "curTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkupdate time=="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",curTime:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 157
    sub-long v8, v6, v0

    const-wide/32 v10, 0x5265c00

    cmp-long v5, v8, v10

    if-lez v5, :cond_0

    .line 158
    const-string v5, "checkupdate start "

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 159
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 160
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "dex_load_time"

    invoke-interface {v3, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    iget-object v5, p0, Lcom/huanju/ssp/sdk/AdManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huanju/ssp/base/hotfix/DexManager;->checkUpdateSwitch()V

    .line 163
    iget-object v5, p0, Lcom/huanju/ssp/sdk/AdManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huanju/ssp/base/hotfix/DexManager;->checkUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v0    # "curTime":J
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .end local v6    # "time":J
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
