.class Lcn/nubia/gallery3d/commonui/ui/BaseDialog$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->setDisMissListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/commonui/ui/BaseDialog;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/commonui/ui/BaseDialog;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog$1;->this$0:Lcn/nubia/gallery3d/commonui/ui/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/BaseDialog$1;->this$0:Lcn/nubia/gallery3d/commonui/ui/BaseDialog;

    iget v0, p1, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->viewHeght:I

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->startExitAnimation(I)V

    return-void
.end method
