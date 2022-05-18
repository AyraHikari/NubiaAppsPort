.class Lcn/nubia/notepad/engine/permission/PermissionInspector$1;
.super Ljava/lang/Object;
.source "PermissionInspector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/engine/permission/PermissionInspector;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/engine/permission/PermissionInspector;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/engine/permission/PermissionInspector;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/engine/permission/PermissionInspector;

    .prologue
    .line 140
    iput-object p1, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector$1;->this$0:Lcn/nubia/notepad/engine/permission/PermissionInspector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector$1;->this$0:Lcn/nubia/notepad/engine/permission/PermissionInspector;

    invoke-static {v0}, Lcn/nubia/notepad/engine/permission/PermissionInspector;->access$000(Lcn/nubia/notepad/engine/permission/PermissionInspector;)V

    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 146
    return-void
.end method
