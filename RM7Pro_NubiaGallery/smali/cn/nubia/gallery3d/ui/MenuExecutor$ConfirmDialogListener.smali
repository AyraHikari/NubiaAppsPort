.class Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private final mActionId:I

.field private final mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    .line 384
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 403
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 404
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;->onConfirmDialogDismissed(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 396
    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;->onConfirmDialogDismissed(Z)V

    goto :goto_1

    .line 390
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 391
    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;->onConfirmDialogDismissed(Z)V

    .line 393
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-static {p1, p2, v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$700(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    :cond_3
    :goto_1
    return-void
.end method
