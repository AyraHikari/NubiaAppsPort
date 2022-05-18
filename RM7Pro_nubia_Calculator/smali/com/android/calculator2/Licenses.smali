.class public Lcom/android/calculator2/Licenses;
.super Landroid/app/Activity;
.source "Licenses.java"


# static fields
.field private static final LICENSE_URL:Ljava/lang/String; = "file:///android_asset/licenses.html"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, "file:///android_asset/licenses.html"

    .line 17
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Licenses;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 24
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/calculator2/Licenses;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
