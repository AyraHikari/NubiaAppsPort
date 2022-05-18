.class Lcn/nubia/touping/USBHelpTouPingActivity$1;
.super Ljava/lang/Object;
.source "USBHelpTouPingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/USBHelpTouPingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/USBHelpTouPingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/USBHelpTouPingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/USBHelpTouPingActivity;

    .prologue
    .line 16
    iput-object p1, p0, Lcn/nubia/touping/USBHelpTouPingActivity$1;->this$0:Lcn/nubia/touping/USBHelpTouPingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/touping/USBHelpTouPingActivity$1;->this$0:Lcn/nubia/touping/USBHelpTouPingActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/USBHelpTouPingActivity;->finish()V

    .line 20
    return-void
.end method
