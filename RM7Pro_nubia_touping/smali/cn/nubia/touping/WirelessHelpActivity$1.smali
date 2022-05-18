.class Lcn/nubia/touping/WirelessHelpActivity$1;
.super Ljava/lang/Object;
.source "WirelessHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WirelessHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/WirelessHelpActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WirelessHelpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/WirelessHelpActivity;

    .prologue
    .line 12
    iput-object p1, p0, Lcn/nubia/touping/WirelessHelpActivity$1;->this$0:Lcn/nubia/touping/WirelessHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/touping/WirelessHelpActivity$1;->this$0:Lcn/nubia/touping/WirelessHelpActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/WirelessHelpActivity;->finish()V

    .line 16
    return-void
.end method
