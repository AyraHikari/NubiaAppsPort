.class final Lcom/umeng/analytics/MobclickAgentJSInterface$a;
.super Landroid/webkit/WebChromeClient;
.source "MobclickAgentJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/MobclickAgentJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Landroid/webkit/WebChromeClient;

.field final synthetic b:Lcom/umeng/analytics/MobclickAgentJSInterface;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    .line 53
    const-string v0, "ekv"

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->c:Ljava/lang/String;

    .line 54
    const-string v0, "event"

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->d:Ljava/lang/String;

    .line 57
    if-nez p2, :cond_0

    .line 58
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-object p2, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    goto :goto_0
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 114
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 67
    .line 68
    const-string v0, "ekv"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string v0, "id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v4, v0

    .line 78
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 81
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :goto_2
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    move v0, v7

    .line 108
    :goto_3
    return v0

    .line 76
    :cond_0
    :try_start_1
    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;

    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgentJSInterface;->a(Lcom/umeng/analytics/MobclickAgentJSInterface;)Landroid/content/Context;

    move-result-object v1

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 90
    :cond_2
    const-string v0, "event"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v0, "label"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    const/4 v3, 0x0

    .line 99
    :cond_3
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;

    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgentJSInterface;->a(Lcom/umeng/analytics/MobclickAgentJSInterface;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 101
    :catch_1
    move-exception v0

    goto :goto_2

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_3
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 139
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 154
    return-void
.end method
