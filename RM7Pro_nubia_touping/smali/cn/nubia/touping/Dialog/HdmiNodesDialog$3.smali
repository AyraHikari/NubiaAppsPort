.class Lcn/nubia/touping/Dialog/HdmiNodesDialog$3;
.super Ljava/lang/Object;
.source "HdmiNodesDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Dialog/HdmiNodesDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$3;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$3;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->dismiss()V

    .line 109
    return-void
.end method
