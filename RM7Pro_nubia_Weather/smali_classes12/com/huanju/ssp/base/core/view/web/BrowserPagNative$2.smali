.class Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;
.super Landroid/webkit/WebChromeClient;
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
.field private curProgress:I

.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/4 v4, 0x4

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 444
    const/16 v2, 0x63

    if-le p2, v2, :cond_1

    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 447
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->curProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-nez v2, :cond_2

    .line 451
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    new-instance v4, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v5, 0x0

    const v6, 0x1010078

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v3, v4}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$302(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 452
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#ff8800"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v3, 0x800003

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 453
    .local v0, "drawable":Landroid/graphics/drawable/ClipDrawable;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$500(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v6}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$400(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)I

    move-result v6

    div-int/lit8 v6, v6, 0xf

    const/16 v7, 0x30

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    .end local v0    # "drawable":Landroid/graphics/drawable/ClipDrawable;
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->curProgress:I

    sub-int v2, p2, v2

    if-le v2, v4, :cond_0

    .line 456
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;

    move-result-object v2

    iput p2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->curProgress:I

    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 457
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 475
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 476
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    iput-object p2, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->icon:Landroid/graphics/Bitmap;

    .line 477
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    iput-object p2, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curTitle:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 482
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 483
    return-void
.end method
