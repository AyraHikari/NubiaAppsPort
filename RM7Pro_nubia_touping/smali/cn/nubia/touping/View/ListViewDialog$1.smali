.class Lcn/nubia/touping/View/ListViewDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "ListViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/View/ListViewDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/View/ListViewDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/View/ListViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/View/ListViewDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/touping/View/ListViewDialog$1;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog$1;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-static {v0}, Lcn/nubia/touping/View/ListViewDialog;->access$000(Lcn/nubia/touping/View/ListViewDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 77
    iget-object v0, p0, Lcn/nubia/touping/View/ListViewDialog$1;->this$0:Lcn/nubia/touping/View/ListViewDialog;

    invoke-static {v0}, Lcn/nubia/touping/View/ListViewDialog;->access$000(Lcn/nubia/touping/View/ListViewDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 78
    return-void
.end method
