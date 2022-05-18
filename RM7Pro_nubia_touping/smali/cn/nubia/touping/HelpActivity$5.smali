.class Lcn/nubia/touping/HelpActivity$5;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/HelpActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/HelpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/HelpActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/touping/HelpActivity$5;->this$0:Lcn/nubia/touping/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/touping/HelpActivity$5;->this$0:Lcn/nubia/touping/HelpActivity;

    const-class v2, Lcn/nubia/touping/USBpcControlPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/touping/HelpActivity$5;->this$0:Lcn/nubia/touping/HelpActivity;

    invoke-virtual {v1, v0}, Lcn/nubia/touping/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
