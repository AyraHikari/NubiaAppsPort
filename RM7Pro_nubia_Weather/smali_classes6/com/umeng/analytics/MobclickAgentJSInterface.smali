.class public Lcom/umeng/analytics/MobclickAgentJSInterface;
.super Ljava/lang/Object;
.source "MobclickAgentJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/MobclickAgentJSInterface$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 29
    new-instance v0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/MobclickAgentJSInterface$a;-><init>(Lcom/umeng/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface;->a:Landroid/content/Context;

    .line 35
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    new-instance v0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;

    invoke-direct {v0, p0, p3}, Lcom/umeng/analytics/MobclickAgentJSInterface$a;-><init>(Lcom/umeng/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/MobclickAgentJSInterface;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface;->a:Landroid/content/Context;

    return-object v0
.end method
