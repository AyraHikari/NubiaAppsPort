.class Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;
.super Landroid/webkit/WebViewClient;
.source "BrowserPagNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->createContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private eroCode:I

.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished     \u9875\u9762\u52a0\u8f7d\u5b8c\u6210    \uff1a   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 410
    iget v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->eroCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$200(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    iput-object p2, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curUrl:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$100(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$100(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;->onWebLoadFinish()V

    .line 417
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted     \u9875\u9762\u5f00\u59cb\u52a0\u8f7d    \uff1a   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    iput-object p2, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curUrl:Ljava/lang/String;

    .line 399
    const/16 v0, 0xc8

    iput v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->eroCode:I

    .line 400
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$100(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$100(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;->onWebStartLoad()V

    .line 404
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 425
    iput p2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->eroCode:I

    .line 426
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$200(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError() \n errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n description"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n failingUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 433
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 434
    const-string v0, "ssl\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->showToastSafe(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldOverrideUrlLoading   :   "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 348
    :try_start_0
    const-string v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    .local v4, "tel":Landroid/content/Intent;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 351
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    move v5, v6

    .line 392
    .end local v4    # "tel":Landroid/content/Intent;
    :goto_0
    return v5

    .line 354
    :cond_1
    const-string v5, "smsto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "sms:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 355
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 356
    .local v3, "sms":Landroid/content/Intent;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 357
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    move v5, v6

    .line 359
    goto :goto_0

    .line 360
    .end local v3    # "sms":Landroid/content/Intent;
    :cond_4
    const-string v5, "http://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "https://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 361
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 362
    .restart local v3    # "sms":Landroid/content/Intent;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 363
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v5}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v5, v6

    .line 365
    goto :goto_0

    .line 367
    .end local v3    # "sms":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 371
    :cond_6
    const-string v5, "http://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "https://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 373
    :cond_7
    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 374
    .local v1, "hit":Landroid/webkit/WebView$HitTestResult;
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    .line 375
    .local v2, "hitType":I
    const/4 v5, 0x7

    if-ne v2, v5, :cond_8

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldOverrideUrlLoading    \u8d85\u94fe     \uff1a   "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v5, v6

    .line 379
    goto/16 :goto_0

    .line 380
    :cond_8
    if-nez v2, :cond_9

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldOverrideUrlLoading     302    \uff1a   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 382
    goto/16 :goto_0

    :cond_9
    move v5, v7

    .line 384
    goto/16 :goto_0

    .line 386
    .end local v1    # "hit":Landroid/webkit/WebView$HitTestResult;
    .end local v2    # "hitType":I
    :catch_1
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v7

    .line 392
    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    move v5, v6

    .line 390
    goto/16 :goto_0
.end method
