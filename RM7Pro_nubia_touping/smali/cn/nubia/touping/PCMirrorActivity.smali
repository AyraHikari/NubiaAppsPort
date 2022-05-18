.class public Lcn/nubia/touping/PCMirrorActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "PCMirrorActivity.java"


# static fields
.field public static final HAD_GETLEBOVIP:Ljava/lang/String; = "1"

.field public static final MirrorActivityqrHTTPResult:Ljava/lang/String; = "MirrorActivityqrHTTPResult"

.field public static final MirrorActivityqrUrl:Ljava/lang/String; = "MirrorActivityqrUrl"

.field public static final NO_GETLEBOVIP:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "PCMirrorActivity"

.field public static final hasGetLeboVIP:Ljava/lang/String; = "hasGetLeboVIP"

.field private static final privatekey:Ljava/lang/String; = "MIIBVQIBADANBgkqhkiG9w0BAQEFAASCAT8wggE7AgEAAkEAoCDviDojPKC6dLW8nJ+3hPIEa0+iiaSzxByHXUlqxAJ99ksIdNby4ojEYoLnkHf54VKkQcjdYonMQgUlOZgZOQIDAQABAkEAjqYonTQlleodkMEh4GmMZJvxgeO0iWg3WPqNQHaZ7ThYQZC7ncnlO328faNM/E2lQJRUZOqsiL9aMvnqb/9GHQIhAPNYiKOWrFftuk7p4qjJvmHgZEzsWDQVcr8+wctwwS2zAiEAqHSZUye6hjx47+PNE9QZsH8RLcXuzEkxQl2zKqpaX2MCIBOeu8WUzGh6fl8GdIPvYC48DVo2ZBYu9IV+5dklSi4JAiBcZH9H3Y1vXLGUGWR8kKN6a2cXrO0ZvLc4yD2hlAe3MwIhANjoX9XeHxokjJN2/g2QcyxHwAaprpyIK4nckR3BrMpD,"

.field private static final publickey:Ljava/lang/String; = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBALiriZRI/hKOxVLNbX7ex37yj/qFONCH7dMKujkn+2rgFj1DPxVJ7sHqqsF2zAOI/LT2ZGWMZm7c+6DnM5QX088CAwEAAQ=="


# instance fields
.field private appid:Ljava/lang/String;

.field private finishImgBtn:Landroid/widget/ImageButton;

.field private lelink_vip_url:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private qrUrl:Ljava/lang/String;

.field private udid:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->qrUrl:Ljava/lang/String;

    .line 43
    const-string v0, "https://h5.hpplay.com.cn/nby/member/index.html"

    iput-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->lelink_vip_url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/PCMirrorActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/PCMirrorActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->finishImgBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private encryStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "plainText"    # Ljava/lang/String;

    .prologue
    .line 160
    :try_start_0
    const-string v3, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBALiriZRI/hKOxVLNbX7ex37yj/qFONCH7dMKujkn+2rgFj1DPxVJ7sHqqsF2zAOI/LT2ZGWMZm7c+6DnM5QX088CAwEAAQ=="

    invoke-static {v3}, Lcn/nubia/touping/Utils/TouPCUtils/AndroidRSAUtils;->getPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    .line 161
    .local v2, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {p1, v2}, Lcn/nubia/touping/Utils/TouPCUtils/AndroidRSAUtils;->publicEncrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    .end local v2    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcn/nubia/touping/PCMirrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MirrorActivityqrUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->qrUrl:Ljava/lang/String;

    .line 61
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->udid:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getAPP_ID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->appid:Ljava/lang/String;

    .line 63
    const-string v0, "PCMirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/PCMirrorActivity;->udid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcn/nubia/touping/PCMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->webview:Landroid/webkit/WebView;

    .line 68
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/nubia/touping/PCMirrorActivity;->lelink_vip_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcn/nubia/touping/PCMirrorActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/PCMirrorActivity$1;-><init>(Lcn/nubia/touping/PCMirrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->webview:Landroid/webkit/WebView;

    const-string v1, "nubia"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcn/nubia/touping/PCMirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->finishImgBtn:Landroid/widget/ImageButton;

    .line 88
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->finishImgBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcn/nubia/touping/PCMirrorActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/touping/PCMirrorActivity$2;-><init>(Lcn/nubia/touping/PCMirrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public activateResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 150
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "success"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "LELINK_VIP_HADGET"

    const-string v2, "1"

    invoke-static {p0, v1, v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcn/nubia/touping/Utils/TrackUtils;->sendGetLeBoVIPSuccessEvent()V

    .line 154
    invoke-virtual {p0}, Lcn/nubia/touping/PCMirrorActivity;->finish()V

    .line 156
    :cond_0
    return-void
.end method

.method public encryText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "plain"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 144
    const-string v0, "PCMirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1}, Lcn/nubia/touping/PCMirrorActivity;->encryStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 98
    const-string v1, "PCMirrorActivity"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MirrorActivityqrUrl"

    iget-object v2, p0, Lcn/nubia/touping/PCMirrorActivity;->qrUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcn/nubia/touping/PCMirrorActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->finish()V

    .line 103
    return-void
.end method

.method public freezeTimestamp()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->mTime:Ljava/lang/String;

    .line 124
    const-string v0, "PCMirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freezeTimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/PCMirrorActivity;->mTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 115
    const-string v0, "PCMirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/PCMirrorActivity;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getCiphertext()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 137
    const-string v0, "PCMirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCiphertext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/PCMirrorActivity;->mTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nubia_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/PCMirrorActivity;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/PCMirrorActivity;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/PCMirrorActivity;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/touping/PCMirrorActivity;->encryStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaintext()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 131
    const-string v0, "PCMirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaintext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/PCMirrorActivity;->mTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nubia_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/PCMirrorActivity;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/PCMirrorActivity;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/PCMirrorActivity;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 108
    const-string v0, "PCMirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUDID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/PCMirrorActivity;->udid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity;->udid:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcn/nubia/touping/PCMirrorActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcn/nubia/touping/PCMirrorActivity;->initData()V

    .line 56
    invoke-direct {p0}, Lcn/nubia/touping/PCMirrorActivity;->initView()V

    .line 57
    return-void
.end method
