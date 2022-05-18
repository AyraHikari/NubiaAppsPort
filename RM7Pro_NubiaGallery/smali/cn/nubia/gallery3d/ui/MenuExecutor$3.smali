.class Lcn/nubia/gallery3d/ui/MenuExecutor$3;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuExecutor;->showUnsupportedConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/MenuExecutor;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$3;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 924
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$3;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const v1, 0x7f090023

    const v2, 0x7f100078

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1400(Lcn/nubia/gallery3d/ui/MenuExecutor;IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V

    return-void
.end method
