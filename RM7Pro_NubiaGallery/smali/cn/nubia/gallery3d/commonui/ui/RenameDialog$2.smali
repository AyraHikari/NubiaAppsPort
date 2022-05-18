.class Lcn/nubia/gallery3d/commonui/ui/RenameDialog$2;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/commonui/ui/RenameDialog;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/commonui/ui/RenameDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog$2;->this$0:Lcn/nubia/gallery3d/commonui/ui/RenameDialog;

    iput-object p2, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog$2;->this$0:Lcn/nubia/gallery3d/commonui/ui/RenameDialog;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->dismiss()V

    .line 87
    iget-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 88
    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
