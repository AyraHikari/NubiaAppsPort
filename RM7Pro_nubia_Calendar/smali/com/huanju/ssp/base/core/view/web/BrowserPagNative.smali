.class public Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;
.super Ljava/lang/Object;
.source "BrowserPagNative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;
    }
.end annotation


# static fields
.field private static final ERO_IMAGE:Ljava/lang/String; = "hj_error"

.field private static final TABEPATH:Ljava/lang/String; = "nubia_ad/%s.png"

.field private static final iconsName:[Ljava/lang/String;


# instance fields
.field private adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

.field curTitle:Ljava/lang/String;

.field curUrl:Ljava/lang/String;

.field private dUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field icon:Landroid/graphics/Bitmap;

.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEroView:Landroid/view/ViewGroup;

.field private mWebView:Landroid/webkit/WebView;

.field private pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tableBar_h:I

.field private webPage:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "back"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "forward"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "refesh"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "close"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->iconsName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;-><init>(Landroid/content/Context;Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;)V

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "closeListener"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v1, ""

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curUrl:Ljava/lang/String;

    .line 75
    const-string v1, ""

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curTitle:Ljava/lang/String;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->icon:Landroid/graphics/Bitmap;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->dUrls:Ljava/util/ArrayList;

    .line 94
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/huanju/ssp/base/utils/Utils;->getScreenSize(Landroid/content/Context;Z)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v2, v1

    const-wide v4, 0x3fc1eb851eb851ecL    # 0.14

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    .line 95
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    .line 97
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 98
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mEroView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->progressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 61
    iget v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    return v0
.end method

.method static synthetic access$500(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->webPage:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->dUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->createDownloadItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method private creatErrorView()Landroid/view/View;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v6, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mEroView:Landroid/view/ViewGroup;

    .line 194
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mEroView:Landroid/view/ViewGroup;

    const-string v6, "#ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 195
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mEroView:Landroid/view/ViewGroup;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 197
    .local v3, "errorImag":Landroid/widget/ImageView;
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const-string v5, "hj_error"

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 199
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "nubia_ad/%s.png"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "hj_error"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 200
    .local v4, "is":Ljava/io/InputStream;
    const-string v5, "hj_error"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-gt v5, v6, :cond_0

    .line 202
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :goto_0
    iget v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    mul-int/lit8 v1, v5, 0x4

    .line 207
    .local v1, "d":I
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mEroView:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v1, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "d":I
    .end local v3    # "errorImag":Landroid/widget/ImageView;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_1
    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mEroView:Landroid/view/ViewGroup;

    return-object v5

    .line 204
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "errorImag":Landroid/widget/ImageView;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 208
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "errorImag":Landroid/widget/ImageView;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private createContentView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 331
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 524
    :goto_0
    return-object v0

    .line 334
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    .line 336
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 338
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;

    invoke-direct {v3, p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$1;-><init>(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)V

    new-instance v4, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;

    invoke-direct {v4, p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$2;-><init>(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)V

    invoke-static {v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->initWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 486
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;-><init>(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 523
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createDownloadItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 528
    new-instance v0, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;-><init>()V

    .line 529
    .local v0, "item":Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setName(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setDownLoadUrl(Ljava/lang/String;)V

    .line 531
    new-instance v1, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;-><init>(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setListener(Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    .line 557
    return-object v0
.end method

.method private createTableBar()Landroid/view/View;
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_0

    .line 257
    const/4 v12, 0x0

    .line 327
    :goto_0
    return-object v12

    .line 260
    :cond_0
    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .local v12, "lTableBar":Landroid/widget/RelativeLayout;
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 262
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 263
    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Context;

    invoke-direct/range {v18 .. v19}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 264
    .local v18, "v_icon_left":Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 265
    .local v8, "fl_btn":Landroid/widget/FrameLayout;
    const-string v19, "back_finish"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "nubia_ad/%s.png"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "back_finish"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 268
    .local v11, "is_left":Ljava/io/InputStream;
    const-string v19, "back_finish"

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 269
    .local v5, "background_left":Landroid/graphics/drawable/Drawable;
    const/16 v19, -0x1

    const/16 v20, 0xe2

    const/16 v21, 0xe2

    const/16 v22, 0xe2

    .line 270
    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    .line 269
    invoke-static/range {v19 .. v20}, Lcom/huanju/ssp/base/utils/DrawableUtils;->createSelector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v15

    .line 271
    .local v15, "selector":Landroid/graphics/drawable/Drawable;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    .line 272
    invoke-virtual {v8, v15}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :goto_1
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v14, "params_left":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    invoke-virtual {v12, v8, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    .line 284
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v6, v0

    .line 289
    .local v6, "d":I
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v20, v6, 0x2

    const/16 v21, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v17, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 293
    .local v17, "v_icon":Landroid/widget/ImageView;
    new-instance v9, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 294
    .local v9, "fl_btn_right":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const-string v19, "share"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "nubia_ad/%s.png"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "share"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 297
    .local v10, "is":Ljava/io/InputStream;
    const-string v19, "share"

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 299
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    const/16 v19, -0x1

    const/16 v20, 0xe2

    const/16 v21, 0xe2

    const/16 v22, 0xe2

    .line 300
    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    .line 299
    invoke-static/range {v19 .. v20}, Lcom/huanju/ssp/base/utils/DrawableUtils;->createSelector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v16

    .line 304
    .local v16, "selector_right":Landroid/graphics/drawable/Drawable;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    .line 305
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :goto_3
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v13, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 315
    invoke-virtual {v12, v9, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 318
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v7, v0

    .line 323
    .local v7, "d2":I
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v7, v7, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 274
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "d":I
    .end local v7    # "d2":I
    .end local v9    # "fl_btn_right":Landroid/widget/FrameLayout;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v13    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "params_left":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "selector_right":Landroid/graphics/drawable/Drawable;
    .end local v17    # "v_icon":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v8, v15}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 286
    .restart local v14    # "params_left":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 307
    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "d":I
    .restart local v9    # "fl_btn_right":Landroid/widget/FrameLayout;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v16    # "selector_right":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "v_icon":Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 320
    .restart local v13    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method private goForward()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 616
    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 173
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 187
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 179
    .local v1, "pagLayout":Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 181
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->createContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->creatErrorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->createTableBar()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->tableBar_h:I

    const/16 v5, 0x50

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->webPage:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private static initWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wView"    # Landroid/webkit/WebView;
    .param p2, "webClient"    # Landroid/webkit/WebViewClient;
    .param p3, "chromeClient"    # Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 113
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 114
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 115
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 116
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 117
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 118
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 119
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 120
    invoke-static {v8}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 122
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 123
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 126
    :cond_1
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 127
    const-wide/32 v6, 0x500000

    invoke-virtual {v4, v6, v7}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "appCachePath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 131
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 133
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 134
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    .line 135
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 136
    .local v3, "wManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 138
    .local v1, "mDensity":I
    const/16 v5, 0xf0

    if-ne v1, v5, :cond_5

    .line 139
    sget-object v5, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 149
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 150
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 152
    :cond_3
    if-eqz p3, :cond_4

    .line 153
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 156
    :cond_4
    invoke-virtual {p1, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 157
    invoke-virtual {p1, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 158
    return-void

    .line 140
    :cond_5
    const/16 v5, 0xa0

    if-ne v1, v5, :cond_6

    .line 141
    sget-object v5, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 142
    :cond_6
    const/16 v5, 0x78

    if-ne v1, v5, :cond_7

    .line 143
    sget-object v5, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 144
    :cond_7
    const/16 v5, 0x140

    if-ne v1, v5, :cond_8

    .line 145
    sget-object v5, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 146
    :cond_8
    const/16 v5, 0xd5

    if-ne v1, v5, :cond_2

    .line 147
    sget-object v5, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 611
    :cond_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;->onCloseBtnClick()V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 656
    :cond_1
    return-void
.end method

.method public getWebPage()Landroid/view/View;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->webPage:Landroid/view/ViewGroup;

    return-object v0
.end method

.method goBack()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 624
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 563
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 564
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curUrl:Ljava/lang/String;

    .line 566
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 571
    .local v1, "vTag":Ljava/lang/String;
    const-string v2, "back_finish"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    if-eqz v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    invoke-interface {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;->onCloseBtnClick()V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const-string v2, "share"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 576
    const-string v2, "share click"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    if-nez v2, :cond_2

    .line 578
    const-string v2, "adShareClickListener not null"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 579
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 580
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 585
    const-string v2, ".startActivity(Intent.createChooser(shareIntent, \u5206\u4eab\u5230)"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "\u5206\u4eab\u5230"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 590
    .end local v0    # "shareIntent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 591
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->curUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->icon:Landroid/graphics/Bitmap;

    invoke-interface {v3, v2, v4, v5, v6}, Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;->onShareClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 594
    :cond_3
    sget-object v2, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->iconsName:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 595
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->goForward()Z

    goto :goto_0

    .line 596
    :cond_4
    sget-object v2, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->iconsName:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "hj_error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 597
    :cond_5
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->reload()V

    goto/16 :goto_0

    .line 598
    :cond_6
    sget-object v2, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->iconsName:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    invoke-interface {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;->onCloseBtnClick()V

    goto/16 :goto_0
.end method

.method public releaseAllWebViewCallback()V
    .locals 5

    .prologue
    .line 688
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 691
    :try_start_0
    const-class v3, Landroid/webkit/WebView;

    const-string v4, "mWebViewCore"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 692
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mBrowserFrame"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 693
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "sConfigCallback"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 694
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 695
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 728
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-boolean v3, Lcom/ssp/sdk/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 698
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 700
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v3, Lcom/ssp/sdk/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 702
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 707
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :try_start_1
    const-string v3, "android.webkit.BrowserFrame"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "sConfigCallback"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 708
    .local v2, "sConfigCallback":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 709
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 710
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 712
    .end local v2    # "sConfigCallback":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-boolean v3, Lcom/ssp/sdk/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 714
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 716
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v3, Lcom/ssp/sdk/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 718
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 720
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v3, Lcom/ssp/sdk/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 722
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 724
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method removeAllView()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 663
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 664
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 665
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 666
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 667
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 669
    :cond_0
    return-void
.end method

.method public setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
    .locals 0
    .param p1, "adShareClickListener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->adShareClickListener:Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .line 166
    return-void
.end method

.method public setPageStateListener(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;)V
    .locals 0
    .param p1, "closeListener"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->pageStateListener:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;

    .line 162
    return-void
.end method
