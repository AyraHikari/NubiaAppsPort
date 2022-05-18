.class Lcn/nubia/touping/PCMirrorActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PCMirrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/PCMirrorActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/PCMirrorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/PCMirrorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/PCMirrorActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/touping/PCMirrorActivity$1;->this$0:Lcn/nubia/touping/PCMirrorActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity$1;->this$0:Lcn/nubia/touping/PCMirrorActivity;

    invoke-static {v0}, Lcn/nubia/touping/PCMirrorActivity;->access$000(Lcn/nubia/touping/PCMirrorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/touping/PCMirrorActivity$1;->this$0:Lcn/nubia/touping/PCMirrorActivity;

    invoke-static {v0}, Lcn/nubia/touping/PCMirrorActivity;->access$000(Lcn/nubia/touping/PCMirrorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 76
    return-void
.end method
